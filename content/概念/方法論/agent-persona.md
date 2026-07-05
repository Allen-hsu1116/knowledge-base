---
title: AI Agent 人格與角色設計
slug: agent-persona
created: 2026-05-05
updated: 2026-05-05
language: zh-TW
---

# AI Agent 人格與角色設計

> 用 Persona 定義 AI 是誰，用 Skill 定義 AI 會什麼，兩者搭配 = 有方向又有方法的 AI 同事。

## 核心內容

Agent Persona 是 AI Agent 的角色設計方法論。核心概念很簡單：只告訴 AI 做什麼是「工具」，告訴 AI 是誰才是「同事」。Persona 定義 AI 的身分、風格、價值觀，Skill 定義 AI 的流程和品質標準。兩者搭配，讓 AI 在特定領域像真正的專業同事一樣工作，而不是泛泛的通才助理。

Persona 的價值在於讓 AI 有「立場」——不只是回答問題，而是像專業人士一樣給建議。一個有明確 Persona 的資深前端工程師 AI，會主動指出效能地雷、偏好簡單方案、用程式碼說話；而一個沒有 Persona 的「萬能助手」只會泛泛地回答。同樣，只有 Persona 沒有 Skill 等於有方向沒方法——AI 知道該怎麼想但不知道該怎麼做。

Agent 的進化分三個層次：工具（你下指令，AI 執行）→ 助理（AI 有基本角色但太泛）→ 同事（AI 有明確 Persona + 多個 Skill，能自主判斷情境）。開源人格庫（如 Agency Agents 的 144 個預設人格）大幅降低了 Persona 設計的門檻，不需要從頭設計，拿模板改就好。

## 關鍵要素

- **Persona 四要素** — 角色定位（做什麼）、溝通風格（怎麼說話）、決策偏好（怎麼取捨）、經驗背景（「經歷」過什麼）
- **三層次進化** — 工具（下指令執行）→ 助理（有基本角色但太泛）→ 同事（有明確 Persona + 多個 Skill，能自主判斷情境）
- **Skill 與 Persona 互補** — 只有 Persona 沒有 Skill = 有方向沒方法；只有 Skill 沒有 Persona = 有方法沒立場；兩者缺一不可
- **開源人格庫降低門檻** — Agency Agents 提供 144 個預設人格，涵蓋工程、設計、行銷、產品、營運、數據等領域，每個人格包含角色描述、專業背景、溝通風格、工作流程、產出標準
- **多 Persona 組成 AI 團隊** — 行銷 + 工程 + 產品協作，多個人格角色同時參與討論，產出共識摘要
- **避免的陷阱** — Persona 太泛等於沒有 Persona（「你是一個有用的助手」）；Persona 不一致導致 Agent 行為不可預測

## 各框架的做法

- **OpenClaw** → SOUL.md 實作 Persona（身分、個性、價值觀），搭配 SKILL.md 和 AGENTS.md
  👉 詳見 [[openclaw]]
- **Hermes Agent** → Honcho dialectic user modeling，跨 session 建立使用者深層模型
  👉 詳見 [[hermes-agent]]
- **Project Golem** → InteractiveMultiAgent 多代理圓桌討論，多個 Persona 同時參與
  👉 詳見 [[project-golem]]
- **Agency Agents** → 144 個預設 AI 員工人格，開源人格庫直接使用
  👉 詳見 [[agency-agents-144-personas]]
- **AutoResearch** → program.md 定義研究策略，Persona 給方向 Skill 給方法的最簡範例
  👉 詳見 [[autoresearch]]

## 相關概念

- [[AI-Skills]] — Skill 的標準化格式和生態系，Persona 的搭配
- [[AI-Agent]] — AI 工作流整體趨勢，Persona 是 Agent 的靈魂
- [[AI-Skills]] — SKILL.md 格式詳解，定義 AI 怎麼做
- [[harness-engineering]] — Harness 中的認知框架部分，Persona 是角色定義層
- [[AI-Skills]] — Claude Code 版的 Persona，行為規範載體
- [[MCP]] — Agent 使用工具的標準介面
- [[llm-knowledge-base]] — Persona 影響知識庫整理的風格和深度

## 來源

- Persona + Skill 打造 AI 同事方法論筆記
- Agency Agents 144 人格開源專案