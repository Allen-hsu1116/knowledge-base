---
title: Cursor Plugins
slug: cursor-plugins
created: 2026-08-16
updated: 2026-08-16
stars: 2950
language: TypeScript
topics: [cursor, plugins, agent-skills, mcp, marketplace]
---

# Cursor Plugins

> ⭐2950 · Cursor 官方插件規範與官方插件集，涵蓋開發工具、生產力和第三方 MCP 整合

## 快速導航


- 🛠️ **Skill 生態系** → [[agentskills-agentskills]] · [[anthropics-claude-plugins-official]]
- 🤖 **Agent 框架** → [[anthropics-claude-code]] · [[anomalyco-opencode]]

## 是什麼

Cursor Plugins 是 Cursor 官方的插件市場倉庫，為流行的開發者工具、框架和 SaaS 產品提供官方插件。每個插件是倉庫根目錄下的一個獨立目錄，包含自己的 `.cursor-plugin/plugin.json` 清單、skills（SKILL.md）、rules（.mdc 檔案）、mcp.json 定義和 README。

插件分為三大類。開發工具類包含 Continual Learning（增量記憶更新到 AGENTS.md）、Cursor Team Kit（CI/程式碼審查/發布工作流）、Thermos（深度安全/正確性審計，平行子 agent）、Create Plugin（插件腳手架）、Agent Compatibility（相容性掃描）、CLI for Agents（Agent 可靠 CLI 設計模式）、PR Review Canvas（PR diff 互動式畫布）、Docs Canvas（文件導航畫布）、Cursor SDK（TypeScript SDK 自動化）、Orchestrate（平行雲端 agent 編排）和 pstack（高品質平行 agent 工作流）。生產力類整合 Gmail、Google Drive、Google Calendar。整合類透過各官方遠端 MCP 伺服器連接 Gong、Salesforce、Apollo.io、HubSpot、Intercom 等。

這個倉庫本身也是插件規範的參考實現——它定義了 Cursor 插件的標準結構：marketplace.json 清單、每個插件的 plugin.json、skills/ 目錄、rules/ 目錄、mcp.json MCP 定義。

## 核心特色

- **11 個官方開發工具插件**：涵蓋記憶、審查、安全、編排、SDK 等
- **11+ 第三方 MCP 整合**：Gmail、Salesforce、HubSpot、Gong、Intercom 等透過遠端 MCP
- **標準插件結構**：marketplace.json + plugin.json + skills/ + rules/ + mcp.json
- **Thermos 深度審計**：安全/正確性審計、嚴格程式碼品質標準、平行子 agent、可選 merge-ready PR
- **Orchestrate 平行編排**：planner/worker/verifier 架構，結構化交接
- **Continual Learning**：增量 transcript 驅動記憶更新到 AGENTS.md

## 怎麼用

```bash
# 克隆倉庫
git clone https://github.com/cursor/plugins.git

# 每個插件是獨立目錄，包含：
# .cursor-plugin/plugin.json  — 插件清單
# skills/SKILL.md             — Agent skill
# rules/*.mdc                 — Cursor rules
# mcp.json                    — MCP 伺服器定義

# 在 Cursor 中安裝插件
# 透過 Cursor 的插件市場 UI 或手動複製到對應目錄
```

## 跟其他方案的關係

- **Anthropic Claude Plugins**：Claude Code 的官方插件系統；Cursor Plugins 是 Cursor 的對應方案
- **agentskills/skills.sh**：跨平台 skill 生態系；Cursor Plugins 綁定 Cursor 平台
- **OpenCode Skills**：OpenCode 的 skill 系統；Cursor Plugins 用 .mdc rules + SKILL.md 混合
- **Hermes Plugins**：Hermes Agent 的插件系統；Cursor Plugins 是 Cursor 專屬

| 能力 | Cursor Plugins | Claude Plugins | skills.sh | OpenCode |
|---|:---:|:---:|:---:|:---:|
| 官方維護 | ✓ | ✓ | — | — |
| MCP 整合 | ✓ | ✓ | — | ✓ |
| Rules (.mdc) | ✓ | — | — | — |
| 平行編排 | ✓ | — | — | — |
| 第三方 MCP 市場 | ✓ | ✓ | — | ✓ |
| 跨平台 | — | — | ✓ | — |

## 相關概念


← [[anthropics-claude-plugins-official]] · [[agentskills-agentskills]] · [[anthropics-claude-code]] · [[anomalyco-opencode]] · [[AI-Skills]] · [[MCP]]

## 來源

- GitHub: <https://github.com/cursor/plugins>
- 原始 README: `raw/2026-08-16-cursor-plugins.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/cursor/plugins |
| Stars | ⭐2950|
| License | MIT |
| 收錄日期 | 2026-08-16 |
