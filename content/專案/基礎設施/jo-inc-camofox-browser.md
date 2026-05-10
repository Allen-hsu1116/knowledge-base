# Camofox Browser

> AI Agent 專用隱身無頭瀏覽器 — C++ 層指紋偽裝繞過 Cloudflare，REST API 直接替代 Puppeteer/Playwright。

## 快速導航

- [[AI-Agent|AI Agent]] — 自主 AI 系統
- [[MCP]] — Model Context Protocol

## 是什麼

jo-inc/camofox-browser 基於 Camoufox（Firefox fork，在 C++ 層做指紋偽裝），包裝成 AI agent 友善的 REST API。是 Puppeteer/Playwright 的直接替代品，但能繞過 Google、Cloudflare 等反機器人偵測。支援 Docker、Fly.io、Railway 部署，也有 OpenClaw 插件。

## 核心特色

- **C++ Anti-Detection** — Camoufox 在 Firefox 的 C++ 原始碼層修改指紋（Canvas、WebGL、Navigator、Screen 等），不是 JavaScript 層 patch，所以反偵測腳本無法偵測到偽裝行為本身
- **Element Refs** — accessibility snapshot 回傳穩定的 e1、e2、e3 識別符，Agent 互動時不用 fragile 的 CSS selector，用 ref 就能可靠地點擊、填寫、提取
- **Token 高效** — accessibility snapshot（DOM 的無障礙樹表示）比 raw HTML 小約 90%，大幅減少送進 LLM context 的 token 量
- **低記憶體** — lazy 啟動（第一次請求才開瀏覽器）+ idle 自動關閉（閒置超時殺進程），閒置時約 40MB 記憶體
- **Session Isolation** — 每個使用者獨立 cookies/storage，多 agent 不會互相干擾登入狀態
- **Search Macros** — @google_search、@youtube_search、@amazon_search、@reddit_subreddit 等預建搜尋巨集，一次請求完成搜尋+提取
- **Structured Extract** — POST /tabs/:tabId/extract，用 JSON Schema 定義輸出格式，直接拿到結構化資料
- **OpenClaw 插件** — `openclaw plugins install @askjo/camofox-browser`，一行安裝整合

## 怎麼實現的

Camofox Browser 的核心是 Camoufox 引擎 + REST API 層 + Agent 優化：

1. **Camoufox 引擎**：基於 Firefox 的 fork，在 C++ 層修改瀏覽器指紋。傳統反偵測工具（如 Puppeteer stealth plugin）在 JavaScript 層修補 navigator.webdriver 等屬性，但反偵測系統可以偵測到 patch 行為。Camoufox 直接改 C++ 原始碼，從底層改變瀏覽器的真實行為
2. **Accessibility Snapshot**：不回傳 raw HTML（太大），而是提取 DOM 的 accessibility tree — 只保留角色、名稱、值等語義資訊，壓縮率約 90%。每個元素分配穩定 ref（e1、e2...），後續互動用 ref 定位
3. **REST API 設計**：所有操作都是 HTTP 呼叫（POST /tabs、GET /tabs/:id/snapshot、POST /tabs/:id/act），Agent 不需要跑 JavaScript 或 WebSocket，直接 HTTP 請求即可操作瀏覽器
4. **Lazy Lifecycle**：瀏覽器進程按需啟動，idle timeout 後自動關閉。記憶體佔用從傳統的 200-500MB 降到閒置 40MB
5. **VNC Interactive Login**：提供 VNC 介面讓人類視覺化登入網站（如 Google 帳號），登入後匯出 storage state 供後續 agent 使用

## 怎麼用

```bash
# OpenClaw 插件安裝（最簡單）
openclaw plugins install @askjo/camofox-browser

# Docker 部署
docker run -p 3000:3000 jo-inc/camofox-browser

# Fly.io 部署
fly launch --image jo-inc/camofox-browser

# Railway 部署
# 從 GitHub repo 直接部署

# REST API 使用範例
# 開新分頁
curl -X POST http://localhost:3000/tabs -d '{"url": "https://example.com"}'

# 取得 accessibility snapshot
curl http://localhost:3000/tabs/{tabId}/snapshot

# 點擊元素（用 ref）
curl -X POST http://localhost:3000/tabs/{tabId}/act \
  -d '{"kind": "click", "ref": "e3"}'

# 結構化提取
curl -X POST http://localhost:3000/tabs/{tabId}/extract \
  -d '{"schema": {"type": "object", "properties": {"title": {"type": "string"}, "price": {"type": "number"}}}}'

# 搜尋巨集
curl http://localhost:3000/search/@google_search?q=AI+agents

# OpenAPI 文件
curl http://localhost:3000/openapi.json
```

## 跟其他方案的關係

| 方案 | 反偵測 | Token 效率 | Agent 友善 | 部署 |
|------|--------|-----------|------------|------|
| **Camofox Browser** | ✅ C++ 層 | ✅ 90% 壓縮 | ✅ REST + refs | Docker/Fly/Railway |
| **Puppeteer** | ❌ | ❌ raw HTML | ⚠️ 需寫 JS | 自行部署 |
| **Playwright** | ❌ | ❌ raw HTML | ⚠️ 需寫 JS | 自行部署 |
| **Browser Use** | ⚠️ JS patch | ❌ | ✅ Agent-first | Python |

- 與 Puppeteer/Playwright 定位相同但主打反偵測：傳統工具在 JS 層 patch 很容易被偵測，Camofox 在 C++ 層修改無法被偵測
- 有 OpenClaw 插件，直接整合到 [[openclaw|OpenClaw]] 工作流，Agent 不需要額外配置
- 與 [[AI-Agent|AI Agent]] 概念相關：Agent 需要網頁互動能力，Camofox 提供最可靠的方案

## 相關概念

- [[AI-Agent|AI Agent]]
- [[MCP]]

## 來源

- raw/2026-05-08-jo-inc-camofox-browser.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [jo-inc/camofox-browser](https://github.com/jo-inc/camofox-browser) | ⭐4,203 | — | 2026-05-08 |