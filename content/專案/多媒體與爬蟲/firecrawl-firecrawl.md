---
title: Firecrawl
slug: firecrawl-firecrawl
created: 2026-06-12
updated: 2026-06-12
stars: 131562
language: TypeScript
topics: [網頁爬蟲 API, LLM-ready, MCP, Agent]
---

# Firecrawl

> ⭐131562 · 網頁爬蟲 API，把任何網頁轉成 LLM 友善的 Markdown/JSON，搜尋+爬取+互動三合一

## 快速導航

[[網頁爬蟲]] · [[AI-Agent]] · [[rag]] · [[網頁爬蟲]]

## 是什麼

Firecrawl 是一個專為 AI Agent 設計的網頁資料 API。它能搜尋網頁、爬取內容、甚至與頁面互動（點擊、滾動、填表），然後把結果轉成乾淨的 Markdown、結構化 JSON 或截圖。跟傳統爬蟲最大的差別在於：Firecrawl 的輸出是 LLM-ready 的——直接餵給語言模型就能用，不需要再清理格式。

它處理了所有爬蟲最頭痛的問題：JS 渲染頁面、代理輪換、速率限制、反偵測機制。號稱覆蓋 96% 的網頁（含 JS-heavy SPA），P95 延遲僅 3.4 秒。除了網頁，還能解析線上 PDF 和 DOCX 檔案。

同時提供開源版和託管服務，開源版可自架，託管版按用量計費。也支援 MCP 協議，一行指令就能串接到任何 AI Agent。

## 核心特色

- **搜尋 + 爬取 + 互動三合一**：Search → Scrape → Interact，一個 API 搞定網頁資料全流程
- **LLM-ready 輸出**：自動轉 Markdown/JSON/截圖，省 token 又好用
- **96% 網頁覆蓋率**：JS-heavy SPA、反爬蟲機制都能處理，內建代理輪換
- **Agent 自動化**：描述你要什麼資料，Agent 模式自動採集，不用寫爬蟲腳本
- **MCP 原生支援**：`npx firecrawl-mcp` 一行串接，AI Agent 直接呼叫
- **文件解析**：網頁上託管的 PDF、DOCX 也能解析成結構化資料

## 怎麼用

**Python SDK：**

```bash
pip install firecrawl-py
```

```python
from firecrawl import Firecrawl

app = Firecrawl(api_key="fc-YOUR_API_KEY")

# 搜尋網頁
search_result = app.search("firecrawl", limit=5)

# 爬取單頁
result = app.scrape('https://example.com')

# 爬取整站
crawl_result = app.crawl('https://example.com')
```

**Node.js SDK：**

```bash
npm install firecrawl
```

```javascript
import { Firecrawl } from 'firecrawl';
const app = new Firecrawl({ apiKey: "fc-YOUR_API_KEY" });
const result = await app.scrape('https://example.com');
```

**MCP Server（AI Agent 整合）：**

```bash
npx firecrawl-mcp
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | LLM-ready | JS 渲染 | MCP |
|------|-------|------|-----------|---------|-----|
| **Firecrawl** | ⭐131k | 網頁 API | ✅ Markdown/JSON | ✅ | ✅ |
| [[D4Vinci-Scrapling|Scrapling]] | ⭐56k | Python 爬蟲 | ❌ 原始 HTML | ✅ | ✅ |
| [[Crawl4AI|Crawl4AI]] | ⭐65k | 爬蟲框架 | ✅ Markdown | ✅ | ❌ |
| [[browser-use-browser-use|Browser Use]] | ⭐98k | 瀏覽器 Agent | ✅ | ✅ | ❌ |
| [[網頁爬蟲|Web Crawling]] | — | 概念 | — | — | — |

## 相關概念

← [[網頁爬蟲]] · [[AI-Agent]] · [[rag]] · [[MCP]]

## 來源

- GitHub: <https://github.com/firecrawl/firecrawl>
- 原始 README: `raw/2026-06-12-firecrawl-firecrawl.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/firecrawl/firecrawl |
| Stars | ⭐131562|
| License | AGPL-3.0 |
| 收錄日期 | 2026-06-12 |
