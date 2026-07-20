---
title: Claude Code Templates
slug: davila7-claude-code-templates
created: 2026-07-13
updated: 2026-07-13
stars: 29236
language: Python
topics:
  - claude-code
  - anthropic
  - agent-skills
  - coding-agent
  - mcp
---

# Claude Code Templates

> ⭐29.2k · Claude Code 配置工具庫——100+ AI Agent、命令、MCP、Hook、Setting 模板，一鍵安裝的開發工作流增強。

## 快速導航

- 🤖 **Claude Code** → [[anthropics-claude-code|Claude Code]]（模板服務的目標平台）
- 🛠 **AI Skills** → [[AI-Skills|AI Skills]]（模板中的 Skills 類組件）
- 🔧 **Coding Agent CLI** → [[Coding-Agent-CLI|Coding Agent CLI]]（Claude Code 屬於此類別）
- 🔌 **MCP** → [[MCP|MCP]]（模板包含 MCP 整合組件）

## 是什麼

Claude Code Templates 是一個為 Anthropic Claude Code 打造的綜合配置模板庫。它把 Claude Code 生態系中常見的組件——Agent（AI 專家角色）、Command（自訂斜線命令）、MCP（外部服務整合）、Setting（配置項）、Hook（自動化觸發器）、Skill（可重用能力）——全部做成可安裝的模板，透過 npx CLI 一鍵安裝到本地 Claude Code 環境。

這個專案不只是單純的模板合集。它聚合了多個來源的資源，包括 K-Dense-AI 的 139 個科學技能、Anthropic 官方 21 個技能和 10 個開發指南、obra/superpowers 的 14 個工作流技能、alirezarezvani 的 36 個專業角色技能、wshobson 的 48 個 Agent 等，統一成一個可搜尋、可安裝的目錄系統。

此外，專案還附帶多個實用工具：Analytics 可即時監控 AI 開發會話、Conversation Monitor 提供行動版介面遠端查看 Claude 回應、Health Check 做安裝診斷、Plugin Dashboard 管理 MCP 市集和權限。有一個配套的 Web 介面 aitmpl.com 可互動式瀏覽和安裝所有模板。

## 核心特色

- **6 大組件類型**：Agent（AI 專家角色如安全審計員、React 效能優化器）、Command（自訂斜線命令如 /generate-tests）、MCP（GitHub、PostgreSQL、Stripe、AWS 等外部服務整合）、Setting（逾時、記憶體、輸出風格等配置）、Hook（pre-commit 驗證等自動化觸發器）、Skill（PDF 處理、Excel 自動化等可重用能力）
- **npx 一鍵安裝**：所有組件透過 `npx claude-code-templates@latest` 安裝，支援互動式瀏覽或指定組件直接安裝
- **多來源聚合**：整合 K-Dense-AI、Anthropic 官方、obra/superpowers、alirezarezvani、wshobson 等多個社群和官方資源
- **Analytics 儀表板**：即時監控 AI 開發會話，含 live state detection 和效能指標
- **Conversation Monitor**：行動版介面遠端查看 Claude 回應，支援 Cloudflare Tunnel 安全遠端存取
- **Health Check + Plugin Dashboard**：安裝診斷工具 + 統一管理 MCP 市集和權限

## 怎麼用

### 安裝

```bash
# 互動式瀏覽和安裝
npx claude-code-templates@latest

# 安裝完整開發棧
npx claude-code-templates@latest --agent development-team/frontend-developer --command testing/generate-tests --mcp development/github-integration --yes

# 安裝特定組件
npx claude-code-templates@latest --agent development-tools/code-reviewer --yes
npx claude-code-templates@latest --command performance/optimize-bundle --yes
npx claude-code-templates@latest --hook git/pre-commit-validation --yes
npx claude-code-templates@latest --mcp database/postgresql-integration --yes
```

### 工具

```bash
# AI 開發會話分析
npx claude-code-templates@latest --analytics

# 對話監控（含遠端存取）
npx claude-code-templates@latest --chats
npx claude-code-templates@latest --chats --tunnel

# 安裝健康檢查
npx claude-code-templates@latest --health-check

# Plugin 儀表板
npx claude-code-templates@latest --plugins
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 組件範圍 | 安裝方式 | 適合場景 |
|------|-------|------|---------|---------|---------|
| **Claude Code Templates** | ⭐29.2k | 模板庫 + 工具 | Agent/Command/MCP/Setting/Hook/Skill | npx 一鍵安裝 | 快速配置 Claude Code |
| [[hesreallyhim-awesome-claude-code\|Awesome Claude Code]] | ⭐48.4k | 策展列表 | 19 大分類 | 手動瀏覽 | 發現資源 |
| [[ComposioHQ-awesome-claude-skills\|Awesome Claude Skills]] | ⭐64.6k | 策展列表 | 1000+ Skills | 手動瀏覽 | 找 Agent Skill |
| [[affaan-m-everything-claude-code\|Everything Claude Code]] | ⭐172k | Skills 庫 | Claude Code 技能大全 | 手動 | 技能擴充 |
| [[obra-superpowers\|Superpowers]] | ⭐189k | Skill 庫 | 工作流技能 | 手動 | 方法論技能 |
| [[anthropics-skills\|Anthropic Skills]] | ⭐9.6k | 官方 Skills | 21 官方技能 | 手動 | 官方基礎 |

Claude Code Templates 與其他策展列表的不同之處在於它是**可安裝的工具**而非只是列表。[[hesreallyhim-awesome-claude-code|Awesome Claude Code]] 和 [[ComposioHQ-awesome-claude-skills|Awesome Claude Skills]] 是讓你「發現」資源的目錄，Claude Code Templates 則是讓你「直接安裝」這些資源的 CLI 工具，並且附帶 Analytics、Health Check 等額外開發工具。


## 相關概念
← [[anthropics-claude-code|Claude Code]] · [[AI-Skills|AI Skills]] · [[Coding-Agent-CLI|Coding Agent CLI]] · [[MCP|MCP]]

## 來源

- GitHub: <https://github.com/davila7/claude-code-templates>
- Web 介面: <https://aitmpl.com>
- 原始 README: `raw/2026-07-13-davila7-claude-code-templates.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [davila7/claude-code-templates](https://github.com/davila7/claude-code-templates) |
| Stars | ⭐29,236 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-07-13 |