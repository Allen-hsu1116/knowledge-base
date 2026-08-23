---
title: Orca
slug: stablyai-orca
created: 2026-06-25
updated: 2026-06-25
stars: 6.8k
language: TypeScript
topics:
  - ade
  - agent-ide
  - ai-agents
  - claude-code
  - cli
  - codex
  - cursor-agent
  - devtools
  - ghostty
  - ide
  - mobile-app
  - opencode
  - orchestration
  - parallel-agents
  - pi
  - terminal
  - worktrees
  - yc-backed
---

# Orca

> ⭐6800 · YC 培育的 Agent 開發環境（ADE），讓你用平行 worktree 同時跑多個 coding agent，桌面 + 手機遠端監控

## 快速導航


- 🤖 **Coding Agent CLI** → [[Coding-Agent-CLI|Coding Agent CLI]]
- 🔄 **Agent 編排** → [[bytedance-deer-flow|DeerFlow]]
- 🛠 **AI Agent** → [[AI-Agent|AI Agent]]
- 📱 **自架平台** → [[self-hosted|自架 AI 平台]]

## 是什麼

Orca 是由 Stably AI 開發的 Agent Development Environment（ADE），專為同時管理多個 AI coding agent 而設計。你可以把同一個 prompt 同時丟給 Claude Code、Codex、OpenCode、Pi 等多個 agent，每個 agent 各自跑在獨立的 git worktree 裡，最後比較結果、合併最佳版本。它不只是一個終端機——它是一個完整的桌面應用（macOS / Windows / Linux），整合了程式碼編輯器（VS Code editor）、終端機（Ghostty-class with WebGL rendering）、瀏覽器（內嵌 Chromium with Design Mode）、以及 GitHub / Linear 原生整合。

Orca 的核心理念是「100x builders」——讓一個人透過平行 agent 編排達到十倍百倍的產出。你不需要在多個終端機之間切換、手動管理 worktree、追蹤每個 agent 的進度。Orca 把這些全部整合到一個界面裡，還提供手機 Companion App 讓你出門在外也能監控 agent、收通知、發 follow-up。SSH Worktree 功能讓你可以在遠端強力機器上跑 agent，自動重連、端口轉發一應俱全。

支援的 agent 數量非常驚人——任何能在終端機裡跑的 CLI agent 都能用 Orca 管理，包括 Claude Code、Codex、Grok、Cursor、GitHub Copilot、OpenCode、MiMo Code、Amp、OpenClaude、Antigravity、Pi、oh-my-pi、Hermes Agent、Devin、Goose、Auggie、Cline、Codebuff、Continue、Droid、Kilocode、Kimi、Kiro 等二十多種。Orca 甚至提供了自己的 CLI（`orca worktree create`、`snapshot`、`click`、`fill`），讓 agent 自己也能驅動 Orca 的功能。

## 核心特色


1. **平行 Worktree** — 一個 prompt 同時 fan-out 到五個 agent，各自在獨立 git worktree 中工作，比較結果後合併最佳版本
2. **手機 Companion App** — iOS / Android 支援，出門也能監控 agent 進度、收完成通知、發 follow-up 指令
3. **內嵌 Chromium + Design Mode** — 點擊任何 UI 元素，自動把 HTML、CSS 和裁剪截圖送進 agent 的 prompt，讓 agent 看到真實渲染結果
4. **GitHub & Linear 原生整合** — 直接在 app 裡瀏覽 PR、issue、project board，從任何任務開 worktree，不用切換上下文
5. **SSH Worktree** — 在遠端機器上跑 agent，完整檔案編輯、git、終端機，自動重連 + 端口轉發
6. **AI Diff 標注** — 在任何 diff 行上留言、回送給 agent，review、編輯、commit 不離開 Orca
7. **Orca CLI** — agent 也能驅動 Orca：`orca worktree create`、`snapshot`、`click`、`fill`，支援 Computer Use 讓 agent 操作桌面應用
- **可追溯資訊** — 來源、授權與收錄日期集中在頁尾，方便核對專案背景。
- **生態系連結** — 透過相關概念與替代方案連結，補足採用時的比較脈絡。
- **實作導向** — 將定位、使用方式與限制整理在同一頁，便於快速評估。
- **延伸閱讀** — 保留原始素材路徑，必要時可回查完整 README 或研究資料。

## 怎麼用

```bash
# 1. 下載 Orca 桌面應用
# 前往 https://onorca.dev/download 下載 macOS / Windows / Linux 版本

# 2. 安裝後打開 Orca，選擇你的專案資料夾

# 3. 選擇要使用的 coding agent（Claude Code、Codex、OpenCode 等）
# Orca 會自動偵測已安裝的 CLI agent

# 4. 建立平行 worktree 來跑多個 agent
# 在 Orca 界面中點 "New Worktree"，選擇 agent 和 prompt

# 5. 也可使用 Orca CLI 讓 agent 自動操作
orca worktree create --agent claude --prompt "fix the auth bug"
orca snapshot
orca click "Submit"
orca fill "#email-input" "user@example.com"

# 6. 手機 Companion
# 從 App Store / Google Play 安裝 Orca 行動版
# 掃碼配對桌面版即可遠端監控
```

**前置需求：** macOS / Windows / Linux、至少一個已安裝的 CLI coding agent（Claude Code、Codex 等）

## 跟其他方案的關係

| 方案 | 定位 | 平行 Agent | 遠端監控 | 支援 Agent 數 |
|------|------|-----------|---------|--------------|
| **Orca** | ADE（Agent 開發環境） | ✅ git worktree | ✅ 手機 App | 25+ |
| [[farion1231-cc-switch\|CC Switch]] | Agent 管理器 | ❌ 單一 | ❌ | 3（Claude/Codex/OpenCode） |
| [[anomalyco-opencode\|OpenCode]] | Coding Agent CLI | ✅ worktree | ❌ | 自身 |
| [[kenn-io-agentsview\|agentsview]] | Agent 分析 | ❌ 觀測 | ❌ | 被動 |
| [[bytedance-deer-flow\|DeerFlow]] | Agent 編排 | ✅ 子 Agent | ❌ | 自身框架 |

Orca 跟 CC Switch 的差異在於：CC Switch 是跨平台桌面管理器，切換不同 agent 的設定；Orca 是完整的開發環境，讓你同時跑多個 agent 在獨立 worktree 裡。跟 OpenCode 的差異在於：OpenCode 本身是一個 coding agent CLI，Orca 是管理 coding agent 的 ADE——Orca 可以跑 OpenCode 作為其中一個 agent。跟 agentsview 的差異在於：agentsview 是被動觀測 agent 的 session 分析工具，Orca 是主動操控和編排 agent 的工作環境。

## 相關概念


← [[Coding-Agent-CLI]] · [[AI-Agent]] · [[bytedance-deer-flow]] · [[farion1231-cc-switch]]

## 來源

- GitHub: https://github.com/stablyai/orca
- raw/2026-06-25-stablyai-orca.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/stablyai/orca |
| Stars | ⭐6800|
| License | MIT |
| 收錄日期 | 2026-06-25 |
