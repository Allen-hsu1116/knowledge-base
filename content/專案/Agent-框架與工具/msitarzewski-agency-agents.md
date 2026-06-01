---
title: Agency Agents
slug: msitarzewski-agency-agents
date: 2026-05-20
stars: 101621
repo: https://github.com/msitarzewski/agency-agents
language: Shell
topics:
  - AI-Agent
  - AI-Skills
  - Coding-Agent-CLI
  - agent-persona
  - agent-skills-ecosystem
---

# Agency Agents — A Complete AI Agency at Your Fingertips

> From frontend wizards to Reddit community ninjas, from whimsy injectors to reality checkers. Each agent is a specialized expert with personality, processes, and proven deliverables.

The Agency 是一系列精心打造的 AI agent 人格集合。每個 agent 都有深度領域專長、獨特性格與溝通風格、以及可交付的工作流程與程式碼。

## 快速導航

- ⚡ [[agent-persona]] · [[AI-Skills]] · [[AI-Agent]] · [[Coding-Agent-CLI]]

## 是什麼

Agency Agents 是一系列精心打造的 AI agent 人格集合，定位為「完整 AI Agency」。每個 agent 都有深度領域專長、獨特性格與溝通風格、以及可交付的工作流程與程式碼。不是通用的 prompt 模板，而是有性格、有流程、有可衡量成果的專家——涵蓋 Engineering、Creative、Business、Community、Operations、Quality 等六大部門，共 144+ 角色。MIT 授權，支援多種 AI coding 工具。

## 核心特色

- **144+ 專業 agent** — 涵蓋 Engineering、Creative、Business、Community、Operations、Quality 等部門
- **Engineering 部門** — Frontend Developer、Backend Architect、Mobile App Builder、AI Engineer、DevOps Automator、Security Engineer、Embedded Firmware Engineer、Solidity Smart Contract Engineer 等
- **每個 agent 都有** — 身份特質、核心使命、工作流程、技術交付物與成功指標
- **10+ 工具整合** — Claude Code、GitHub Copilot、Antigravity、Gemini CLI、OpenCode、OpenClaw、Cursor、Aider、Windsurf、Kimi Code，含跨工具轉換腳本
- **MIT 授權** — 完全開源，商業使用無限制

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/msitarzewski/agency-agents.git

# 將 agent 設定檔複製到你的 AI 工具設定目錄
# 例如 Claude Code:
cp -r agency-agents/agents/ ~/.claude/agents/

# 或使用轉換腳本適配其他工具
python convert.py --tool cursor --agent frontend-developer
```

每個 agent 目錄包含角色定義、技能清單、工作流程描述。選擇適合的 agent 複製到工具設定目錄即可啟用。

## 跟其他方案的關係

| 方案 | 定位 | agent 數量 | 工具支援 | 授權 |
|------|------|-----------|---------|------|
| **Agency Agents** | 完整 AI Agency 人格集 | 144+ | 10+ 工具 | MIT |
| [[affaan-m-ECC|ECC]] | Harness 優化系統 | 60+ | 7+ harness | MIT |
| [[anthropics-knowledge-work-plugins|Knowledge Work Plugins]] | 知識工作者角色插件 | 11 | Claude Cowork/Code | Apache-2.0 |
| 單一工具內建 agent | 工具附帶角色 | 5-10 | 單一工具 | 各異 |

- Agency Agents 側重**豐富的角色人格與跨工具相容**，[[affaan-m-ECC|ECC]] 側重 **harness 效能優化與運作機制**
- 與 [[anthropics-knowledge-work-plugins|Knowledge Work Plugins]] 互補：Agency Agents 提供廣泛的技術角色，Knowledge Work Plugins 提供企業職能角色
- 屬於 [[agent-persona]] 和 [[AI-Skills]] 生態的實作之一

## 相關概念

- [[AI-Agent]] — Agent 架構與設計
- [[AI-Skills]] — Agent 技能系統
- [[Coding-Agent-CLI]] — 終端 coding agent 工具
- [[agent-persona]] — Agent 人格設計
- [[agent-skills-ecosystem]] — Agent 技能生態系

## 來源

- [原始資料](../raw/2026-05-20-msitarzewski-agency-agents.md)