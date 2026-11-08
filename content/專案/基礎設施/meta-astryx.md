---
title: Astryx
slug: meta-astryx
created: '2026-11-08'
updated: '2026-11-08'
stars: 14532
language: TypeScript
topics:
- Coding-Agent-CLI
- free-software
github_topics: []
---

# Astryx

> ⭐14.5k · Meta 開源、面向開發者與 Coding Agent 的 React 設計系統，提供元件、主題與 CLI。

## 快速導航

[[Coding-Agent-CLI]] · [[free-software]]

## 是什麼

Astryx 是 Meta 公開的設計系統，README 標示目前為 Beta，需使用 React 19 或更新版本。它整合具 TypeScript 型別的元件、主題、模板與 CLI，讓人類開發者和 AI 助手使用同一套 API 慣例與文件。

專案內部用 StyleX 撰寫樣式，但一般使用者採預先建好的 CSS，不必為基本使用加入 StyleX 建置插件。README 稱它提供 150 多個元件，並源自 Meta 內部設計系統；這些是官方陳述，而非本次實測成果。它是 UI 基礎設施，不是模型或自主 Agent。

## 核心特色

- **可組合的元件**：匯出底層 building blocks，不侷限於封閉的頂層 API。

- **Swizzle**：需要深入客製時可將元件完整原始碼導出到自己的專案。

- **主題系統**：以 CSS custom properties 覆寫品牌外觀，提供多種預設主題與深色模式。

- **樣式可共存**：className 可以搭配 Tailwind、CSS Modules 或一般 CSS 覆寫。

- **Agent-friendly CLI**：提供元件文件、模板、scaffolding、主題及 codemod 入口。

## 怎麼用

### 安裝

以下是官方文件的使用示例，本次僅收錄文件，未執行候選專案。

```bash
# 前提：專案已有 React 19+ 與 react-dom
npm install @astryxdesign/core @astryxdesign/theme-neutral @stylexjs/stylex
npm install -D @astryxdesign/cli
```

### 基本操作

```bash
# 安裝後，用套件內明確路徑查看元件清單
node node_modules/@astryxdesign/cli/clients/cli/bin/astryx.mjs component --list
```

- 接著依 core 套件 Quick Start 載入 CSS 與 theme provider；不同框架入口不同，不省略主題初始化。

- README 建議在 package.json 加上 astryx script，再使用 npm run astryx -- component --list。

- @astryxdesign/lab 未發布到 npm；vega 和 charts 在快照時只有 @canary，不應當作穩定版本依賴。

## 跟其他方案的關係

以下是依功能定位整理的比較，不是效能排名。

| 方案 | 主要用途 | 關係與取捨 |
| --- | --- | --- |
| Astryx | React 元件、主題與 CLI | 提供完整設計系統慣例，目前為 Beta |
| [[tailwindlabs-tailwindcss]] | Utility-first CSS | 主要處理樣式，可與 Astryx 同時使用 |
| 自行建立 React 元件庫 | 完全自行設計 API 與規格 | 需自行維護無障礙、文件與一致性 |

### 限制與查證範圍

- 需要 React 19+；一般使用套件與修改 StyleX 原始碼的建置需求不可混為一談。

- Agent-ready 表示工具和文件設計，不代表模型輸出一定正確；仍需測試無障礙和互動行為。

← [[Coding-Agent-CLI]] · [[free-software]]

## 來源

- [GitHub](https://github.com/meta/astryx)
- [README](https://github.com/meta/astryx/blob/main/README.md)
- [官方資料 1](https://github.com/meta/astryx/blob/main/packages/core/README.md)
- [官方資料 2](https://astryx.atmeta.com)
- 原始快照：`raw/2026-11-08-meta-astryx.md`
- Metadata：`raw/2026-11-08-meta-astryx.metadata.json`

---

| 欄位 | 內容 |
| --- | --- |
| GitHub | [meta/astryx](https://github.com/meta/astryx) |
| Stars | 14,532（2026-11-08 快照） |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-11-08 |
