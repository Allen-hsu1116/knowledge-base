---
title: Scrapling
slug: D4Vinci-Scrapling
created: 2026-06-01
updated: 2026-06-01
stars: 56630
language: Python
topics: [網頁爬蟲, 自適應解析, 反偵測, MCP]
---

# Scrapling

> ⭐56.6k · 自適應網頁爬蟲框架，從單一請求到大規模爬取都能搞定

## 快速導航
[[網頁爬蟲]] · [[Crawl4AI]] · [[MCP]]

## 是什麼

Scrapling 是一個 Python 網頁爬蟲框架，最大特色是「自適應解析器」——它能學習網站的 DOM 結構，當頁面改版時自動重新定位元素，不用手動更新選擇器。這解決了爬蟲開發者最頭痛的維護問題。

它整合了多種 fetcher（包括反反爬的 StealthyFetcher），能繞過 Cloudflare Turnstile 等反機器人保護。同時內建 Spider 框架，支援並發多 session 爬取、自動 proxy 輪替和暫停/恢復功能。一個庫涵蓋從簡單請求到企業級爬取的全流程。

Scrapling 也提供了 MCP Server，讓 AI Agent 可以直接呼叫爬蟲功能，將網頁資料擷取整合進 AI 工作流中。

## 核心特色

- **自適應解析器**：透過 `auto_save=True` 儲存元素特徵，頁面改版後用 `adaptive=True` 自動重新定位，無需手動維護選擇器
- **反偵測 Fetcher**：StealthyFetcher 基於 Playwright，內建繞過 Cloudflare Turnstile、DataDome 等反機器人系統的能力
- **Spider 框架**：提供類似 Scrapy 的 Spider 類別，支援並發爬取、暫停/恢復、自動 proxy 輪替
- **MCP 整合**：提供 MCP Server，AI Agent 可直接透過 MCP 協議呼叫爬蟲功能
- **多種 Fetcher 模式**：Fetcher（基本）、AsyncFetcher（非同步）、StealthyFetcher（反偵測）、DynamicFetcher（動態渲染），按需求選擇

## 怎麼用

安裝：

```bash
pip install scrapling
```

基本使用——自適應爬取：

```python
from scrapling.fetchers import StealthyFetcher

StealthyFetcher.adaptive = True
p = StealthyFetcher.fetch('https://example.com', headless=True, network_idle=True)

# 儲存元素特徵
products = p.css('.product', auto_save=True)

# 網站改版後，用 adaptive 重新定位
products = p.css('.product', adaptive=True)
```

Spider 爬取：

```python
from scrapling.spiders import Spider, Response

class MySpider(Spider):
    name = "demo"
    start_urls = ["https://example.com/"]

    async def parse(self, response: Response):
        for item in response.css('.product'):
            yield {"title": item.css('h2::text').get()}

MySpider().start()
```

MCP Server：

```bash
scrapling mcp
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 自適應解析 | 反偵測 | MCP 整合 |
|------|-------|------|-----------|--------|----------|
| **Scrapling** | ⭐56.6k | 爬蟲框架 | ✅ 自動重新定位 | ✅ Cloudflare Turnstile | ✅ 內建 |
| [[Crawl4AI]] | ⭐65.3k | 爬蟲框架 | ❌ | ⚠️ 需額外配置 | ✅ |
| [[網頁爬蟲]] | — | 概念 | — | — | — |

Scrapling 和 Crawl4AI 都提供 AI 友善的爬蟲方案，但 Scrapling 的自適應解析器是獨特優勢。Crawl4AI 更偏 LLM 內容提取，Scrapling 更偏傳統爬蟲場景的自動化維護。

## 相關概念
← [[網頁爬蟲]] · [[Crawl4AI]] · [[MCP]]

## 來源

- GitHub: <https://github.com/D4Vinci/Scrapling>
- 原始 README: `raw/2026-06-01-D4Vinci-Scrapling.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [D4Vinci/Scrapling](https://github.com/D4Vinci/Scrapling) |
| Stars | ⭐56,631 |
| License | BSD 3-Clause |
| Language | Python |
| 收錄日期 | 2026-06-01 |