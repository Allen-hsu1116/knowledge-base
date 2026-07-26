---
title: UI Skills
slug: ibelick-ui-skills
created: 2026-07-17
updated: 2026-07-17
stars: 4261
language: TypeScript
topics:
  - skills
  - ui-skills
---

# UI Skills

> ⭐4.3k · 為設計工程師打造的 UI Skill 集合，用 `npx ui-skills start` 讓 AI Agent 自動路由到正確的 UI skill


## 快速導航
快速導航：[[AI-Skills|AI Skills]] · [[frontend-design|前端設計]] · [[anthropics-skills|Anthropic Skills]]

## 是什麼

UI Skills 是由 ibelick（Vercel 設計工程師）建立的 AI Skill 集合，專門為設計工程師（Design Engineer）量身打造。它不是單一 Skill，而是一個 Skill 路由系統——當你請 AI Agent 做一件 UI 相關的任務時，UI Skills 會自動判斷任務類型並路由到最合適的 Skill 集。

與其他單一功能的設計 Skill 不同，UI Skills 的核心價值在於分類路由。它把 UI 設計任務拆成多個類別（如 motion、layout、color 等），每個類別有對應的 Skill 集。Agent 不需要記住所有 UI 知識，只需要呼叫 `npx ui-skills start` 就能獲得正確的設計指導。

Skill 集合可以透過 CLI 查詢和取得，也支援列出特定類別下的所有 Skill。這種模組化設計讓設計工程師可以按需使用，不必載入不需要的 Skill。

## 核心特色

- **Skill 路由系統**：`npx ui-skills start` 自動判斷任務類型並路由到正確的 Skill 集，不用手動選擇
- **分類管理**：Skill 按 category 組織（如 motion），可用 `npx ui-skills categories` 查看所有分類
- **CLI 取得**：支援 `npx ui-skills get <skill-name>` 直接取得特定 Skill，或 `npx ui-skills list --category <cat>` 列出分類下所有 Skill
- **設計工程師導向**：Skill 內容專為設計工程師設計，涵蓋前端設計的各個面向
- **網站輔助**：搭配 [ui-skills.com](http://ui-skills.com) 提供更多設計資源和教學

## 怎麼用

```bash
# 啟動 Skill 路由
npx ui-skills start

# 查看所有分類
npx ui-skills categories

# 列出特定分類的 Skill
npx ui-skills list --category motion

# 取得特定 Skill
npx ui-skills get baseline-ui
```

安裝後在 Claude Code、Cursor 等 AI Agent 中執行 `npx ui-skills start`，Agent 會根據你的 UI 任務自動載入對應的 Skill 指引。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心差異 |
|------|-------|------|----------|
| **UI Skills** | ⭐4.3k | UI Skill 路由 | 分類路由系統，按任務類型自動選 Skill |
| [[anthropics-skills\|Anthropic Skills]] | ⭐147.9k | 設計 Skill | Anthropic 官方前端設計 Skill |
| [[Nutlope-hallmark\|Hallmark]] | ⭐5.1k | 反 AI 味 Skill | 57 道 slop-test gate，結構多樣性 |
| [[Leonxlnx-taste-skill\|Taste Skill]] | ⭐36k | 設計品味 Skill | 聚焦美學判斷力 |
| [[pbakaus-impeccable\|Impeccable]] | ⭐32.7k | 設計語言 Skill | 設計語言和反模式 |
| [[nextlevelbuilder-ui-ux-pro-max-skill\|UI UX Pro Max]] | ⭐88.8k | UI/UX Skill | 通用 UI/UX Skill |

## 相關概念

← [[AI-Skills|AI Skills]] · [[frontend-design|前端設計]] · [[anthropics-skills|Anthropic Skills]]

## 來源

- GitHub: <https://github.com/ibelick/ui-skills>
- 官網: <http://ui-skills.com>
- 原始 README: `raw/2026-07-17-ibelick-ui-skills.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [ibelick/ui-skills](https://github.com/ibelick/ui-skills) |
| Stars | ⭐4,261 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-07-17 |