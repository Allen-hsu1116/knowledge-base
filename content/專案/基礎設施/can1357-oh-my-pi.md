---
title: Oh My Pi
slug: can1357-oh-my-pi
created: 2026-05-10
updated: 2026-05-10
stars: 4,108
language: zh-TW
topics: [Coding Agent CLI, LSP, 自主記憶]
---

# Oh My Pi

> ⭐4,108 · 終端 AI Coding Agent，雜湊錨定編輯 + LSP 整合 + 子代理架構。

## 快速導航

- [[Coding-Agent-CLI|Coding Agent CLI]] — 終端 AI 開發助手
- [[AI-Agent|AI Agent]] — 自主 AI 系統
- [[AI-Skills|AI Skills]] — 技能格式與生態系

## 是什麼

can1357/oh-my-pi 是 badlogic/pi-mono 的 fork，一個功能完整的終端 AI coding agent。特色是雜湊錨定編輯（不用行號，用程式碼內容的雜湊錨點定位）、LSP 整合（11 種操作，40+ 語言）、持久化 Python kernel、子代理平行執行。用 TypeScript 和 Rust 實作。

## 核心特色

- **Hash-anchored Edits** — 用程式碼區塊的雜湊值產生錨點（如 `#abc123def`），編輯時指定錨點而非行號。好處是即使檔案被其他工具修改過（行號偏移），編輯仍然能精確定位到正確位置，解決行號漂移問題
- **LSP 整合** — 11 種 LSP 操作（diagnostics、definition、type_definition、implementation、references、hover、symbols、rename、code_actions、status、reload），預設 40+ 語言的 LSP 設定檔。Agent 可以直接查型別定義、跳轉引用、取得診斷，不用自己猜
- **Python Kernel** — 啟動持久化的 IPython kernel，串流輸出、rich helpers、檔案 I/O、搜尋、行操作。跨多輪對話保持狀態，不用每次重啟，適合資料分析和實驗
- **Agentic Git Commit** — AI 分析 staged 變更，自動生成 conventional commit 訊息。支援智慧拆分提交（hunk-level staging），一個大改動可以按邏輯拆成多個 commit
- **Subagents** — 6 個內建代理（explore 探索、plan 規劃、designer 設計、reviewer 審查、task 執行、quick_task 快速任務），可平行執行。例如 reviewer 和 explore 可以同時跑
- **TTSR Rules** — 零 context 消耗的規則系統，規則平時不載入，只在偵測到特定 pattern 時才按需注入（例如偵測到 Python 檔案才注入 Python 規則）
- **Model Routing** — 角色路由：不同任務用不同模型（default 一般任務、smol 快速任務、slow 深度推理、plan 規劃、commit 提交訊息），省 token 又保持品質

## 怎麼實現的

oh-my-pi 的核心架構是 Tool Harness + Subagent Runtime：

1. **Tool Harness**：精心挑選的工具集，每個工具都針對 coding 場景最佳化。Hash-anchored edit 是最核心的工具 — 它在讀取檔案時計算每個程式碼區塊的雜湊值並生成錨點，編輯時用錨點定位，徹底解決行號漂移問題
2. **LSP Client Layer**：啟動和管理語言伺服器，把 LSP 操作包裝成 agent 可呼叫的工具。Agent 寫完程式碼可以立刻呼叫 diagnostics 檢查，用 definition 跳轉，用 references 找引用
3. **Python Kernel Manager**：啟動 IPython kernel 進程，透過 ZMQ 通訊。提供 `%run`、`%%writefile` 等 magic，加上自訂 helpers（搜尋、檔案 I/O）。kernel 在 session 期間持久存在
4. **Subagent Runtime**：每個子代理是獨立的 agent session，有自己的 context 和工具集。主 agent 可以同時派發多個子代理平行執行，結果回傳後彙整
5. **TTSR Pattern Matching**：規則系統用 pattern matcher 監控 context 中的內容，匹配到特定 pattern 時動態注入對應規則。平時 zero context-use，按需載入

## 怎麼用

```bash
# 從 GitHub 取得原始碼
git clone https://github.com/can1357/oh-my-pi.git
cd oh-my-pi
npm install
npm run build

# 啟動 agent
npm start

# 基本互動範例
> ⭐4,108 · 終端 AI Coding Agent，雜湊錨定編輯 + LSP 整合 + 子代理架構。
> ⭐4,108 · 終端 AI Coding Agent，雜湊錨定編輯 + LSP 整合 + 子代理架構。
> ⭐4,108 · 終端 AI Coding Agent，雜湊錨定編輯 + LSP 整合 + 子代理架構。
> ⭐4,108 · 終端 AI Coding Agent，雜湊錨定編輯 + LSP 整合 + 子代理架構。

# 子代理使用
> ⭐4,108 · 終端 AI Coding Agent，雜湊錨定編輯 + LSP 整合 + 子代理架構。
> ⭐4,108 · 終端 AI Coding Agent，雜湊錨定編輯 + LSP 整合 + 子代理架構。

# 自訂模型路由（在設定檔中）
# default: claude-sonnet-4
# smol: claude-haiku
# slow: claude-opus-4
# plan: claude-sonnet-4
# commit: claude-haiku
```

## 跟其他方案的關係

| 方案 | 編輯方式 | LSP | Python Kernel | 子代理 |
|------|----------|-----|---------------|--------|
| **oh-my-pi** | Hash-anchored | ✅ 11 操作 | ✅ 持久化 | ✅ 6 個平行 |
| **OpenClaw** | Skill + Context 體系 | ❌ | ❌ | ✅ Subagent |
| **Claude Code** | Line-based search/replace | ❌ | ❌ | ❌ |
| **Codex CLI** | Patch-based | ❌ | ❌ | ✅ 沙箱 |

- 與 [[openclaw|OpenClaw]] 理念相近：都是終端 AI agent，但 oh-my-pi 用 hash-anchored 編輯（更精確），OpenClaw 用 skill + context 體系（更彈性）
- 與 [[Coding-Agent-CLI|Coding Agent CLI]] 歸同類：終端為主的 AI 開發助手
- LSP 整合是其最大差異化優勢 — 讓 agent 具備 IDE 等級的程式碼理解能力
- TTSR 按需注入規則的概念跟 OpenClaw 的 skill 系統思路相似

## 相關概念

- [[Coding-Agent-CLI|Coding Agent CLI]]
- [[AI-Agent|AI Agent]]
- [[AI-Skills|AI Skills]]

## 來源

- raw/2026-05-08-can1357-oh-my-pi.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [can1357/oh-my-pi](https://github.com/can1357/oh-my-pi) | ⭐4,108 | — | 2026-05-08 |