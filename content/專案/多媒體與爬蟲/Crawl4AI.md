# Crawl4AI

> LLM 友善的網頁爬蟲，把網頁轉成乾淨的 Markdown 供 RAG 和 Agent 使用。65.3K ⭐。

## 快速導航
- 📚 **RAG** → [[rag]]（Crawl4AI 是 RAG 系統的網頁資料採集層）
- 📄 **文件解析** → [[document-parsing]]（Crawl4AI 把網頁轉成結構化內容）
- 🤖 **AI Agent** → [[AI-Agent]]（Agent 用 Crawl4AI 抓取網頁資訊）

## 是什麼

Crawl4AI 是 LLM 友善的開源網頁爬蟲，把網頁轉成乾淨的 Markdown，供 RAG 系統和 AI Agent 使用。它解決了「網頁內容太髒，LLM 無法直接消化」的問題，是 RAG 和 Agent 系統的網頁資料採集基礎設施。

## 核心特色

- **網頁→乾淨 Markdown**：自動移除廣告、導航、腳本
- **反偵測**：自動 3 層 proxy 升級
- **Shadow DOM flattening**：處理動態渲染頁面
- **深度爬取**：Sitemap 爬取、Crash recovery + 狀態續爬
- **結構化抽取**：LLM-assisted 結構化資料抽取
- **Docker 部署**
- **50K+ star 社群**

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
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[docling]] | 文件解析 | Crawl4AI 做網頁→Markdown，Docling 做文件→結構化 |
| [[microsoft-markitdown]] | 文件轉 Markdown | Crawl4AI 專攻網頁，MarkItDown 專攻文件 |
| [[rag]] | 概念頁 | Crawl4AI 是 RAG 的上游資料採集工具 |

## 相關概念
← [[rag]] · [[document-parsing]] · [[AI-Agent]]

## 來源
- raw/2026-05-10-crawl4ai.md

---

- **GitHub**: https://github.com/unclecode/crawl4ai
- **Stars**: ⭐65,284
- **License**: Apache-2.0
- **收錄日期**: 2026-05-10