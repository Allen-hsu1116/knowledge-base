---
title: Figma Skills
slug: Figma-Skills
created: 2026-06-08
updated: 2026-06-08
stars: —
language: zh-TW
---

# Figma Skills

> ⭐— · AI Agent Skill 系列，涵蓋 Figma 設計脈絡取得、工具使用、設計生成和程式碼實作的完整工作流。

## 快速導航

- 🎨 **Figma 工作流** → [[openai-skills|OpenAI Skills（4 個 Figma Skill）]]
- 🖌️ **前端設計** → [[frontend-design]]
- 🛠️ **設計系統** → [[softaworks-agent-toolkit|Design System Starter]]
- 🤖 **Agent Skills** → [[AI-Skills]] · [[agent-skills-ecosystem]]

## 是什麼

Figma Skills 是一套 AI Agent Skill，專門處理 Figma 設計工具與程式碼實作之間的橋樑。這套 Skill 來自 OpenAI 的 Skills Catalog（Codex Skills），定義了從 **取得設計脈絡 → 正確使用 Figma 工具 → 生成設計稿 → 實作程式碼** 的完整工作流。

四個 Skill 分工明確：
- **figma** — 基礎：從 Figma 取得設計脈絡（截圖、變數、Component、資源）
- **figma-use** — 前置：確保 `use_figma` 工具的正確呼叫方式
- **figma-generate-design** — 生成：從文字需求描述產生 Figma 設計檔
- **figma-implement-design** — 實作：將 Figma 設計稿翻譯成 1:1 精確的生產級程式碼

## 核心特色

- **完整的 Figma → Code 工作流** — 四個 Skill 分工：figma（取得設計脈絡）→ figma-use（確保正確呼叫）→ figma-generate-design（從需求生成設計）→ figma-implement-design（翻譯成程式碼），涵蓋從設計到實作的完整鏈路
- **figma-use 強制前置角色** — 被標記為 MANDATORY prerequisite，在每次 `use_figma` 工具呼叫前必須先執行，確保正確建立上下文、參數準備、避免常見錯誤（錯誤的 node ID、遺漏的變數參照）
- **設計系統合規** — 生成設計要求使用 Figma 變數做 Design Token（色彩、間距、字體），維護元件一致性，支援響應式設計（Desktop + Tablet + Mobile），符合 WCAG 2.1 AA 無障礙標準
- **1:1 視覺精確度** — figma-implement-design 要求間距、字體大小、色彩必須與 Figma 設計完全一致，支援跨平台實作（iOS、Android、Web），使用 Figma 變數直接對應到程式碼中的 Design Token

## 怎麼用

### 作為 AI Agent Skill 使用

```bash
# 取得 OpenAI Skills 目錄
git clone https://github.com/openai/skills.git

# Figma 系列 Skill 位於
ls skills/.curated/figma/
# figma/SKILL.md
# figma-use/SKILL.md
# figma-generate-design/SKILL.md
# figma-implement-design/SKILL.md
```

### 工作流範例

1. **取得 Figma 設計脈絡** → figma Skill 自動載入
2. **準備 use_figma 呼叫** → figma-use Skill 確保參數正確
3. **從需求生成設計** → figma-generate-design Skill 產生 Figma 檔案
4. **從設計實作程式碼** → figma-implement-design Skill 翻譯成前端程式碼

### 在 Codex 中使用

Skills 會根據觸發條件自動載入。當使用者提到 Figma 相關操作時，對應的 Skill 會自動啟用。

## 跟其他方案的關係

| 方案 | Stars | 特色 | 與 Figma Skills 的關係 |
|------|-------|------|------------------------|
| [[openai-skills|OpenAI Skills]] | 21.7k | 完整 Figma Skill 系列 | 原始來源 |
| [[anthropics-skills|Anthropic Skills]] | 147.9k | frontend-design Skill | 競爭生態系，無 Figma 專用 Skill |
| [[nextlevelbuilder-ui-ux-pro-max-skill|UI UX Pro Max]] | 88.8k | 完整 UI/UX 設計參考 | 互補，UI UX Pro Max 提供設計規範 |
| [[softaworks-agent-toolkit|Softaworks Toolkit]] | 2k | design-system-starter | 互補，Design System Starter 用於建立設計系統 |
| [[frontend-design]] | — | 前端設計概念總覽 | 上位概念 |

## 相關概念

← [[openai-skills]] · [[AI-Skills]] · [[agent-skills-ecosystem]] · [[frontend-design]] · [[frontend-design]]

## 來源

- https://github.com/openai/skills/blob/main/skills/.curated/figma/SKILL.md
- https://github.com/openai/skills/blob/main/skills/.curated/figma-use/SKILL.md
- https://github.com/openai/skills/blob/main/skills/.curated/figma-generate-design/SKILL.md
- https://github.com/openai/skills/blob/main/skills/.curated/figma-implement-design/SKILL.md

---

| 項目 | 資訊 |
|------|------|
| 類型 | 概念頁 |
| 收錄日期 | 2026-06-08 |