---
aliases:
  - Web Crawling
  - 爬蟲
---

# Web Crawling

> 系統化地瀏覽和收集網頁資料的技術。與 Web Scraping 的差異：爬蟲強調系統化遍歷，爬取強調資料提取。

## 快速導航

- 🕷️ **網頁爬取** → [[web-scraping]]（資料提取為主）
- 🤖 **Crawl4AI** → [[Crawl4AI]]（AI 友善爬蟲工具）
- 🔌 **Agent Reach** → [[agent-reach]]（多平台 Agent 爬蟲）

## 是什麼

Web Crawling（網頁爬蟲）是系統化地瀏覽和收集網頁資料的技術。不同於 Web Scraping 專注在資料提取，Crawling 更強調從種子 URL 開始，自動發現和遍歷網頁連結的過程。搜尋引擎的爬蟲（如 Googlebot）就是最典型的 Web Crawler。

### Crawling vs Scraping

| 維度 | Crawling | Scraping |
|------|----------|----------|
| 目標 | 發現和遍歷頁面 | 從頁面提取資料 |
| 範圍 | 廣度優先、系統化 | 深度優先、目標導向 |
| 速度 | 控制 crawl rate | 盡可能快 |
| 用途 | 索引建構、地圖生成 | 資料採集、監控 |
| 工具 | Scrapy、Heritrix | Crawl4AI、BeautifulSoup |

## 核心特色

- **系統化遍歷**：從種子 URL 出發，自動發現和追蹤連結，建構完整的網站地圖
- **URL 佇列管理**：待訪問 URL 的優先級排序、去重、速率控制
- **增量爬取**：只爬取新增或變更的頁面，避免重複勞動
- **遵守 robots.txt**：尊重網站的爬取規則，合法合規操作
- **分散式架構**：大規模爬取需要分散式排程和儲存

## 怎麼用

### 核心流程

```
種子 URL → URL 佇列 → 下載頁面 → 解析連結 → 提取新 URL
                ↑                               ↓
                └──── 新 URL 加入佇列 ──────────┘
                              ↓
                         資料儲存 / 索引建構
```

### 使用 Crawl4AI 爬取網站

```python
import asyncio
from crawl4ai import AsyncWebCrawler

async def crawl_site():
    async with AsyncWebCrawler() as crawler:
        # 深度爬取整個網站
        result = await crawler.arun(
            url="https://example.com",
            # 深度爬取模式
            deep_crawl=True,
            max_depth=3,
        )
        # 取得所有爬取的頁面
        for page in result.crawled_pages:
            print(f"URL: {page.url}")
            print(f"Content: {page.markdown[:200]}...")
```

### AI Agent 的爬蟲需求

- **乾淨的 Markdown**：Crawl4AI、Jina Reader 將網頁轉為 LLM 友善格式
- **結構化資料**：JSON-LD、schema.org 格式的結構化資訊
- **JavaScript 渲染**：單頁應用需要無頭瀏覽器才能取得完整內容
- **多平台爬取**：Agent Reach 等工具支援多平台資料採集
- **增量更新**：只爬取新增或變更的頁面

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[web-scraping]] | 互補 | Crawling 是遍歷，Scraping 是提取，常搭配使用 |
| [[agent-reach]] | 工具 | Agent Reach 提供多平台爬取能力 |
| [[Crawl4AI]] | 工具 | Crawl4AI 是 AI 友善的爬蟲工具 |
| [[rag]] | 下游 | 爬取的頁面是 RAG 知識庫的來源 |
| [[Knowledge-Graph]] | 下游 | 爬取的實體和關係可建構知識圖譜 |
| [[document-parsing]] | 串接 | 爬取的頁面需經解析才能結構化 |

## 相關概念

← [[web-scraping]] · [[agent-reach]] · [[Crawl4AI]] · [[rag]] · [[Knowledge-Graph]] · [[document-parsing]]

## 來源

- Crawl4AI、Jina Reader、Agent Reach 等爬蟲工具文件
- [Crawl4AI 專案文件](../raw/2026-05-10-crawl4ai.md)

---

_此頁由 daily-llm-trending 自動維護_