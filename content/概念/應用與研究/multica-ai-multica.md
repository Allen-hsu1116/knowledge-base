---
title: Multica
date: 2026-05-24
stars: 31926
repo: multica-ai/multica
url: https://github.com/multica-ai/multica
language: TypeScript
topics:
  - AI-Agent
  - Coding-Agent-CLI
  - agent-skills-ecosystem
  - managed-agents
  - 12-factor-agents
---

# Multica

⭐ 31.9k · 開源 managed agents 平台，把 coding agents 變成真正的隊友

## 一句話

把 Claude Code、Codex、Hermes 等 coding agents 組織成像人類隊友一樣——指派任務、追蹤進度、累積技能，讓 AI agent 團隊自動化協作。

## 為什麼重要

過去用 coding agent 是「one-shot」：貼 prompt、等結果、手動重來。Multica 把 agent 變成 board 上的 first-class teammate——能接 issue、寫程式、回報 blocker、自動更新狀態。Squad 功能讓大團隊可以在 leader agent 下分派工作，routing 穩定不隨便。最關鍵的是 **Reusable Skills**：每次解決問題的方案都變成可複用的 skill，讓團隊能力隨時間複合成長。

## 核心概念

- **Agents as Teammates** — Agent 有人設、出現在 board、發留言、建 issue、主動回報 blocker
- **Squads** — 把 agents（和 human）編成小隊，leader agent 負責路由派工，`@FrontendTeam` 而非 `@alice-or-bob`
- **Autonomous Execution** — 全任務生命週期管理（enqueue → claim → start → complete/fail），WebSocket 即時串流進度
- **Reusable Skills** — 每次解法存成 skill，部署、遷移、code review 等能力持續累積
- **Unified Runtimes** — 一個 Dashboard 管所有 compute，自動偵測本機有哪些 agent CLI
- **Multi-Workspace** — 跨團隊 workspace 隔離，各有自己的 agents、issues、settings

## 技術棧

- Frontend: Next.js 16 (App Router)
- Backend: Go (Chi router, sqlc, gorilla/websocket)
- Database: PostgreSQL 17 + pgvector
- Agent Runtime: 本機 daemon 執行 Claude Code / Codex / GitHub Copilot CLI / OpenClaw / OpenCode / Hermes / Gemini / Pi / Cursor Agent / Kimi / Kiro CLI

## 跟我們的關聯

- [[AI-Agent]] — Multica 是 managed agent 基礎設施的最新發展：不只是單一 agent，而是 agent 團隊管理
- [[Coding-Agent-CLI]] — 支援多種 coding agent CLI 作為 runtime，包含 Hermes
- [[agent-skills-ecosystem]] — Reusable Skills 的概念與 agent skills 緊密相關
- [[12-factor-agents]] — Multica 的 agent lifecycle management 呼應 12-factor agents 的設計原則
- [[managed-agents]] — 首個把 managed 概念帶入 AI agent 的平台，從 one-shot prompt 進化到持久團隊成員