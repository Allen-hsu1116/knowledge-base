---


title: anthropics/knowledge-work-plugins
slug: anthropics-knowledge-work-plugins
url: https://github.com/anthropics/knowledge-work-plugins
stars: 15460
created: 2026-01-23
language: Python
date: 2026-05-26
topics:
  - AI-Skills
  - MCP
  - agent-skills-ecosystem
  - Prompt-Engineering


updated: 2026-01-23
---

# Knowledge Work Plugins — Claude 角色專用插件集

> Open source repository of plugins primarily intended for knowledge workers to use in Claude Cowork

Anthropic 官方開源的知識工作者插件集，為 Claude Cowork 和 Claude Code 提供專業角色技能。11 個插件涵蓋產品、銷售、客服、行銷、法務、財務、數據、生技研究等場景。

## 快速導航

- ⚡ [[AI-Skills]] · [[MCP]] · [[agent-skills-ecosystem]] · [[Prompt-Engineering]]

## 是什麼

Knowledge Work Plugins 是 Anthropic 官方開源的插件系統，專為知識工作者在 Claude Cowork 中使用而設計。每個插件採「三合一」架構：Skills（領域專業知識）、Commands（斜線指令）、Connectors（MCP 連接器），讓 AI 能夠理解特定領域的專業術語、自動執行工作流程、並連接外部工具。

純檔案架構（markdown + JSON），不需程式碼、不需基礎設施、不需 build，可客製化替換連接器、加入公司術語流程、調整工作流。11 個角色插件涵蓋：productivity、sales、customer-support、product-management、marketing、legal、finance、data、enterprise-search、bio-research、cowork-plugin-management。

## 核心特色

- **11 個角色插件**：productivity、sales、customer-support、product-management、marketing、legal、finance、data、enterprise-search、bio-research、cowork-plugin-management
- **三合一架構**：每個插件包含 Skills（領域專業知識）、Commands（斜線指令）、Connectors（MCP 連接器）
- **純檔案架構**：markdown + JSON，不需程式碼、不需基礎設施、不需 build
- **可客製化**：替換連接器、加入公司術語流程、調整工作流
- **適用 Cowork + Claude Code**：從 claude.com/plugins 安裝或用 `claude plugin install`

## 怎麼用

```bash
# 方式一：從 Claude Cowork 安裝
# 在 claude.com/plugins 頁面選擇插件，一鍵安裝

# 方式二：從 Claude Code 安裝
claude plugin install anthropics/knowledge-work-plugins

# 方式三：本地開發/客製化
git clone https://github.com/anthropics/knowledge-work-plugins.git
cd knowledge-work-plugins
# 編輯 markdown 和 JSON 檔案，自訂角色和工作流
```

安裝後在 Claude Cowork 中使用斜線指令（如 `/sales-deck`、`/legal-review`）觸發對應角色的專業技能，或在 Claude Code 中透過自然語言啟用。

## 跟其他方案的關係

| 方案 | 定位 | 插件數 | 架構 | MCP 支援 | 授權 |
|------|------|--------|------|---------|------|
| **Knowledge Work Plugins** | 知識工作者角色插件 | 11 | Skills+Commands+Connectors | ✅ | Apache-2.0 |
| [[affaan-m-ECC|ECC]] | Harness 優化系統 | 60+ agents, 232+ skills | Skills+Instincts+Memory | ⚠️ 部分支援 | MIT |
| [[msitarzewski-agency-agents|Agency Agents]] | Agent 人格集 | 144+ agents | 人格+流程+交付物 | ❌ | MIT |
| [[Leonxlnx-taste-skill|Taste Skill]] | 前端風格 Skill | 7+ 變體 | 風格參數+設計稿 | ❌ | MIT |

- Knowledge Work Plugins 是 Anthropic **官方出品**的插件方案，與 Claude Cowork 深度整合
- 每個插件的 Connectors 層使用 [[MCP]] 協議連接外部工具，是 MCP 在企業場景的示範實作
- 與 Agency Agents 互補：Knowledge Work Plugins 側重**企業職能角色**（法務、財務、行銷），Agency Agents 側重**技術工程角色**
- 屬於 [[agent-skills-ecosystem]] 中的官方基礎設施

## 相關概念

← [[AI-Skills]] · [[MCP]] · [[agent-skills-ecosystem]] · [[Prompt-Engineering]]

## 來源

- [原始資料](../raw/2026-05-26-anthropics-knowledge-work-plugins.md)