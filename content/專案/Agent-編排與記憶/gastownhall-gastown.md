---
title: Gas Town
slug: gastownhall-gastown
created: 2026-07-06
updated: 2026-07-06
stars: 16.4k
language: Go
topics: multi-agent, orchestration, claude-code, copilot, codex, workspace-manager
---

# Gas Town

> ⭐16.4k · 多 Agent 工作空間管理系統——The Mayor 協調 20-30 agents，git-backed hooks 持久化，Beads issue tracking

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent|AI Agent]]
- 🧠 **Agent 編排** → [[ruvnet-ruflo|Ruflo]]
- 🔧 **Coding Agent CLI** → [[Coding-Agent-CLI|Coding Agent CLI]]
- 🛠 **AI Skills** → [[AI-Skills|AI Skills]]

## 是什麼

Gas Town 是一個多 Agent 工作空間管理系統，讓你協調多個 AI coding agents（[[anthropics-claude-code|Claude Code]]、GitHub Copilot、Codex、Gemini 等）同時在不同任務上工作。它的核心理念是用 git-backed hooks 持久化工作狀態，讓 agent 重啟或 crash 後不丟失上下文。

架構概念很有特色：The Mayor 是你的主要 AI 協調者（Claude Code 實例），Town 是工作空間目錄，Rigs 是專案容器（包裝 git repo），Crew Members 是個人工作區，Polecats 是有持久身份但短 session 的 worker agents。工作狀態透過 Beads（git-backed issue tracking）和 Convoys（工作追蹤單位）管理。

系統配備三層監控（Witness → Deacon → Dogs）、Refinery 合併佇列（Bors-style bisecting queue）、Escalation 升級機制、Scheduler 容量管理、Seance session 發現和延續。可從 4-10 agents 舒適擴展到 20-30 agents。

## 核心特色

- **The Mayor AI 協調者** — 統一管理所有 agents 和專案的全局上下文
- **Git-backed hooks 持久化** — 工作狀態存在 git worktree，crash/restart 不丟失
- **Beads issue tracking** — git-backed 結構化工作狀態追蹤系統
- **三層監控** — Witness（per-rig 生命週期）→ Deacon（背景巡邏）→ Dogs（維護任務）
- **Refinery 合併佇列** — Bors-style bisecting queue，批次合併 + 驗證門
- **20-30 agents 規模** — 從 4-10 agents 混亂到舒適擴展
- **Seance session 發現** — agent 可查詢前代 session 的決策和上下文
- **Wasteland 聯邦網路** — 透過 DoltHub 跨 Town 協調工作

## 怎麼用

### 安裝

```bash
# Homebrew（推薦）
brew install gastown

# npm
npm install -g @gastown/gt

# 建立工作空間
gt install ~/gt --git
cd ~/gt

# 加入專案
gt rig add myproject https://github.com/you/repo.git

# 建立個人工作區
gt crew add yourname --rig myproject
cd myproject/crew/yourname

# 啟動 The Mayor
gt mayor attach
```

### 需求

- Go 1.25+, Git 2.25+, Dolt 2.0.7+, beads 0.55.4+, sqlite3, tmux 3.0+
- Claude Code CLI（預設 runtime）

## 跟其他方案的關係

| 方案 | 類型 | Agent 數 | 持久化 | Stars |
|------|------|----------|--------|-------|
| **Gas Town** | 工作空間管理 | 20-30 | Git-backed | ⭐16.4k |
| [[ruvnet-ruflo\|Ruflo]] | 多 Agent 編排 | Swarm | 聯邦通訊 | ⭐47k |
| [[ogulcancelik-herdr\|herdr]] | Agent 多工器 | 15+ | 狀態感知 | ⭐9k |
| [[OpenHands-OpenHands\|OpenHands]] | Agent 控制中心 | 多後端 | ACP | ⭐77.4k |

Gas Town 與 [[ruvnet-ruflo|Ruflo]] 都是多 Agent 編排系統，但 Gas Town 更強調「工作空間管理」——用 git worktree 持久化每個 agent 的工作狀態，而 Ruflo 偏重 Swarm 聯邦通訊。與 [[ogulcancelik-herdr|herdr]] 相比，Gas Town 規模更大（20-30 vs 15+ agents），且多了 Beads tracking 和 Refinery 合併佇列。

← [[AI-Agent|AI Agent]] · [[ruvnet-ruflo|Ruflo]] · [[Coding-Agent-CLI|Coding Agent CLI]]

## 來源

- GitHub: https://github.com/gastownhall/gastown
- raw/2026-07-06-gastownhall-gastown.md

---

| 欄位 | 值 |
|------|-----|
| **GitHub** | https://github.com/gastownhall/gastown |
| **Stars** | ⭐ 16,382 |
| **License** | MIT |
| **Language** | Go |
| **收錄日期** | 2026-07-06 |