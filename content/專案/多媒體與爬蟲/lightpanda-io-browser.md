---
title: Lightpanda Browser
slug: lightpanda-io-browser
created: 2026-09-08
updated: 2026-09-08
stars: 34853
language: zh-TW
topics: [browser-automation, AI-Agent, MCP, Zig]
---

# Lightpanda Browser

> ⭐34.9k · 以 Zig 從零打造的無頭瀏覽器，整合原生 Agent、MCP 與可重播的 PandaScript。

## 快速導航

- 🧠 [[AI-Agent]] — 從自然語言探索轉為可執行的網頁工作流。
- 🔌 [[MCP]] — 將瀏覽器操作提供給外部 Agent。
- 🖥️ [[computer-use-agent]] — 與視覺式 GUI 操作不同的 DOM 自動化路線。

## 是什麼

Lightpanda 是為 AI Agent 與自動化設計的無頭瀏覽器，不是 Chromium fork，也不是 WebKit 修補版本。它以 Zig 實作瀏覽器核心，搭配 V8 執行 JavaScript、html5ever 解析 HTML、Libcurl 載入網路內容，目標是在不載入完整桌面瀏覽器的情況下處理動態網頁。

它不只是一個 CDP server：目前 README 也記載內建 Agent 模式、MCP server，以及將探索過程匯出成 PandaScript 的能力。Agent 可以先理解任務、操作頁面，再將結果保存為 JavaScript 腳本，之後不必在每次執行時重新呼叫模型。

沒有圖形渲染引擎是重要的使用邊界。README 的 PNG／PDF 輸出是文字式呈現，不能當成完整瀏覽器的視覺截圖；是否支援特定網站與協議功能，仍應以實際測試及官方 Web Platform Tests 結果確認。

## 核心特色

- **從零打造的輕量引擎**：不基於 Chromium、Blink 或 WebKit，保留 DOM 與 JavaScript 操作能力。
- **多種自動化協議**：提供 CDP 與 WebDriver BiDi，可連接既有自動化客戶端；不等於所有客戶端 API 都完全相容。
- **原生 Agent 模式**：支援多個模型供應商、OpenAI-compatible endpoint 與本地模型，也可用無 LLM 的 REPL。
- **PandaScript 重播**：透過 `/save` 匯出探索成果，再以 `lightpanda run` 執行；腳本重播本身不需要模型 token。
- **原生 MCP 與工作階段**：支援 stdio 和 HTTP；HTTP 透過 `Mcp-Session-Id` 區隔或共用瀏覽上下文。
- **資料擷取控制**：可輸出 HTML／Markdown，提供等待條件、cookies、proxy、網路攔截及選用的 robots.txt 遵循。

README 的官方 benchmark 列出 100 頁案例峰值記憶體 123MB 對 2GB、執行時間 5 秒對 46 秒。這是作者測試條件下的結果，並非本次獨立實測，也不能推廣為所有網站的效能保證。

## 怎麼用

### 安裝與基本擷取

以下是官方 README 的 Homebrew nightly 安裝路徑；本次收錄未實際安裝或啟動瀏覽器。

```bash
brew install lightpanda-io/browser/lightpanda
lightpanda version
export LIGHTPANDA_DISABLE_TELEMETRY=true
lightpanda fetch --obey-robots --dump markdown https://demo-browser.lightpanda.io/campfire-commerce/
```

### CDP 與 Agent

```bash
lightpanda serve --obey-robots --host 127.0.0.1 --port 9222
# 另開終端，依官方文件提供模型憑證後使用 Agent：
lightpanda agent --task "top story on news.ycombinator.com?"
# 在 Agent 工作階段中以 /save 保存腳本，之後再重播：
lightpanda run session.js
```

外部 Puppeteer 客戶端可連接 `ws://127.0.0.1:9222`。使用 MCP stdio 時，啟動命令為 `lightpanda mcp`；HTTP 服務則可用 `lightpanda mcp --port 9223`，但對外暴露前應另外確認存取控制。

預設會收集使用遙測；上方環境變數用來停用。Nightly 是滾動版本，正式使用時應記錄版本，並對目標網站測試相容性、等待條件及登入流程；不得把工作階段隔離視為完整的安全沙箱。

## 跟其他方案的關係

下表是依官方定位整理的選型比較，不是本次效能評測。

| 方案 | 主要定位 | 與 Lightpanda 的關係 |
|---|---|---|
| Headless Chrome | 完整瀏覽器能力與廣泛網站相容性 | 適合依賴真實圖形渲染的流程；Lightpanda 專注無圖形引擎的自動化 |
| Puppeteer／Playwright | 自動化客戶端與測試工具 | 與瀏覽器引擎是不同層，可評估透過 CDP 整合，需測試所用 API |
| 視覺式 Computer Use Agent | 看螢幕並產生 GUI 動作 | Lightpanda 偏 DOM／腳本操作，不能替代所有桌面 GUI 任務 |
| 一般 HTTP 擷取器 | 載入靜態回應 | Lightpanda 可執行 JavaScript，適合需要 DOM 互動的頁面 |

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[computer-use-agent]]

## 來源

- GitHub：https://github.com/lightpanda-io/browser
- README：https://github.com/lightpanda-io/browser/blob/main/README.md
- Agent 文件：https://lightpanda.io/docs/usage/agent
- 原始快照：`raw/2026-09-08-lightpanda-io-browser.md`
- Stars、授權與語言取自 2026-09-08 GitHub API；功能整理自同日 README。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/lightpanda-io/browser |
| Stars | 34,853（2026-09-08 快照） |
| License | AGPL-3.0 |
| Language | Zig |
| 收錄日期 | 2026-09-08 |
