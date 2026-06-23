---
title: Web Crawling
slug: web-crawling
language: zh-TW
---

# Web Crawling

> 系統化地瀏覽和收集網頁資料的技術，強調從種子 URL 出發自動發現和遍歷連結。

## 核心內容

Web Crawling（網頁爬蟲）是系統化地瀏覽和收集網頁資料的技術。不同於 Web Scraping 專注在資料提取，Crawling 更強調從種子 URL 開始，自動發現和遍歷網頁連結的過程。搜尋引擎的爬蟲（如 Googlebot）就是最典型的 Web Crawler。

爬蟲的核心流程是從種子 URL 出發，將頁面下載後解析其中的連結，將新發現的 URL 加入待訪問佇列，不斷重複直到遍歷完成。這個過程需要處理 URL 去重、優先級排序、速率控制等問題，大規模爬取還需要分散式架構支援。

在 AI 時代，Web Crawling 的重要性大幅提升。RAG 管線需要高品質的網頁資料作為知識來源，Agent 需要即時網頁資訊做決策，知識圖譜需要從網頁提取實體和關係。現代爬蟲工具如 Crawl4AI 能將網頁直接轉為 LLM 友善的 Markdown 格式，省去手動解析的步驟。

## 關鍵要素

- **系統化遍歷**：從種子 URL 出發，自動發現和追蹤連結，建構完整的網站地圖
- **URL 佇列管理**：待訪問 URL 的優先級排序、去重、速率控制，避免重複和過載
- **增量爬取**：只爬取新增或變更的頁面，避免重複勞動和浪費資源
- **遵守 robots.txt**：尊重網站的爬取規則，合法合規操作
- **LLM 友善輸出**：現代爬蟲將網頁轉為 Markdown 或結構化 JSON，直接供 RAG 管線使用
- **JavaScript 渲染**：單頁應用需要無頭瀏覽器才能取得完整內容

## 各框架的做法

- **Crawl4AI** → AI 友善的開源爬蟲工具，支援深度爬取和 Markdown 輸出
  👉 詳見 [[Crawl4AI]]
- **Firecrawl** → 網頁爬蟲 API，提供 LLM-ready 的結構化資料提取
  👉 詳見 [[firecrawl-firecrawl|Firecrawl]]
- **Scrapling** → 自適應爬蟲框架，能自動重新定位元素並具備反偵測能力
  👉 詳見 [[D4Vinci-Scrapling|Scrapling]]
- **Agent Reach** → 多平台 Agent 爬蟲，支援跨平台資料採集
  👉 詳見 [[agent-reach|Agent Reach]]

## 相關概念

- [[web-scraping|網頁爬取]] — Crawling 是遍歷，Scraping 是提取，兩者常搭配使用
- [[rag|RAG]] — 爬取的頁面是 RAG 知識庫的資料來源
- [[Knowledge-Graph|知識圖譜]] — 爬取的實體和關係可建構知識圖譜
- [[document-parsing|文件解析]] — 爬取的頁面需經解析才能結構化

## 來源

- Crawl4AI、Firecrawl、Scrapling 等爬蟲工具文件
- 知識庫內爬蟲相關專案頁面