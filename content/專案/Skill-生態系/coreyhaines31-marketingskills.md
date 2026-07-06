---
title: Marketing Skills
slug: coreyhaines31-marketingskills
created: 2026-07-06
updated: 2026-07-06
stars: 36.4k
language: JavaScript
topics: claude, codex, marketing, agent-skills, cro, seo, copywriting
---

# Marketing Skills

> ⭐36.4k · 為 AI Agent 打造的行銷 Skills 集合——CRO、文案、SEO、分析、成長工程，45+ skills 互相引用

## 快速導航

- 🛠 **AI Skills** → [[AI-Skills|AI Skills]]
- 🤖 **Coding Agent** → [[anthropics-claude-code|Claude Code]]
- 📖 **Agent Skills 規範** → [[agentskills-agentskills|Agent Skills]]
- 🔧 **Coding Agent CLI** → [[Coding-Agent-CLI|Coding Agent CLI]]

## 是什麼

Marketing Skills 是一套專為行銷任務設計的 AI Agent Skills 集合，由 Corey Haines 開發。它把行銷工作拆解成 45+ 個結構化 skill，覆蓋 SEO、CRO（轉換率優化）、內容文案、付費廣告、成長留存、銷售、策略等 7 大領域。每個 skill 都是遵循 [[agentskills-agentskills|Agent Skills 開放規範]] 的 markdown 檔案。

最獨特的設計是所有 skill 以 `product-marketing` 為基礎——其他 skill 在執行前都會先讀取它，理解產品定位和受眾後再行動。Skills 之間互相引用（例如 copywriting ↔ CRO ↔ A/B testing），形成一個有機的行銷知識網路。

支援 [[anthropics-claude-code|Claude Code]]、OpenAI Codex、Cursor、Windsurf 等遵循 Agent Skills 規範的平台。透過 `npx skills add` 一鍵安裝，也可作為 Claude Code Plugin 安裝。

## 核心特色

- **45+ 行銷 skills** — 7 大領域：SEO/CRO/Content/Paid/Growth/Sales/Strategy
- **互相引用架構** — 以 product-marketing 為基礎，其他 skill 先讀它再行動
- **Agent Skills 規範** — 遵循 [[agentskills-agentskills|agentskills.io]] 開放標準
- **一鍵安裝** — `npx skills add coreyhaines31/marketingskills`
- **Claude Code Plugin** — 支援 `/plugin install marketing-skills`
- **完整行銷覆蓋** — A/B 測試、文案撰寫、SEO 審計、程式化 SEO、定價策略、客戶研究

## 怎麼用

### 安裝

```bash
# 方式 1：CLI 安裝（推薦）
npx skills add coreyhaines31/marketingskills

# 安裝特定 skills
npx skills add coreyhaines31/marketingskills --skill cro copywriting

# 列出可用 skills
npx skills add coreyhaines31/marketingskills --list

# 方式 2：Claude Code Plugin
/plugin marketplace add coreyhaines31/marketingskills
/plugin install marketing-skills

# 方式 3：Git clone
git clone https://github.com/coreyhaines31/marketingskills.git
cp -r marketingskills/skills/* .agents/skills/
```

### 使用

安裝後，在你的 AI coding agent 中直接描述行銷任務，agent 會自動匹配對應 skill 並套用最佳實踐框架。

## 跟其他方案的關係

| 方案 | 領域 | Skills 數 | 規範 | Stars |
|------|------|-----------|------|-------|
| **Marketing Skills** | 行銷 | 45+ | Agent Skills | ⭐36.4k |
| [[anthropics-skills\|Anthropic Skills]] | 通用 | 官方 | Agent Skills | ⭐147.9k |
| [[ComposioHQ-awesome-claude-skills\|Awesome Claude Skills]] | 策展 | 1000+ | 多種 | ⭐64.6k |
| [[wshobson-agents\|wshobson/agents]] | 通用 | 158+ | Plugin | ⭐37.2k |

Marketing Skills 是目前最完整的行銷領域 Agent Skills 集合，與通用型 skills 庫（[[anthropics-skills|Anthropic Skills]]、[[wshobson-agents|wshobson/agents]]）互補——它深耕行銷場景，提供行銷專用的框架和工作流。

← [[AI-Skills|AI Skills]] · [[agentskills-agentskills|Agent Skills]] · [[anthropics-claude-code|Claude Code]]

## 來源

- GitHub: https://github.com/coreyhaines31/marketingskills
- 官網: https://corey.co
- raw/2026-07-06-coreyhaines31-marketingskills.md

---

| 欄位 | 值 |
|------|-----|
| **GitHub** | https://github.com/coreyhaines31/marketingskills |
| **Stars** | ⭐ 36,430 |
| **License** | MIT |
| **Language** | JavaScript |
| **收錄日期** | 2026-07-06 |