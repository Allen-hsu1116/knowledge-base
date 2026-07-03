---
title: AI Skills
slug: AI-Skills
language: zh-TW
---

# AI Skills

> AI Skills 是一種結構化的操作指令格式（通常為 SKILL.md），讓 AI coding agent 能以明確的上下文、約束和輸出規範來執行重複性任務。從「一次性提示詞」進化到「可安裝、可搜尋、可重用」的技能庫。

## 核心內容

AI Skills 是一種結構化的操作指令格式（通常為 SKILL.md），讓 AI coding agent 能以明確的上下文、約束和輸出規範來執行重複性任務。一個 SKILL.md 包含四個部分：觸發條件（什麼情況下啟用）、指令（具體執行步驟）、約束（不可違反的規則）、輸出規範（期望的回覆格式）。

Skills 的核心價值在於從「一次性提示詞」進化到「可安裝、可搜尋、可重用」的技能庫。零散 prompt 貼在聊天視窗每次要重打，沒有版本控制，只適用一個工具；SKILL.md 安裝到 agent 目錄後一勞永逸，Git 管理版本，跨平台通用。技能層級分為 Bundle（一組相關技能的集合）、Workflow（多步驟執行流程）、Plugin（特定平台安裝包格式）。

Skills 的跨平台支援是關鍵優勢。同一個 SKILL.md 可以在 Claude Code、Cursor、Gemini CLI、Codex CLI 等多個工具中使用。Skills 生態系正在快速成長，GitHub 上已出現多個大型 Skill 庫，涵蓋前端設計、網安、科學研究、金融交易等領域。

## 關鍵要素

- **SKILL.md 四段式結構**：觸發條件 + 指令 + 約束 + 輸出規範，讓 prompt 從自然語言走向工程化
- **可安裝可重用**：安裝到 agent 目錄後一勞永逸，Git 版本控制，取代每次重打的零散 prompt
- **跨平台通用**：同一個 SKILL.md 可在 Claude Code、Cursor、Gemini CLI、Codex CLI 等多工具使用
- **技能層級**：Bundle（技能集合）、Workflow（多步驟流程）、Plugin（平台安裝包）
- **與 MCP 互補**：Skills 定義「做什麼」，MCP 定義「怎麼連」，兩者共同構成 Agent 的能力邊界
- **生態系成長**：Google、Addy Osmani 等社群和企業推動 Skills 標準化，skills.sh 成為分發標準，大型 Skill 庫涵蓋前端設計、網安、科學研究、金融交易等領域
- **CLAUDE.md 行為規範**：Claude Code 的 advisory 行為檔案，合規率約 80%，建議不超過 200 行；Karpathy 提出 4 條核心規則（簡潔、可執行、可驗證、可演化），社群延伸至 8 條實務規則

## CLAUDE.md 行為規範

[[AI-Skills|CLAUDE.md]] 是 Claude Code 的 advisory 行為契約——不是強制規則，而是建議性的行為指引。實測合規率約 80%，代表模型大多遵循但非百分百。關鍵設計限制：建議不超過 200 行，過長會被模型忽略。Karpathy 提出 4 條核心規則（簡潔、可執行、可驗證、可演化），社群在此基礎上延伸至 8 條實務規則，涵蓋專案結構、測試規範、程式碼風格等面向。

## 各框架的做法

- **Anthropic Skills** → 官方結構化 Skill 集，前端設計、Web 測試等
  👉 詳見 [[anthropics-skills|Anthropic Skills]]
- **Awesome Claude Skills** → 1000+ 可安裝 Skills，跨 Claude Code / Codex / Cursor
  👉 詳見 [[ComposioHQ-awesome-claude-skills|Awesome Claude Skills]]
- **Superpowers** → AI Skills + AI Agent 方法論，涵蓋工程實踐
  👉 詳見 [[obra-superpowers|Superpowers]]
- **addyosmani/agent-skills** → 開源 Skill 庫，社群驅動
  👉 詳見 [[addyosmani-agent-skills|addyosmani/agent-skills]]
- **Anthropic Cybersecurity Skills** → 網安領域專用 Skill 集
  👉 詳見 [[mukul975-Anthropic-Cybersecurity-Skills|Anthropic Cybersecurity Skills]]
- **OpenAI Skills** → Figma、Design System 等 Skill
  👉 詳見 [[openai-skills|OpenAI Skills]]

## 相關概念

- [[AI-Skills]] — 用自然語言定義 AI 編碼助理的行為規範，Agent Skill 的核心載體
- [[AI-Skills]] — Skills 正在從個人腳本進化成標準化的共享格式
- [[agent-persona]] — Persona 定義 AI 是誰，Skill 定義 AI 會什麼
- [[MCP]] — Skills 定義「做什麼」，MCP 定義「怎麼連」
- [[Prompt-Engineering]] — Skills 是 Prompt Engineering 的結構化終極形態

## 來源
- 知識庫內 AI Skills 相關原始資料與專案頁面