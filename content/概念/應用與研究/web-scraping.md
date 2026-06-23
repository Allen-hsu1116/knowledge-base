---
title: Web Scraping
slug: web-scraping
language: zh-TW
---

# 網頁爬取

> 從網頁自動提取結構化資料的技術，從傳統 HTML 解析到 AI 驅動的智能爬蟲。

## 核心內容

Web Scraping（網頁爬取）是自動化的網頁資料提取技術。傳統爬蟲用 HTTP 請求搭配 CSS/XPath 選擇器抓取靜態頁面，現代爬蟲則需要處理 JavaScript 渲染、反爬機制、動態載入等複雜場景。

隨著技術演進，爬蟲經歷了三個世代：靜態爬蟲（HTTP + CSS/XPath，如 Scrapy、BeautifulSoup）、動態爬蟲（無頭瀏覽器 + 等待渲染，如 Puppeteer、Playwright）、AI 爬蟲（LLM 理解頁面結構 + 智能提取，如 Crawl4AI、Firecrawl）。AI 爬蟲能自動識別正文內容，過濾導航、廣告、頁尾等噪音，只提取有價值的資訊。

在 AI 應用中，Web Scraping 是 RAG 管線的資料採集層，為知識庫提供高品質的網頁資料來源。AI Agent 透過爬蟲工具即時取得網頁資訊進行決策，知識圖譜從爬取的頁面中提取實體和關係。現代爬蟲支援 Markdown、HTML、JSON、PDF 等多種輸出格式，適應不同下游需求。

## 關鍵要素

- **LLM 友善輸出**：將網頁直接轉為 Markdown 或結構化 JSON，省去手動解析步驟
- **智能內容過濾**：AI 爬蟲自動識別正文，過濾導航、廣告、頁尾等噪音
- **反爬機制應對**：處理 CAPTCHA、速率限制、IP 封鎖、User-Agent 檢測等挑戰
- **JavaScript 渲染**：單頁應用需要無頭瀏覽器才能取得完整內容
- **並行與分散式爬取**：支援多人並行爬取，搭配速率控制避免觸發反爬
- **快取與增量更新**：只爬取新增或變更的頁面，避免重複浪費資源

## 各框架的做法

- **Crawl4AI** → LLM 友善爬蟲，直接將網頁轉為 Markdown 供 RAG 使用
  👉 詳見 [[Crawl4AI]]
- **Firecrawl** → 網頁爬蟲 API，提供 LLM-ready 的結構化資料提取和 MCP 整合
  👉 詳見 [[firecrawl-firecrawl|Firecrawl]]
- **Scrapling** → 自適應爬蟲框架，自動重新定位元素並具備反偵測能力
  👉 詳見 [[D4Vinci-Scrapling|Scrapling]]
- **Camofox Browser** → 瀏覽器自動化工具，支援反偵測的網頁互動
  👉 詳見 [[jo-inc-camofox-browser|Camofox Browser]]

## 相關概念

- [[web-crawling|Web Crawling]] — Crawling 是遍歷，Scraping 是提取，兩者互補
- [[rag|RAG]] — 爬蟲是 RAG 的資料採集層，提供知識來源
- [[document-parsing|文件解析]] — 爬蟲取得 HTML，文件解析將其結構化
- [[Knowledge-Graph|知識圖譜]] — 爬取的實體和關係可建構知識圖譜
- [[hichunk|HiChunk]] — 爬取的內容需經分塊才能有效檢索

## 來源

- Crawl4AI、Firecrawl、Scrapling 等爬蟲工具文件
- 知識庫內爬蟲與文件解析相關專案頁面