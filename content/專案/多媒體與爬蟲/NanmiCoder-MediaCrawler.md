---
title: MediaCrawler
slug: NanmiCoder-MediaCrawler
created: 2026-06-26
updated: 2026-06-26
stars: 52.8k
language: Python
topics:
  - web-scraping
  - social-media
  - crawler
  - playwright
  - xiaohongshu
  - douyin
  - bilibili
  - weibo
  - zhihu
  - tieba
---

# MediaCrawler

> ⭐52.8k · Python · 多平台社群媒體爬蟲工具，支援小紅書/抖音/快手/B站/微博/貼吧/知乎的筆記、影片、評論抓取

## 快速導航

- 🕷️ **網頁爬蟲** → [[網頁爬蟲|網頁爬取]]
- 🔄 **網頁爬蟲概念** → [[網頁爬蟲|Web Crawling]]
- 🤖 **AI Agent** → [[AI-Agent|AI Agent]]
- 📊 **資料分析** → [[data-analysis|資料分析]]

## 是什麼

MediaCrawler 是一個功能強大的多平台自媒體數據採集工具，支援小紅書、抖音、快手、B站、微博、貼吧、知乎等七個主流中文社群平台的公開資訊抓取。它的核心技術基於 Playwright 瀏覽器自動化框架，透過保留登入態的瀏覽器上下文環境來獲取簽名參數，無需逆向複雜的加密演算法，大幅降低了技術門檻。

不同於傳統爬蟲需要 JS 逆向工程或破解加密簽名，MediaCrawler 的設計理念是「用瀏覽器環境繞過技術難點」。它利用 Playwright 啟動的真實瀏覽器上下文，直接在頁面中執行 JS 表達式來獲取平台所需的簽名參數。最新版本更支援 CDP 模式——直接連接使用者已有的 Chrome 瀏覽器，復用瀏覽器已有的登入狀態、Cookie、擴充功能，大幅降低平台風控偵測風險。

在功能層面，MediaCrawler 對每個平台都支援關鍵詞搜尋、指定帖子 ID 爬取、二級評論抓取、指定創作者主頁爬取、登入態快取、IP 代理池、以及評論詞雲圖生成。它還提供了基於 Web 的可視化操作介面（WebUI），讓不熟悉命令列的使用者也能輕鬆使用爬蟲功能。Pro 版本更加入了斷點續爬、多帳號管理、AI Agent Skill 支援（OpenClaw/Claude Code/Cursor 一鍵安裝）等進階功能。

## 核心特色

1. **七平台全覆蓋** — 小紅書、抖音、快手、B站、微博、貼吧、知乎，每個平台都支援關鍵詞搜尋 + 指定帖子 + 創作者主頁 + 二級評論
2. **CDP 模式** — 連接使用者已有的 Chrome 瀏覽器，復用登入狀態/Cookie/擴充功能，大幅降低風控偵測風險，無需安裝 Playwright 瀏覽器驅動
3. **無需 JS 逆向** — 利用 Playwright 瀏覽器上下文直接執行 JS 獲取簽名參數，繞過加密演算法，技術門檻大幅降低
4. **IP 代理池 + 登入態快取** — 內建 IP 代理池支援防封禁，登入態快取避免重複掃碼，支援多帳號輪換
5. **WebUI 可視化操作** — 基於 FastAPI 的 Web 介面，可視化配置爬蟲參數、即時查看運行狀態和日誌、資料預覽和匯出
6. **uv 套件管理** — 採用 uv 進行 Python 依賴管理，安裝速度快、依賴解析準確，確保環境一致性
7. **AI Agent Skill 支援**（Pro 版） — OpenClaw/Claude Code/Cursor 一鍵安裝，讓 Agent 自動爬取資料

## 怎麼用

```bash
# 1. 安裝 uv（如尚未安裝）
curl -LsSf https://astral.sh/uv/install.sh | sh

# 2. 克隆專案
git clone https://github.com/NanmiCoder/MediaCrawler.git
cd MediaCrawler

# 3. 安裝依賴
uv sync

# 4. 配置 Chrome CDP 模式（推薦）
# 開啟 Chrome，在地址欄輸入 chrome://inspect/#remote-debugging
# 勾選 "Allow remote debugging for this browser instance"
# 確認顯示 Server running at: 127.0.0.1:9222

# 5. 編輯配置文件
# 修改 config/base_config.py 設定關鍵詞、平台、爬取類型等

# 6. 關鍵詞搜尋爬取（以小紅書為例）
uv run main.py --platform xhs --lt qrcode --type search

# 7. 指定帖子 ID 爬取
uv run main.py --platform xhs --lt qrcode --type detail

# 8. 其他平台
uv run main.py --platform dy --lt qrcode --type search    # 抖音
uv run main.py --platform bili --lt qrcode --type search   # B站
uv run main.py --platform wb --lt qrcode --type search     # 微博

# 9. 啟動 WebUI（可視化介面）
uv run uvicorn api.main:app --port 8080 --reload
# 瀏覽器打開 http://localhost:8080
```

**前置需求：** Python 3.11+、Node.js 16+（抖音/知乎需要）、Chrome 瀏覽器 144+（CDP 模式）、uv 套件管理器

## 跟其他方案的關係

| 方案 | 定位 | 目標平台 | 技術路線 | AI Agent 整合 |
|------|------|---------|---------|--------------|
| **MediaCrawler** | 社群媒體爬蟲 | 小紅書/抖音/快手/B站/微博/貼吧/知乎 | Playwright + CDP | ✅ Pro 版 |
| [[D4Vinci-Scrapling\|Scrapling]] | 自適應網頁爬蟲 | 任意網頁 | 自適應解析 + 反偵測 | ✅ MCP |
| [[firecrawl-firecrawl\|Firecrawl]] | 網頁爬蟲 API | 任意網頁 | API 服務 + LLM-ready | ✅ MCP |
| [[Crawl4AI\|Crawl4AI]] | AI 網頁爬蟲 | 任意網頁 | LLM-friendly 輸出 | ✅ MCP |

MediaCrawler 跟 Scrapling 的差異在於：Scrapling 是通用網頁爬蟲，強調自適應解析和反偵測；MediaCrawler 專注中文社群平台，對每個平台的 API 和頁面結構做了深度適配。跟 Firecrawl 的差異在於：Firecrawl 是 SaaS API 服務，把任意網頁轉 LLM-ready 格式；MediaCrawler 是本地工具，直接登入平台抓取使用者資料。跟 Crawl4AI 的差異在於：Crawl4AI 設計為 AI Agent 的網頁抓取組件，輸出格式為 LLM 優化；MediaCrawler 更注重平台帳號管理和風控規避。

## 相關概念

← [[網頁爬蟲|網頁爬取]] · [[網頁爬蟲|Web Crawling]] · [[data-analysis|資料分析]] · [[AI-Agent|AI Agent]]

## 來源

- GitHub: https://github.com/NanmiCoder/MediaCrawler
- raw/2026-06-26-NanmiCoder-MediaCrawler.md

---

| 項目 | 值 |
|------|-----|
| **GitHub** | https://github.com/NanmiCoder/MediaCrawler |
| **Stars** | ⭐52.8k |
| **License** | 自定義（僅供學習研究，禁止商用） |
| **Language** | Python |
| **收錄日期** | 2026-06-26 |