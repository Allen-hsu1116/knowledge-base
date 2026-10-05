---
title: "pstack（多 Harness 移植版）"
slug: "michael-denyer-pstack-claude"
created: "2026-10-05"
updated: "2026-10-05"
stars: 1141
language: "JavaScript"
topics: ["agent-plugin", "agent-skills", "agentic-ai", "anthropic", "chatgpt", "claude", "claude-code", "claude-code-plugin", "claude-code-skills", "claude-skills", "code-review", "codex", "codex-cli", "codex-plugin", "codex-skills", "coding-agent", "developer-tools", "gemini-cli", "opencode", "pstack"]
---

# pstack（多 Harness 移植版）

> ⭐1.1k · JavaScript · 將 Lauren Tan 的 pstack 工作流移植到 Claude Code、Codex、Pi 等 Coding Agent。

## 快速導航

- [[AI-Skills]]
- [[Coding-Agent-CLI]]

## 是什麼

michael-denyer/pstack-claude 是 Cursor pstack 的多 Harness 移植版，不是新模型或獨立 Agent runtime。它追蹤上游，並將命名的 policy forks 記錄在 tools/forks.json，以區分共用來源與移植版決策。

核心入口 poteto-mode 依任務挑選工作流；例如修 bug 時先重現問題，再用 how／why 調查、委派修復並重跑失敗案例。跨函式邊界的修復會引入 architect，目標是讓交付包含失敗與通過證據，而不只是程式碼變更。

## 核心特色

- 工作流路由：poteto-mode 涵蓋 bug、功能、重構、效能與較長專案等 playbook。

- 角色設定：setup-pstack 可設定模型與各角色 reasoning effort，依 Harness 支援執行。

- 多 Harness 安裝：Claude Code／Codex 使用插件入口，Pi 提供套件及 extension。

- 驗證導向：工作流強調重現、調查、修復與驗證，不把生成程式碼等同完成。

- 資料界線透明：pstack 本身無 server／telemetry，但 Agent 讀取內容仍會傳到模型供應者。

## 怎麼用

以下僅列 README 的 Claude Code 安裝指令；這次收錄沒有在本機安裝插件或變更 Agent 設定。

```text
/plugin marketplace add michael-denyer/pstack-claude
/plugin install pstack@pstack-claude
/pstack:setup-pstack
```

### 使用流程

1. 安裝前先審閱技能與 hooks，再在隔離工作目錄測試；插件會影響 Agent 行為。

2. 可輸入：Use poteto-mode to fix the search filter resetting when I change pages.

3. Codex 的 routing hook 需要經 /hooks 信任後才會運作；Pi 由 extension 注入相同路由指示。

### 限制與採用提醒

沒有自建 telemetry 不等於資料不外傳：session transcript 等讀取內容可能進入模型供應者；PR 工具會使用使用者的 GitHub CLI 登入。

以上指令為官方文件範例整理，本次僅完成資料收錄，未執行安裝或產品效能測試。

## 跟其他方案的關係

以下是功能定位比較，不是相同條件的 benchmark。

| 方案 | 定位 | 關係與取捨 |
|---|---|---|
| Cursor 原版 pstack | 此移植版的上游來源 | 不是完全獨立設計，需注意已宣告的 policy forks |
| 一般技能集合 | 提供可重用任務說明 | pstack 另以 poteto-mode 串接路由、調查、角色與驗證 |
| agent-formal-verify | TLA+ model checking／Lean proofs | 是作者另外提供的插件，不能當成本 repo 已內建能力 |

## 相關概念

← [[AI-Skills]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub](https://github.com/michael-denyer/pstack-claude)
- [官方 README](https://github.com/michael-denyer/pstack-claude/blob/main/README.md)
- 原始快照：`raw/2026-10-05-michael-denyer-pstack-claude.md`
- Metadata：`raw/2026-10-05-michael-denyer-pstack-claude-metadata.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/michael-denyer/pstack-claude |
| Stars | 1,141（2026-10-05 快照） |
| License | MIT |
| Language | JavaScript |
| 收錄日期 | 2026-10-05 |
