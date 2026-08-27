---
title: AI Skills
slug: AI-Skills
created: 2026-06-07
updated: 2026-08-27
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

## 各框架的做法

- **Archify** → 把程式碼庫或系統描述轉為經 Typed IR 與確定性 gate 驗證的互動式技術地圖
  👉 詳見 [[tt-a1i-archify\|Archify]]
- **Garden Skills** → 以固定版 release、checksum 與多種安裝方式發布五個內容生產與檢索 Skill
  👉 詳見 [[ConardLi-garden-skills\|Garden Skills]]
- **Claude Plugins Community** → 以 Anthropic 審核與夜間同步的 marketplace catalog 發佈 Claude Cowork、Claude Code 社群插件
  👉 詳見 [[anthropics-claude-plugins-community\|Claude Plugins Community]]
- **claude-obsidian** → 以 15 個 Agent Skills 組成來源擷取、知識編譯、查詢、lint、研究與 Canvas 的完整 vault 工作流
  👉 詳見 [[AgriciDaniel-claude-obsidian\|claude-obsidian]]
- **OpenAI Codex CLI** → 原生支援 Skills，將可重用操作流程載入本機 Coding Agent
  👉 詳見 [[openai-codex]]
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
- **Awesome Agent Skills** → 策展 1,497+ 官方與社群 Skill，涵蓋 Claude Code、Codex、Gemini CLI、Cursor、OpenCode 等宿主
  👉 詳見 [[VoltAgent-awesome-agent-skills|Awesome Agent Skills]]
- **Awesome GPT-Image-2** → 把圖片風格、模板與場景分類封裝成可安裝的 GPT-Image-2 style library Skill
  👉 詳見 [[freestylefly-awesome-gpt-image-2|Awesome GPT-Image-2]]
- **Marin** → 把新增資料集、scaling heuristic 等研究方法保存為 `.agents/skills/` 與 `.claude/skills/` 中的可載入流程
  👉 詳見 [[marin-community-marin]]

## 相關概念

- [[AI-Skills]] — 用自然語言定義 AI 編碼助理的行為規範，Agent Skill 的核心載體
- [[AI-Skills]] — Skills 正在從個人腳本進化成標準化的共享格式
- [[agent-persona]] — Persona 定義 AI 是誰，Skill 定義 AI 會什麼
- [[MCP]] — Skills 定義「做什麼」，MCP 定義「怎麼連」
- [[Prompt-Engineering]] — Skills 是 Prompt Engineering 的結構化終極形態
- [[marin-community-marin]] — 以 Skills 傳遞基礎模型研發的可重現方法
- [[tt-a1i-archify]] — 用 Skill 封裝可驗證的技術圖生成與交付流程
- [[ConardLi-garden-skills]] — 用 release 工程發布跨 Agent 的內容生產技能組

## 來源
- 知識庫內 AI Skills 相關原始資料與專案頁面