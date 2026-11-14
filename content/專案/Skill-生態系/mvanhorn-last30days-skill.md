---
title: last30days
slug: mvanhorn-last30days-skill
created: 2026-06-05
updated: 2026-11-15
stars: 67647
language: zh-TW
topics: [AI Skills, 社群搜尋引擎, OSINT, Agent 整合]
---

# last30days

> ⭐67,647 · 將近期社群、新聞、研究與公司訊號整理成附來源研究摘要的 Agent Skill，並提供持續追蹤與本地研究資料庫。

## 快速導航

- 🤖 [[AI-Agent|AI Agent]] — 主機模型規劃搜尋並整合證據
- 🛠 [[AI-Skills|AI Skills]] — 以技能／plugin 形式接入不同主機
- 🌐 [[網頁爬蟲|Web Crawling]] — 各平台存取與認證條件不同

## 是什麼

last30days 是 Matt Van Horn 維護的 Python 研究引擎與 Agent Skill。使用者給主題後，Agent 解析相關人物、社群與 repository，多來源平行搜尋，再依相關性、新鮮度和互動訊號排序、合併同一事件，產生附來源摘要。預設以近期 30 天為研究目標，但各來源可取到的日期窗口不一定相同。

它不是「保證一次搜尋所有平台」的單一搜尋 API。實際來源由主題、API key、瀏覽器登入、已安裝 CLI、明確 opt-in 與主機能力共同決定。舊頁面的「14 個平台」已過時；目前 README 也列出 arXiv、Techmeme、Yahoo Finance、LinkedIn、Meta Ads、DEV、Truth Social、Telegram、Trustpilot、Amazon、DripStack、職缺、專利與本地 corpus 等不同資料通道。

**版本基準：**2026-11-15 CST 查得最新公開 Release 為 **v3.39.0**（2026-11-13 23:03:32 UTC 發布），重點包含公司 Patent Secret Signals、X 文字解碼與 Reels 合併時保留 transcript。`main` 已另有專利訊號呈現條件與 Grok Bot 修正；本頁依固定 `main` SHA 描述，不能假定所有內容都已包含在 v3.39.0 安裝包。

## 核心特色

- **研究前解析與跨來源合併：**先確認人物帳號、GitHub 專案、subreddit 等，再擴充查詢；同一事件的多平台討論可聚成一組，而非把連結數當成果。
- **不只社群熱門度：**可取 Reddit 評論、YouTube 字幕、預測市場、新聞／論文與公司訊號。專利公開與徵才只能作為方向線索，不能證明產品一定推出。
- **Discovery 模式：**不知道主題時可問某領域正在流行什麼。主機模式由模型判讀候選與內容角度；直接 CLI 的 one-shot 模式則採確定性命名，沒有同樣的角度生成。
- **可累積研究：**新研究可參照既有 library；`--store` 將發現存入 SQLite，搭配 watchlist 與 briefing 做週期追蹤。預設單次 Markdown 輸出不等於已建立持續監控。
- **可供 Agent／工作流程使用：**JSON 有穩定版本化輸出契約；`--json-profile=raw` 才是未版本化內部資料。Library 可離線搜尋，亦可產生 HTML 與 Atom feed。

## 怎麼用

以下命令已核對官方 README；本次僅更新文件，未安裝、執行研究或讀取任何瀏覽器憑證。引擎需要 **Python 3.12+**，部分來源另需 Node.js、`yt-dlp` 或其他 CLI；不能假設 macOS 內建 Python 版本符合。

### 選擇一種安裝方式

在 Claude Code 輸入（不是 shell 命令）：

```text
/plugin marketplace add mvanhorn/last30days-skill
/plugin install last30days
```

跨主機的 shell 安裝方式：

```bash
npx skills add mvanhorn/last30days-skill -g
# 或明確指定主機
npx skills add mvanhorn/last30days-skill -g -a codex
# 後續更新
npx skills update last30days -g
```

OpenClaw 可用 `clawhub install last30days-official`。Claude Desktop 則從 release 下載對應平台 `.mcpb`，拖入 Settings → Extensions；它需要本機 Python 3.12+，金鑰存於主機的 keychain，與 Claude Code 的 `.env` 不共用。不要同時啟用 marketplace 與 `npx skills` 的重複副本，否則可能出現兩個 `/last30days`。

### 研究範例

```text
/last30days AI coding agents
/last30days OpenClaw --competitors
/last30days Listen Labs --hiring-signals
/last30days what's trending in AI agents?
/last30days search my library for MCP servers
```

在原始碼 checkout 根目錄，可使用官方直接引擎介面（先確認 `python3` 是 3.12+）：

```bash
# 只檢查設定來源、預計寫入與 cookie 計畫，不開始研究
python3 skills/last30days/scripts/last30days.py --preflight
# 版本化 JSON
python3 skills/last30days/scripts/last30days.py "AI coding agents" --emit=json
# CLI discovery 與離線 library
python3 skills/last30days/scripts/last30days.py --discover "AI agents" --emit=json
python3 skills/last30days/scripts/last30days.py library search "MCP servers"
python3 skills/last30days/scripts/last30days.py library feed
```

在技能主機內，安裝副本的 `SKILL.md` 與 runtime reference 才是執行順序與 Python 解析的依據，不應猜測技能路徑或繞過規劃流程。輸出位置預設 `~/Documents/Last30Days/`；可用 `LAST30DAYS_MEMORY_DIR` 或每次 `--save-dir` 覆寫，`--output` 指定渲染結果檔案。

### 來源與設定條件

| 來源／能力 | 官方說明中的主要條件 |
|---|---|
| Reddit、HN、Polymarket、GitHub | 預設不需額外 key；仍受網路、限流與平台政策影響 |
| arXiv、Techmeme、Yahoo Finance | 對應 CLI 在 PATH；首次設定流程可安裝，Yahoo 另依公司主題觸發 |
| X | 瀏覽器登入或支援的 provider key；官方 X API 以 `X_BEARER_TOKEN` 設定，多數情況僅近期約一週，完整歷史需相應權限 |
| YouTube | `yt-dlp`；留言等額外資料可能另需服務 |
| TikTok、Instagram、Threads、Pinterest、LinkedIn | ScrapeCreators 等認證／配額；不是全部免費無條件 |
| 小紅書 | 明確 `--search xhs`，且有已登入的本地 x-mcp／xiaohongshu-mcp 服務 |
| 本地 corpus | 明確 `--corpus` 或 `LAST30DAYS_CORPUS_DIRS`；PDF 另需 `pdftotext` |
| 外部 reranking | 設定推理 provider key 後會將主題與取回片段送至該 provider |

其餘 opt-in 與精確環境變數以 `CONFIGURATION.md` 為準，不沿用舊文的固定免費額度或費用承諾。

### 限制、隱私與證據品質

- **互動量不是事實查核。**讚數、觀看量及交易量代表注意力／市場定價，不等於正確性；跨平台分數也不能直接視為相同單位。金融、專利或公司策略推論應回查原始資料。
- **不是完全離線。**搜尋會把主題送到啟用的服務；公司／人物解析可能查詢 Wikidata，公司專利通道會查 USPTO。未設定推理 key 時沒有外部 reranking，不代表沒有外部網路請求。
- **本機儲存與公開發布不同。**SQLite／研究檔案可留在本機，但 `library feed --publish` 與 `--publish-html` 是明確的上傳行為；官方安全文件列出 `api.ht-ml.app`。敏感研究不要因為「local-first」就直接發布。
- **預設來源也可能失敗。**應檢查實際搜尋涵蓋、錯誤與引用日期，不把無結果寫成「沒有事件」。X 最近一週的 API 結果尤其不能宣稱覆蓋完整 30 天。
- **來源內容不可信任為指令。**貼文、網頁、本地 corpus 都只能當證據；技能本身也明定不得覆寫主機與使用者指令。

## 跟其他方案的關係

| 方案 | 主要用途 | 與 last30days 的關係 |
|---|---|---|
| last30days | 近期多來源研究、互動訊號、library／monitoring | 需要主機與各通道的存取條件 |
| 一般搜尋／AI 搜尋 | 廣泛網頁發現與摘要 | 可互補；不宜宣稱其他產品「只能搜尋一個來源」 |
| Perplexity | 搜尋與研究服務 | 也是 last30days 可選的資料／研究後端，不只是競爭品 |
| [[upstash-context7|Context7]] | 軟體函式庫文件與使用範例 | 適合查 API，而非替代近期社群或公司研究 |

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[網頁爬蟲]]

## 來源

以下官方 GitHub 內容查核於 **2026-11-15 CST（Asia/Taipei）**；固定 SHA 連結避免主分支日後變動。

- [README](https://github.com/mvanhorn/last30days-skill/blob/f0876504bdfcada40fcf5a4a3ada014c9408b9ed/README.md)
- [執行技能規格](https://github.com/mvanhorn/last30days-skill/blob/f0876504bdfcada40fcf5a4a3ada014c9408b9ed/skills/last30days/SKILL.md)
- [安全與資料處理](https://github.com/mvanhorn/last30days-skill/blob/f0876504bdfcada40fcf5a4a3ada014c9408b9ed/SECURITY.md)
- [設定文件](https://github.com/mvanhorn/last30days-skill/blob/f0876504bdfcada40fcf5a4a3ada014c9408b9ed/CONFIGURATION.md)（延伸設定入口）。
- [最新已發布版本 v3.39.0](https://github.com/mvanhorn/last30days-skill/releases/tag/v3.39.0)；release commit：`f918b496b021fbc4db270ff3442fabf373a4a5f4`。
- 不可變完整 README 快照：`raw/2026-11-15-mvanhorn-last30days-skill-f0876504bdfc.md`
- 舊版原始資料保留：`raw/2026-06-05-mvanhorn-last30days-skill.md`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/mvanhorn/last30days-skill |
| Stars | ⭐67647（查核時點） |
| License | MIT |
| 主要程式語言 | Python |
| Default branch | main |
| 查核 SHA | `f0876504bdfcada40fcf5a4a3ada014c9408b9ed` |
| 最新 Release | v3.39.0（不等同 main） |
| 收錄日期 | 2026-06-05 |
| 更新查核 | 2026-11-15 CST |
