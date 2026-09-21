---
title: "json-render"
slug: "vercel-labs-json-render"
created: "2026-09-21"
updated: "2026-09-21"
stars: 17311
language: "TypeScript"
topics: ["frontend-design", "generative-AI"]
---

# json-render

> ⭐17.3k · TypeScript · 以元件目錄和 JSON 規格約束模型，串流生成可渲染的使用者介面。

## 快速導航

- [[frontend-design]]
- [[generative-AI]]

## 是什麼

json-render 是 Vercel Labs 的 Generative UI 框架。開發者先定義可用元件、props schema、動作與資料綁定，模型再在這個範圍內產生介面規格，renderer 將規格映射到真正的元件。

核心分工是 catalog 描述允許生成什麼、registry 定義如何渲染、spec 表達本次介面。相較直接執行任意模型生成的 JavaScript，這種架構把可操作的介面能力限制在開發者提供的集合。

它支援多種前端和輸出媒介，但不是每個 renderer 都共用完全相同的 schema 或元件實作。可靠性仍取決於輸入驗證、action 的伺服器授權以及開發者實作，不應把 README 的可預測性宣傳當成零錯誤保證。

## 核心特色

### 1. Catalog 與 schema

用明確元件和 props 定義生成範圍。

### 2. Registry

把規格中的元件名稱綁到受控的前端實作。

### 3. SpecStream

模型回覆尚未結束即可逐步編譯與渲染。

### 4. 多種 renderer

涵蓋 React、Vue、Svelte、Solid、React Native，以及文件、影片與終端介面。

### 5. 狀態與互動

支援動態 props、條件顯示、actions 和 state watchers。

## 怎麼用

### 安裝與起步

```bash
# 在既有 React 專案內安裝
npm install @json-render/core @json-render/react
# 若需要現成的 shadcn/ui 元件
npm install @json-render/shadcn
```

### 建議操作流程

1. 用 defineCatalog 宣告元件 props、動作與描述，並由 catalog.prompt() 產生提示。
2. 以 defineRegistry 綁定自己的元件，再讓模型輸出符合 schema 的 spec。
3. 使用 Renderer 傳入 spec 與 registry；有副作用的 handler 必須另做授權。

### 使用邊界

先以固定 spec 測試 renderer，再接模型串流。元件白名單不是通用安全沙箱，也不保證畫面上的資料正確或 action 有權執行。

本次僅查證文件並收錄，沒有安裝或執行上游專案。

## 跟其他方案的關係

以下為依官方文件整理的定位比較，不代表效能測試。

| 方案 | 著重面向 | 與本專案的差異 |
|---|---|---|
| 直接生成前端程式碼 | 模型產生完整程式碼 | json-render 以 catalog 與規格縮小生成空間。 |
| 手寫固定表單 | 版型由工程師預先決定 | json-render 可在允許的元件集合內動態組合介面。 |
| Agent-Native | Agent 和 UI 共用 action 與資料 | json-render 側重生成及渲染介面規格，兩者關注層級不同。 |

## 相關概念

← [[frontend-design]] · [[generative-AI]]

## 來源

- [GitHub](https://github.com/vercel-labs/json-render)
- [官方 README](https://github.com/vercel-labs/json-render/blob/main/README.md)
- 原始快照：`raw/2026-09-21-vercel-labs-json-render.md`
- Metadata 快照：`raw/2026-09-21-vercel-labs-json-render-metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/vercel-labs/json-render |
| Stars | 17,311（2026-09-21 快照） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-09-21 |
