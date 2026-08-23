---
title: TypeScript
slug: microsoft-TypeScript
created: 2026-07-11
updated: 2026-07-11
stars: 109776
language: TypeScript
topics: ["javascript", "language", "typechecker", "typescript"]
---

# TypeScript

> ⭐109776 · 微軟出品的 JavaScript 超集，加入靜態型別檢查

## 快速導航


- 🛠 **[[vercel-next.js|Next.js]]** — 全棧 React 框架，與 TypeScript 深度整合
- ⚡ **[[oven-sh-bun|Bun]]** — 原生支援 TypeScript 的 JS/TS 全能工具鏈

## 是什麼

TypeScript 是微軟開發並維護的程式語言，是 JavaScript 的超集——所有合法的 JavaScript 都是合法的 TypeScript。它在 JavaScript 的基礎上加入了可選的靜態型別系統，讓開發者能在編譯時期就抓到潛在的型別錯誤，而非等到執行時期。

TypeScript 的設計理念是「漸進式型別」：你可以在需要型別安全的地方加上型別標註，在不那麼關鍵的地方讓型別推論自動處理。這讓大型 JavaScript 專案可以逐步遷移，而不需要一次重寫所有程式碼。

TypeScript 編譯器（tsc）會將 TypeScript 程式碼編譯成乾淨、符合標準的 JavaScript，可以跑在任何瀏覽器、任何主機、任何作業系統上。此外，TypeScript 也提供強大的 Language Service，讓 IDE 能提供智慧補全、重構導航和即時錯誤提示。

## 核心特色

- **靜態型別檢查**：編譯時期抓出型別錯誤，大幅減少 runtime bug
- **型別推論**：自動推導變數型別，不需處處手寫型別標註
- **漸進式型別**：可選的型別系統，想加就加、不想加就不加
- **JavaScript 超集**：所有 JS 都是合法 TS，零遷移門檻
- **Language Service**：提供 IDE 等級的智慧補全、重構、導航
- **Compiler API**：可程式化存取型別系統，用於建構工具鏈
- **跨平台**：編譯後的 JS 跑在任何瀏覽器、主機、OS

## 怎麼用

```bash
# 安裝
npm install -D typescript

# 編譯
npx tsc myfile.ts

# 初始化設定
npx tsc --init

# 每日建構版
npm install -D typescript@next
```

基本型別範例：

```typescript
function greet(name: string): string {
  return `Hello, ${name}!`;
}

interface User {
  id: number;
  name: string;
  email?: string;  // 可選屬性
}

const user: User = { id: 1, name: "Alice" };
```

## 跟其他方案的關係

| 語言 | 型別系統 | 編譯目標 | 型別推論 | 生態系 | 適合場景 |
|------|----------|----------|----------|--------|----------|
| TypeScript | 靜態 + 漸進 | JavaScript | ✅ | 極大 | 大型 JS 專案 |
| JavaScript | 動態 | — | ❌ | 最大 | 快速原型 |
| Flow | 靜態 | JavaScript | ✅ | 小 | Facebook 內部 |
| PureScript | 強靜態 | JavaScript | ✅ | 小 | 函數式 |
| Reason | 強靜態 | JavaScript | ✅ | 小 | OCaml 風格 |

TypeScript 與 [[vercel-next.js|Next.js]] 深度整合，是全棧 React 開發的標準語言選擇。[[oven-sh-bun|Bun]] 則原生支援 TypeScript，不需額外編譯步驟。

## 相關概念


← [[vercel-next.js]] · [[oven-sh-bun]]

## 來源

- [GitHub: microsoft/TypeScript](https://github.com/microsoft/TypeScript)
- raw/2026-07-11-microsoft-TypeScript.md
- [TypeScript 官網](https://www.typescriptlang.org/)

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/microsoft/TypeScript |
| Stars | ⭐109776|
| License | Apache-2.0 |
| 收錄日期 | 2026-07-11 |
