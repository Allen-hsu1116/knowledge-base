---
title: CC Switch
slug: farion1231-cc-switch
created: 2025-08-04
updated: 2026-06-16
stars: 101664
language: Rust
topics: [ai-tools, claude-code, codex, hermes-agent, mcp, desktop-app, openclaw, opencode, skills-management]
---

# CC Switch

> ⭐101664 · 跨平台 AI 程式碼助手管理器，一個桌面 App 管理 Claude Code、Codex、OpenCode、OpenClaw、Gemini CLI、Hermes Agent

## 快速導航

[[AI-Skills|Agent Skills 生態系]] · [[hermes-agent|Hermes Agent]]

## 是什麼

CC Switch 是一個用 Tauri 2（Rust + TypeScript）打造的跨平台桌面應用程式，讓開發者用單一介面管理多個 AI 程式碼助手。它支援 Claude Code、Codex CLI、OpenCode、OpenClaw、Gemini CLI 和 Hermes Agent 等主流 AI 程式碼工具，提供統一的模型切換、Skills 管理、Provider 設定和會話管理功能。

在 AI 程式碼助手越來越多的時代，開發者往往需要同時使用多個工具，但每個工具的設定分散、API Key 管理混亂、模型切換繁瑣。CC Switch 解決了這個痛點，把所有工具集中到一個桌面 App 裡，提供統一的操作體驗。它支援 Windows、macOS、Linux 三大平台，並特別照顧 Windows WSL 用戶。

CC Switch 的核心定位不是另一個 AI Agent，而是 Agent 的管理器——讓你更方便地使用和切換不同的 AI 程式碼助手，統一管理 Skills、Provider 和設定。

## 核心特色

- **多 Agent 統一管理**：單一介面管理 Claude Code、Codex、OpenCode、OpenClaw、Gemini CLI、Hermes Agent
- **Provider 切換**：一鍵在不同 API Provider（Anthropic、OpenAI、Google 等）之間切換，管理 API Key
- **Skills 管理中心**：統一管理各 Agent 的 Skills 插件，安裝、啟用、停用一目了然
- **跨平台**：Windows、macOS、Linux 原生支援，WSL 環境特別優化
- **Tauri 2 打造**：Rust 後端 + TypeScript 前端，輕量高效，記憶體佔用極低
- **MCP 整合**：支援 MCP Server 配置，直接在 App 內管理 MCP 連接
- **開源 MIT 授權**：完全免費開源，社群驅動開發

## 怎麼用

```bash
# 從 GitHub Releases 下載安裝
# https://github.com/farion1231/cc-switch/releases

# macOS (Homebrew Cask)
brew install --cask cc-switch

# 或從原始碼建置
git clone https://github.com/farion1231/cc-switch.git
cd cc-switch
pnpm install
pnpm tauri dev
```

安裝後啟動 CC Switch，會自動偵測本機已安裝的 AI 程式碼助手，並引導設定 API Key 和 Provider。

## 跟其他方案的關係

| 方案 | 類型 | 支援 Agent 數 | 平台 | 適用場景 |
|------|------|--------------|------|----------|
| [[farion1231-cc-switch|CC Switch]] | 桌面管理器 | 6+ | Win/Mac/Linux | 多 Agent 切換管理 |
| [[CherryHQ-cherry-studio|Cherry Studio]] | AI 客戶端 | 300+ | Win/Mac/Linux | 多模型對話 |
| [[open-webui-open-webui|Open WebUI]] | Web UI | 所有 Ollama | Web | 本地模型介面 |
| Claude Desktop | 桌面客戶端 | 僅 Claude | Win/Mac | 單一模型使用 |
| [[CherryHQ-cherry-studio|AionUi]] | 桌面客戶端 | 多個 | Win/Mac/Linux | Agent Cowork |

## 相關概念

← [[AI-Skills]] · [[hermes-agent]]

## 來源

- GitHub：https://github.com/farion1231/cc-switch
- 官方網站：https://ccswitch.io
- Raw 檔案：`knowledge-base/raw/2026-06-16-farion1231-cc-switch.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/farion1231/cc-switch |
| Stars | ⭐101664|
| License | MIT |
| 收錄日期 | 2025-08-04 |
