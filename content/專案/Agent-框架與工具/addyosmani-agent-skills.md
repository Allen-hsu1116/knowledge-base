---
title: addyosmani/agent-skills
slug: addyosmani-agent-skills
created: 2026-04-28
stars: '⭐37.9k'
updated: 2026-04-28
language: zh-TW
topics: [Agent Skills, 開源 Skill 庫]
---

# addyosmani/agent-skills

> ⭐37.9k · Addy Osmani 維護的通用 Agent Skills 開源專案，提供一系列可直接安裝使用的 AI Agent Skill，涵蓋程式開發、除錯、重構、文件撰寫等領域。⭐37.9k

## 快速導航

- 🛠 **AI Skills** → [[AI-Skills]]（Agent Skills 的概念頁）
- 🌐 **Agent Skills 生態系** → [[AI-Skills]]（Skills 生態系統觀）
- 🔌 **MCP** → [[MCP]]（Skills 與 MCP 的工具整合）

## 是什麼

addyosmani/agent-skills 是 Addy Osmani 維護的 Agent Skills 開源專案，提供一系列可直接安裝使用的 AI Agent Skill，涵蓋程式開發、除錯、重構、文件撰寫等領域。使用標準化的 SKILL.md 格式，可被任何支援 Agent Skills 的 coding agent 使用。

**作者**: Addy Osmani（Google Chrome 團隊工程師）
**GitHub**: https://github.com/addyosmani/agent-skills

## 核心特色

- **標準化 SKILL.md 格式** — 每個 Skill 是一個資料夾，包含 SKILL.md（觸發條件、操作流程、品質標準）和相關模板。Agent 讀取後就知道在什麼情境下使用，不需要硬編碼行為
- **覆蓋軟體開發全流程** — 收錄 9+ 核心技能，從程式碼審查、除錯、效能優化到安全加固，涵蓋開發者日常工作的關鍵場景，每個 Skill 都有明確的品質標準
- **一鍵安裝，跨框架通用** — `npx skills add addyosmani/agent-skills` 一行指令安裝，相容 OpenClaw、Claude Code、Codex 等主流 coding agent，使用 skills.sh 分發標準
- **品質導向設計** — 每個 Skill 不只是功能清單，而是定義了產出的最低品質要求，Agent 必須達到品質標準才算完成任務
- **社群驅動，持續擴充** — 開源貢獻模式，任何人可以提交新 Skill，Addy Osmani（Google Chrome 團隊工程師）親自維護品質

## 怎麼用

### 安裝

```bash
# 安裝所有 Skills
npx skills add addyosmani/agent-skills

# 安裝特定 Skill
npx skills add addyosmani/agent-skills --skill code-review
```

### Skill 結構

```
skills/
├── my-skill/
│   ├── SKILL.md       ← Skill 定義（觸發詞、流程、標準）
│   └── templates/     ← 模板和參考檔案
```

### SKILL.md 標準格式

- **name + description**：Skill 名稱和描述
- **觸發條件**：什麼情況下使用這個 Skill
- **操作流程**：步驟化的執行指引
- **品質標準**：產出的最低品質要求
- **注意事項**：限制和風險

## 跟其他方案的關係

addyosmani/agent-skills 是 [[AI-Skills|Agent Skills 生態系]] 的核心專案之一。它跟 [[google-skills|Google Skills]] 使用相同的 skills.sh 分發標準和 SKILL.md 格式，兩者可以共存互補：addyosmani 版通用於軟體開發全流程，Google 版專注於 Google Cloud 服務。

格式上與 [[openclaw|OpenClaw]] 的 SKILL.md 完全相容，OpenClaw 使用者可以直接安裝使用。與 [[llm-knowledge-base|Karpathy Skills]] 相比，addyosmani 版更注重軟體工程實踐（審查、除錯、優化），Karpathy 版更注重研究自動化。

## 相關概念

← [[AI-Skills]] · [[AI-Skills]] · [[MCP]] · [[google-skills]]

## 來源

- 原始素材: `raw/2026-04-28-addyosmani-agent-skills.md`

- GitHub: https://github.com/addyosmani/agent-skills

---

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/addyosmani/agent-skills |
| Stars | ⭐42,774 |
| Language | Shell |
| 建立日期 | 2026-02-15 |
| 授權 | MIT |
| 收錄日期 | 2026-04-28 |