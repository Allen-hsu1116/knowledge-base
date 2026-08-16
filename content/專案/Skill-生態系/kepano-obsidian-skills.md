---
title: Obsidian Skills
slug: kepano-obsidian-skills
created: 2026-08-14
updated: 2026-08-14
stars: 45750
language: Markdown
topics: [agents, agentskills, obsidian, claude, codex, opencode, hermes, openclaw, cli, markdown, jsoncanvas, defuddle]
---

# Obsidian Skills

> ⭐45.8k · Obsidian 官方 Agent Skills——教你的 agent 用 Obsidian CLI 和開放格式，5 個 Skill 覆蓋 Markdown、Bases、JSON Canvas、CLI、網頁擷取

## 快速導航

- 🛠️ **Skill 生態系** → [[agentskills-agentskills]] · [[AI-Skills]]
- 🤖 **Agent 框架** → [[anthropics-claude-code]] · [[anthropics-claude-code]]
- 🧠 **知識管理** → [[llm-knowledge-base]] · [[basicmachines-co-basic-memory]]
- 📝 **Obsidian 生態** → [[llm-knowledge-base]] · [[refactoringhq-tolaria]]

## 是什麼

Obsidian Skills 是 Obsidian 創辦人 Steph Ango（kepano）推出的官方 Agent Skills 套件，讓任何符合 Agent Skills 規範的 AI agent 都能讀寫 Obsidian 的開放格式。它不是一個應用程式，而是 5 個獨立的 SKILL.md 檔案，每個教 agent 如何操作 Obsidian 的一種格式或工具。

這些 Skill 遵循 [Agent Skills 規範](https://agentskills.io/specification)，因此相容於 Claude Code、OpenAI Codex、OpenCode 等主流 coding agent。安裝方式多元：marketplace 指令、npx skills、手動複製到各 agent 的 skills 目錄。因為 Obsidian 的資料格式本身就是開放的（Markdown、JSON Canvas、Bases），這些 Skill 本質上是把「Obsidian 格式知識」注入 agent 的 context，讓 agent 生成符合 Obsidian 語法的內容。

5 個 Skill 分別是：obsidian-markdown（Obsidian Flavored Markdown 語法）、obsidian-bases（Bases 資料庫格式）、json-canvas（JSON Canvas 視覺畫布格式）、obsidian-cli（Obsidian CLI 操作）和 defuddle（網頁內容擷取清洗）。

## 核心特色

- **官方出品**：由 Obsidian 創辦人 kepano 親自維護，Skill 內容與 Obsidian 格式規範同步
- **5 個 Skill**：obsidian-markdown、obsidian-bases、json-canvas、obsidian-cli、defuddle，各司其職
- **Agent Skills 規範相容**：遵循 agentskills.io 標準，跨 agent 平台通用（Claude Code、Codex、OpenCode、Hermes、OpenClaw）
- **多種安裝方式**：marketplace 指令、npx skills、手動複製，支援各大 agent 的目錄結構
- **Defuddle 整合**：用 kepano 的 Defuddle 工具從網頁擷取乾淨 Markdown，移除雜訊節省 token
- **Obsidian CLI 整合**：操作 vault、plugin 開發、theme 開發，讓 agent 直接操控 Obsidian

## 怎麼用

```bash
# Marketplace 安裝（如果 agent 支援）
/plugin marketplace add kepano/obsidian-skills
/plugin install obsidian@obsidian-skills

# npx skills 安裝
npx skills add git@github.com:kepano/obsidian-skills.git

# 或用 HTTPS
npx skills add https://github.com/kepano/obsidian-skills

# Claude Code — 手動安裝
# 把 repo 內容加到 vault 根目錄的 /.claude 資料夾

# Codex — 手動安裝
# 把 skills/ 目錄複製到 ~/.codex/skills

# OpenCode — 手動安裝
git clone https://github.com/kepano/obsidian-skills.git ~/.opencode/skills/obsidian-skills
```

安裝後，agent 自動獲得 5 個 Skill：
- **obsidian-markdown**：生成含 wikilinks、embeds、callouts、properties 的 Obsidian Markdown
- **obsidian-bases**：生成含 views、filters、formulas、summaries 的 Bases 檔案
- **json-canvas**：生成含 nodes、edges、groups 的 JSON Canvas 畫布
- **obsidian-cli**：透過 Obsidian CLI 操作 vault、開發 plugin 和 theme
- **defuddle**：用 Defuddle 從網頁擷取乾淨 Markdown

## 跟其他方案的關係

- **Anthropic Skills**：Anthropic 官方 Skill 庫，偏向前端設計和 web testing；Obsidian Skills 專注知識管理格式
- **addyosmani/agent-skills**：社群 Skill 庫，通用型；Obsidian Skills 是 Obsidian 專屬
- **Basic Memory**：另一個 Markdown 知識庫 + MCP；Obsidian Skills 不提供自己的儲存，純粹教 agent 操作 Obsidian 格式
- **Tolaria**：Markdown 知識庫桌面應用；與 Obsidian Skills 互補（不同生態系）
- **Defuddle**：kepano 的另一個專案，被 obsidian-skills 的 defuddle skill 使用

Obsidian Skills 的定位是「Obsidian 的 agent 介面」——不替代 Obsidian 本身，而是讓 AI agent 能正確讀寫 Obsidian 的開放格式。

## 相關概念

← [[agentskills-agentskills]] · [[AI-Skills]] · [[anthropics-claude-code]] · [[llm-knowledge-base]] · [[llm-knowledge-base]] · [[MCP]]

## 來源

- GitHub: <https://github.com/kepano/obsidian-skills>
- Agent Skills 規範: <https://agentskills.io/specification>
- Obsidian 官網: <https://obsidian.md>
- 原始 README: `raw/2026-08-14-kepano-obsidian-skills.md`

---

| 欄位 | 值 |
|------|-----|
| GitHub | kepano/obsidian-skills |
| Stars | ⭐45.8k |
| License | MIT |
| Language | Markdown |
| 收錄日期 | 2026-08-14 |