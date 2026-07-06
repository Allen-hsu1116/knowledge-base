---
title: Planning with Files
slug: OthmanAdi-planning-with-files
created: 2026-07-06
updated: 2026-07-06
stars: 24.7k
language: Python
topics: agent-skills, claude-code, context-engineering, planning, multi-agent, codex
---

# Planning with Files

> ⭐24.7k · 為 AI coding agents 設計的持久化檔案規劃——crash-proof markdown 計畫，session 自動恢復，18+ 平台支援

## 快速導航

- 🛠 **AI Skills** → [[AI-Skills|AI Skills]]
- 🧠 **Context Engineering** → [[context-engineering-basics|Context Engineering]]
- 🤖 **Coding Agent** → [[Coding-Agent-CLI|Coding Agent CLI]]
- 📖 **Agent Skills 規範** → [[agentskills-agentskills|Agent Skills]]

## 是什麼

Planning with Files 是一個為 AI coding agents 設計的持久化檔案規劃系統。它解決了一個核心痛點：當 AI agent 的 context window 填滿、被 /clear 清除、或者發生 crash 時，所有工作進度和計畫都會丟失。Planning with Files 透過將規劃狀態寫入 markdown 檔案，讓 agent 可以在任何中斷後自動恢復。

系統採用 Manus 風格的檔案規劃，支援平行計畫隔離（`.planning/YYYY-MM-DD-slug/` 目錄）、確定性完成驗證門、多 Agent 共享磁碟狀態。當 context 填滿執行 /clear 時，系統會自動檢查之前的 session 資料，提取遺失的對話，並顯示 catchup report 讓你同步。

支援 18+ IDE/平台，包括 [[anthropics-claude-code|Claude Code]]、Cursor、GitHub Copilot、Codex、Gemini CLI、Kiro、OpenCode、[[hermes-agent|Hermes Agent]] 等，全部遵循 [[agentskills-agentskills|Agent Skills 開放規範]]。

## 核心特色

- **Crash-proof markdown 規劃** — 計畫寫入檔案，不怕 context 丟失或 crash
- **Session 自動恢復** — /clear 後自動找回之前 session 的上下文和對話
- **平行計畫隔離** — `.planning/YYYY-MM-DD-slug/` 目錄隔離不同計畫
- **確定性完成驗證門** — 確保任務真正完成才允許停止
- **多 Agent 共享狀態** — 多個 agent 透過磁碟檔案共享工作狀態
- **18+ 平台支援** — Claude Code、Cursor、Copilot、Codex、Gemini、Kiro、OpenCode、Hermes 等
- **Hook 自動化** — 工具使用前重讀計畫、提醒更新進度、驗證完成

## 怎麼用

### 安裝

```bash
# 透過 Agent Skills CLI 安裝
npx skills add OthmanAdi/planning-with-files

# 或手動複製 SKILL.md 到你的 agent skills 目錄
```

### 使用

安裝後，你的 AI coding agent 會自動使用檔案規劃。當你描述一個任務時，agent 會：

1. 在 `.planning/` 目錄建立 markdown 計畫檔案
2. 每次工具使用前自動重讀計畫
3. 完成步驟後更新進度
4. 如果 context 填滿 /clear，自動恢復之前的 session

### 需求

- 任何支援 Agent Skills 規範的 AI coding agent
- Python 3.10+（部分功能）

## 跟其他方案的關係

| 方案 | 功能 | 持久化 | 平台數 | Stars |
|------|------|--------|--------|-------|
| **Planning with Files** | 檔案規劃 + session 恢復 | ✅ Markdown | 18+ | ⭐24.7k |
| [[rohitg00-agentmemory\|agentmemory]] | Agent 記憶層 | ✅ DB | MCP | ⭐15.1k |
| [[thedotmack-claude-mem\|claude-mem]] | 記憶持久化 | ✅ DB | Claude Code | ⭐83.4k |
| [[basicmachines-co-basic-memory\|Basic Memory]] | Markdown 知識 | ✅ MD | MCP | ⭐3.2k |

Planning with Files 專注於「規劃狀態持久化」這個特定場景，與 [[thedotmack-claude-mem|claude-mem]] 或 [[rohitg00-agentmemory|agentmemory]] 的「長期記憶」不同——它解決的是單次任務中的 context 中斷問題，而非跨 session 的知識積累。與 [[context-engineering-basics|Context Engineering]] 概念密切相關。

← [[AI-Skills|AI Skills]] · [[context-engineering-basics|Context Engineering]] · [[agentskills-agentskills|Agent Skills]]

## 來源

- GitHub: https://github.com/OthmanAdi/planning-with-files
- raw/2026-07-06-OthmanAdi-planning-with-files.md

---

| 欄位 | 值 |
|------|-----|
| **GitHub** | https://github.com/OthmanAdi/planning-with-files |
| **Stars** | ⭐ 24,710 |
| **License** | MIT |
| **Language** | Python |
| **收錄日期** | 2026-07-06 |