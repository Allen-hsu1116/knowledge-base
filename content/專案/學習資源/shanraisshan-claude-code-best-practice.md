---
title: Claude Code Best Practice
slug: shanraisshan-claude-code-best-practice
created: 2026-06-24
updated: 2026-06-24
stars: 59447
language: HTML
topics: [agentic-ai, agentic-coding, agentic-engineering, claude-code, claude-code-skills, context-engineering, best-practices, vibe-coding]
---

# Claude Code Best Practice

> ⭐59447 · 從 vibe coding 到 agentic engineering——最完整的 Claude Code 最佳實踐指南，涵蓋 Subagents、Commands、Skills、Hooks、MCP 等 20+ 核心概念

## 快速導航


- 🤖 **Coding Agent CLI** → [[Coding-Agent-CLI]]（Claude Code 是 Coding Agent CLI 的代表）
- 🛠 **AI Skills** → [[AI-Skills]]（Skills 是 Claude Code 的核心擴展機制）
- 📖 **Claude Code 進階技巧** → [[claude-code-boris-cherny-advanced-techniques]]（Boris Cherny 親授技巧系列）
- 🔄 **Agent Skills 生態系** → [[AI-Skills]]（多種 Skill 框架的比較）

## 是什麼

Claude Code Best Practice 是由 shanraisshan 維護的開源專案，以 HTML 網頁形式系統性地整理了 Claude Code 的所有核心功能和最佳實踐。專案的核心理念是「from vibe coding to agentic engineering」——從隨性編碼進化到專業的 Agent 工程。

這個專案不只是一份文件，而是一個結構化的知識庫。每個概念都分為「Best Practice」（理論指南）和「Implemented」（實際實作範例）兩部分，讓讀者不僅知道「應該怎麼做」，還能看到「具體怎麼做」。專案涵蓋了 Subagents、Commands、Skills、Workflows、Hooks、MCP Servers、Plugins、Settings、Status Line、Memory、Checkpointing、CLI Startup Flags 等 20+ 個核心概念。

特別值得注意的是，專案還整理了 12+ 個主流開發工作流（Superpowers、Everything Claude Code、Spec Kit、gstack 等），以及跨模型協作（Cross-Model Workflows）的 three-way 分類：Plugin、MCP、Router。最後附有 83 個 Tips and Tricks，包含 Boris Cherny 和 Thariq 的技巧系列。

## 核心特色

- **20+ 核心概念全覆蓋**：從 Subagents、Commands、Skills 到 Hooks、MCP、Plugins、Memory、Checkpointing，Claude Code 的每個功能都有獨立的 Best Practice 和 Implementation 頁面
- **Orchestration Workflow 模式**：提出 Command → Agent → Skill 的三層編排架構，用 `/weather-orchestrator` 作為示範，展示如何將三種元件組合成完整工作流
- **12+ 開發工作流比較**：系統性整理了 Superpowers（236k stars）、Everything Claude Code（220k）、Spec Kit（115k）、gstack（113k）、BMAD-METHOD（50k）等主流工作流，以視覺化 badge 展示每個步驟
- **Cross-Model 協作三分類**：將 Claude Code 與其他模型（Codex、Gemini、GPT、Kimi、DeepSeek）的協作方式分為 Plugin（CLI 互叫）、MCP（協議呼叫）、Router（API 替換）三種機制
- **Hot Features 追蹤**：持續更新 Claude Code 最新功能，如 Ultrareview、Auto Mode、Agent Teams、Power-ups、Fast Mode、Advisor、Computer Use 等 beta 功能
- **83 個 Tips and Tricks**：收錄大量實戰技巧，包含 Boris Cherny（Claude Code 之父）的 6 個技巧系列和 Thariq（Anthropic）的 2 個技巧系列
- **Skill 和 Agent 策展列表**：獨立整理了 Skill Collections（anthropics/skills 153k、mattpocock/skills 136k 等）和 Agent Collections（agency-agents 271 agents、awesome-claude-code-subagents 156 agents 等）

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/shanraisshan/claude-code-best-practice.git
cd claude-code-best-practice

# 直接用瀏覽器開啟（純 HTML，不需要建置）
open index.html  # macOS
# 或
xdg-open index.html  # Linux

# 如果要本地伺服器
python3 -m http.server 8000
# 然後瀏覽器打開 http://localhost:8000
```

專案本身是靜態 HTML 網站，不需要任何安裝。直接用瀏覽器開啟即可瀏覽所有內容。透過左側導覽列點擊各概念，每個頁面都有 Best Practice 和 Implementation 兩個分頁。

如果想在自己的專案中使用這些最佳實踐，可以直接參考 `.claude/` 目錄結構：
- `.claude/agents/<name>.md` — Subagent 定義
- `.claude/commands/<name>.md` — Slash Commands
- `.claude/skills/<name>/SKILL.md` — Skills
- `.claude/settings.json` — 全域設定
- `.claude/hooks/` — Hooks 腳本

## 跟其他方案的關係

| 方案 | 類型 | 重點 | 適用場景 |
|------|------|------|----------|
| [[shanraisshan-claude-code-best-practice\|Claude Code Best Practice]] | 最佳實踐指南 | 20+ 概念全覆蓋，83 個技巧 | 學習 Claude Code 全貌 |
| [[shareAI-lab-learn-claude-code\|Learn Claude Code]] | 教學專案 | 從零建構 Agent Harness | 理解 Agent 底層原理 |
| [[claude-code-boris-cherny-advanced-techniques\|Claude Code 進階技巧]] | 技巧整理 | Boris 親授 8 個技巧 | 生產力提升 |
| [[luongnv89-claude-howto\|Claude HowTo]] | 學習指南 | Slash Commands, Skills, Hooks 教學 | 入門教學 |
| [[anthropics-claude-code\|Claude Code]] | 官方工具 | Anthropic 官方 CLI Agent | 實際使用 |
| [[affaan-m-everything-claude-code\|Everything Claude Code]] | 工作流框架 | 271 skills, 84 commands | 生產級 Agent 工作流 |

Claude Code Best Practice 與其他方案的定位差異在於：它是「百科全書式」的整理，不是單一框架或課程。Learn Claude Code 教你從零建構 Harness，Boris 的技巧教你進階用法，而本專案把所有概念、工具、工作流、技巧統整在一個可導覽的網站裡。

## 相關概念


← [[Coding-Agent-CLI]] · [[AI-Skills]] · [[AI-Skills]]

## 來源

- GitHub：https://github.com/shanraisshan/claude-code-best-practice
- Raw 檔案：`knowledge-base/raw/2026-06-24-shanraisshan-claude-code-best-practice.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/shanraisshan/claude-code-best-practice |
| Stars | ⭐59447|
| License | MIT |
| 收錄日期 | 2026-06-24 |
