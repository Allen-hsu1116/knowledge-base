---
title: Agent Skills 生態系
slug: agent-skills-ecosystem
language: zh-TW
---

# Agent Skills 生態系

> Agent Skills 正在從個人腳本進化成標準化的共享格式，GitHub 上已經出現多個大型 Skill 庫。從「貼在聊天視窗的提示詞」到「可安裝、可搜尋、可重用的技能庫」。

## 核心內容

Agent Skills 生態系是指圍繞 SKILL.md 標準格式形成的技能共享和分發體系。每個 Skill 是一個結構化的操作指令集，包含觸發條件、執行步驟、約束和輸出規範，讓 AI Agent 能以明確的上下文和品質標準來執行重複性任務。

這個生態系正在快速成長：Google、知名開發者 Addy Osmani 都在投入 Skill 標準化，GitHub 上已經出現數百個可安裝的 Skills，涵蓋程式開發全流程。所有 Skill 庫統一使用 `skills.sh` 分發標準，一行指令安裝，支援 Claude Code、Cursor、Gemini CLI、Codex CLI、OpenClaw 等多個平台。

Skill 的三個層級滿足不同複雜度需求：Bundle（一組相關技能的集合）→ Workflow（多步驟的技能執行流程）→ Plugin（針對特定平台的安裝包格式）。Karpathy 的 AutoResearch 專案將 program.md 視為超輕量 Skill，展示了 Skill-driven autonomous research 的最早實例——人類寫 Markdown 研究策略，Agent 在策略內自主跑實驗。

## 關鍵要素

- **統一格式 SKILL.md** — 觸發條件、操作流程、品質標準、注意事項四個部分，讓 Skill 可跨 Agent 平台使用；從零散提示詞進化到結構化、版本控制、Git 管理的可重用技能
- **跨平台安裝** — `npx skills add` 一行指令安裝，支援 Claude Code、Cursor、Gemini CLI、Codex CLI、OpenClaw 等
- **技能層級分明** — Bundle（技能集合）→ Workflow（多步驟流程）→ Plugin（平台安裝包），三個層級滿足不同複雜度
- **大廠投入** — Google 官方出品 GCP Skills，Addy Osmani 維護通用開發 Skills，代表這個方向有未來
- **Skill-driven Autonomous Research** — Karpathy AutoResearch 的 program.md 是超輕量 Skill 的最早實例
- **Meta Harness 自動更新** — Opus 幫 Haiku 設計 agents.md，分數從 13.5 提升到 85，Skill 可用來自動改善 Agent 行為

## 各框架的做法

- **Addy Osmani Agent Skills** → 通用開發全流程 Skill（程式碼審查、除錯、效能優化、重構、TDD、API 設計、安全加固、CI/CD）
  👉 詳見 [[addyosmani-agent-skills]]
- **Google Skills** → GCP 服務和架構最佳實踐，Well-Architected Framework
  👉 詳見 [[google-skills]]
- **Karpathy Skills** → 知識庫方法論封裝成可安裝的 Skill 格式
  👉 詳見 [[multica-ai-andrej-karpathy-skills]]
- **Anthropic Skills** → 官方出品，前端設計和 Web 測試 Skills
  👉 詳見 [[anthropics-skills]]
- **OpenClaw** → 原生支援 SKILL.md，ClawHub 是 Skill 分享和發現平台
  👉 詳見 [[openclaw]]
- **Hermes Agent** → 相容 agentskills.io 開放標準
  👉 詳見 [[hermes-agent]]

## 相關概念

- [[AI-Skills]] — SKILL.md 是 Skill 的標準格式定義
- [[AI-Agent]] — Agent 透過 Skills 獲得結構化操作能力
- [[MCP]] — Skills 定義「做什麼」，MCP 定義「怎麼連」
- [[agent-persona]] — Persona 定義「是誰」，Skills 定義「能做什麼」
- [[harness-engineering]] — Skills 是 Harness 中的行為控制策略
- [[prompt-security]] — Skill 中可以包含安全限制定義
- [[llm-knowledge-base]] — 知識庫方法論可封裝成 Skill 格式

## 來源

- Addy Osmani agent-skills 專案
- Google skills 專案
- Karpathy Skills 專案
- Agency Agents 144 Personas 專案