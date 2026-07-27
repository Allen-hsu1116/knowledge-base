---
title: T3 Code
slug: pingdotgg-t3code
created: 2026-07-27
updated: 2026-07-27
stars: 15045
language: TypeScript
topics: coding-agent, web-gui, codex, claude-code, cursor, opencode
---

# T3 Code

> ⭐15k · 一個極簡的 Web GUI，讓你在瀏覽器裡管理 Codex、Claude Code、Cursor、OpenCode 等 Coding Agent。

## 快速導航

- 🤖 **Coding Agent CLI** → [[anthropics-claude-code|Claude Code]]
- 🖥️ **OpenCode** → [[anomalyco-opencode|OpenCode]]
- 🧠 **Agent 框架** → [[AI-Agent|AI Agent]]

## 是什麼

T3 Code 是由 Theo（pingdotgg）開發的極簡 Web GUI，專門為 Coding Agent 打造。它不是另一個 Coding Agent，而是一個統一的前端介面，讓你可以在瀏覽器中同時操作多種 Coding Agent（目前支援 Codex、Claude Code、Cursor、OpenCode），不用記住每個工具各自的 CLI 指令。

核心理念是「帶來你自己的 Agent」（BYO Agent）：T3 Code 本身不綁定任何特定模型或提供商，而是作為一個薄薄的 GUI 層，把操作轉發到底層已安裝的 Coding Agent CLI。這意味著你需要先安裝並認證至少一個 Agent 提供者，然後 T3 Code 就能驅動它。

專案非常早期（2026 年 2 月才建立），但已經累積了 15k+ stars，說明開發者社群對統一 Agent 介面的需求很強。支援桌面應用（macOS Homebrew、Windows winget、Arch AUR）以及 `npx t3@latest` 免安裝直接跑。

## 核心特色

- **多 Agent 統一介面** — 同一個 Web GUI 支援 Codex、Claude Code、Cursor、OpenCode，未來會加入更多。不用切換不同終端機或學不同指令。
- **BYO Agent 架構** — T3 Code 不綁定模型或提供商，你安裝什麼 Agent 就用什麼，認證也由底層 Agent CLI 處理。
- **桌面 + CLI 雙模式** — 可以用 `npx t3@latest` 免安裝直接跑，也可以裝桌面版（Homebrew、winget、AUR），適合不同工作流。
- **遠端存取** — 內建 Remote access 功能，可以從其他裝置連到 T3 Code server，適合遠端開發場景。
- **TypeScript 原生** — 全端 TypeScript，使用 Vite+ 作為構建工具，生態跟現代前端開發一致。

## 怎麼用

### 免安裝直接跑

```bash
npx t3@latest
```

### 桌面版安裝

```bash
# macOS
brew install --cask t3-code

# Windows
winget install T3Tools.T3Code

# Arch Linux
yay -S t3code-bin
```

### 前置條件

你需要先安裝並認證至少一個 Coding Agent：

```bash
# Codex
codex login

# Claude Code
claude auth login

# Cursor
cursor-agent login

# OpenCode
opencode auth login
```

安裝完成後啟動 T3 Code，它會自動偵測已安裝的 Agent 並提供對應的操作介面。

## 跟其他方案的關係

| 面向 | T3 Code | [[anthropics-claude-code\|Claude Code]] | [[anomalyco-opencode\|OpenCode]] | [[nesquena-hermes-webui\|Hermes WebUI]] |
|------|---------|----------|----------|------------|
| 定位 | Agent GUI 前端 | Coding Agent CLI | Coding Agent CLI | Coding Agent Web UI |
| 支援 Agent | Codex + Claude + Cursor + OpenCode | 僅 Claude | 多模型 | 僅 Hermes |
| BYO 模型 | ✅（透過底層 Agent） | ❌（Claude 專用） | ✅ | ✅ |
| 介面 | Web GUI + 桌面 | CLI | CLI | Web UI |
| 安裝 | npx / Homebrew / winget | npm | npm | npm |

T3 Code 的獨特之處在於它不是 Agent 本身，而是 Agent 的「統一遙控器」。其他工具如 Claude Code、OpenCode 都是單獨的 Coding Agent，而 T3 Code 把它們包在一個共同的 GUI 裡，降低了使用門檻。

← [[anthropics-claude-code|Claude Code]] · [[anomalyco-opencode|OpenCode]] · [[AI-Agent|AI Agent]]

## 來源

- GitHub: https://github.com/pingdotgg/t3code
- raw/2026-07-27-pingdotgg-t3code.md

---

| 欄位 | 值 |
|------|-----|
| **GitHub** | https://github.com/pingdotgg/t3code |
| **Stars** | ⭐15,045 |
| **License** | MIT |
| **Language** | TypeScript |
| **收錄日期** | 2026-07-27 |