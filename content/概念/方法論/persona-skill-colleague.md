---
title: 用 Persona + Skill 打造 AI 同事
slug: persona-skill-colleague
language: zh-TW
---

# 用 Persona + Skill 打造 AI 同事

> AI 工具從「助理」進化成「同事」，關鍵在於 Persona（人格）和 Skill（技能）的搭配——定義它是誰、擅長什麼，讓它在特定領域像真正的專業同事一樣工作。

## 核心內容

AI 工具的進化有三個層次：工具（你下指令，AI 執行）→ 助理（AI 有基本角色，能主動追問）→ 同事（AI 有明確 Persona + 多個 Skill，能主動判斷情境）。從助理到同事的關鍵，是 Persona 和 Skill 的搭配。

Persona 是 AI 的身分設定，包含四個要素：角色定位（工作是什麼）、溝通風格（怎麼說話）、決策偏好（面對取捨怎麼選）、經驗背景（「經歷」過什麼）。沒有 Persona 的 AI 是通才，什麼都行但什麼都不精；有 Persona 的 AI 是專才，在特定領域表現更好、回覆更一致。

Skill 是 AI 的能力清單和操作手冊，包含工具使用、流程步驟、品質標準、限制範圍。Persona 決定「為什麼這樣做」（方向），Skill 決定「怎麼做」（方法）。只有 Persona 沒有 Skill = 有方向沒方法；只有 Skill 沒有 Persona = 有方法沒立場。兩者搭配才是完整的 AI 同事。

降低門檻的關鍵是開源人格庫——Agency Agents 專案提供 144 個預設人格，不需要從頭設計。各框架也有自己的實作方式，讓 Persona + Skill 的搭配成為可操作的工程實踐。

## 關鍵要素

- **三層次進化**：工具 → 助理 → 同事，層次越高自主性越高，需要越好的 onboarding
- **Persona 四要素**：角色定位、溝通風格、決策偏好、經驗背景——定義 AI 是誰
- **Skill 與 Persona 互補**：Persona 給方向，Skill 給方法，兩者缺一不可
- **開源人格庫降低門檻**：144 個預設人格可直接使用，不需從頭設計
- **各框架實作方式不同**：SOUL.md、Honcho、多代理圓桌等不同路徑

## 各框架的做法

- **OpenClaw** → SOUL.md 實作 Persona，SKILL.md 實作 Skill，AGENTS.md 定義工作規範
  👉 詳見 [[openclaw]]
- **Agency Agents** → 144 個預設人格的開源人格庫，直接選用不需從頭設計
  👉 詳見 [[agency-agents-144-personas]]
- **Agent Skills 生態** → 1,443+ 個標準化 Skill，搭配 Persona 使用
  👉 詳見 [[agent-skills-ecosystem]]
- **CLAUDE.md 進階技巧** → CLAUDE.md 是另一種 Persona 實作方式
  👉 詳見 [[claude-code-boris-cherny-advanced-techniques]]

## 相關概念

- [[agent-persona]] — Agent 人格設計的深入版
- [[agent-skills-ecosystem]] — Skill 是 Persona 的搭配，兩者共同構成 AI 同事
- [[AI-Agent]] — Persona 是 Agent 的靈魂，Agent 自主性的基礎
- [[karpathy-skills]] — Karpathy 風格知識庫 Skill，Skill 生態的具體實例

## 來源

- 數位時代 BusinessNext 報導（2026.04.11，作者：李先泰）