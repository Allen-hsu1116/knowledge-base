---
title: "Solid"
slug: "solidjs-solid"
created: "2026-11-19"
updated: "2026-11-19"
stars: 36584
language: "zh-TW"
topics: ["frontend-design", "Coding-Agent-CLI"]
---

# Solid

> ⭐36.6k · 以細粒度響應式更新真實 DOM 的宣告式 UI 函式庫。

## 快速導航

- 🧠 [[frontend-design]] — 核心使用情境。
- 🛠 [[Coding-Agent-CLI]] — 相關工程與整合考量。

## 是什麼

Solid 將 JSX 編譯為實際 DOM 操作，以響應式相依追蹤更新受影響的表達式，而不是使用 Virtual DOM diff。元件函式在掛載時執行一次，狀態改變時更新依賴它的部分。

此次預設分支 README 描述 Solid 2.0，包含不同於 1.x 的套件入口與非同步模型。它不是 LLM 框架，但提供 AI 助手使用的 primer、cheatsheet 與遷移文件；Coding Agent 產生前端程式時應先對照專案版本。

## 核心特色

- **細粒度反應性**：`createSignal`、`createMemo` 與 `createStore` 管理狀態相依。

- **編譯期 DOM 操作**：JSX 轉成真實節點與追蹤更新。

- **批次更新**：README 描述 microtask batching 與 `flush()` 同步互通。

- **非同步與樂觀介面**：2.0 文件包含 Promise／AsyncIterable、Loading boundary 與 optimistic primitives。

- **伺服器渲染**：支援 streaming SSR 與 progressive hydration。

- **版本專用 AI 文件**：npm 套件附 2.0 skills 與 cheatsheet，降低混用舊 API 的風險。

## 怎麼用

### 安裝與啟動

以下為官方 README 流程或加上隔離環境的改寫；本次收錄並未執行安裝。

```bash
npx degit solidjs/templates/solid-v2/basic my-app
cd my-app
npm install
npm run dev
```

### 使用前確認

- 這是 2.0 README 的模板流程，不應直接套用到既有 1.x 專案。

- 2.0 範例從 `solid-js` 匯入 `createSignal`，從 `@solidjs/web` 匯入 `render`。

- 1.x 使用獨立分支與文件；升級前閱讀 MIGRATION.md，並確認相依工具鏈相容。

- 版本與 API 說明來自抓取當日預設分支，未在本次工作中安裝或執行應用。

## 跟其他方案的關係

以下是依工具職責整理的選型比較，不是效能測試排名。

| 方案 | 主要角色 | 選用考量 |
|---|---|---|
| Solid | 狀態相依追蹤與局部 DOM 更新 | 新建響應式 UI |
| jQuery | 明確呼叫 DOM、事件與樣式操作 | 維護命令式網站互動 |
| Coding Agent | 產生與修改程式碼 | 必須遵守所使用 Solid 版本的 API |

## 相關概念

← [[frontend-design]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub](https://github.com/solidjs/solid)
- [官方 README](https://github.com/solidjs/solid/blob/main/README.md)
- 原始快照：`raw/2026-11-19-solidjs-solid.md`

資料為 2026-11-19 抓取的預設分支快照；Stars 與文件內容會持續變動。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/solidjs/solid |
| Stars | 36,584 |
| License | MIT |
| Language | TypeScript（原始碼）；zh-TW（本文） |
| 收錄日期 | 2026-11-19 |
