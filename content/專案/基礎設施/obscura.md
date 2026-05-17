---
title: Obscura
created: 2026-05-09
---

# Obscura

> 開源無頭瀏覽器引擎，用 Rust 打造，完整支援 Chrome DevTools Protocol，Puppeteer/Playwright 即插即用替代品。⭐11.1K

## 快速導航
- 🤖 **AI Agent** → [[AI-Agent]]（Obscura 專為 AI agent 自動化設計）
- 🔌 **MCP** → [[MCP]]（Model Context Protocol）
- 🔄 **Agent 互動** → [[ai-agent-interaction]]（Agent 互動模式）

## 是什麼

Obscura 是一個以 Rust 撰寫的無頭瀏覽器引擎，內建 V8 JavaScript 引擎，完整實作 Chrome DevTools Protocol（CDP）。它不是把 Chromium 包一層殼，而是從零打造的輕量級瀏覽器，記憶體佔用僅 30MB（vs Chrome 的 200+MB）、二進位檔 70MB、頁面載入 85ms。

對於 AI agent 開發者來說，Obscura 提供了一個關鍵優勢：內建反偵測（anti-detection）功能。Stealth Mode 會隨機化瀏覽器指紋、偽造 navigator.webdriver、封鎖 3,520 個追蹤器域名。

## 核心特色

- **極致輕量與高速**：二進位檔 70MB，記憶體 30MB，頁面載入 51-84ms
- **Chrome DevTools Protocol 完整實作**：Puppeteer 和 Playwright 腳本可以直接連接，零修改遷移
- **Stealth Mode**：反偵測 + 追蹤器封鎖，每個 session 指紋隨機化，封鎖 3,520 個追蹤/廣告/遙測域名
- **並行爬蟲模式**：`obscura scrape` 支援多 URL 並行爬取
- **LP Domain**：DOM-to-Markdown 轉換（getMarkdown）

## 怎麼用

```bash
# 下載預建二進位
curl -LO https://github.com/h4ckf0r0day/obscura/releases/latest/download/obscura-x86_64-linux.tar.gz
tar xzf obscura-x86_64-linux.tar.gz

# Puppeteer 整合
const browser = await puppeteer.connect({
  browserWSEndpoint: 'ws://127.0.0.1:9222/devtools/browser',
});
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[AI-Agent]] | AI Agent 框架 | Obscura 是 Agent 的瀏覽器自動化引擎 |
| [[MCP]] | 通信協議 | MCP 可用於 Agent 與瀏覽器的通信 |

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[ai-agent-interaction]]

## 來源

- raw/2026-05-09-obscura.md

---

- **GitHub**: https://github.com/h4ckf0r0day/obscura
- **Stars**: ⭐11,146
- **License**: Apache 2.0
- **收錄日期**: 2026-05-09