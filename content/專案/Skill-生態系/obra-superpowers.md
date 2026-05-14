---
title: Superpowers
date: 2026-05-14
github: https://github.com/obra/superpowers
stars: 189521
language: Shell
created: 2025-10-09
added: 2026-05-14
tags: [coding-agent, agent-skills, TDD, software-methodology, subagent]
---

# Superpowers

> An agentic skills framework & software development methodology that works.

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [obra/superpowers](https://github.com/obra/superpowers) |
| Stars | ⭐ 189k+ |
| Language | Shell |
| 建立日期 | 2025-10-09 |
| 收錄日期 | 2026-05-14 |
| 授權 | MIT |

## 快速導航

- [[AI-Agent]] — Superpowers 是一個 agentic framework，讓 coding agent 自動遵循軟體開發方法論
- [[AI-Skills]] — 核心是由可組合的 skills 組成
- [[Coding-Agent-CLI]] — 支援 Claude Code、Codex CLI、Cursor 等多種 coding agent
- [[context-engineering-basics]] — 強調先理解需求再動手寫碼的 context 工程思維
- [[self-correction]] — 內建 code review 與驗證機制

## 詳細簡介

Superpowers 是由 Jesse Vincent（Prime Radiant）開發的一套完整的軟體開發方法論框架，專為 coding agent 設計。它不是一個單純的工具或函式庫，而是一套可組合的技能系統（skills system），讓你的 AI 編程助手從一開始就不只是急著寫程式碼，而是先退一步思考你真正想做什麼。

這套方法論的核心流程是：當你啟動 coding agent 時，它會先透過 Socratic 對話方式幫你釐清需求、將設計文件分成可消化的片段讓你逐步確認，然後才制定實作計畫。計畫會拆成 2-5 分鐘的 bite-sized tasks，每個 task 都有明確的檔案路徑、完整程式碼和驗證步驟。

更特別的是，Superpowers 引入了「subagent-driven development」的概念——確認計畫後，它會為每個工程任務派出一個新的 subagent 來執行，並進行兩階段審查（規格合規性 + 程式碼品質），讓 Claude 可以自主運作數小時而不偏離計畫。

## 核心特色

### 自動觸發的工作流程

Skills 不是建議，而是強制執行的工作流程。Agent 在任何任務前都會檢查相關的 skill 並自動啟動。這意味著你不需要特別記得去用——你的 coding agent 就是有 Superpowers。

### Brainstorming（需求釐清）

在寫任何程式碼之前，agent 會先透過提問幫你釐清模糊的想法，探索替代方案，並將設計分段呈現供你驗證。設計確認後會存成設計文件。

### Subagent-Driven Development（子代理驅動開發）

確認計畫後，為每個任務派遣獨立的 subagent 執行，並進行兩階段審查：先確認是否符合規格，再確認程式碼品質。Critical 等級的問題會阻擋進度，確保品質。

### Test-Driven Development（測試驅動開發）

強制執行 RED-GREEN-REFACTOR 循環：先寫失敗的測試、看它失敗、寫最少的程式碼讓它通過、然後 commit。如果在測試之前就寫了程式碼，它會直接刪掉。

### Systematic Debugging（系統化除錯）

四階段的根因分析流程，包含 root-cause-tracing、defense-in-depth、condition-based-waiting 等技術，確保你不是在猜，而是在系統性地找出問題。

### Git Worktrees（隔離工作空間）

設計確認後自動建立 git worktree，在獨立分支上工作，確保主分支乾淨。完成後提供 merge/PR/keep/discard 等選項。

## 安裝方式

Superpowers 支援多種 coding agent 平台，各自有不同安裝方式：

**Claude Code：**
```bash
/plugin install superpowers@claude-plugins-official
```

**Codex CLI：**
在 `/plugins` 介面搜尋 `superpowers` 並安裝。

**Gemini CLI：**
```bash
gemini extensions install https://github.com/obra/superpowers
```

**OpenCode：**
```
Fetch and follow instructions from https://raw.githubusercontent.com/obra/superpowers/refs/heads/main/.opencode/INSTALL.md
```

**Cursor：**
在 Agent chat 中輸入 `/add-plugin superpowers`。

## 技術棧

- **語言**：Shell（skills 定義）
- **支援平台**：Claude Code, Codex CLI/App, Factory Droid, Gemini CLI, OpenCode, Cursor, GitHub Copilot CLI
- **核心概念**：Composable skills, Subagent-driven development, TDD

## 授權

MIT License

## 相關連結

- [GitHub](https://github.com/obra/superpowers)
- [官方部落格介紹](https://blog.fsck.com/2025/10/09/superpowers/)
- [Discord 社群](https://discord.gg/35wsABTejz)
- [版本通知訂閱](https://primeradiant.com/superpowers/)