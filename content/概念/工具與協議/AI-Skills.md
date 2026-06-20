---
title: AI Skills
slug: AI-Skills
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# AI Skills

> AI Skills 是一種結構化的操作指令格式（通常為 SKILL.md），讓 AI coding agent 能以明確的上下文、約束和輸出規範來執行重複性任務。從「一次性提示詞」進化到「可安裝、可搜尋、可重用」的技能庫。

## 快速導航

- 🛠️ **Skills 生態系** → [[agent-skills-ecosystem]]（Skills 的標準化格式和生態系）
- 🤖 **AI Agent** → [[AI-Agent]]（Skills 是 Agent 的操作手冊）
- 🔌 **MCP** → [[MCP]]（Skills 定義「做什麼」，MCP 定義「怎麼連」）
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]（Skills 是 Prompt Engineering 的結構化終極形態）
- 🦞 **OpenClaw** → [[openclaw]]（OpenClaw 是 SKILL.md 格式的原生實作）

## 是什麼

AI Skills 是一種結構化的操作指令格式（通常為 SKILL.md），讓 AI coding agent 能以明確的上下文、約束和輸出規範來執行重複性任務。從「一次性提示詞」進化到「可安裝、可搜尋、可重用」的技能庫。

## 核心特色

SKILL.md 格式讓 AI Skills 從「一次性提示詞」進化到「可安裝、可搜尋、可重用」的技能庫。具備明確的上下文、約束和輸出規範。

## 核心概念

### SKILL.md 格式

一個 SKILL.md 包含四個部分：

| 部分 | 說明 | 範例 |
|------|------|------|
| **觸發條件** | 什麼情況下啟用這個 skill | 「當使用者要求程式碼審查時」 |
| **指令** | 具體執行步驟 | 「1. 讀取 diff 2. 檢查安全問題 3. ...」 |
| **約束** | 不可違反的規則 | 「不可建議不安全的依賴」 |
| **輸出規範** | 期望的回覆格式 | 「以表格列出問題、嚴重度、建議」 |

### 為什麼 Skills > 零散 Prompts

| 零散 Prompt | SKILL.md |
|-------------|----------|
| 貼在聊天視窗 | 安裝到 agent 目錄 |
| 每次要重打 | 一勞永逸 |
| 沒有版本控制 | Git 管理 |
| 只適用一個工具 | 跨平台通用 |
| 難以分享 | npm 一鍵安裝 |

### 技能層級

- **Bundle**：一組相關技能的集合（例如「前端開發 bundle」）
- **Workflow**：多步驟的技能執行流程
- **Plugin**：針對特定平台的安裝包格式

## 跨平台支援

Skills 的核心價值是跨 agent 平台通用。同一個 SKILL.md 可以在多個工具中使用：

| 平台 | 安裝方式 | 使用方式 |
|------|----------|----------|
| Claude Code | `--claude` | `>> /skill-name` |
| Cursor | `--cursor` | `@skill-name` |
| Gemini CLI | `--gemini` | `Use skill-name` |
| Codex CLI | `--codex` | `Use skill-name` |
| OpenClaw | 原生支援 | 自動觸發 |

## 主要 Skills 庫

- [[sickn33-antigravity-awesome-skills]] — 1,443+ 可安裝 skills，最大生態系
- [[affaan-m-everything-claude-code]] — Agent harness 效能優化，含 Skills 系統
- [[googleworkspace-cli]] — 40+ Google Workspace Agent Skills

## 怎麼用

### 安裝 Skills
Skills 通常透過框架特定的安裝方式加入 Agent：
- Claude Code：放入 `.claude/skills/` 目錄
- Cursor：透過 `.cursorrules` 定義
- 其他框架：參考各框架的 Skills 載入機制

### 建立自訂 Skills
1. 定義 Skill 的觸發條件和描述
2. 撰寫 Skill 的執行邏輯和上下文
3. 測試和迭代
4. 發布到 Skills 生態系

## 跟其他方案的關係

## 與其他概念的關係

- **SKILL.md 是 Prompt Engineering 的結構化終極形態**：從自然語言 → Few-shot → Chain-of-Thought → SKILL.md
- **Skills 需要 MCP 來連接外部工具**：Skills 定義「做什麼」，MCP 定義「怎麼連」
- **Skills 是 Agent 的人格+能力單元**：參見 [[agent-persona]]

## 相關專案

- [[sickn33-antigravity-awesome-skills]] — 1,443+ 可安裝的 agentic skills
- [[affaan-m-everything-claude-code]] — Skills + Instincts + Memory 系統
- [[googleworkspace-cli]] — 40+ Google Workspace skills
- [[open-design]] — 31 個設計 Skills + 129 套 Design Systems，skill-driven 設計工作流
- [[mattpocock-skills]] — 工程師實戰 Skills，強調對齊和架構
- [[Kappaemme-git-codex-complexity-optimizer]] — 演算法複雜度分析 Skill
- [[Mininglamp-AI-Mano-P]] — Mano-Skill：ClawHub/Claude Code 的 GUI 自動化 Skill

## 相關概念

← [[CLAUDE-md]] · [[agent-skills-ecosystem]] · [[agent-persona]] · [[MCP]] · [[Prompt-Engineering]] · [[openclaw]] · [[teng-lin-notebooklm-py]] · [[microsoft-SkillOpt|SkillOpt]] · [[Frontend-Design-Agent-Skills]] · [[nexu-io-open-design]] · [[gsap-ai-skills|GSAP AI Skills]]

## 來源
- 相關 GitHub/文章資料

---

_此頁由 daily-llm-trending 自動維護_