---
title: 程式碼智慧
slug: code-intelligence
created: 2026-05-07
updated: 2026-05-07
language: zh-TW
---

# 程式碼智慧

> 利用靜態分析、語意理解和知識圖譜等技術，讓工具和 AI 代理更深入地理解程式碼結構、符號關係和呼叫鏈。

## 核心內容

程式碼智慧（Code Intelligence）是利用靜態分析、語意理解和知識圖譜等技術，讓工具和 AI 代理更深入地理解程式碼結構、符號關係和呼叫鏈的能力。傳統的程式碼導航工具（grep、ctags、LSP）只能做表層的符號匹配和定義跳轉，而程式碼智慧透過預先建構的語意知識圖譜，讓一次查詢取代數十次檔案掃描。

當程式碼庫規模超過數十萬行時，AI coding agent 需要大量工具呼叫才能理解結構。程式碼智慧將這些理解預先計算並索引化，大幅減少 token 消耗和查詢次數。以 CodeGraph 為例，透過語意知識圖譜可減少 92% 的工具呼叫。

程式碼智慧的核心能力包括符號搜尋（模糊搜尋和語意匹配，超越傳統 grep 的字面匹配）、呼叫鏈追蹤（一次查詢看到完整的呼叫圖）、影響分析（評估修改某個符號對整個程式碼庫的影響範圍）和跨語言追蹤（在多語言專案中追蹤跨語言的呼叫鏈）。這些能力透過 MCP Server 整合到 Claude Code、Cursor 等 AI coding agent 中。

## 關鍵要素

- **符號搜尋**：在大型程式碼庫中快速定位函式、類別、變數的定義，支援模糊搜尋和語意匹配
- **呼叫鏈追蹤**：追蹤函式的呼叫者和被呼叫者，一次查詢即可看到完整的呼叫圖
- **影響分析**：評估修改某個符號對整個程式碼庫的影響範圍，自動計算受影響模組
- **跨語言追蹤**：在多語言專案中追蹤跨語言的呼叫鏈，透過統一的符號索引實現
- **Token 效率優化**：將數十次檔案掃描壓縮為一次語意查詢，大幅減少 token 消耗
- **MCP 整合**：透過 MCP 協議讓 AI coding agent 直接查詢程式碼知識圖譜

## 各框架的做法

- **CodeGraph** → Claude Code 的語意程式碼知識圖譜 MCP server，92% 更少工具呼叫
  👉 詳見 [[colbymchenry-codegraph|CodeGraph]]
- **Codebase Memory MCP** → 程式碼記憶 MCP，支援 158 語言，基於 tree-sitter 建構知識圖譜
  👉 詳見 [[DeusData-codebase-memory-mcp|Codebase Memory MCP]]
- **Understand Anything** → 程式碼理解工具，Knowledge Graph + Tree-sitter + LLM，支援 17+ 平台
  👉 詳見 [[Understand-Anything|Understand Anything]]
- **Shannon** → 白箱 AI 滲透測試，使用 Code Property Graph 進行程式碼分析
  👉 詳見 [[KeygraphHQ-shannon|Shannon]]
- **code-review-graph** → 程式碼審查知識圖譜，Token Optimization + MCP
  👉 詳見 [[tirth8205-code-review-graph|code-review-graph]]

## 相關概念

- [[Coding-Agent-CLI|Coding Agent CLI]] — 程式碼智慧是 Coding Agent 理解大型程式碼庫的關鍵能力
- [[Knowledge-Graph|知識圖譜]] — 知識圖譜是程式碼智慧的底層資料結構
- [[MCP]] — MCP 是程式碼智慧工具服務 AI agent 的標準協定
- [[Token-Optimization|Token Optimization]] — 程式碼智慧大幅減少 AI agent 的 token 消耗

## 來源

- CodeGraph、Codebase Memory MCP、Understand Anything 等程式碼智慧專案文件
- 知識庫內程式碼分析與知識圖譜相關專案頁面