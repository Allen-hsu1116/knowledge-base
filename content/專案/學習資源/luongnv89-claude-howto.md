---
title: Claude HowTo
slug: luongnv89-claude-howto
created: 2026-06-09
updated: 2026-06-09
stars: 35777
language: Python
topics: [Claude Code, 學習指南, Slash Commands, Skills, Hooks]
---

# Claude HowTo

> ⭐35777 · 視覺化、範例驅動的 Claude Code 學習指南，從基礎到進階 Agent 編排，附可複製範本

## 快速導航

[[anthropics-claude-code]] · [[AI-Skills]] · [[Prompt-Engineering]]

## 是什麼

Claude HowTo 是一個結構化的 Claude Code 學習指南，目標是讓使用者在週末之內從新手變成進階使用者。它不只是功能參考文件，而是一套有逐步學習路徑的實戰教程，每個功能都附有 Mermaid 架構圖和可直接複製使用的範本。

這個專案填補了官方文件和實際使用之間的鴻溝。官方文件告訴你功能有哪些，但不會教你如何組合它們。Claude HowTo 的核心主張是：你正在浪費 Claude Code 90% 的能力，因為你不知道你不知道什麼。

整個指南包含 10 個教學模組，覆蓋從 Slash Commands 到 Plugins 的完整功能光譜，每個模組都建構在前一個之上。內建自我評估功能，可以幫你找出知識缺口並建立個人化學習路徑。

## 核心特色

- **10 個教學模組**：Slash Commands → Memory → Checkpoints → CLI → Skills → Hooks → MCP → Subagents → Advanced → Plugins，循序漸進
- **Copy-paste 範本**：每個模組都有可直接複製到專案中的設定檔、腳本和配置
- **Mermaid 架構圖**：視覺化呈現每個功能的內部運作，讓你理解「為什麼」而不只是「怎麼用」
- **自我評估系統**：內建 `/self-assessment` 和 `/lesson-quiz` 指令，找出你的知識缺口
- **11-13 小時學習路徑**：從 Beginner 到 Advanced 的結構化學習計畫，每個模組都有時間估計
- **持續更新**：與 Claude Code 每個版本同步，最新 v2.1.160（2026 年 6 月）

## 怎麼用

```bash
# 1. Clone 指南
git clone https://github.com/luongnv89/claude-howto.git
cd claude-howto

# 2. 複製第一個 Slash Command
mkdir -p /path/to/your-project/.claude/commands
cp 01-slash-commands/optimize.md /path/to/your-project/.claude/commands/

# 3. 在 Claude Code 中輸入 /optimize 測試

# 4. 設定專案記憶
cp 02-memory/project-CLAUDE.md /path/to/your-project/CLAUDE.md

# 5. 安裝一個 Skill
cp -r 03-skills/code-review-specialist ~/.claude/skills/

# 一小時快速設定
cp 01-slash-commands/*.md .claude/commands/   # 15 min
cp 02-memory/project-CLAUDE.md ./CLAUDE.md   # 15 min
cp -r 03-skills/code-review-specialist ~/.claude/skills/  # 15 min
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **Claude HowTo** | ⭐36k | 學習指南 | 10 模組 + Copy-paste 範本 | Mermaid 架構圖 |
| [[anthropics-claude-cookbooks|Claude Cookbooks]] | ⭐44k | 範例食譜 | 官方範例集 | 程式碼片段 |
| [[microsoft-ai-agents-for-beginners|AI Agents for Beginners]] | ⭐63k | 教學課程 | Microsoft 出品 | 10 課程入門 |
| [[datawhalechina-hello-agents|Hello-Agents]] | ⭐48k | 教學課程 | 中文社群 | MCP + RAG |
| [[anthropics-claude-code|Claude Code]] | ⭐128k | 官方工具 | CLI 本體 | 所有功能的基礎 |

Claude HowTo 與 Claude Cookbooks 的定位不同：Cookbooks 是官方的範例食譜集，提供各種場景的程式碼片段；Claude HowTo 則是一套結構化的學習系統，強調「從零到精通」的學習路徑和可立即使用的範本。

## 相關概念

← [[anthropics-claude-code]] · [[AI-Skills]] · [[Prompt-Engineering]]

## 來源

- GitHub: <https://github.com/luongnv89/claude-howto>
- 原始 README: `raw/2026-06-09-luongnv89-claude-howto.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/luongnv89/claude-howto |
| Stars | ⭐35777|
| License | MIT |
| 收錄日期 | 2026-06-09 |
