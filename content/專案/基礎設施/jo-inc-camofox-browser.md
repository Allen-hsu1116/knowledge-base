# Camofox Browser

> AI Agent 專用隱身無頭瀏覽器，繞過 Cloudflare 和反爬蟲偵測。

## 快速導航

- [[AI-Agent|AI Agent]] — 自主 AI 系統
- [[MCP]] — Model Context Protocol

## 是什麼

jo-inc/camofox-browser 基於 Camoufox（Firefox fork，C++ 層指紋偽裝），包裝成 AI agent 友善的 REST API。是 Puppeteer/Playwright 的直接替代品，但能繞過 Google、Cloudflare 等反機器人偵測。

## 核心特色

- **C++ Anti-Detection** — 繞過 Google、Cloudflare 及主流反機器人偵測
- **Element Refs** — 穩定的 e1、e2、e3 識別符，互動可靠
- **Token 高效** — accessibility snapshot 比 raw HTML 小 ~90%
- **低記憶體** — lazy 啟動 + idle 自動關閉，閒置 ~40MB
- **Session Isolation** — 每個使用者獨立 cookies/storage
- **Cookie Import** — 注入 Netscape 格式 cookie
- **Proxy + GeoIP** — 住宅代理路由
- **YouTube Transcripts** — 透過 yt-dlp 擷取字幕
- **Search Macros** — @google_search、@youtube_search、@amazon_search 等
- **OpenAPI Docs** — 自動產生 /openapi.json
- **Structured Extract** — POST /tabs/:tabId/extract，JSON Schema 輸出
- **OpenClaw 插件** — `openclaw plugins install @askjo/camofox-browser`

## 怎麼用

```bash
# OpenClaw 插件安裝
openclaw plugins install @askjo/camofox-browser

# Docker 部署
docker run -p 3000:3000 jo-inc/camofox-browser

# 或 Fly.io / Railway 部署
```

## 跟其他方案的關係

- 與 Puppeteer/Playwright 定位相同但主打反偵測
- 有 OpenClaw 插件，直接整合到 [[openclaw|OpenClaw]] 工作流
- 與 [[AI-Agent|AI Agent]] 概念相關：agent 需要網頁互動能力

## 相關概念

- [[AI-Agent|AI Agent]]
- [[MCP]]

## 來源

- raw/2026-05-08-jo-inc-camofox-browser.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [jo-inc/camofox-browser](https://github.com/jo-inc/camofox-browser) | ⭐4,203 | — | 2026-05-08 |