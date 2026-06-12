# Web Scraping

> Web Scraping 是從網頁自動提取資料的技術，從簡單的 HTML 解析到 AI 驅動的智能爬蟲。是 RAG、知識庫、資料分析的上游基礎設施。

## 快速導航

- ⚡ [[rag]] · [[document-parsing]] · [[AI-Agent]] · [[Knowledge-Graph]]
- 🕷️ **Crawl4AI** → [[Crawl4AI]]（LLM 友善網頁爬蟲）
- 🔍 **RAG** → [[rag]]（爬蟲是 RAG 的資料採集層）
- 📄 **文件解析** → [[document-parsing]]（爬蟲輸出需經解析才能結構化）

## 是什麼

Web Scraping（網頁爬蟲）是自動化的網頁資料提取技術。傳統爬蟲用 HTTP 請求 + CSS/XPath 選擇器抓取靜態頁面，現代爬蟲需要處理 JavaScript 渲染、反爬機制、動態載入等複雜場景。

在 AI 時代，Web Scraping 的重要性大幅提升：RAG 管線需要高品質的網頁資料作為知識來源，Agent 需要即時網頁資訊做決策，知識圖譜需要從網頁提取實體和關係。

### 爬蟲的核心挑戰

| 挑戰 | 說明 |
|------|------|
| **JavaScript 渲染** | 單頁應用（SPA）需要無頭瀏覽器才能取得完整內容 |
| **反爬機制** | CAPTCHA、速率限制、IP 封鎖、User-Agent 檢測 |
| **動態內容** | 無限滾動、延遲載入、WebSocket 更新 |
| **資料品質** | 網頁結構不一致、編碼問題、噪音資料 |
| **法律合規** | robots.txt、ToS、GDPR、著作權 |

### 爬蟲技術演進

| 世代 | 技術 | 代表 |
|------|------|------|
| **靜態爬蟲** | HTTP + CSS/XPath | Scrapy、BeautifulSoup |
| **動態爬蟲** | 無頭瀏覽器 + 等待渲染 | Puppeteer、Playwright、Selenium |
| **AI 爬蟲** | LLM 理解頁面結構 + 智能提取 | Crawl4AI、Firecrawl |

## 核心特色

- **LLM 友善輸出**：現代爬蟲（Crawl4AI）可直接將網頁轉為 Markdown、結構化 JSON，省去手動解析的步驟，直接供 RAG 管線使用
- **智能內容過濾**：AI 爬蟲能自動識別正文內容，過濾導航、廣告、頁尾等噪音，只提取有價值的資訊
- **並行與分散式爬取**：支援多人並行爬取，搭配速率控制和請求間隔，避免觸發反爬機制
- **快取與增量更新**：只爬取新增或變更的頁面，避免浪費資源重複爬取相同內容
- **多格式輸出**：支援 Markdown、HTML、JSON、PDF 等多種輸出格式，適應不同下游需求

## 怎麼用

### 基本爬蟲流程

```
URL 列表 → HTTP 請求 → HTML 回應 → 解析提取 → 結構化資料
                                ↓
                      （需要 JS 渲染？）
                                ↓
                     無頭瀏覽器 → 等待渲染 → 提取
```

### 使用 Crawl4AI（LLM 友善爬蟲）

```python
import asyncio
from crawl4ai import AsyncWebCrawler

async def main():
    async with AsyncWebCrawler() as crawler:
        result = await crawler.arun(url="https://example.com")
        # 直接取得 Markdown 格式
        print(result.markdown)
        # 結構化提取
        print(result.extracted_content)

asyncio.run(main())
```

### 使用 Scrapy（傳統高性能爬蟲）

```python
import scrapy

class MySpider(scrapy.Spider):
    name = 'my_spider'
    start_urls = ['https://example.com']
    
    def parse(self, response):
        for article in response.css('article'):
            yield {
                'title': article.css('h2::text').get(),
                'content': article.css('.content::text').getall(),
            }
```

### 常見使用場景

- **RAG 知識補充**：爬取網頁文件作為 RAG 的知識來源
- **價格監控**：定期爬取商品價格，追蹤變動
- **新聞聚合**：自動收集多個新聞來源
- **競品分析**：爬取公開資料進行市場分析
- **資料集建構**：大規模爬取用於訓練或評估

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[rag]] | 上游 | 爬蟲是 RAG 的資料採集層，提供知識來源 |
| [[document-parsing]] | 串接 | 爬蟲取得 HTML，文件解析將其結構化 |
| [[hichunk]] | 串接 | 爬取的內容需經分塊才能有效檢索 |
| [[AI-Agent]] | 工具 | Agent 透過爬蟲工具即時取得網頁資訊 |
| [[Knowledge-Graph]] | 下游 | 爬取的實體和關係可建構知識圖譜 |
| [[cocoindex]] | 串接 | 增量索引可管理爬取資料的更新 |

## 相關專案

- [[Crawl4AI]] — LLM 友善網頁爬蟲，Web→Markdown（⭐65.3K）
- [[docling]] — IBM 開源文件解析庫，支援 PDF/DOCX/HTML
- [[microsoft-markitdown]] — 微軟 Markdown 轉換工具

## 相關概念

← [[rag]] · [[document-parsing]] · [[hichunk]] · [[AI-Agent]] · [[Knowledge-Graph]] · [[cocoindex]]

## 來源

- [Web Scraping 概念整理](../raw/2026-05-10-crawl4ai.md)
- [文件解析基礎](../raw/2026-05-03-docling.md)

---

_此頁由 daily-llm-trending 自動維護_