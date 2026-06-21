---
title: Crawl4AI
slug: Crawl4AI
created: 2026-05-10
updated: 2026-05-10
stars: 65,284
language: zh-TW
---

# Crawl4AI

> ⭐65,284 · LLM 友善的網頁爬蟲，把網頁轉成乾淨的 Markdown 供 RAG 和 Agent 使用。65.3K ⭐。

## 快速導航
- 📚 **RAG** → [[rag]]（Crawl4AI 是 RAG 系統的網頁資料採集層）
- 📄 **文件解析** → [[document-parsing]]（Crawl4AI 把網頁轉成結構化內容）
- 🤖 **AI Agent** → [[AI-Agent]]（Agent 用 Crawl4AI 抓取網頁資訊）

## 是什麼

Crawl4AI 是 LLM 友善的開源網頁爬蟲，把網頁轉成乾淨的 Markdown，供 RAG 系統和 AI Agent 使用。它解決了「網頁內容太髒，LLM 無法直接消化」的問題——自動移除廣告、導航、腳本等噪音，處理 Shadow DOM 等動態渲染問題，是 RAG 和 Agent 系統的網頁資料採集基礎設施。

## 核心特色

- **網頁→乾淨 Markdown**：自動移除廣告、導航、腳本等噪音，輸出 LLM 可直接消化的 Markdown
- **反偵測**：自動 3 層 proxy 升級，繞過反爬機制
- **Shadow DOM flattening**：處理動態渲染頁面，正確提取隱藏 DOM 內容
- **深度爬取**：Sitemap 爬取、Crash recovery + 狀態續爬，大規模爬取也穩定
- **結構化抽取**：LLM-assisted 結構化資料抽取，可定義 schema 自動提取欄位
- **CSS 選擇器**：精確指定要提取或排除的頁面區塊
- **JavaScript 渲染**：支援需要 JS 執行的頁面
- **Docker 部署**：一鍵容器化部署
- **65K+ star 社群**：活躍開源社群，持續更新

## 怎麼用

```bash
pip install crawl4ai
crawl4ai-setup
```

```python
from crawl4ai import AsyncWebCrawler

async with AsyncWebCrawler() as crawler:
    result = await crawler.arun(url="https://example.com")
    print(result.markdown)  # 乾淨的 Markdown

# 結構化資料抽取
from crawl4ai import AsyncWebCrawler, CacheMode
from crawl4ai.extraction_strategy import LLMExtractionStrategy

async with AsyncWebCrawler() as crawler:
    result = await crawler.arun(
        url="https://example.com",
        extraction_strategy=LLMExtractionStrategy(schema="List the products"),
    )
    print(result.extracted_content)

# 深度爬取整個網站
result = await crawler.arun(
    url="https://example.com",
    deep_crawl=True,
    max_pages=100
)
```

## 跟其他方案的關係

| 專案 | 定位 | 輸入 | 輸出 | LLM 友善 |
|------|------|------|------|----------|
| Crawl4AI | 網頁爬蟲 | URL | Markdown | ✅ 專為 LLM 設計 |
| [[docling]] | 文件解析 | PDF/DOCX | 結構化 | ✅ |
| [[microsoft-markitdown]] | 文件轉 Markdown | Office 文件 | Markdown | ✅ |
| Scrapy | 通用爬蟲 | URL | HTML/JSON | ❌ 需手動處理 |
| BeautifulSoup | HTML 解析 | HTML | 結構化 | ❌ 需手動清洗 |
| [[D4Vinci-Scrapling|Scrapling]] | 自適應爬蟲 | URL | 結構化 | ✅ MCP 整合 |
| [[rag]] | 概念頁 | — | — | Crawl4AI 是 RAG 的上游資料採集工具 |

## 相關概念
← [[rag]] · [[document-parsing]] · [[AI-Agent]] · [[D4Vinci-Scrapling|Scrapling]]

## 來源
- raw/2026-05-10-crawl4ai.md

---

- **GitHub**: https://github.com/unclecode/crawl4ai
- **Stars**: ⭐65,284
- **License**: Apache-2.0
- **收錄日期**: 2026-05-10

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/unclecode/crawl4ai |
| **Stars** | ⭐65,284 |
| **收錄日期** | 2026-05-10 |
