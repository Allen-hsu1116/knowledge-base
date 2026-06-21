---
title: Claude Plugins Official
slug: anthropics-claude-plugins-official
created: 2026-05-10
updated: 2026-05-10
stars: 18,801
language: zh-TW
---

# Claude Plugins Official

> ⭐18,801 · Anthropic 官方維護的 Claude Code 高品質插件目錄 — 內部插件 + 第三方插件，統一結構與品質把關。

## 快速導航

- [[AI-Skills|AI Skills]] — 技能格式與生態系
- [[MCP]] — Model Context Protocol
- [[Coding-Agent-CLI|Coding Agent CLI]] — 終端 AI 開發助手

## 是什麼

anthropics/claude-plugins-official 是 Anthropic 官方管理的 Claude Code 插件目錄。分為兩大類：內部插件（Anthropic 自行開發維護）和第三方外部插件（合作夥伴和社群提交，需通過品質與安全審核）。統一的 plugin.json + 標準目錄結構確保一致性和可組合性。

## 核心特色

- **內部插件** — Anthropic 自行開發維護，品質有官方保證。放在 `/plugins` 目錄下
- **外部插件** — 合作夥伴和社群提交，放在 `/external_plugins` 目錄。需通過品質與安全審核標準才能收錄，確保第三方插件不會引入安全風險
- **統一結構** — 每個插件遵循標準目錄結構：`plugin.json`（必須，元資料）、`.mcp.json`（可選，MCP 伺服器設定）、`commands/`（斜線指令）、`agents/`（agent 定義）、`skills/`（技能定義）、`README.md`（文件）
- **簡易安裝** — `/plugin install {plugin-name}@claude-plugins-official`，一行指令完成
- **MCP 支援** — 插件可附帶 `.mcp.json` 設定，安裝時自動配置對應的 MCP 伺服器，Agent 可直接使用

## 怎麼實現的

插件系統的設計原則是「標準化 + 可組合」：

1. **Plugin Manifest（plugin.json）**：每個插件的核心是 plugin.json，宣告插件名稱、版本、提供的 tools/commands/agents/skills。Claude Code 讀取 manifest 後動態註冊對應功能
2. **目錄結構約定**：`commands/` 放斜線指令（如 `/review`），`agents/` 放 agent 定義（如 code reviewer agent），`skills/` 放技能（如 SKILL.md）。Claude Code 啟動時掃描這些目錄，自動載入
3. **MCP 整合**：`.mcp.json` 宣告 MCP 伺服器的啟動指令和參數。安裝插件時 Claude Code 自動在設定中註冊 MCP server，Agent 可以直接透過 MCP protocol 使用外部工具
4. **審核流程**：外部插件透過 PR 提交，Anthropic 團隊審核品質（文件完整度、功能可用性）和安全性（無惡意程式碼、不洩漏敏感資料）。通過後合併至 `/external_plugins`
5. **隔離執行**：每個插件的 agents 和 commands 在獨立 context 中執行，避免插件之間的副作用

## 怎麼用

```bash
# 安裝官方內部插件
/plugin install {plugin-name}@claude-plugins-official

# 列出可用插件
# 在 Claude Code 裡查詢目錄或 GitHub repo 的 /plugins 和 /external_plugins 目錄

# 第三方開發者提交插件
# 1. 建立符合標準結構的插件目錄
# 2. 確保 plugin.json 完整
# 3. 提交 PR 到 anthropics/claude-plugins-official
# 4. 通過品質與安全審核後合併

# 插件結構範例
my-plugin/
├── .claude-plugin/
│   └── plugin.json     # Plugin metadata (required)
├── .mcp.json           # MCP server configuration (optional)
├── commands/            # Slash commands (optional)
├── agents/              # Agent definitions (optional)
├── skills/              # Skill definitions (optional)
└── README.md            # Documentation
```

## 跟其他方案的關係

| 方案 | 類型 | 審核 | 官方保證 | MCP |
|------|------|------|----------|-----|
| **claude-plugins-official** | 官方精選目錄 | ✅ 嚴格 | ✅ Anthropic | ✅ |
| **antigravity-awesome-skills** | 社群合集 | ❌ | ❌ | ❌ |
| **OpenClaw Skills** | Skill 生態系 | 社群 | ❌ | ✅ |

- 與社群合集（如 [[sickn33-antigravity-awesome-skills|antigravity-awesome-skills]]）互補：官方精選品質高但數量少，社群合集覆蓋廣但品質不一
- 與 [[AI-Skills|AI Skills]] 概念相關：plugin 是 skills 生態的基礎設施，plugin.json 是比 SKILL.md 更結構化的宣告格式
- 與 [[openclaw|OpenClaw]] 的 skill 系統理念相似，但 Claude Code 用 plugin 格式（JSON manifest + 目錄結構），OpenClaw 用 SKILL.md（Markdown + 慣例）

## 相關概念

- [[AI-Skills|AI Skills]]
- [[MCP]]
- [[Coding-Agent-CLI|Coding Agent CLI]]
- [[CLAUDE-md|CLAUDE.md]]

## 來源

- raw/2026-05-08-anthropics-claude-plugins-official.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official) | ⭐18,801 | — | 2026-05-08 |