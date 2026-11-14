---
title: Scrapling
slug: D4Vinci-Scrapling
created: 2026-06-01
updated: 2026-11-15
verified: 2026-11-15
stars: 102832
language: Python
topics: [網頁爬蟲, 自適應解析, 反偵測, MCP]
default_branch: main
head_sha: bb223f2f5fc8f743772751a5ce283ef7851ca6be
latest_release: v0.5.1
---

# Scrapling

> ⭐102832 · 整合 HTTP、隱匿瀏覽器、自適應解析、並行爬取與 AI 工具介面的 Python 網頁資料擷取框架。

## 快速導航

[[網頁爬蟲]] · [[Crawl4AI]] · [[MCP]]

## 是什麼

Scrapling 將 HTTP 請求、JavaScript 渲染、瀏覽器互動、資料解析及 Spider 排程整合在同一個 Python 套件中。它可以從單頁欄位擷取，延伸到具有 session、代理輪替、重試、暫停／恢復和匯出的爬取流程；自適應解析則依已儲存的元素特徵做相似度比對，不需呼叫 LLM，但不代表改版後永遠能找對元素。

AI 整合不只包含 MCP Server，也包含供 coding agent 參考的 Agent Skill，以及 `page.markdown()`／`ContentSpider` 的 Markdown 資料準備流程。這些是官方文件描述的能力；本次更新只做來源核對，未安裝、執行或測試上游程式。

**版本基準（2026-11-15，CST／Asia/Taipei）**：本文以預設分支 `main` 的 HEAD `bb223f2f5fc8f743772751a5ce283ef7851ca6be` 為文件快照；GitHub 最新正式 release 是 **v0.5.1**，發布時間 `2026-11-04T20:29:16Z`，標籤解析到 `3a4bb5b0a008233c85269a0a38a6d08edd4ce329`。兩者不是同一個 commit，不能把分支文件全部當成已發布套件的保證。

## 核心特色

- **自適應解析與選取**：CSS、XPath、文字／正規表示式與相似元素查找。先啟用 adaptive、儲存特徵，再於後續頁面重新定位；官方指出一般選取結果只儲存第一個元素特徵，可能找錯或找不到，仍須驗證資料。
- **HTTP 與瀏覽器 session**：`Fetcher`／`AsyncFetcher` 與 `FetcherSession` 處理 HTTP；`StealthyFetcher`、`StealthySession`／`AsyncStealthySession` 處理瀏覽器。v0.5 已移除 `DynamicFetcher` 系列，瀏覽器後端改以 Patchright 為基礎；v0.5.1 的 CDP 連線須用 `RemoteSession`／`AsyncRemoteSession`。
- **完整爬取生命週期**：Spider 支援並行、多 session、代理輪替、AutoThrottle、開發快取、串流及 JSON／JSONL／CSV／XML 匯出，也有 Crawl、Sitemap、Feed、Shopify 等模板。`crawldir` 保存待處理請求與已見 URL，已擷取資料要另外保存。
- **瀏覽器資料與互動**：可擷取頁面背後的 API 回應；在 session 設定 `record_requests=True`，透過 `session.network` 查詢有容量限制的歷史。官方提供 Cloudflare Turnstile／Interstitial 處理選項，但需明確啟用 `solve_cloudflare=True`，不是對所有網站或 CAPTCHA 的成功保證。
- **AI 與終端入口**：MCP 提供 HTTP、持續瀏覽器 session、截圖、動作、登入狀態與網路歷史；v0.5.1 release 另介紹短時間動態觀察與拖放。CLI／互動 shell、Agent Skill、Markdown／RAG 功能各有對應安裝 extras。

舊頁將 DataDome 寫成 Scrapling 內建能力，已撤回：目前 README 的相關敘述位於第三方贊助服務介紹，不能當作本套件的功能證據。README 的效能、反偵測及 prompt-injection 防護宣稱也不等於本頁的獨立測試結論。

## 怎麼用

### 安裝範圍先選對

官方 README 要求 **Python 3.10+**。以下為文件指令，不是本次執行紀錄；建議在獨立虛擬環境內安裝。

```bash
# 只解析已有 HTML：不包含 fetchers、spiders 或 CLI 依賴
pip install scrapling

# 要使用下列 HTTP／Spider 範例
pip install "scrapling[fetchers]"

# 只有需要瀏覽器時才安裝瀏覽器及其依賴；純 HTTP 不需要
scrapling install
```

其他 extras：MCP 用 `scrapling[ai]`，RAG 用 `scrapling[rag]`，shell／extract CLI 用 `scrapling[shell]`，全部功能用 `scrapling[all]`。這些未鎖版指令依套件來源取得版本，並不等於安裝本文的 `main` HEAD。

### 單頁擷取

下例摘自本次固定 commit 的 README：

```python
from scrapling.fetchers import Fetcher

page = Fetcher.get('https://quotes.toscrape.com/')
quotes = page.css('.quote .text::text').getall()
print(quotes)
```

自適應功能的正確流程是：先設定 `Fetcher.configure(adaptive=True)`，在原始頁面以 `page.css(selector, auto_save=True)` 儲存特徵；改版後**重新取得頁面**，再以同一 selector 呼叫 `new_page.css(selector, adaptive=True)`。需保留相同的 storage／domain 識別；結果應檢查內容與數量，不能把對同一個 response 連續呼叫兩次當作改版測試。

### Spider 與結果匯出

下例摘自 README 的入門範例，只處理起始頁，沒有加入翻頁邏輯：

```python
from scrapling.spiders import Spider, Response

class QuotesSpider(Spider):
    name = "quotes"
    start_urls = ["https://quotes.toscrape.com/"]

    async def parse(self, response: Response):
        for quote in response.css('.quote'):
            yield {
                "text": quote.css('.text::text').get(),
                "author": quote.css('.author::text').get(),
            }

result = QuotesSpider().start()
result.items.to_json("quotes.json")
```

長任務可用 `QuotesSpider(crawldir="./crawl_data").start()` 保存爬取進度。官方的 `robots_txt_obey` 預設是 `False`；需要遵守 robots.txt 時應明確設為 `True`，並配合目標網站條款、授權與速率限制。從舊版升級也應檢查 request fingerprint 改動，必要時另開 checkpoint／cache 目錄。

### MCP 與 CLI

```bash
pip install "scrapling[ai]"
scrapling install
scrapling mcp
```

由 MCP client 啟動／連接 server 後，依目前文件可使用 `browser_open` → `browser_fetch` → `browser_actions`／`browser_extract`／`browser_screenshot` → `close_session`。同一瀏覽器 session 的呼叫要依序進行；登入狀態檔包含敏感資料，應限制讀取權限。v0.5 已改名多個 MCP tools 並移除 bulk tools，升級後要更新 allowlist／呼叫格式並讓 client 重新載入 schema。

```bash
pip install "scrapling[shell]"
scrapling extract get 'https://quotes.toscrape.com/' quotes.md
```

CLI 瀏覽器入口現在是 `scrapling extract fetch`，不是舊的 `stealthy-fetch`；瀏覽器使用前仍須安裝瀏覽器依賴。這裡沒有宣稱任何範例已實測成功。

## 跟其他方案的關係

| 方案／層次 | 本頁的定位與選擇方式 |
|---|---|
| **Scrapling** | 官方文件涵蓋從 HTTP／瀏覽器、解析、排程到 MCP／Markdown 的流程；先依任務選擇必要 extras 與 session 類型。 |
| [[Crawl4AI]] | 相關爬蟲專案的延伸閱讀。本次未重新核對其上游，不沿用舊 Stars 或功能有無的勾叉比較。 |
| Scrapy 整合 | Scrapling README 提供 `scrapling_response` callback decorator，讓既有 Scrapy response 使用其 parser；不一定需要重寫整套爬蟲。 |
| [[網頁爬蟲]] | 方法論與共同限制：動態渲染、資料品質、頻率控制、網站條款和隱私，不是競品功能清單。 |

自適應解析適合降低部分 DOM 變動的維護成本；是否適合實際網站，仍要以資料正確性、存取授權及所需版本做小規模驗證，而非依宣傳用語判斷。

## 相關概念

← [[網頁爬蟲]] · [[Crawl4AI]] · [[MCP]]

## 來源

- [GitHub 專案](https://github.com/D4Vinci/Scrapling)；[GitHub metadata API](https://api.github.com/repos/D4Vinci/Scrapling)。Stars 為 2026-11-15 查詢快照，可能隨時變動。
- [README：固定 HEAD](https://github.com/D4Vinci/Scrapling/blob/bb223f2f5fc8f743772751a5ce283ef7851ca6be/README.md)。完整不可變快照：`raw/2026-11-15-D4Vinci-Scrapling-bb223f2f5fc8.md`。
- [v0.5／v0.5.1 遷移說明：固定 HEAD](https://github.com/D4Vinci/Scrapling/blob/bb223f2f5fc8f743772751a5ce283ef7851ca6be/docs/migrating-to-v0.5.md)。
- [自適應解析文件：固定 HEAD](https://github.com/D4Vinci/Scrapling/blob/bb223f2f5fc8f743772751a5ce283ef7851ca6be/docs/parsing/adaptive.md)。
- [MCP 文件：固定 HEAD](https://github.com/D4Vinci/Scrapling/blob/bb223f2f5fc8f743772751a5ce283ef7851ca6be/docs/ai/mcp-server.md)。
- [Fetcher 公開匯出：固定 HEAD](https://github.com/D4Vinci/Scrapling/blob/bb223f2f5fc8f743772751a5ce283ef7851ca6be/scrapling/fetchers/__init__.py)（只讀檢查，未執行）。
- [最新正式 release v0.5.1](https://github.com/D4Vinci/Scrapling/releases/tag/v0.5.1)；[release API](https://api.github.com/repos/D4Vinci/Scrapling/releases/latest)。
- 歷史 README（保留、不覆寫）：`raw/2026-06-01-D4Vinci-Scrapling.md`。

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/D4Vinci/Scrapling |
| Stars | ⭐102832（2026-11-15 查詢） |
| License | BSD-3-Clause（GitHub metadata 與 README 一致） |
| 收錄日期 | 2026-06-01 |
| 核對日期 | 2026-11-15（CST／Asia/Taipei） |
| 預設分支 HEAD | `main` · `bb223f2f5fc8f743772751a5ce283ef7851ca6be` |
| 最新正式 release | `v0.5.1` · `2026-11-04T20:29:16Z` |
| 驗證範圍 | GitHub API、README、遷移／功能文件及公開匯出；未安裝或執行上游程式 |
