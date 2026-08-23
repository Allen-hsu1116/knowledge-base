---
title: SoftaWorks Agent Toolkit
slug: softaworks-agent-toolkit
created: 2026-06-08
updated: 2026-06-08
stars: 1979
language: Python
topics: [AI Skills, Design System, UI/UX]
---

# SoftaWorks Agent Toolkit

> ⭐1979 · 精選 AI 程式碼 Agent 技能集合，核心技能 design-system-starter 幫你從零打造生產級設計系統（token、元件架構、主題、文件一次到位）。

## 快速導航

[[AI-Skills]] · [[AI-Skills]] · [[vercel-labs-agent-skills]] · [[frontend-design]]

## 是什麼

SoftaWorks Agent Toolkit 是一套精心策展的 AI Agent 技能庫，核心亮點是 **design-system-starter** 技能——一份全面的 Claude Code Skill，讓 Agent 能從零開始建立生產就緒的設計系統。涵蓋設計 token 定義、元件架構設計、主題系統和文件產出，不只是產出 UI 程式碼，而是建立一整套可擴展的設計基礎設施。

設計哲學：Agent 不該只寫「看起來能用」的 UI，而應該建立系統化的設計基礎，讓後續開發者有規可循。

## 核心特色

- 🎨 **design-system-starter 技能**：完整的 SKILL.md + README.md，指導 Agent 從無到有建立設計系統
- 🪙 **設計 Token 體系**：顏色、間距、字體、圓角、陰影等 token 的標準化定義和使用規範
- 🧱 **元件架構**：原子設計（Atomic Design）方法論指導，從原子到頁面的層級化元件
- 🌈 **主題系統**：亮色/暗色/品牌主題的切換架構，支援 CSS 變數或 CSS-in-JS 方案
- 📖 **文件產出**：每個元件附帶使用範例、Props 文件、無障礙說明
- 🐍 **Python 技能生態**：雖然設計系統技能偏前端，整個工具包以 Python 為主語言

## Design-System-Starter 技能詳解

### 五大核心領域

| 領域 | 內容 |
|------|------|
| Design Tokens | 結構化 JSON 模板定義基礎設計決策：顏色（50-950 刻度）、語意 token、字體、間距、圓角、陰影 |
| Component Architecture | 原子設計方法論：Atoms → Molecules → Organisms → Templates → Pages |
| Accessibility | 內建 WCAG 2.1 Level AA 合規：色彩對比（4.5:1 普通文字、3:1 大字）、鍵盤導航、ARIA 屬性、焦點管理 |
| Theming | 多種方案：CSS 自訂屬性、Tailwind CSS dark mode、Styled Components ThemeProvider |
| Documentation | 元件用途、Props API（含型別與預設值）、無障礙說明、常見範例 |

### 設計 Token 系統

- **W3C 設計 token 格式**：符合標準的 JSON 結構
- **原始色與語意色**：Primitive colors（50-950 刻度）+ Semantic tokens（brand、text、background、feedback）
- **字體排版 scale**：xs 到 5xl，考量無障礙的行高與字距
- **間距系統**：基於 4px 或 8px 單位的數學刻度（0 到 24）
- **陰影系統**：用於層級與深度的 elevation

### 元件範本

- TypeScript-first 元件範本
- 多型元件（Polymorphic component）模式
- 複合元件（Compound component）API 設計
- Variant 與 Size 系統
- 完整的無障礙支援

### 觸發詞

| 觸發詞 | 動作 |
|--------|------|
| "Create a design system" | 完整設計系統設定 |
| "Set up design tokens" | Token 結構與實作 |
| "Design component structure" | 原子設計架構 |
| "Ensure WCAG compliance" | 無障礙指南與模式 |
| "Implement dark mode" | 主題與暗色模式支援 |
| "Component architecture" | 元件組織模式 |
| "Accessibility guidelines" | WCAG 2.1 AA 合規 |

### 設計哲學四大原則

1. **一致性勝過創造力**：可預測的模式降低認知負荷，學一次到處用
2. **無障礙優先**：WCAG 2.1 Level AA 為最低標準，鍵盤導航內建，螢幕閱讀器支援從頭開始
3. **可擴展且可維護**：Design tokens 實現全域變更，元件組合減少重複
4. **開發者友善**：清晰的 API 合約、完整的文件、容易整合與自訂

### 內建資源

| 資源 | 說明 |
|------|------|
| `templates/design-tokens-template.json` | 完整的 token 結構範本 |
| `templates/component-template.tsx` | React 元件範本 |
| `references/component-examples.md` | 含 variant 的完整實作範例 |
| `checklists/design-system-checklist.md` | 設計系統稽核清單 |

### 整合生態

- **React/TypeScript**：主要目標，完整 TypeScript 支援
- **Style Dictionary**：相容的 token 格式，可多平台輸出
- **Tailwind CSS**：Design token 對應 Tailwind config
- **Styled Components**：Theme provider 整合
- **Storybook**：文件範本與 story 模式
- **Figma**：Token 命名與 Figma variables 對齊

## 怎麼用

```bash
# 安裝技能到你的專案
npx skills@latest add softaworks/agent-toolkit

# 或者直接複製 design-system-starter
curl -o SKILL.md https://raw.githubusercontent.com/softaworks/agent-toolkit/main/design-system-starter/SKILL.md
```

使用流程：
1. **啟動新專案時**：讓 Agent 讀取 design-system-starter 後產出初始設計系統
2. **定義 Token**：Agent 會先建立顏色、間距、字體等基礎 token（含原始色 50-950 刻度 + 語意映射）
3. **建立元件庫**：依 Atomic Design 層級（Atoms → Molecules → Organisms → Templates → Pages）逐步建構
4. **加上主題**：支援 CSS 變數 / Tailwind dark mode / Styled Components 等多種主題方案
5. **產出文件**：每個元件附帶 Storybook 等級的文件（Props API、無障礙說明、使用範例）
6. **稽核合規**：用內建 checklist 確認 WCAG 2.1 AA 合規

## 跟其他方案的關係

| 方案 | 定位 | 與 SoftaWorks Agent Toolkit 的關係 |
|------|------|------------------------------------|
| [[vercel-labs-agent-skills|Vercel Agent Skills]] | 前端設計審查 | Vercel 審查既有 UI 品質，SoftaWorks 幫你從零建立設計系統 |
| [[anthropics-skills|Anthropic Skills]] | 官方 Skills | Anthropic 偏前端創作美學，SoftaWorks 偏系統化建構 |
| [[mattpocock-skills|Matt Pocock Skills]] | 工程實踐 Skills | Matt Pocock 偏架構對齊，SoftaWorks 偏設計系統建構 |
| [[expo-skills|Expo Skills]] | 行動開發 Skills | Expo 聚焦 React Native 開發，SoftaWorks 聚焦設計系統基礎 |
| [[addyosmani-agent-skills|addyosmani/agent-skills]] | 通用開發 Skills | addyosmani 涵蓋全流程，SoftaWorks 專精設計系統這一環 |
| [[AI-Skills]] | 概念層 | SoftaWorks 是 AI Skills 在設計系統領域的最佳實踐 |

## 相關概念


- **Design Token**：設計決策的最小單位（顏色、間距、字體），是設計系統的基礎建設
- **Atomic Design**：Atom → Molecule → Organism → Template → Page 的元件層級方法論
- **WCAG 2.1 AA**：無障礙合規標準，design-system-starter 內建此合規要求
- **Style Dictionary**：W3C 標準的 design token 格式，支援多平台輸出

← [[AI-Skills]] · [[AI-Skills]] · [[frontend-design]] · [[frontend-design]]

## 來源

- GitHub: <https://github.com/softaworks/agent-toolkit>
- 原始 README: `raw/2026-06-08-softaworks-agent-toolkit-design-system-starter.md`
- raw/2026-06-08-softaworks-agent-toolkit.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/softaworks/agent-toolkit |
| Stars | ⭐1979|
| License | MIT |
| 收錄日期 | 2026-06-08 |
