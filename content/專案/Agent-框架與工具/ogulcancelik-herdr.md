---
title: herdr
slug: ogulcancelik-herdr
created: 2026-07-01
updated: 2026-07-01
stars: 9013
language: Rust
topics:
  - agent
  - agent-orchestration
  - ai-agents
  - claude-code
  - cli
  - codex
  - coding-agents
  - developer-tools
  - devtools
  - multiplexer
  - rust
  - terminal
  - terminal-multiplexer
  - terminal-ui
  - tmux
  - tui
  - workspace-manager
---

# herdr

> ⭐9k · 終端機裡的 Agent 多工器，一個 binary 管理所有 Coding Agent，即時看到誰在忙、誰卡住、誰完成了

## 快速導航

- 🤖 **Coding Agent** → [[anthropics-claude-code|Claude Code]] · [[Coding-Agent-CLI]]
- 🏗 **Agent 編排** → [[AI-Agent]] · [[agent-harness-optimization|Agent Harness 優化]]
- 🖥 **終端工具** → [[nesquena-hermes-webui|Hermes WebUI]] · [[kenn-io-agentsview|agentsview]]

## 是什麼

herdr 是一個用 Rust 寫的終端機 Agent 多工器（terminal multiplexer），專門為管理多個 Coding Agent 而設計。如果你用過 tmux，可以把它理解成「tmux，但是為 Agent 重建的」。它讓你在同一個終端機裡同時跑多個 Coding Agent（Claude Code、Codex、Hermes、OpenCode 等），每個 Agent 有自己獨立的真實終端，而不是 App 模擬出來的。

核心賣點是 Agent 狀態感知。herdr 的側邊欄即時顯示每個 Agent 的狀態——🔴 blocked（卡住等輸入）、🟡 working（正在跑）、🔵 done（完成）、🟢 idle（閒置），零配置不需要 hooks。你一眼就能知道哪個 Agent 需要你關注，不用逐個 pane 切換查看。

herdr 是單一的 ~10MB Rust binary，支援 Linux 和 macOS（Windows beta），沒有 Electron、沒有 GUI、沒有帳號、沒有遙測。detach 後 Agent 不會死，可以從任何終端機重新 attach，甚至透過 SSH 從手機連回去。它還提供了本地 Unix socket API，讓 Agent 自己也能驅動 herdr——建立 workspace、分割 pane、生成 helper Agent、讀取輸出、訂閱狀態變更。

## 核心特色

- **Agent 狀態一覽**：側邊欄即時顯示所有 Agent 的 🔴🟡🔵🟢 狀態，零配置自動偵測，不用寫 hooks
- **真實終端 per Agent**：每個 Agent 拿到獨立的真實終端，不是 App 模擬的，全螢幕 TUI 也能正確渲染
- **持久化 session**：背景 server 保持 pane 和 Agent 活著，detach 後不會死，隨時 reattach
- **SSH 遠端支援**：`herdr --remote` 讓本地終端機成為遠端 server 的 client，貼圖片等功能不受影響
- **15+ Agent 原生支援**：Claude Code、Codex、Hermes、OpenCode、Pi、Droid、Amp、Grok CLI、Kilo Code、Devin、Cursor、GitHub Copilot 等開箱即用
- **Agent 可自我驅動**：Unix socket API 讓 Agent 建立 workspace、分割 pane、生成 helper、讀取輸出——Agent 編排 Agent
- **滑鼠原生操作**：拖曳 pane、分頁、workspace，不用背快捷鍵也能用
- **Plugin 系統**：可用任何語言寫 plugin，擴充功能

## 怎麼用

安裝：

```bash
# 一鍵安裝（Linux / macOS）
curl -fsSL https://herdr.dev/install.sh | sh

# 或透過 Homebrew
brew install herdr

# 或透過 mise
mise use -g herdr

# 或透過 Nix
nix run github:ogulcancelik/herdr

# Windows preview beta
powershell -ExecutionPolicy Bypass -c "irm https://herdr.dev/install.ps1 | iex"
```

啟動：

```bash
# 啟動或 attach 到背景 server
herdr

# 遠端連線到 VPS
herdr --remote workbox
herdr --remote ssh://you@yourserver:2222
```

基本操作（Ctrl+b 前綴鍵）：

```bash
# ctrl+b 然後 shift+n → 新 workspace
# ctrl+b 然後 v 或 minus → 分割 pane
# ctrl+b 然後 c → 新 tab
# ctrl+b 然後 w → 切換 workspace
# ctrl+b 然後 q → detach（Agent 繼續跑）
# ctrl+b 然後 ? → 顯示所有快捷鍵
```

安裝 Agent Skill（讓 Agent 自己用 herdr）：

```bash
npx skills add ogulcancelik/herdr --skill herdr -g
```

## 跟其他方案的關係

- **tmux** → herdr 的精神前身，但 tmux 不知道哪個 pane 是 Agent、什麼狀態，herdr 原生支援 Agent 狀態偵測
- **[[nesquena-hermes-webui|Hermes WebUI]]** → Web UI 管理 Coding Agent，herdr 是終端機原生的方案
- **[[kenn-io-agentsview|agentsview]]** → Coding Agent 分析工具，herdr 更偏向即時操作和編排
- **[[manaflow-ai-cmux|cmux]]** → GUI Agent 管理器，herdr 選擇留在終端機裡，更輕量更跨平台
- **[[anomalyco-opencode|OpenCode]]** → 一個 Coding Agent，herdr 是管理多個這類 Agent 的多工器

← [[anthropics-claude-code|Claude Code]] · [[Coding-Agent-CLI]] · [[AI-Agent]] · [[nesquena-hermes-webui|Hermes WebUI]]

## 來源

- GitHub: <https://github.com/ogulcancelik/herdr>
- 官網: <https://herdr.dev>
- 文件: <https://herdr.dev/docs/>
- 原始 README: `raw/2026-07-01-ogulcancelik-herdr.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [ogulcancelik/herdr](https://github.com/ogulcancelik/herdr) |
| Stars | ⭐9,013 |
| License | AGPL-3.0 (雙授權：開源 AGPL + 商業授權) |
| Language | Rust |
| 收錄日期 | 2026-07-01 |