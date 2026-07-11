---
title: Bun
slug: oven-sh-bun
created: 2026-07-11
updated: 2026-07-11
stars: 94228
language: Rust
topics: bun, bundler, javascript, javascriptcore, jsx, nodejs, npm, react, rust, transpiler, typescript
---

# Bun

> ⭐94.2k · Rust · MIT · 一體化 JavaScript/TypeScript 工具鏈，整合執行環境、打包器、測試框架與套件管理器

## 快速導航

- 🛠 **[[vercel-next.js|Next.js]]** — Bun 可加速 Next.js 專案的建構與開發
- 🧱 **[[microsoft-TypeScript|TypeScript]]** — Bun 原生支援 TypeScript，不需額外編譯

## 是什麼

Bun 是 Oven 公司開發的一體化 JavaScript/TypeScript 工具鏈，以單一可執行檔 `bun` 提供 JavaScript 執行環境、打包器、測試框架和套件管理器。它的核心是 Bun Runtime——一個用 Rust 寫的 JavaScript 執行環境，底層使用 JavaScriptCore（Safari 的 JS 引擎）而非 V8，大幅降低啟動時間和記憶體使用量。

Bun 的設計目標是成為 Node.js 的直接替代品。你不需要安裝一堆 node_modules 依賴——Bun 一個二進位檔就包辦了辦了執行、測試、打包和套件安裝。Bun 的內建工具比現有方案快上數倍，而且在現有 Node.js 專案中幾乎不需要修改就能使用。

Bun 原生支援 TypeScript 和 JSX，不需要任何設定就能直接執行 `.ts` 和 `.tsx` 檔案。它還提供了豐富的內建 API，包括 HTTP 伺服器、WebSocket、SQLite、S3 客戶端等。

## 核心特色

- **一體化工具鏈**：執行環境 + 打包器 + 測試框架 + 套件管理器，全部在一個二進位檔
- **Rust 寫的**：核心用 Rust 寫，底層 JavaScriptCore 引擎帶來極低啟動時間
- **Node.js 直接替代**：相容大部分 Node.js API 和 npm 套件
- **TypeScript 原生**：TS 和 JSX 開箱即用，零設定
- **快速套件安裝**：比 npm/yarn/pnpm 快上數倍的套件管理
- **豐富內建 API**：HTTP Server、WebSocket、SQLite、S3、PostgreSQL、Redis、Cron、Shell
- **熱重載**：Watch mode 提供快速開發迭代

## 怎麼用

```sh
# 安裝
curl -fsSL https://bun.com/install | bash

# 執行 TypeScript（不需編譯）
bun run index.tsx

# 執行測試
bun test

# 安裝套件
bun install <pkg>

# 執行 package.json script
bun run start

# 執行套件
bunx cowsay 'Hello, world!'
```

建立新專案：

```bash
bun init my-app
cd my-app
bun run dev
```

## 跟其他方案的關係

| 工具 | 執行環境 | 套件管理 | 測試 | 打包 | TS 原生 | 語言 |
|------|----------|----------|------|------|---------|------|
| Bun | ✅ JavaScriptCore | ✅ 內建 | ✅ 內建 | ✅ 內建 | ✅ | Rust |
| Node.js | ✅ V8 | ❌ 需 npm | ❌ 需 Jest | ❌ 需 Webpack | ❌ 需 tsc | C++ |
| Deno | ✅ V8 | ✅ 內建 | ✅ 內建 | ✅ 內建 | ✅ | Rust |
| esbuild | ❌ | ❌ | ❌ | ✅ | ❌ | Go |

Bun 與 [[vercel-next.js|Next.js]] 搭配可加速建構流程。[[microsoft-TypeScript|TypeScript]] 專案可直接用 Bun 執行，不需額外編譯步驟。

## 相關概念

← [[vercel-next.js|Next.js]] · [[microsoft-TypeScript|TypeScript]]

## 來源

- [GitHub: oven-sh/bun](https://github.com/oven-sh/bun)
- raw/2026-07-11-oven-sh-bun.md
- [Bun 官網](https://bun.com/)

---

- **GitHub**: https://github.com/oven-sh/bun
- **Stars**: ⭐ 94,228
- **License**: MIT (Bun License)
- **Language**: Rust
- **收錄日期**: 2026-07-11