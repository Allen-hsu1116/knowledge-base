---
title: Angular
slug: angular-angular
created: 2026-11-07
updated: 2026-11-07
stars: 101361
language: zh-TW
topics: ["frontend-design", "Coding-Agent-CLI"]
---

# Angular

> ⭐101.4k · 以 TypeScript 為主的 Web 應用開發平台，提供元件、CLI 與完整工具生態。

## 快速導航

- [[frontend-design]] — 相關技術與工作流程。
- [[Coding-Agent-CLI]] — 相關技術與工作流程。

## 是什麼

Angular 是用來建立桌面與行動 Web 應用的平台。官方 README 從元件與模板、表單到 API 提供文件入口，並以 Angular CLI 建立及執行專案。

它不是模型服務，也不是自動執行任務的 Agent。對 AI 產品而言，可用來建置管理介面與互動應用；本頁把它歸為基礎設施，而非宣稱具有內建 LLM 能力。

## 核心特色

### 1. 元件與模板

以結構化方式組織應用的 UI。

### 2. CLI 工具

提供安裝、建立 workspace 與本機開發伺服器流程。

### 3. 表單與路由文件

涵蓋常見應用互動與延遲載入方式。

### 4. 伺服器渲染

官方提供 SSR 文件，另有 Angular Material 生態。

## 怎麼用

### 安裝

需先安裝相容的 Node.js 與 npm；執行 CLI 時依提示選擇專案設定。

```bash
npm install -g @angular/cli
ng new my-app
cd my-app
ng serve
```

### 起步與驗證

依終端顯示的開發網址開啟應用，再從官方元件與表單教學加入互動。

### 使用邊界

正式部署前需建置與測試；ng serve 是開發工具，不能直接代表完成生產環境部署。

> 本頁指令為官方文件整理的操作示例，收錄時未在本機安裝或執行此專案。

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|---|---|---|
| Angular | 以 TypeScript 為主的 Web 應用開發平台，提供元件、CLI 與完整工具生態。 | 本頁收錄專案 |
| React | 偏重 UI 的元件函式庫 | Angular 提供平台與 CLI；React 更強調可組合的 UI 核心 |

此比較為依專案定位整理的編輯分析，不是效能測試或採用率排名。

## 相關概念

← [[frontend-design]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub](https://github.com/angular/angular)
- [官方文件](https://angular.dev/tutorials/learn-angular)
- README 快照：`raw/2026-11-07-angular-angular.md`
- Metadata 快照：`raw/2026-11-07-angular-angular-metadata.json`

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/angular/angular |
| Stars | 101,361（2026-11-07 快照） |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-11-07 |
