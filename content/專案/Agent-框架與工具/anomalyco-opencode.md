---
title: OpenCode
slug: anomalyco-opencode
created: 2025-04-30
updated: 2026-06-14
stars: 174051
language: TypeScript
---

# OpenCode

> ⭐174k · 開源 AI 編碼代理，支援 15+ LLM 提供商，內建 MCP、Skills、子 Agent 和工作樹平行執行。

## 快速導航
[[Coding-Agent-CLI|Coding Agent CLI]] · [[context-engineering-basics|Context Engineering]] · [[agent-skills-ecosystem|Agent Skills 生態系]] · [[affaan-m-ECC|ECC]]

## 是什麼

OpenCode 是由 Anomaly 公司開發的開源 AI 編碼代理，定位為 Claude Code 的開源替代品。它提供終端機和桌面兩種介面，讓開發者能在本地環境中使用各種 LLM 模型來輔助程式開發。OpenCode 不只是一個聊天介面，而是一個完整的 Agent Harness — 提供工具、知識管理、上下文壓縮、權限控制等基礎設施，讓模型充分發揮其推理能力。

與 Claude Code 類似，OpenCode 採用「模型決策、Harness 執行」的架構。Agent 不嘗試取代模型的判斷，而是提供乾淨的觀察（git diff、錯誤日誌、瀏覽器狀態）和行動介面（檔案讀寫、Shell 執行、瀏覽器控制），讓模型在最佳環境中工作。這種設計哲學意味著 OpenCode 不依賴硬編碼的工作流程或 if-else 分支，而是信任模型本身的能力。

OpenCode 的另一大特色是跨平台支援和桌面應用。使用者可以透過 CLI、桌面 App 或 Docker 在各種環境中執行，同時支援 macOS、Windows 和 Linux。這讓團隊協作和企業部署變得更容易。

## 核心特色

- **多 Agent 架構**：內建 `build`（完整權限）和 `plan`（唯讀分析）兩個 Agent，可按 Tab 鍵即時切換，另有 `general` 子 Agent 處理搜尋和多步驟任務
- **15+ LLM 提供商支援**：Claude、GPT、Gemini、Ollama、Mistral 等主流模型都可使用，切換只需改一個設定
- **MCP 原生支援**：完全整合 Model Context Protocol，可連接各種外部工具和資料來源
- **上下文壓縮與子 Agent**：自動壓縮長對話歷史，子 Agent 隔離防止噪音洩漏，任務系統讓目標跨對話持久存在
- **工作樹平行執行**：利用 Git worktree 隔離平行任務，多個 Agent 可同時在不同分支工作而不衝突
- **桌面應用 (BETA)**：除了 CLI，也提供 macOS / Windows / Linux 桌面應用程式，透過 Homebrew Cask 或直接下載安裝

## 怎麼用

安裝方式多元，推薦使用 Homebrew（macOS/Linux）：

```bash
# macOS / Linux（推薦，始終最新）
brew install anomalyco/tap/opencode

# 或用 npm
npm i -g opencode-ai@latest

# 或一鍵安裝腳本
curl -fsSL https://opencode.ai/install | bash

# Windows
scoop install opencode
# 或
choco install opencode

# 桌面應用（macOS）
brew install --cask opencode-desktop
```

安裝後直接在專案目錄執行 `opencode` 即可啟動。首次使用會引導設定 API Key。按 Tab 切換 `build` / `plan` Agent，使用 `@general` 呼叫子 Agent。

設定檔位於 `.opencode/` 目錄，可自訂模型、Agent 行為、MCP 伺服器等。詳細文件請參考 [opencode.ai/docs](https://opencode.ai/docs)。

## 跟其他方案的關係

| 特色 | OpenCode | [[anthropics-claude-code|Claude Code]] | [[nesquena-hermes-webui|Hermes WebUI]] | [[aaif-goose-goose|Goose]] |
|------|----------|---------|-----------|-------|
| 開源 | ✅ MIT | ❌ 封閉 | ✅ | ✅ |
| 多模型 | ✅ 15+ | ❌ Claude only | ✅ | ✅ |
| MCP | ✅ | ✅ | ✅ | ✅ |
| 桌面 App | ✅ BETA | ❌ CLI only | ✅ Web UI | ❌ |
| 子 Agent | ✅ 內建 | ✅ | ❌ | ✅ |
| 工作樹平行 | ✅ | ✅ | ❌ | ❌ |
| 語言 | TypeScript | TypeScript | TypeScript | Rust |

## 相關概念
← [[Coding-Agent-CLI|Coding Agent CLI]] · [[agent-skills-ecosystem|Agent Skills 生態系]]

## 來源

- GitHub: [anomalyco/opencode](https://github.com/anomalyco/opencode)
- 官網: [opencode.ai](https://opencode.ai)
- 原始資料: `raw/2026-06-14/anomalyco-opencode.json`

---

| 項目 | 值 |
|------|-----|
| GitHub | [anomalyco/opencode](https://github.com/anomalyco/opencode) |
| Stars | ⭐174,051 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-06-14 |