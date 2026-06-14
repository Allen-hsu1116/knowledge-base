---
title: Claude Code
slug: anthropics-claude-code
created: 2026-05-30
updated: 2026-05-30
stars: 127875
language: Python
---

# Claude Code

> ⭐128k · Anthropic 官方終端機 AI 編碼助手，用自然語言指令理解程式碼庫、自動執行任務

快速導航：[[Coding-Agent-CLI|Coding Agent CLI]] · [[AI-Agent|AI Agent]] · [[MCP]]

## 是什麼

Claude Code 是 Anthropic 官方推出的 agentic coding tool，直接在終端機中運行，讓開發者透過自然語言指令與程式碼庫互動。它不只是程式碼補全工具，而是一個能理解整個程式碼庫上下文、自動執行例行任務（如重構、git 操作、除錯）的完整編碼代理。

Claude Code 的設計理念是「在開發者的環境裡工作」。它直接在你的終端機、IDE 或 GitHub 上運作，不需要切換到瀏覽器。它支援 macOS、Linux 和 Windows 平台，並提供多種安裝方式，從 curl 腳本到 Homebrew 都有。Claude Code 也內建插件系統，開發者可以透過 plugins 目錄擴充功能，加入自訂指令和代理行為。

2026 年 Claude Code 已成為最受歡迎的 AI 編碼工具之一，累積超過 12 萬顆 GitHub Stars。它的成功在於將 LLM 的能力直接帶入開發者最熟悉的工作環境——終端機，而非要求開發者改變工作流程來適應 AI。

## 核心特色

- **終端機原生運作**：Claude Code 直接在 CLI 中運行，不需要 IDE 插件或瀏覽器，開發者可以隨時在專案目錄中執行 `claude` 啟動
- **多平台支援**：macOS、Linux、Windows 全支援，提供 curl、Homebrew、WinGet、npm 等多種安裝方式
- **程式碼庫全域理解**：能深入理解整個程式碼庫的結構和邏輯，不只看單一檔案，而是跨檔案理解上下文關係
- **Git 工作流整合**：內建 git 操作能力，可以直接用自然語言指令執行 commit、分支管理、diff 比對等操作
- **插件生態系**：支援自訂插件擴充功能，社群已有大量 Agent Skills 和 Persona 可直接整合
- **GitHub 整合**：支援在 GitHub 上 @claude 標記，直接在 PR 和 Issue 中引用 AI 輔助

## 怎麼用

安裝 Claude Code 有多種方式，推薦使用官方安裝腳本：

**macOS / Linux（推薦）**：
```bash
curl -fsSL https://claude.ai/install.sh | bash
```

**Homebrew（macOS/Linux）**：
```bash
brew install --cask claude-code
```

**Windows（推薦）**：
```powershell
irm https://claude.ai/install.ps1 | iex
```

安裝完成後，進入你的專案目錄並執行：
```bash
cd your-project
claude
```

即可開始互動。Claude Code 會自動掃描你的程式碼庫，提供上下文感知的建議和操作。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心特色 | 平台 |
|------|-------|------|----------|------|
| **[[anthropics-claude-code\|Claude Code]]** | ⭐128k | Agentic CLI | 終端機原生、程式碼庫理解、Git 整合 | CLI, IDE, GitHub |
| [[Alishahryar1-free-claude-code\|Free Claude Code]] | ⭐26k | 免費替代整理 | 免費 Coding Agent 資源彙整 | CLI |
| [[affaan-m-everything-claude-code\|Everything Claude Code]] | ⭐172k | Skills 庫 | Claude Code 技能擴充大全 | CLI |
| [[garrytan-gstack\|gstack]] | ⭐97k | Agent Skills | Agent 工作流程最佳化 | CLI |
| [[open-webui-open-webui\|Open WebUI]] | ⭐100k+ | Web UI | 自架 LLM 介面、RAG 支援 | Web |

Claude Code 與 [[Coding-Agent-CLI|Coding Agent CLI]] 概念密切相關，是目前市場上最成熟的 agentic coding 工具之一。它與 [[MCP]] 協議整合，可以連接外部工具和資料來源。[[affaan-m-everything-claude-code|Everything Claude Code]] 是圍繞它建立的最大社群 Skills 庫。

← [[Coding-Agent-CLI]] · [[AI-Agent]] · [[MCP]] · [[affaan-m-everything-claude-code]]

## 來源

- GitHub: <https://github.com/anthropics/claude-code>
- 原始 README: `raw/2026-05-30-anthropics-claude-code.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [anthropics/claude-code](https://github.com/anthropics/claude-code) |
| Stars | ⭐127,875 |
| License | 未指定（Anthropic 商業授權） |
| Language | Python |
| 收錄日期 | 2026-05-30 |