---
title: Next.js
slug: vercel-next.js
created: 2026-07-11
updated: 2026-07-11
stars: 140706
language: JavaScript
topics: ["react", "ssr", "ssg", "full-stack", "web-framework", "vercel"]
---

# Next.js

> ⭐140706 · Vercel 出品的全棧 React 框架，整合 SSR/SSG/ISR 與 Rust 編譯器

## 快速導航


- 🛠 **[[workflow-automation|工作流自動化]]** — Next.js API Routes 常用於工作流自動化後端
- 🧱 **[[frontend-design|前端設計]]** — Next.js 是前端設計與 Design System 實踐的主流框架

## 是什麼

Next.js 是 Vercel 開發並維護的全棧 React 框架，被全球大量企業用於生產環境。它的核心定位是「讓 React 開發者能用最少的設定，得到最好的效能與開發體驗」。

Next.js 整合了最新的 React 功能（App Router、Server Components、Suspense 等），並搭配 Rust-based 的 SWC 編譯器來加速建構。這意味著開發者不需要分別安裝 Webpack、Babel、React Router 等工具——Next.js 開箱即用。

除了前端渲染，Next.js 還提供 API Routes 讓你直接在同一個專案中寫後端邏輯，實現真正的全棧開發。搭配 Vercel 邊緣網路部署，可以達到全球低延遲的服務。

## 核心特色

- **檔案系統路由**：App Router 和 Pages Router 兩套路由系統，以資料夾結構直接對應 URL，直覺且零設定
- **多種渲染模式**：SSR（伺服器端渲染）、SSG（靜態生成）、ISR（增量靜態再生成）、CSR（客戶端渲染）可按頁面自由選擇
- **Rust 編譯器**：內建 SWC 取代 Babel，建構速度比傳統 Webpack 快數倍
- **Server Components**：React Server Components 原生支援，減少客戶端 JavaScript 打包體積
- **內建優化**：Image、Font、Script 自動優化，不需手動設定 lazy loading 或格式轉換
- **全棧 API Routes**：在 `app/api/` 目錄直接寫後端端點，與前端共用型別
- **Edge Runtime**：支援部署到 Edge Functions，在全球邊緣節點執行

## 怎麼用

```bash
# 建立新專案
npx create-next-app@latest my-app
cd my-app
npm run dev

# 建構生產版本
npm run build
npm start
```

TypeScript 支援零設定：

```bash
npx create-next-app@latest my-app --typescript --tailwind --app
```

部署到 Vercel：

```bash
npm i -g vercel
vercel
```

## 跟其他方案的關係

| 框架 | 路由 | SSR | 全棧 | 編譯器 | 適合場景 |
|------|------|-----|------|--------|----------|
| Next.js | 檔案系統 | ✅ | ✅ | SWC (Rust) | 全棧 React 應用 |
| Remix | 檔案系統 | ✅ | ✅ | SWC | Web 標準優先 |
| Gatsby | 檔案系統 | SSG | ❌ | SWC | 靜態網站 |
| Nuxt.js | 檔案系統 | ✅ | ✅ | Vite | Vue 生態 |
| CRA | 手動 | ❌ | ❌ | Babel | 純客戶端 |

Next.js 與 [[microsoft-TypeScript|TypeScript]] 深度整合，是 TypeScript 全棧開發的首選框架。搭配 [[oven-sh-bun|Bun]] 可進一步加速開發建構流程。

## 相關概念


← [[frontend-design]] · [[workflow-automation]]

## 來源

- [GitHub: vercel/next.js](https://github.com/vercel/next.js)
- raw/2026-07-11-vercel-next.js.md
- [官方文件](https://nextjs.org/docs)

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/vercel/next.js |
| Stars | ⭐140706|
| License | MIT |
| 收錄日期 | 2026-07-11 |
