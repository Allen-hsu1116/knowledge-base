---
title: 程式碼智慧
slug: code-intelligence
added: 2026-05-17
---

# 程式碼智慧

程式碼智慧（Code Intelligence）是指利用靜態分析、語意理解和知識圖譜等技術，讓工具和 AI 代理更深入地理解程式碼結構、符號關係和呼叫鏈，從而提升開發效率和程式碼探索能力。

## 核心能力

- **符號搜尋**：在大型程式碼庫中快速定位函式、類別、變數的定義
- **呼叫鏈追蹤**：追蹤函式的呼叫者和被呼叫者，理解資料流
- **影響分析**：評估修改某個符號對整個程式碼庫的影響範圍
- **跨語言追蹤**：在多語言專案中追蹤跨語言的呼叫鏈（如 Python ↔ Rust）

## 與 AI Coding Agent 的關係

AI coding agent（如 Claude Code）在探索陌生程式碼庫時，通常需要大量 grep、glob、Read 工具呼叫來理解結構。程式碼智慧工具透過預先建構的知識圖譜，讓 agent 用一次查詢取代數十次檔案掃描，大幅減少 token 消耗和等待時間。

## 相關專案

- [[colbymchenry-codegraph|CodeGraph]] — Claude Code 的語意程式碼知識圖譜 MCP server，92% 更少工具呼叫

## 相關概念

- [[Coding-Agent-CLI|Coding Agent CLI]] — AI 程式設計代理工具
- [[MCP]] — Model Context Protocol，讓 LLM 連接外部工具
- [[Knowledge-Graph|知識圖譜]] — 以圖結構組織資訊