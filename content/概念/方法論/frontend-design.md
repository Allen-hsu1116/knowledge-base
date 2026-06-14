---
title: 前端設計
slug: frontend-design
created: 2026-06-08
updated: 2026-06-08
stars: —
language: zh-TW
---

# 前端設計

> 網頁和應用程式的視覺設計、互動體驗和 UI 實作，涵蓋設計系統、排版、色彩、動畫和無障礙。

## 快速導航

- 🎨 **設計系統** → [[softaworks-agent-toolkit\|Softaworks Agent Toolkit]]
- 📐 **UI/UX 規範** → [[nextlevelbuilder-ui-ux-pro-max-skill\|UI UX Pro Max]]
- 🔍 **設計審查** → [[vercel-labs-agent-skills\|Vercel Agent Skills]]
- 🤖 **Agent Skills** → [[AI-Skills]] · [[agent-skills-ecosystem]]
- ✏️ **Prompt 工程** → [[Prompt-Engineering]]

## 是什麼

前端設計（Frontend Design）是網頁和應用程式的視覺呈現與互動體驗的總稱，包括：

- **設計系統**（Design System）：Design Token、元件架構、主題切換
- **排版與色彩**（Typography & Color）：模數化字體尺度、OKLCH 色彩空間、深色模式
- **佈局與間距**（Layout & Spacing）：格線系統、8px 基準間距、響應式斷點
- **動畫與互動**（Animation & Interaction）：微互動、過渡效果、手勢支援
- **無障礙**（Accessibility）：WCAG 2.1 AA 對比度、ARIA 標記、鍵盤導航
- **跨平台指南**（Platform Guidelines）：iOS HIG、Material 3、Web HTML5

隨著 AI Agent Skills 的發展，前端設計知識正在被結構化為 SKILL.md 格式，讓 AI coding agent 能以明確的品質標準來執行設計任務。

## 核心特色

### 設計 Token 階層

現代設計系統採用三層 Token 架構：

| 階層 | 說明 | 範例 |
|------|------|------|
| Global | 全域變數 | `--color-primary`, `--spacing-base` |
| Alias | 語意別名 | `--color-action`, `--spacing-card` |
| Component | 元件專用 | `--button-bg`, `--card-radius` |

### 無障礙標準

- WCAG 2.1 AA 最低對比度：正常文字 4.5:1，大文字 3:1
- 響應式策略：Mobile-first + Container Queries
- 語意 HTML 優先，ARIA 標記作為補充

### AI Skills 應用

多個 Agent Skills 庫專注於前端設計品質：

- **Anthropic Skills** 的 `frontend-design` — 定義設計哲學（意圖性、層次、節制）、佈局規範、色彩和排版系統
- **UI UX Pro Max** — 包含完整的 Design Token 體系、Atomic Design 元件架構、多平台指南
- **Vercel Agent Skills** 的 `web-design-guidelines` — 審查 UI 程式碼的 Web 介面規範合規性
- **Softaworks Agent Toolkit** 的 `design-system-starter` — 從零建立生產級設計系統

## 怎麼用

### 作為 AI Agent Skill 使用

1. 選擇適合的 Skill 庫（Anthropic、OpenAI、Vercel 等）
2. 將 SKILL.md 載入 AI coding agent 的上下文
3. Agent 根據 Skill 定義的品質標準執行設計任務
4. 用 Skill 中定義的反模式清單做自我審查

### 作為設計參考使用

1. 參考 Design Token 三層架構建立自己的設計系統
2. 使用模數化字體尺度（Modular Scale）定義排版
3. 採用 OKLCH 色彩空間建立色彩系統
4. 遵循 WCAG 2.1 AA 標準確保無障礙

## 跟其他方案的關係

| 專案 | Stars | 特色 | 適用場景 |
|------|-------|------|----------|
| [[nextlevelbuilder-ui-ux-pro-max-skill\|UI UX Pro Max]] | 88.8k | 完整 Design Token + 多平台指南 | 全面 UI/UX 設計參考 |
| [[anthropics-skills\|Anthropic Skills]] | 147.9k | 設計哲學 + 實作規範 | 前端設計品質提升 |
| [[vercel-labs-agent-skills\|Vercel Agent Skills]] | 27.7k | Web 介面規範審查 | UI 程式碼品質審查 |
| [[softaworks-agent-toolkit\|Softaworks Toolkit]] | 2k | 從零建設計系統 | 建立新設計系統 |

## 相關概念

← [[AI-Skills]] · [[agent-skills-ecosystem]] · [[Prompt-Engineering]] · [[frontend-design]] · [[Figma-Skills]] · [[Frontend-Design-Agent-Skills]]

## 來源

- https://github.com/anthropics/skills (frontend-design SKILL.md)
- https://github.com/nextlevelbuilder/ui-ux-pro-max-skill
- https://github.com/vercel-labs/agent-skills (web-design-guidelines)
- https://github.com/softaworks/agent-toolkit (design-system-starter)

---

| 項目 | 資訊 |
|------|------|
| 類型 | 概念頁 |
| 收錄日期 | 2026-06-08 |