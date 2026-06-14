---
title: agentsview
slug: kenn-io-agentsview
created: 2026-02-19
updated: 2026-06-14
stars: 2363
language: Go
topics: ["Coding Agent", "Analytics", "Session Intelligence", "Cost Tracking", "Local-First"]
---

# agentsview

> ⭐2.4k · 本地優先的 Coding Agent 會話智慧與分析平台，支援 Claude Code、Codex 等 20+ 代理，ccusage 的 100 倍速替代。

快速導航：[[Coding-Agent-CLI|Coding Agent CLI]] · [[context-engineering-basics|Context Engineering]] · [[anthropics-claude-code|Claude Code]] · [[anomalyco-opencode|OpenCode]]

## 是什麼

agentsview 是一個本地優先的會話智慧平台，專為 AI Coding Agent 設計。它能自動發現並索引你機器上所有 Agent 的會話記錄（Claude Code、Codex、Forge、OpenCode 等 20+ 種），同步到本地 SQLite 資料庫，然後透過網頁 UI 和 CLI 提供即時的成本追蹤、用量分析和會話搜尋。

對於同時使用多種 Coding Agent 的開發者來說，agentsview 解決了碎片化的問題。不再需要在每個 Agent 的介面中分別查看花費和用量 — 一個工具就能看到所有 Agent 的完整歷史。它也標榜自己是 ccusage（Claude Code 用量統計工具）的 100 倍速替代品，因為所有計算都在本地 SQLite 上完成，不需要呼叫外部 API。

agentsview 完全本地運行，不需要帳號，不傳送任何資料到外部伺服器。它透過讀取各 Agent 的本地會話目錄（如 `~/.claude/projects`）來取得資料，所有資料都存在本地 SQLite 中，重啟後自動同步增量更新。

## 核心特色

- **20+ Agent 支援**：Claude Code、Codex CLI、Forge、OpenCode、Windsurf、Cursor 等 20 多種主流 Coding Agent，自動發現會話
- **成本追蹤**：即時統計每個 Agent、每天的 Token 用量和費用，支援多幣種和自訂費率
- **會話搜尋**：跨 Agent 搜尋歷史對話，快速找到曾經做過的操作和決策
- **本地優先**：所有資料存在本地 SQLite，不需要帳號、不傳送外部伺服器、隱私完全掌控
- **100x ccusage 替代**：純本地計算，無外部 API 呼叫，速度是 ccusage 的 100 倍
- **多種部署方式**：CLI、桌面 App（macOS / Windows）、Docker 容器三種部署方式

## 怎麼用

```bash
# macOS / Linux 安裝
curl -fsSL https://agentsview.io/install.sh | bash

# Windows 安裝
powershell -ExecutionPolicy ByPass -c "irm https://agentsview.io/install.ps1 | iex"

# 或透過 Homebrew 安裝桌面 App
brew install --cask agentsview

# Docker 部署
docker run --rm -p 127.0.0.1:8080:8080 \
  -v agentsview-data:/data \
  -v "$HOME/.claude/projects:/agents/claude:ro" \
  ghcr.io/kenn-io/agentsview:latest

# 啟動（自動發現本地 Agent 會話）
agentsview serve

# 查看每日成本摘要
agentsview usage daily
```

首次執行時會自動掃描本機所有支援的 Agent 會話，同步到本地資料庫，然後在 `http://127.0.0.1:8080` 開啟網頁 UI。

## 跟其他方案的關係

| 特色 | agentsview | ccusage | Claude Code 內建 | [[manaflow-ai-cmux|cmux]] |
|------|-----------|---------|--------------|-------|
| 支援 Agent 數 | 20+ | 1 (Claude) | 1 (Claude) | 1 |
| 成本追蹤 | ✅ 多 Agent | ✅ Claude only | ✅ Claude only | 部分 |
| 會話搜尋 | ✅ 跨 Agent | ❌ | ❌ | ❌ |
| 本地優先 | ✅ | ✅ | ✅ | ✅ |
| 速度 | 100x ccusage | 基線 | 基線 | — |
| 開源 | ✅ MIT | ✅ | ❌ | ✅ |

← [[Coding-Agent-CLI|Coding Agent CLI]] · [[anomalyco-opencode|OpenCode]]

## 來源

- GitHub: [kenn-io/agentsview](https://github.com/kenn-io/agentsview)
- 官網: [agentsview.io](https://agentsview.io)
- 原始資料: `raw/2026-06-14/kenn-io-agentsview.json`

---

| 項目 | 值 |
|------|-----|
| GitHub | [kenn-io/agentsview](https://github.com/kenn-io/agentsview) |
| Stars | ⭐2,363 |
| License | MIT |
| Language | Go |
| 收錄日期 | 2026-06-14 |