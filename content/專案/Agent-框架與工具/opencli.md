---


title: OpenCLI
slug: opencli
aliases:
  - OpenCLI


updated: TODO
language: zh-TW
topics: []
---

# OpenCLI

> 詳見 [[jackwener-OpenCLI]]

## 快速導航

- ⚡ [[Coding-Agent-CLI]] · [[MCP]] · [[AI-Agent]]

## 是什麼

OpenCLI 是一個把網站、瀏覽器 session、Electron app 和本地工具變成確定性 CLI 介面的框架。它提供三個層面：內建 100+ 網站的適配器、AI Agent 瀏覽器自動化技能、以及適配器撰寫工作流。核心主張是**零 LLM 成本**——確定性操作，同樣的指令得到同樣的結果。

由 jackwener 開發，18.7k stars，JavaScript/TypeScript 語言，Apache-2.0 授權。

## 核心特色

- **Desktop App 控制** — 透過 CDP 驅動 Electron 應用（Cursor、Codex、ChatGPT、Notion）
- **瀏覽器自動化** — 透過已登入的 Chrome 瀏覽器進行導航、點擊、輸入、提取
- **多 Profile 瀏覽器橋接** — 多個 Chrome profile，`--profile` 路由
- **Website → CLI** — 把任何網站變成確定性 CLI 指令
- **CLI Hub** — 發現、自動安裝、透傳外部 CLI（gh、docker 等）
- **零 LLM 成本** — 確定性操作，同指令同輸出，不需要 LLM
- **AI Agent 技能** — opencli-adapter-author、opencli-autofix、opencli-browser、opencli-usage、smart-search

## 怎麼用

### 安裝

```bash
npm install -g @jackwener/opencli
opencli doctor
```

瀏覽器擴充功能從 Chrome Web Store 安裝。

### 使用範例

```bash
# 列出可用指令
opencli list
# 瀏覽 Hacker News
opencli hackernews top --limit 5
# 瀏覽 Bilibili 熱門
opencli bilibili hot --limit 5
# 瀏覽器操作
opencli browser open https://example.com
opencli browser click "button.submit"
opencli browser extract "div.content"
```

### AI Agent 整合

```bash
npx skills add jackwener/opencli
```

Skills 讓 AI Agent 可以透過已登入的瀏覽器 session 操作網站。

## 跟其他方案的關係

| 特性 | OpenCLI | CLI-Anything | Browser Use | chrome-devtools-mcp |
|------|---------|-------------|-------------|---------------------|
| 目標 | 把網站/工具變成 CLI | 把 GUI 軟體變成 CLI | 瀏覽器自動化 | DevTools 暴露為 MCP |
| LLM 需求 | 零 LLM 成本 | 需要 LLM 生成 | 需要 LLM | Agent 驅動 |
| 確定性 | ✅ 同指令同輸出 | ✅ 結構化 | ❌ | ✅ DevTools |
| 內建適配器 | 100+ 網站 | 18+ 應用 | 無 | DevTools 工具 |
| 桌面 App | ✅ CDP 控制 | ❌ | ❌ | ✅ CDP |
| CLI Hub | ✅ | ✅ CLI-Hub | ❌ | ❌ |
| 技術棧 | Node.js + CDP | Python + Click | Python + Playwright | TypeScript + Puppeteer |

## 相關概念

← [[Coding-Agent-CLI]] · [[MCP]] · [[AI-Agent]] · [[jackwener-OpenCLI]]

## 來源

- [原始資料](../raw/2026-05-05-opencli.md)
- 詳見 [[jackwener-OpenCLI]]