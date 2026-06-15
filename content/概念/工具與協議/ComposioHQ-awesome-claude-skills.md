---
title: Awesome Claude Skills
slug: ComposioHQ-awesome-claude-skills
created: 2025-10-17
updated: 2026-06-15
stars: 64593
language: Python
topics: [agent-skills, ai-agents, claude, claude-code, codex, cursor, gemini-cli, mcp, workflow-automation]
---

# Awesome Claude Skills

> ⭐64.6k · 1000+ 生產就緒的 Claude Skills 策展列表，涵蓋文件處理、開發工具、資料分析、商業行銷等場景。

快速導航：[[AI-Skills|AI Skills]] · [[agent-skills-ecosystem|Agent Skills 生態系]] · [[punkpeye-awesome-mcp-servers|Awesome MCP Servers]]

## 是什麼

Awesome Claude Skills 是由 Composio 維護的開源策展列表，收錄 1000+ 個生產就緒的 Claude Skills 和 Plugins。Claude Skills 是可重用的指令套件，教 AI Agent 如何處理特定類型的任務。每個 Skill 是一個資料夾，包含 `SKILL.md`（YAML frontmatter + Markdown 指令），可選搭 `scripts/` 和 `references/` 輔助檔案。

Skills 採用漸進式載入：Session 開始時只顯示名稱和描述（約 100 tokens/Skill），完整內容僅在 Agent 判斷相關時才載入。這讓單一 Agent 可以託管數百個 Skills 而不膨脹 Context Window。Skills 不是 MCP Servers，也不是 Tools — MCP 負責連接，Tools 負責動作，Skills 負責行為和工作流程。

列表按功能分類：文件處理（docx/pdf/pptx/xlsx）、開發工具、資料分析、商業行銷、通訊寫作、創意媒體、生產力、安全系統等。還附帶 Composio Connect Apps 插件，讓 Claude 直接操作 500+ 應用（發郵件、建 Issue、發 Slack 等）。

## 核心特色

- **1000+ Skills**：涵蓋文件處理、開發、資料分析、商業、創意等全場景
- **多 Agent 支援**：Claude Code、Codex、Cursor、Gemini CLI、Antigravity、Windsurf 等
- **漸進式載入**：名稱+描述 ≈100 tokens，完整 Skill < 5000 tokens，按需載入
- **SKILL.md 標準**：Anthropic 開放標準，YAML frontmatter + Markdown 指令
- **Connect Apps 插件**：讓 Claude 操作 500+ 應用，處理 OAuth 認證
- **社群策展**：PR 歡迎，持續更新，Apache 2.0 授權
- **三層架構**：MCP（連接）→ Tools（動作）→ Skills（行為），各司其職

## 怎麼用

```bash
# 安裝 Connect Apps 插件（讓 Claude 操作 500+ 應用）
claude --plugin-dir ./connect-apps-plugin

# 設定 API Key
# 前往 https://dashboard.composio.dev 取得免費 Key
/connect-apps:setup

# 重啟 Claude 即可使用
# 也可瀏覽完整列表：
# https://github.com/ComposioHQ/awesome-claude-skills

# 使用個別 Skill（以 Claude Code 為例）
# 將 Skill 資料夾放入 .claude/skills/ 即可
```

## 跟其他方案的關係

| 方案 | 類型 | Skills 數 | 多 Agent | 應用連接 |
|------|------|-----------|----------|----------|
| [[ComposioHQ-awesome-claude-skills\|Awesome Claude Skills]] | 策展列表 | 1000+ | ✅ 6+ Agent | ✅ 500+ Apps |
| [[anthropics-skills\|Anthropic Skills]] | 官方 Skill 庫 | ~20 | ✅ Claude only | ❌ |
| [[NVIDIA-SkillSpector\|SkillSpector]] | 安全掃描 | N/A | ✅ | ❌ |
| [[punkpeye-awesome-mcp-servers\|Awesome MCP Servers]] | MCP 策展 | N/A | ✅ MCP | ✅ |
| [[nextlevelbuilder-ui-ux-pro-max-skill\|UI UX Pro Max]] | 單一 Skill | 1 | ✅ | ❌ |

← [[AI-Skills|AI Skills]] · [[agent-skills-ecosystem|Agent Skills 生態系]] · [[NVIDIA-SkillSpector|SkillSpector]]

## 來源

- GitHub：https://github.com/ComposioHQ/awesome-claude-skills
- Composio Dashboard：https://dashboard.composio.dev
- Raw 檔案：`knowledge-base/raw/2026-06-15-ComposioHQ-awesome-claude-skills.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) |
| Stars | ⭐64,593 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-06-15 |