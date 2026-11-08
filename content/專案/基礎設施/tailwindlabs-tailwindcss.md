---
title: Tailwind CSS
slug: tailwindlabs-tailwindcss
created: '2026-11-08'
updated: '2026-11-08'
stars: 98474
language: TypeScript
topics:
- Coding-Agent-CLI
- free-software
github_topics:
- css
- css-framework
- functional-css
- postcss
- responsive
- tailwindcss
- utility-classes
---

# Tailwind CSS

> ⭐98.5k · 以 utility classes 組合 UI 樣式的 CSS 框架，是前端開發基礎設施而非 LLM。

## 快速導航

[[Coding-Agent-CLI]] · [[free-software]]

## 是什麼

Tailwind CSS 把常用的排版、間距、色彩與狀態樣式設計成單一用途的 class，直接在 HTML 或元件標記中組合。官方安裝文件說明它掃描 HTML、JavaScript 元件與其他模板中的類別名稱，再生成靜態 CSS，樣式系統不需要瀏覽器端 JavaScript runtime。

它解決的是介面樣式的組織和建置問題，不是現成的完整 React 元件庫，也不會自行生成程式碼。Coding Agent 可以把它當成輸出前端介面的目標技術，但這是工程搭配方式，不代表 Tailwind 內建 Agent。README 很短，本頁另以官方 Vite 安裝與 utility classes 文件補充。

## 核心特色

- **Utility-first**：用 flex、p-6、rounded-xl 等類別組合介面，減少自訂 selector 命名。

- **狀態 variants**：hover:、focus: 等前綴讓同一元素依互動狀態改變樣式。

- **響應式 variants**：使用 sm: 等斷點前綴，建立不同螢幕尺寸的版面。

- **深色模式**：以 dark: 前綴指定深色樣式，避免混同單純 inline styles。

- **靜態 CSS 建置**：提供 Vite、PostCSS 與 CLI 安裝路徑，依專案工具鏈選擇。

## 怎麼用

### 安裝

以下是官方文件的使用示例，本次僅收錄文件，未執行候選專案。

```bash
# 在既有 Vite 專案目錄中安裝
npm install tailwindcss @tailwindcss/vite
```

### 基本操作

```typescript
// vite.config.ts：保留既有框架插件，再加入 tailwindcss()
import { defineConfig } from 'vite'
import tailwindcss from '@tailwindcss/vite'

export default defineConfig({
  plugins: [tailwindcss()],
})
```

```css
/* 在應用已載入的 CSS 入口 */
@import "tailwindcss";
```

```html
<h1 class="text-3xl font-bold underline">Hello world!</h1>
```

- 啟動既有專案的 npm run dev，並確認 CSS 入口被 HTML 或框架載入。

- 上例展示最小 Vite 設定，不應覆蓋現有 React／Vue 插件與其他專案設定。

- 收錄快照查得 release 為 v4.3.5；此頁採官方 v4 安裝方式，不混用舊版初始化流程。

## 跟其他方案的關係

以下是依功能定位整理的比較，不是效能排名。

| 方案 | 主要用途 | 關係與取捨 |
| --- | --- | --- |
| Tailwind CSS | Utility classes 與靜態樣式建置 | 負責樣式，不提供完整應用行為 |
| [[meta-astryx]] | React 元件、主題與設計系統 CLI | 提供更高階 UI 元件，可用 Tailwind 覆寫 className |
| 手寫 CSS | 自行設計 selector 與樣式規則 | 自由度高，但需自行管理命名與一致性 |

### 限制與查證範圍

- 生成式程式碼仍須做視覺、響應式及無障礙驗證；class 存在不代表 UI 正確。

- 本次僅核對文件與 metadata，沒有對框架建置速度或產物大小進行測試。

← [[Coding-Agent-CLI]] · [[free-software]]

## 來源

- [GitHub](https://github.com/tailwindlabs/tailwindcss)
- [README](https://github.com/tailwindlabs/tailwindcss/blob/main/README.md)
- [官方資料 1](https://tailwindcss.com/docs/installation/using-vite)
- [官方資料 2](https://tailwindcss.com/docs/styling-with-utility-classes)
- [官方資料 3](https://github.com/tailwindlabs/tailwindcss/releases/tag/v4.3.5)
- 原始快照：`raw/2026-11-08-tailwindlabs-tailwindcss.md`
- Metadata：`raw/2026-11-08-tailwindlabs-tailwindcss.metadata.json`

---

| 欄位 | 內容 |
| --- | --- |
| GitHub | [tailwindlabs/tailwindcss](https://github.com/tailwindlabs/tailwindcss) |
| Stars | 98,474（2026-11-08 快照） |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-11-08 |
