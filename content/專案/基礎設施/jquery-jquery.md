---
title: "jQuery"
slug: "jquery-jquery"
created: "2026-11-19"
updated: "2026-11-19"
stars: 60008
language: "zh-TW"
topics: ["frontend-design", "Coding-Agent-CLI"]
---

# jQuery

> ⭐60.0k · 提供 DOM、事件與 AJAX 操作的 JavaScript 函式庫。

## 快速導航

- 🧠 [[frontend-design]] — 核心使用情境。
- 🛠 [[Coding-Agent-CLI]] — 相關工程與整合考量。

## 是什麼

jQuery 是網頁介面工具庫，將元素選取、事件、CSS 與 AJAX 等功能整理成一致 API。它不是 LLM 工具，也不是 Agent 框架；本次因通用 GitHub Trending 候選而收錄為開發背景資料。

它對 Coding Agent 的價值主要是維護既有網站時辨識正確技術棧。README 明列 4.x 為完整支援、3.x 僅關鍵更新，1.x／2.x 已無支援；不能因舊程式能執行就忽略版本與外掛相容性。

## 核心特色

- **DOM 與樣式操作**：提供元素選取、CSS、尺寸與位置等模組。

- **事件 API**：包含 `.on()`、`.off()` 與觸發事件功能。

- **AJAX 模組**：支援 `$.ajax()`、GET／POST 與相關傳輸模組。

- **客製化建置**：除 core 外可排除模組，縮減不需要的功能。

- **多種發佈產物**：包含一般、slim 與 ECMAScript module 版本。

## 怎麼用

### 安裝與啟動

以下為官方 README 流程或加上隔離環境的改寫；本次收錄並未執行安裝。

```bash
git clone https://github.com/jquery/jquery.git
cd jquery
npm install
npm run build
```

### 基本操作

```bash
npm run build:all
npm run build -- --help
```

### 使用前確認

- 這是 README 的原始碼建置流程；一般應用可從官方下載頁選用發佈版本。

- `dist/` 與 `dist-module/` 對應不同產物；slim 或自訂建置不保證包含所有 AJAX／effects 功能。

## 跟其他方案的關係

以下是依工具職責整理的選型比較，不是效能測試排名。

| 方案 | 主要角色 | 選用考量 |
|---|---|---|
| jQuery | 命令式 DOM 與網頁功能工具箱 | 維護既有 jQuery 網站 |
| Solid | 細粒度響應式 UI 函式庫 | 以狀態驅動新介面 |
| 原生 DOM API | 瀏覽器內建操作介面 | 不需要 jQuery 相容層的小型互動 |

## 相關概念

← [[frontend-design]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub](https://github.com/jquery/jquery)
- [官方 README](https://github.com/jquery/jquery/blob/main/README.md)
- 原始快照：`raw/2026-11-19-jquery-jquery.md`

資料為 2026-11-19 抓取的預設分支快照；Stars 與文件內容會持續變動。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/jquery/jquery |
| Stars | 60,008 |
| License | MIT |
| Language | JavaScript（原始碼）；zh-TW（本文） |
| 收錄日期 | 2026-11-19 |
