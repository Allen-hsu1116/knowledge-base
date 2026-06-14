---
title: 程式碼智慧
slug: code-intelligence
added: 2026-05-17
stars: —
updated: 2026-06-14
language: zh-TW
---

# 程式碼智慧

> 利用靜態分析、語意理解和知識圖譜等技術，讓工具和 AI 代理更深入地理解程式碼結構、符號關係和呼叫鏈。

## 快速導航

- ⚡ [[Coding-Agent-CLI]] · [[Knowledge-Graph]] · [[MCP]] · [[AI-Agent]]

## 是什麼

程式碼智慧（Code Intelligence）是利用靜態分析、語意理解和知識圖譜等技術，讓工具和 AI 代理更深入地理解程式碼結構、符號關係和呼叫鏈的能力。傳統的程式碼導航工具（grep、ctags、LSP）只能做表層的符號匹配和定義跳轉，而程式碼智慧透過預先建構的語意知識圖譜，讓一次查詢取代數十次檔案掃描。

當程式碼庫規模超過數十萬行時，AI coding agent 需要大量工具呼叫才能理解結構。程式碼智慧將這些理解預先計算並索引化，大幅減少 token 消耗和查詢次數。

## 核心特色

### 符號搜尋
在大型程式碼庫中快速定位函式、類別、變數的定義，支援模糊搜尋和語意匹配，超越傳統 grep 的字面匹配。

### 呼叫鏈追蹤
追蹤函式的呼叫者和被呼叫者，理解資料如何在程式碼庫中流動。一次查詢即可看到完整的呼叫圖，無需逐檔追蹤。

### 影響分析
評估修改某個符號對整個程式碼庫的影響範圍，自動計算哪些模組會被影響，幫助預防破壞性修改。

### 跨語言追蹤
在多語言專案中追蹤跨語言的呼叫鏈（如 Python ↔ Rust、TypeScript ↔ C++），透過統一的符號索引實現跨語言導航。

### Token 效率優化
將數十次檔案掃描壓縮為一次語意查詢，大幅減少 AI agent 的 token 消耗和回應時間。

## 怎麼用

### 獨立使用
透過 CLI 工具或 MCP Server 查詢程式碼庫的符號關係、呼叫鏈和影響分析結果。

### 整合 AI Agent
將程式碼智慧工具註冊為 MCP Server，讓 Claude Code、Cursor 等 AI coding agent 直接查詢程式碼知識圖譜，減少探索程式碼庫時的工具呼叫次數。

### CI/CD 整合
在持續整合流程中自動分析程式碼變更的影響範圍，提前警告潛在的破壞性修改。

## 跟其他方案的關係

| 方案 | 類型 | 語意理解 | 呼叫鏈 | 影響分析 | 跨語言 | AI 整合 |
|------|------|----------|--------|----------|--------|---------|
| **程式碼智慧工具** | 知識圖譜 | ✅ 深度語意 | ✅ 完整 | ✅ 自動 | ✅ | ✅ MCP |
| LSP (Language Server) | 符號服務 | ⚠️ 基本定義 | ⚠️ 單語言 | ❌ | ❌ | ❌ |
| grep/ctags | 文字搜尋 | ❌ | ❌ | ❌ | ❌ | ❌ |
| AST Explorer | 語法樹 | ⚠️ 結構 | ⚠️ 單語言 | ❌ | ❌ | ❌ |
| Sourcegraph | 程式碼搜尋 | ⚠️ 正則 | ✅ references | ⚠️ 基本 | ✅ | ❌ |

- 程式碼智慧是 [[Coding-Agent-CLI|Coding Agent CLI]] 在理解大型程式碼庫時的關鍵能力
- [[MCP]] 是程式碼智慧工具服務 AI agent 的標準協定
- [[Knowledge-Graph|知識圖譜]] 是程式碼智慧的底層資料結構

## 相關專案

- [[colbymchenry-codegraph|CodeGraph]] — Claude Code 的語意程式碼知識圖譜 MCP server，92% 更少工具呼叫
- [[KeygraphHQ-shannon|Shannon]] — 白箱 AI 滲透測試，使用 Code Property Graph 進行程式碼分析

← [[Coding-Agent-CLI]] · [[Knowledge-Graph]] · [[MCP]] · [[AI-Agent]]

## 來源

- wiki 彙總頁，整理自程式碼智慧相關專案頁
- [CodeGraph GitHub](https://github.com/colbymchenry/codegraph)