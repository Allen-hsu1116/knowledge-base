---
title: Superpowers
created: 2026-05-14
---

# Superpowers

> Agentic skills framework & software development methodology that works. 先思考再動手，subagent 驅動開發，TDD 強制執行。⭐189K+

## 快速導航
- 🤖 **AI Agent** → [[AI-Agent]]（Superpowers 是 agentic framework，讓 coding agent 遵循開發方法論）
- 🛠 **Agent Skills** → [[AI-Skills]]（核心是可組合的 skills 系統）
- 💻 **Coding Agent CLI** → [[Coding-Agent-CLI]]（支援 Claude Code、Codex CLI、Cursor 等）
- 📐 **Context Engineering** → [[context-engineering-basics]]（先理解需求再動手寫碼的 context 工程思維）
- 🔄 **Self Correction** → [[self-correction]]（內建 code review 與驗證機制）

## 是什麼

Superpowers 是由 Jesse Vincent（Prime Radiant）開發的一套完整的軟體開發方法論框架，專為 coding agent 設計。它不是一個單純的工具或函式庫，而是一套可組合的技能系統（skills system），讓你的 AI 編程助手從一開始就不只是急著寫程式碼，而是先退一步思考你真正想做什麼。

核心流程是：Socratic 對話方式釐清需求 → 設計文件分段確認 → 制定實作計畫 → 拆成 2-5 分鐘的 bite-sized tasks → 為每個 task 派出 subagent 執行 → 兩階段審查（規格合規性 + 程式碼品質）。

## 核心特色

- **自動觸發的工作流程**：Skills 不是建議，而是強制執行的工作流程，Agent 在任何任務前都會檢查相關 skill 並自動啟動
- **Brainstorming（需求釐清）**：透過提問幫你釐清模糊的想法，探索替代方案，設計確認後存成設計文件
- **Subagent-Driven Development**：確認計畫後為每個任務派遣獨立 subagent，進行兩階段審查
- **Test-Driven Development**：強制執行 RED-GREEN-REFACTOR 循環，先寫失敗的測試再寫程式碼
- **Systematic Debugging**：四階段根因分析流程
- **Git Worktrees**：設計確認後自動建立 git worktree，確保主分支乾淨

## 怎麼用

```bash
# Claude Code
/plugin install superpowers@claude-plugins-official

# Codex CLI：在 /plugins 介面搜尋 superpowers

# Gemini CLI
gemini extensions install https://github.com/obra/superpowers
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[github-spec-kit]] | 規格驅動開發 | spec-kit 偬規格文件，superpowers 偬方法論流程 |
| [[garrytan-gstack]] | 角色分工框架 | gstack 偬角色分工，superpowers 偬方法論 |
| [[context-engineering-basics]] | Context 工程 | superpowers 的核心就是 context engineering |

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[Coding-Agent-CLI]] · [[self-correction]]

## 來源

- raw/2026-05-14-obra-superpowers.md

---

- **GitHub**: https://github.com/obra/superpowers
- **Stars**: ⭐189,521
- **License**: MIT
- **收錄日期**: 2026-05-14