---
title: Awesome GitHub Copilot
slug: github-awesome-copilot
created: 2026-06-27
updated: 2026-06-27
stars: 35791
language: Python
topics:
  - agent-skills
  - agents
  - ai
  - github-copilot
  - prompt-engineering
---

# Awesome GitHub Copilot

> ⭐35.8k · GitHub Copilot 社群貢獻的 Agent、Skill、Hook、Workflow 和 Plugin 集合

## 快速導航
- 🧠 **AI Skills** → [[AI-Skills]]
- 🔧 **Claude Code** → [[anthropics-claude-code|Claude Code]]
- 🔌 **MCP** → [[MCP]]

## 是什麼

Awesome GitHub Copilot 是 GitHub 官方維護的社群貢獻集合，收錄了自訂 Agent、指令（Instructions）、Skill、Hook、Workflow 和 Plugin，用來增強 GitHub Copilot 的使用體驗。這是 GitHub Copilot 生態系中最權威的資源中心。

集合涵蓋多種資源類型：Agent 是與 MCP 伺服器整合的專業 Copilot 代理；Instructions 是按檔案模式自動應用的編碼標準；Skills 是包含指令和捆綁資源的自包含資料夾；Plugins 是針對特定工作流的 Agent 和 Skill 組合；Hooks 是在 Copilot Agent 會話期間觸發的自動化操作；Agentic Workflows 是以 Markdown 編寫的 AI 驅動 GitHub Actions 自動化。

該專案還提供了一個配套網站 awesome-copilot.github.com，具備全文搜尋和過濾功能，以及 Learning Hub 學習中心和 Tools 工具區。對於在 AI Agent 中使用此集合的場景，還提供了機器可讀的 `llms.txt` 結構化清單。

## 核心特色

- **全方位資源類型**：Agent、Instructions、Skills、Plugins、Hooks、Agentic Workflows、Cookbook 七大類
- **官方維護**：GitHub 官方維護，社群貢獻，品質有保障
- **配套網站**：全文搜尋、過濾、Learning Hub 學習中心和 Tools 工具區
- **機器可讀清單**：提供 `llms.txt` 結構化清單，方便 AI Agent 直接消費
- **Plugin 安裝簡便**：`copilot plugin install <name>@awesome-copilot` 一鍵安裝
- **Cookbook 食譜**：可複製貼上的 Copilot API 操作配方
- **社群驅動**：100+ 貢獻者參與，持續更新

## 怎麼用

```bash
# 安裝插件（大部分用戶已預裝市場）
copilot plugin install <plugin-name>@awesome-copilot

# 如果出現市場未知的錯誤，先註冊
copilot plugin marketplace add github/awesome-copilot
copilot plugin install <plugin-name>@awesome-copilot

# 瀏覽全部資源
# 網站：https://awesome-copilot.github.com
# 機器可讀清單：https://awesome-copilot.github.com/llms.txt
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **Awesome Copilot** | ⭐35.8k | Copilot 資源 | GitHub 官方維護 | 7 大資源類型 |
| [[wshobson-agents|wshobson/agents]] | ⭐37.2k | 插件市場 | 5 大 Harness 支援 | 88 插件 + PluginEval |
| [[ComposioHQ-awesome-claude-skills|Awesome Claude Skills]] | ⭐64.6k | Skill 策展 | 1000+ Skills | Claude Code/Codex/Cursor |
| [[anthropics-claude-code|Claude Code]] | ⭐128k | Coding Agent CLI | 原生插件市場 | Git 工作流 |
| [[github-copilot-sdk|GitHub Copilot SDK]] | ⭐9.2k | Agent SDK | MCP + BYOK | Copilot 開發 |

← [[AI-Skills]] · [[AI-Skills]] · [[anthropics-claude-code|Claude Code]] · [[MCP]] · [[Coding-Agent-CLI]]

## 來源

- GitHub: <https://github.com/github/awesome-copilot>
- 原始 README: `raw/2026-06-27-github-awesome-copilot.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [github/awesome-copilot](https://github.com/github/awesome-copilot) |
| Stars | ⭐35,791 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-06-27 |