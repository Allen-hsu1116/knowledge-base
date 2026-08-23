---
title: Munder Difflin
slug: chaitanyagiri-munder-difflin
created: 2026-08-20
updated: 2026-08-20
stars: 2693
language: zh-TW
topics: [AI Agent, 多 Agent, Harness Engineering, Agent Memory, Coding Agent, Electron]
---

# Munder Difflin

> ⭐2693 · 把多種終端 Coding Agent 組成一間本地虛擬辦公室，透過 supervisor、mailbox、記憶與人類審批協同工作。

## 快速導航


- 🤖 [[AI-Agent]] — 多 Agent 協作與 supervisor 編排模式
- 🧰 [[harness-engineering]] — 在既有 CLI Agent 外加上記憶、路由、安全與觀測層
- 💻 [[Coding-Agent-CLI]] — 被包裝成工作節點的 Claude Code、Codex、OpenCode 等 CLI
- 🧠 [[llm-knowledge-base]] — 跨 session 的 Markdown 記憶與語意召回

## 是什麼

Munder Difflin 是一個本地桌面 multi-agent harness，把 Claude Code、OpenAI Codex、Gemini Antigravity、Grok、Kimi Code、Qwen、OpenCode、Crush、pi.dev 與 GitHub Copilot CLI 等真實終端程序包裝成可協作的 Agent。

每個 Agent 都在 `node-pty` 中執行，擁有自己的工作目錄、身份、mailbox 與記憶；一個名為 Michael 的 GOD／supervisor agent 負責分派任務、路由訊息、裁決衝突，只有支出、破壞性操作或範圍變更等重大事項才升級給人類。

Electron／React 介面把 Agent 呈現成 Pixi.js 2D 辦公室中的角色，同時提供 live terminal、Kanban、排程任務、Monaco IDE、git 檢視、成本觀測與記憶搜尋。重點不只是視覺效果，而是將多個既有 CLI 變成可持續協作的本地團隊。

## 核心特色

- **多引擎 CLI 封裝**：直接執行 Claude Code、Codex、OpenCode、Kimi、Qwen、Copilot 等真實程序，而非模擬聊天介面。
- **Hive 協作層**：以本地 plain files、inbox／outbox、blackboard 與 append-only log 讓 Agent 交換任務與結果。
- **Supervisor 編排**：Michael 負責 roster、路由、task ledger 與例外升級，讓使用者只需和單一入口溝通。
- **長期記憶**：Markdown-first 記憶搭配語意索引、condensation 與跨 session recall，索引不可用時仍能降級運作。
- **安全控制**：支出、scope 與 destructive operations 設 human gates，另有 steer → constrain → stop 的 circuit breaker。
- **隔離與可觀測性**：可選 per-agent git worktree，並記錄 token、成本、OTel spans、tool waterfall 與 durable ledger。
- **完整 Command Center**：整合 Kanban、依賴、排程、heartbeat、Slack/webhook、Monaco IDE、git history 與 Agent Gallery。
- **本地模型與 BYOK**：可接 Ollama、LM Studio、vLLM 或各 provider API key，避免綁死單一模型服務。

## 怎麼用

先確認 Node.js 18+、npm、C/C++ toolchain，以及至少一個支援的 Agent CLI 已在 `PATH`：

```bash
git clone https://github.com/chaitanyagiri/munder-difflin.git
cd munder-difflin
npm install
npm run dev
```

開發與驗證可使用：

```bash
npm run typecheck
npm run build
npm run preview
```

第一次啟動會進入 onboarding wizard，之後可用 **Add agent** 建立工作節點。若 Electron 更新後 `node-pty` ABI 不相容，重新執行 `npm install`，讓 postinstall 的 `electron-rebuild` 重建 native addon。

## 跟其他方案的關係

Munder Difflin 位於「多 Agent 控制中心」與「既有 Coding Agent 多工器」之間：

| 方案 | 編排單位 | 記憶／協作 | 介面重點 |
|------|----------|------------|----------|
| Munder Difflin | 真實終端 Agent 程序 | mailbox、blackboard、semantic memory | 2D 辦公室 + Command Center |
| [[paperclipai-paperclip\|Paperclip]] | Agent 公司與組織角色 | 持久狀態、預算、治理 | 組織管理與企業治理 |
| [[gastownhall-gastown\|Gas Town]] | 20–30 個 coding agents | Git-backed hooks、Beads | 大規模 workspace 編排 |
| [[ogulcancelik-herdr\|herdr]] | 多個 Agent 終端 session | 狀態感知與 SSH | 輕量終端多工與遠端控制 |
| [[pingdotgg-t3code\|T3 Code]] | 多種 Coding Agent | 統一工作介面 | Web／桌面 GUI |

與從零提供推理 runtime 的 Agent framework 不同，Munder Difflin 主要包裝使用者已安裝、已付費或自行架設的 CLI，將協作、治理、記憶與 UI 疊加在它們之上。

## 相關概念


← [[AI-Agent]] · [[harness-engineering]] · [[Coding-Agent-CLI]] · [[llm-knowledge-base]]

## 來源

- GitHub：https://github.com/chaitanyagiri/munder-difflin
- Raw 檔案：raw/2026-08-20-chaitanyagiri-munder-difflin.md
- 授權注意：程式碼採 MIT；bundled pixel art 另受 LimeZu FREE VERSION 非商用限制

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/chaitanyagiri/munder-difflin |
| Stars | ⭐2693|
| License | MIT（程式碼；素材另有限制） |
| 收錄日期 | 2026-08-20 |
