---
title: React
slug: react-react
created: 2026-11-07
updated: 2026-11-07
stars: 252257
language: zh-TW
topics: ["frontend-design", "Coding-Agent-CLI"]
---

# React

> ⭐252.3k · 以宣告式元件建立 Web 與原生應用介面的 JavaScript 函式庫。

## 快速導航

- [[frontend-design]] — 相關技術與工作流程。
- [[Coding-Agent-CLI]] — 相關技術與工作流程。

## 是什麼

React 以元件描述使用者介面，將資料狀態映射為畫面。開發者組合具備自身邏輯的元件，而不是手動同步每一個 DOM 節點。

它是 UI 函式庫，不是 LLM 或完整後端框架。README 說明可漸進導入既有專案，也可搭配 Node 伺服器渲染與 React Native；在 AI 應用中可作為聊天介面或 Agent 工作台的呈現層。

## 核心特色

### 1. 宣告式 UI

以各狀態的視圖描述畫面，資料改變時更新相應元件。

### 2. 元件組合

封裝狀態與 JavaScript 邏輯，再組成複雜介面。

### 3. 漸進導入

不必全面改寫既有網站，可先加入局部功能。

### 4. 跨環境運用

Web、伺服器渲染與 React Native 共用元件開發觀念。

## 怎麼用

### 安裝

此指令在既有 Node 前端專案加入套件；仍需支援 JSX 的工具鏈與 HTML 掛載容器。

```bash
npm install react react-dom
```

### 起步與驗證

建立 HelloMessage 元件，利用 react-dom/client 的 createRoot 掛載；再以 props 傳入顯示文字。

### 使用邊界

先驗證靜態畫面與互動狀態，再接後端 API；模型金鑰應留在伺服器端。

> 本頁指令為官方文件整理的操作示例，收錄時未在本機安裝或執行此專案。

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|---|---|---|
| React | 以宣告式元件建立 Web 與原生應用介面的 JavaScript 函式庫。 | 本頁收錄專案 |
| Angular | 完整 Web 開發平台，涵蓋 CLI 與多種應用能力 | React 著重 UI 元件；需要自行選擇其餘應用架構 |

此比較為依專案定位整理的編輯分析，不是效能測試或採用率排名。

## 相關概念

← [[frontend-design]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub](https://github.com/react/react)
- [官方文件](https://react.dev/learn)
- README 快照：`raw/2026-11-07-react-react.md`
- Metadata 快照：`raw/2026-11-07-react-react-metadata.json`

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/react/react |
| Stars | 252,257（2026-11-07 快照） |
| License | MIT |
| Language | JavaScript |
| 收錄日期 | 2026-11-07 |
