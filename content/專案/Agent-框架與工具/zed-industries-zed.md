---
title: Zed
slug: zed-industries-zed
created: 2026-11-07
updated: 2026-11-07
stars: 93629
language: zh-TW
topics: ["Coding-Agent-CLI", "MCP", "AI-Agent"]
---

# Zed

> ⭐93.6k · 以 Rust 打造的多人協作編輯器，整合原生 Agent、ACP 外部 Agent 與終端工作流程。

## 快速導航

- [[Coding-Agent-CLI]] — 相關技術與工作流程。
- [[MCP]] — 相關技術與工作流程。
- [[AI-Agent]] — 相關技術與工作流程。

## 是什麼

Zed 是 Atom 與 Tree-sitter 創作者團隊打造的高效能多人程式碼編輯器。README 提供 macOS、Linux、Windows 安裝入口，並明確表示尚無 Web 版本。

AI 官方文件區分三種路徑：Zed Agent、透過 ACP 連接的外部 Agent，以及直接執行 CLI/TUI 的 Terminal Threads。編輯器介面、模型存取和代理執行環境並不是同一層，設定時需要分清楚。

## 核心特色

### 1. 原生 Agent

可使用內建工具、profiles、skills、instructions 與 MCP servers。

### 2. 外部 Agent

透過 ACP 整合，通常由代理自行管理驗證、模型、工具與設定。

### 3. 多執行緒

Threads Sidebar 組織跨專案與 worktree 的平行工作。

### 4. 多種 AI 互動

Agent Panel、Inline Assistant、Edit Prediction 與 Git 提交訊息生成。

## 怎麼用

### 安裝

此為官方 macOS Homebrew 安裝方式；其他平台請依官方安裝文件，不要混用套件管理指令。

```bash
brew install --cask zed
```

### 起步與驗證

開啟專案後選擇原生 Agent 或 External Agents；後者可由 ACP Registry 安裝，再從新 thread 選單啟動。

### 使用邊界

Zed 的 provider key 不保證同時設定外部 Agent；確認其登入、計費、資料處理與工具權限，並逐次審查程式碼變更。

> 本頁指令為官方文件整理的操作示例，收錄時未在本機安裝或執行此專案。

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|---|---|---|
| Zed | 以 Rust 打造的多人協作編輯器，整合原生 Agent、ACP 外部 Agent 與終端工作流程。 | 本頁收錄專案 |
| 獨立 Coding Agent CLI | 在終端直接操作專案，由 CLI 管理自己的執行環境 | Zed 提供編輯器與多 thread 介面；外部 Agent 並不因此共用原生 Agent 的全部設定 |

此比較為依專案定位整理的編輯分析，不是效能測試或採用率排名。

## 相關概念

← [[Coding-Agent-CLI]] · [[MCP]] · [[AI-Agent]]

## 來源

- [GitHub](https://github.com/zed-industries/zed)
- [官方文件](https://zed.dev/docs/ai/overview)
- README 快照：`raw/2026-11-07-zed-industries-zed.md`
- Metadata 快照：`raw/2026-11-07-zed-industries-zed-metadata.json`
- [外部 Agent 與設定邊界](https://zed.dev/docs/ai/external-agents)
- [官方安裝文件](https://zed.dev/docs/installation)

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/zed-industries/zed |
| Stars | 93,629（2026-11-07 快照） |
| License | GPL-3.0-or-later；部分元件 Apache-2.0（依 README） |
| Language | Rust |
| 收錄日期 | 2026-11-07 |
