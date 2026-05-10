---
aliases:
  - Web Crawling
---

# Web Crawling

> 詳見 [[網頁爬蟲]]

網頁爬蟲（Web Crawling）是系統化地瀏覽和收集網頁資料的技術。與 Web Scraping 的差異：爬蟲強調系統化遍歷，爬取強調資料提取。

## 核心流程

1. 種子 URL：起始點
2. 下載頁面：HTTP 請求
3. 解析連結：提取頁面中的 URL
4. URL 佇列：待訪問的 URL 佇列
5. 去重：避免重複訪問
6. 遵守規則：robots.txt、rate limiting

## AI Agent 的爬蟲需求

- 乾淨的 Markdown（[[Crawl4AI|Crawl4AI]]、Jina Reader）
- 結構化資料（JSON-LD、schema.org）
- JavaScript 渲染（需要瀏覽器引擎）
- 多平台（[[agent-reach|Agent Reach]]、[[opencli|OpenCLI]]）

## 相關主題

- [[web-scraping|網頁爬取]]
- [[agent-reach|Agent Reach]]
- [[Crawl4AI]]