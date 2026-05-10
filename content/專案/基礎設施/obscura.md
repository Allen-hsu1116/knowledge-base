---
title: Obscura
date: 2026-05-09
stars: 11146
language: Rust
github: https://github.com/h4ckf0r0day/obscura
created: 2026-04-13
tags: [browser, web-scraping, ai-agent, headless, rust]
---

# Obscura

開源無頭瀏覽器引擎，用 Rust 打造，專為 AI agent 自動化與大規模網頁爬蟲設計。完整支援 Chrome DevTools Protocol，可作為 Puppeteer/Playwright 的即插即用替代品。

**相關概念**：[[AI-Agent]] · [[MCP]] · [[ai-agent-interaction]]

---

## 基本資訊

| 項目 | 內容 |
|---|---|
| GitHub | [h4ckf0r0day/obscura](https://github.com/h4ckf0r0day/obscura) |
| Stars | ⭐11.1k |
| Language | Rust |
| 建立日期 | 2026-04-13 |
| 收錄日期 | 2026-05-09 |
| 授權 | Apache 2.0 |

## 快速導航

- [[AI-Agent]] — AI agent 框架與工具
- [[MCP]] — Model Context Protocol
- [[ai-agent-interaction]] — agent 互動模式

---

## 詳細簡介

Obscura 是一個以 Rust 撰寫的無頭瀏覽器引擎，內建 V8 JavaScript 引擎，完整實作 Chrome DevTools Protocol（CDP）。它不是把 Chromium 包一層殼，而是從零打造的輕量級瀏覽器，記憶體佔用僅 30MB（vs Chrome 的 200+MB）、二進位檔 70MB（vs Chrome 的 300+MB）、頁面載入 85ms（vs Chrome 的 ~500ms）。

對於 AI agent 開發者來說，Obscura 提供了一個關鍵優勢：內建反偵測（anti-detection）功能。傳統的 headless Chrome 會被網站的 bot 偵測系統攔截，而 Obscura 的 Stealth Mode 會隨機化瀏覽器指紋（GPU、螢幕、canvas、audio）、偽造 `navigator.webdriver = undefined`、遮蔽內部屬性、模擬原生函式，並封鎖 3,520 個追蹤器域名。

## 核心特色

### 極致輕量與高速

二進位檔只有 70MB，啟動幾乎即時（vs Chrome ~2s），記憶體佔用 30MB。頁面載入時間在靜態 HTML 上僅 51ms，在含 JS + XHR + fetch 的頁面上也只有 84ms。這讓 Obscura 非常適合在單台機器上並行跑數十到數百個爬蟲實例。

### Chrome DevTools Protocol 完整實作

Obscura 不是模擬 CDP，而是實作了完整的協定，包括 Target、Page、Runtime、DOM、Network、Fetch、Storage、Input 等所有主要 domain。這意味著 Puppeteer 和 Playwright 的腳本可以直接連接 Obscura，零修改遷移。

### Stealth Mode：反偵測 + 追蹤器封鎖

透過 `--stealth` 旗標啟用。功能包含：
- 每個 session 的指紋隨機化（GPU、螢幕解析度、canvas、audio context、battery）
- `navigator.userAgentData` 偽造為 Chrome 145 高熵值
- `event.isTrusted = true` 保障
- `Function.prototype.toString()` 返回 `[native code]`
- `navigator.webdriver = undefined`
- 自動封鎖 3,520 個追蹤/廣告/遙測域名

### 並行爬蟲模式

`obscura scrape` 指令支援多 URL 並行爬取，內建 worker 進程管理，`--concurrency` 參數控制並行數量，`--format json` 直接輸出結構化結果。

### CDP API 支援範圍

| Domain | Methods |
|---|---|
| Target | createTarget, closeTarget, attachToTarget, createBrowserContext, disposeBrowserContext |
| Page | navigate, getFrameTree, addScriptToEvaluateOnNewDocument, lifecycleEvents |
| Runtime | evaluate, callFunctionOn, getProperties, addBinding |
| DOM | getDocument, querySelector, querySelectorAll, getOuterHTML, resolveNode |
| Network | enable, setCookies, getCookies, setExtraHTTPHeaders, setUserAgentOverride |
| Fetch | enable, continueRequest, fulfillRequest, failRequest |
| LP | getMarkdown (DOM-to-Markdown 轉換) |

## 安裝方式

```bash
# 下載預建二進位（Linux x86_64）
curl -LO https://github.com/h4ckf0r0day/obscura/releases/latest/download/obscura-x86_64-linux.tar.gz
tar xzf obscura-x86_64-linux.tar.gz

# macOS Apple Silicon
curl -LO https://github.com/h4ckf0r0day/obscura/releases/latest/download/obscura-aarch64-macos.tar.gz

# 從原始碼建置
git clone https://github.com/h4ckf0r0day/obscura.git
cd obscura
cargo build --release
```

### Puppeteer 整合

```javascript
import puppeteer from 'puppeteer-core';
const browser = await puppeteer.connect({
  browserWSEndpoint: 'ws://127.0.0.1:9222/devtools/browser',
});
const page = await browser.newPage();
await page.goto('https://news.ycombinator.com');
```

### Playwright 整合

```javascript
import { chromium } from 'playwright-core';
const browser = await chromium.connectOverCDP({
  endpointURL: 'ws://127.0.0.1:9222',
});
```

## 技術棧

- **語言**: Rust
- **JS 引擎**: V8
- **協定**: Chrome DevTools Protocol (CDP)
- **反偵測**: Stealth Mode (anti-fingerprinting + tracker blocking)
- **生態整合**: Puppeteer, Playwright

## 授權

Apache License 2.0

## 相關連結

- [GitHub](https://github.com/h4ckf0r0day/obscura)
- [Releases](https://github.com/h4ckf0r0day/obscura/releases)