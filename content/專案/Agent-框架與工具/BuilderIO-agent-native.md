---
title: "Agent-Native"
slug: "BuilderIO-agent-native"
created: "2026-09-21"
updated: "2026-09-21"
stars: 5215
language: "TypeScript"
topics: ["agent-native", "agents", "ai", "react", "typescript"]
---

# Agent-Native

> ⭐5.2k · TypeScript · 讓 Agent 與 UI 共用 actions、資料及應用狀態的 TypeScript 框架。

## 快速導航

- [[AI-Agent]]
- [[frontend-design]]

## 是什麼

Builder.io 的 Agent-Native 是打造具專用 UI 之 Agent 應用的 TypeScript 框架。它把應用能力定義為 action，Agent 把 action 當工具，UI 則從程式碼呼叫同一能力，避免維護兩套行為不一致的操作路徑。

設計的重點不在讓 Agent 模擬點擊畫面，而是讓 Agent 直接經由相同 action 層工作。共享資料使 Agent 的成果可在 UI 檢閱，共享應用狀態則讓 Agent 知道目前頁面、選取紀錄與作用中的檢視。

適合需要人與 Agent 一起操作資料、審閱結果的產品。官方還提供會議、投影片、分析儀表板、郵件與內容管理等範例；它不是模型權重，也不是只替聊天視窗加上幾個按鈕。

## 核心特色

### 1. Shared actions

同一個驗證、權限與實作供 Agent 和 UI 使用。

### 2. 多介面曝露

README 的 defineAction 範例可由 HTTP、MCP、A2A 和 CLI 存取。

### 3. 共享資料與 context awareness

同步工作結果，將相關 UI 狀態提供給 Agent。

### 4. 產品化組件

包含 agent chat、認證權限、skills、memory、automations 與 agent teams。

### 5. 資料庫後端

README 說明 production 使用 PostgreSQL、本機開發可用 PGlite。

## 怎麼用

### 安裝與起步

```bash
# 官方建立獨立聊天範例的指令（本次未執行）
npx --yes @agent-native/core@latest create my-agent --standalone --template chat
```

### 建議操作流程

1. 建立範例後依 getting-started 設定模型和資料庫，不要把供應商金鑰寫入前端。
2. 用 defineAction 與 schema 定義能力，在 run 中實作業務邏輯。
3. 讓 UI 與 Agent 呼叫同一 action，再測試權限拒絕及資料同步流程。

### 使用邊界

共享程式碼有助於一致性，但仍要測試不同呼叫介面的身分驗證和授權。README 標示 MIT，GitHub license API 未提供可驗證的授權檔，重用前應再次核對上游授權。

本次僅查證文件並收錄，沒有安裝或執行上游專案。

## 跟其他方案的關係

以下為依官方文件整理的定位比較，不代表效能測試。

| 方案 | 著重面向 | 與本專案的差異 |
|---|---|---|
| 瀏覽器操作 Agent | 從 DOM 或畫面操作 UI | Agent-Native 走 action 層，不依賴 Agent 點擊畫面。 |
| 獨立聊天機器人 | 聊天與業務 UI 分離 | 本框架強調共享資料、UI 狀態及工作結果。 |
| json-render | 以 schema 約束並渲染生成介面 | Agent-Native 主軸是應用能力共用，不是單純 UI 規格 renderer。 |

## 相關概念

← [[AI-Agent]] · [[frontend-design]]

## 來源

- [GitHub](https://github.com/BuilderIO/agent-native)
- [官方 README](https://github.com/BuilderIO/agent-native/blob/main/README.md)
- 原始快照：`raw/2026-09-21-BuilderIO-agent-native.md`
- Metadata 快照：`raw/2026-09-21-BuilderIO-agent-native-metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/BuilderIO/agent-native |
| Stars | 5,215（2026-09-21 快照） |
| License | MIT（README 聲明；未取得 LICENSE 檔） |
| Language | TypeScript |
| 收錄日期 | 2026-09-21 |
