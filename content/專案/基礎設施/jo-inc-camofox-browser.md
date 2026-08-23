---
title: Camofox Browser
slug: jo-inc-camofox-browser
created: 2026-05-08
updated: 2026-05-26
stars: 5829
language: JavaScript
topics: [AI Agent, 瀏覽器自動化, 反偵測]
---

# Camofox Browser

> ⭐5829 · AI Agent 專用隱身無頭瀏覽器 — C++ 層指紋偽裝繞過 Cloudflare，REST API 直接替代 Puppeteer/Playwright。

## 快速導航


- 🤖 [[AI-Agent|AI Agent]] — 自主 AI 系統
- 🔌 [[MCP]] — Model Context Protocol

## 是什麼


jo-inc/camofox-browser 基於 Camoufox（Firefox fork，在 C++ 層做指紋偽裝），包裝成 AI agent 友善的 REST API。

是 Puppeteer/Playwright 的直接替代品，但能繞過 Google、Cloudflare 等反機器人偵測。支援 Docker、Fly.io、Railway 部署，也有 OpenClaw 插件。

## 核心特色

- **C++ Anti-Detection** — Camoufox 在 Firefox 的 C++ 原始碼層修改指紋（Canvas、WebGL、Navigator、Screen 等），不是 JavaScript 層 patch，所以反偵測腳本無法偵測到偽裝行為本身
- **Element Refs** — accessibility snapshot 回傳穩定的 e1、e2、e3 識別符，Agent 互動時不用 fragile 的 CSS selector，用 ref 就能可靠地點擊、填寫、提取
- **Token 高效** — accessibility snapshot（DOM 的無障礙樹表示）比 raw HTML 小約 90%，大幅減少送進 LLM context 的 token 量
- **低記憶體** — lazy 啟動（第一次請求才開瀏覽器）+ idle 自動關閉（閒置超時殺進程），閒置時約 40MB 記憶體
- **Session Isolation** — 每個使用者獨立 cookies/storage，多 agent 不會互相干擾登入狀態
- **Cookie Import** — 注入 Netscape 格式的 cookie 檔案，讓 Agent 跳過登入直接以已認證狀態瀏覽
- **Search Macros** — @google_search、@youtube_search、@amazon_search、@reddit_subreddit 等預建搜尋巨集，一次請求完成搜尋+提取
- **Structured Extract** — POST /tabs/:tabId/extract，用 JSON Schema 定義輸出格式，直接拿到結構化資料
- **YouTube Transcripts** — 透過 yt-dlp 提取任何 YouTube 影片的字幕，不需要 API key
- **Proxy + GeoIP** — 支援住宅代理路由流量，自動匹配 locale/timezone
- **OpenClaw 插件** — `openclaw plugins install @askjo/camofox-browser`，一行安裝整合

## 怎麼用

```bash
# npm 安裝（本地運行）
git clone https://github.com/jo-inc/camofox-browser && cd camofox-browser
npm install && npm start
# -> http://localhost:9377

# OpenClaw 插件安裝（最簡單）
openclaw plugins install @askjo/camofox-browser

# Docker 部署
docker run -p 3000:3000 jo-inc/camofox-browser

# Fly.io 部署
fly launch --image jo-inc/camofox-browser

# REST API 使用範例
# 開新分頁
curl -X POST http://localhost:9377/tabs -d '{"url": "https://example.com"}'

# 取得 accessibility snapshot
curl http://localhost:9377/tabs/{tabId}/snapshot

# 點擊元素（用 ref）
curl -X POST http://localhost:9377/tabs/{tabId}/act \
  -d '{"kind": "click", "ref": "e3"}'

# 結構化提取
curl -X POST http://localhost:9377/tabs/{tabId}/extract \
  -d '{"schema": {"type": "object", "properties": {"title": {"type": "string"}, "price": {"type": "number"}}}}'

# 搜尋巨集
curl http://localhost:9377/search/@google_search?q=AI+agents

# OpenAPI 文件
curl http://localhost:9377/openapi.json
```

## 跟其他方案的關係


- **Camofox Browser** — ✅ C++ 層反偵測 · ✅ 90% Token 壓縮 · ✅ REST + refs · Docker/Fly/Railway
- **Puppeteer** — ❌ 反偵測 · ❌ raw HTML · ⚠️ 需寫 JS · 自行部署
- **Playwright** — ❌ 反偵測 · ❌ raw HTML · ⚠️ 需寫 JS · 自行部署
- **Browser Use** — ⚠️ JS patch 反偵測 · ❌ Token 效率 · ✅ Agent-first · Python

- 與 Puppeteer/Playwright 定位相同但主打反偵測：傳統工具在 JS 層 patch 很容易被偵測，Camofox 在 C++ 層修改無法被偵測
- 有 OpenClaw 插件，直接整合到 OpenClaw 工作流，Agent 不需要額外配置
- 與 AI Agent 概念相關：Agent 需要網頁互動能力，Camofox 提供最可靠的方案

| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[AI-Agent]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[MCP]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念


← [[AI-Agent]] · [[MCP]]

## 來源

- [GitHub：專案原始碼](https://github.com/jo-inc/camofox-browser)
- raw/2026-05-26-jo-inc-camofox-browser.md
- raw/2026-05-08-jo-inc-camofox-browser.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/jo-inc/camofox-browser |
| Stars | ⭐5829|
| License | 未標示 |
| 收錄日期 | 2026-05-08 |
