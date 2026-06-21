---
title: chrome-devtools-mcp
slug: ChromeDevTools-chrome-devtools-mcp
created: 2026-05-22
updated: 2026-05-22
stars: —
language: zh-TW
---

# chrome-devtools-mcp

> ⭐40k · chrome-devtools-mcp

- **Repo**: [ChromeDevTools/chrome-devtools-mcp](https://github.com/ChromeDevTools/chrome-devtools-mcp)
- **Stars**: 40k ⭐
- **Language**: TypeScript
- **Added**: 2026-05-22

## 一句話

Chrome DevTools 的 MCP server——讓 coding agent 直接控制活瀏覽器，做效能分析、网络调试和可靠自動化。

## 快速導航

- ⚡ [[MCP]] · [[Coding-Agent-CLI]] · [[AI-Agent]]

## 是什麼

chrome-devtools-mcp 是 Google 官方出品的 MCP（Model Context Protocol）伺服器，將 Chrome DevTools 的完整能力暴露為 MCP tool，讓 AI coding agent（Claude Code、Cursor、Copilot、Codex、Antigravity 等）可以直接控制活瀏覽器。它提供三大核心能力：

1. **效能洞察** — 錄製 Chrome trace，提取可操作的效能建議（含 CrUX 真實用戶數據）
2. **瀏覽器調試** — 分析網路請求、截圖、檢查 console（含 source-mapped stack trace）
3. **可靠自動化** — 透過 Puppeteer 自動化瀏覽器操作，自動等待結果

支援 `--slim` 模式精簡工具集（僅導航、截圖、點擊等基本操作），也提供獨立 CLI 模式。預設收集匿名使用統計，可 `--no-usage-statistics` 關閉。

## 核心特色

- **官方出品** — Google ChromeDevTools 團隊維護，穩定度和持續更新有保障
- **三大能力域** — 效能分析（Performance）、網路調試（Network）、瀏覽器自動化（Puppeteer）
- **30+ 工具** — 10 個輸入自動化、6 個導航自動化、2 個模擬工具、加上 console、network、performance 分析工具
- **--slim 模式** — 精簡工具集，僅保留基本瀏覽器操作，適合輕量使用
- **跨平台 MCP 客戶端** — 支援 Claude Code（含 Plugin marketplace）、Cursor、Copilot、Codex、Antigravity、Gemini CLI、VS Code、JetBrains、Windsurf 等 15+ 客戶端
- **Chrome DevTools Protocol** — 底層使用 CDP，完整存取 DevTools 能力
- **Source-map 支援** — Console 錯誤可直接追蹤到原始碼位置
- **CrUX 整合** — 效能分析可結合 Chrome 用戶體驗報告的真實數據

## 怎麼用

### 安裝

```json
{
  "mcpServers": {
    "chrome-devtools": {
      "command": "npx",
      "args": ["-y", "chrome-devtools-mcp@latest"]
    }
  }
}
```

### Claude Code 安裝（含 Skills）

```bash
# 方式一：CLI 安裝
claude mcp add chrome-devtools --scope user npx chrome-devtools-mcp@latest

# 方式二：Plugin marketplace（推薦，含 Skills）
/plugin marketplace add ChromeDevTools/chrome-devtools-mcp
/plugin install chrome-devtools-mcp@chrome-devtools-plugins
```

### VS Code 安裝

使用 Command Palette → Chat: Install Plugin From Source → 貼入 `ChromeDevTools/chrome-devtools-mcp`

### 驗證安裝

在 MCP 客戶端輸入：
```
Check the performance of https://developers.chrome.com
```

### 主要工具分類

| 分類 | 工具數 | 範例 |
|------|--------|------|
| 輸入自動化 | 10 | click, fill, type_text, drag, hover |
| 導航自動化 | 6 | navigate_page, new_page, close_page |
| 模擬 | 2 | emulate, resize_page |
| 效能分析 | 多個 | 錄製 trace、提取 insights |
| 網路分析 | 多個 | 分析 requests、回應 |
| Console | 多個 | 檢查訊息、source-mapped traces |

## 跟其他方案的關係

| 特性 | chrome-devtools-mcp | Playwright MCP | Browser Use | AgentQL |
|------|---------------------|-----------------|-------------|---------|
| 維護方 | Google 官方 | 社群 | 社群 | 商業公司 |
| 協議 | MCP | MCP | Python SDK | Python SDK |
| 效能分析 | ✅ DevTools trace | ❌ | ❌ | ❌ |
| Source-map | ✅ | ❌ | ❌ | ❌ |
| 自動化引擎 | Puppeteer | Playwright | Playwright | Playwright |
| slim 模式 | ✅ | ❌ | ❌ | ❌ |
| CrUX 整合 | ✅ | ❌ | ❌ | ❌ |
| Agent 整合 | 15+ 客戶端 | 部分 | 部分 | 部分 |

## 相關概念

← [[MCP]] · [[Coding-Agent-CLI]] · [[AI-Agent]]

## 為什麼值得關注

- Google 官方 DevTools MCP，穩定度與維護承諾最高
- 直接打通 agent → 瀏覽器調試通路，debug 不再靠猜
- 支援 Claude Code plugin 安裝（含 skills），是目前 MCP 生態的重要基礎設施

## 來源

- [原始資料](../raw/2026-05-22-ChromeDevTools-chrome-devtools-mcp.md)

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/ChromeDevTools/chrome-devtools-mcp |
| **收錄日期** | 2026-05-22 |
