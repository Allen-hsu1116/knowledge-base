---
source: https://github.com/jackwener/OpenCLI
date: 2026-05-05
---

# OpenCLI — 網站/瀏覽器變 CLI 介面

> 把網站、瀏覽器 session、Electron app 和本地工具變成確定性的 CLI 介面，給人和 AI Agent 用。

**GitHub**: https://github.com/jackwener/OpenCLI
**Stars**: 18.7k | **Language**: JavaScript/TypeScript | **License**: Apache-2.0

## 什麼是 OpenCLI

OpenCLI 把網站、瀏覽器 session、Electron app 和本地工具轉換成確定性的 CLI 介面。同一個指令永遠得到同樣的輸出——零 LLM 成本。

## 核心特色

| 功能 | 說明 |
|------|------|
| Desktop App Control | 透過 CDP 驅動 Electron app（Cursor、Codex、ChatGPT、Notion） |
| Browser Automation | AI Agent 可導航、點擊、輸入、提取已登入的 Chrome 內容 |
| Multi-profile Bridge | 多 Chrome profile，`--profile` 路由 |
| Website → CLI | 任何網站變成確定性 CLI 指令 |
| CLI Hub | 發現、自動安裝、passthrough 到外部 CLI（gh, docker 等） |
| Zero LLM Cost | 確定性執行，不需要 LLM |

## 安裝

```bash
npm install -g @jackwener/opencli
opencli doctor
```

還需安裝 Chrome 擴充功能。

## 使用範例

```bash
opencli list
opencli hackernews top --limit 5
opencli bilibili hot --limit 5
opencli browser open https://example.com
opencli browser click "button.submit"
opencli browser extract "div.content"
```

## AI Agent 整合

```bash
npx skills add jackwener/opencli
```

AI Agent Skills：`opencli-adapter-author`、`opencli-autofix`、`opencli-browser`、`opencli-usage`、`smart-search`

## 技術棧

- Node.js >= 21
- Chrome CDP（Chrome DevTools Protocol）
- Browser Extension + 本地 daemon
- TypeScript

## 相關主題

- [[agent-reach|Agent Reach]] — 另一個 Agent 互聯網能力工具
- [[openclaw|OpenClaw]] — Agent 框架

## 參考資料

- [GitHub - jackwener/OpenCLI](https://github.com/jackwener/OpenCLI)