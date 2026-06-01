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

## 快速導航
- ⚡ [[AI-Agent]] · [[agent-skills-ecosystem]] · [[humanlayer-12-factor-agents|12-Factor Agents]]

## 是什麼

Multica 是開源 managed agents 平台，把 Claude Code、Codex、Hermes 等 coding agents 組織成像人類隊友一樣——指派任務、追蹤進度、累積技能，讓 AI agent 團隊自動化協作。過去用 coding agent 是「one-shot」：貼 prompt、等結果、手動重來。Multica 把 agent 變成 board 上的 first-class teammate——能接 issue、寫程式、回報 blocker、自動更新狀態。Squad 功能讓大團隊可以在 leader agent 下分派工作。

## 核心特色

- **Agents as Teammates** — Agent 有人設、出現在 board、發留言、建 issue、主動回報 blocker
- **Squads** — 把 agents（和 human）編成小隊，leader agent 負責路由派工，`@FrontendTeam` 而非 `@alice-or-bob`
- **Autonomous Execution** — 全任務生命週期管理（enqueue → claim → start → complete/fail），WebSocket 即時串流進度
- **Reusable Skills** — 每次解法存成 skill，部署、遷移、code review 等能力持續累積
- **Unified Runtimes** — 一個 Dashboard 管所有 compute，自動偵測本機有哪些 agent CLI
- **Multi-Workspace** — 跨團隊 workspace 隔離，各有自己的 agents、issues、settings

技術棧：Next.js 16 (App Router) + Go (Chi router, sqlc, gorilla/websocket) + PostgreSQL 17 + pgvector。

## 怎麼用

Multica 支援多種 coding agent 作為 runtime：Claude Code、Codex、GitHub Copilot CLI、OpenClaw、OpenCode、Hermes、Gemini、Pi、Cursor Agent、Kimi、Kiro CLI。

使用流程：
1. 在 board 上建立 issue，指派給 agent
2. Agent 自動 claim → start → execute → complete/fail
3. Squad 模式：對 `@FrontendTeam` 發 issue，leader agent 分派給合適的成員
4. 每次解決方案自動存成 Reusable Skill

部署：Docker compose 自架，或使用 managed 版本。

## 跟其他方案的關係

| 特色 | Multica | Claude Code Teams | Devin | [[openclaw]] |
|------|---------|-------------------|-------|-------------|
| 定位 | Managed agent 平台 | Agent 團隊模式 | 全自主 AI 工程師 | 個人 AI 助手 |
| 多 Agent 協作 | ✅ Squads | ⚠️ teammate mode | ❌ 單一 agent | ✅ Subagents |
| 可重用技能 | ✅ Reusable Skills | ❌ | ❌ | ✅ SKILL.md |
| 開源 | ✅ | ❌ （Claude 產品） | ❌ SaaS | ✅ MIT |
| Board/Issue 整合 | ✅ 原生 | ❌ | ✅ PR-based | ❌ |
| 多種 Agent Runtime | ✅ 11 種 | ❌ Claude only | ❌ 自有 | ✅ 多模型 |

Multica 是把「managed」概念帶入 AI agent 的平台——從 one-shot prompt 進化到持久團隊成員。跟 [[humanlayer-12-factor-agents|12-Factor Agents]] 的 agent lifecycle management 設計原則呼應，跟 [[agent-skills-ecosystem]] 的 Reusable Skills 緊密相關。

## 相關概念
← [[AI-Agent]] · [[agent-skills-ecosystem]] · [[Coding-Agent-CLI]] · [[humanlayer-12-factor-agents]]

## 來源

- [原始資料](../raw/2026-05-24-multica-ai-multica.md)