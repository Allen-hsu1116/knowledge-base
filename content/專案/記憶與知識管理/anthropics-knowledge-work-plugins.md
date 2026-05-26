---
title: anthropics/knowledge-work-plugins
url: https://github.com/anthropics/knowledge-work-plugins
stars: 15460
created: 2026-01-23
language: Python
date: 2026-05-26
tags:
  - AI-Skills
  - MCP
  - agent-skills-ecosystem
  - Prompt-Engineering
---

# Knowledge Work Plugins — Claude 角色專用插件集

> Open source repository of plugins primarily intended for knowledge workers to use in Claude Cowork

Anthropic 官方開源的知識工作者插件集，為 Claude Cowork 和 Claude Code 提供專業角色技能。11 個插件涵蓋產品、銷售、客服、行銷、法務、財務、數據、生技研究等場景。

## 重點

- **11 個角色插件**：productivity、sales、customer-support、product-management、marketing、legal、finance、data、enterprise-search、bio-research、cowork-plugin-management
- **三合一架構**：每個插件包含 Skills（領域專業知識）、Commands（斜線指令）、Connectors（MCP 連接器）
- **純檔案架構**：markdown + JSON，不需程式碼、不需基礎設施、不需 build
- **可客製化**：替換連接器、加入公司術語流程、調整工作流
- **適用 Cowork + Claude Code**：從 claude.com/plugins 安裝或用 `claude plugin install`

## 適合誰

- 用 Claude Cowork / Claude Code 的知識工作者
- 想為團隊打造 AI 角色專用工具的人
- 對 MCP + Skills 架構感興趣的開發者

## 相關概念

- [[AI-Skills]] — AI Agent 技能系統
- [[MCP]] — Model Context Protocol 工具連接
- [[agent-skills-ecosystem]] — Agent Skills 生態圈
- [[Prompt-Engineering]] — Prompt 工程