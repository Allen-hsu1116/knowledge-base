---
title: MCP
slug: MCP
created: 2026-05-07
updated: 2026-05-07
language: zh-TW
---

# MCP

> MCP（Model Context Protocol）是 Anthropic 提出的開放協議，讓 LLM 能透過統一介面連接外部工具和資料來源。已成為 AI agent 生態系的標準化方向。

## 核心內容

MCP 是一個 JSON-RPC 協議，定義了 LLM 和外部工具/資料來源之間的通訊標準。就像 USB 之於硬體裝置——任何工具只要實作 MCP 介面，任何 LLM 都能使用它。在 MCP 出現之前，每個工具整合都需要客製化：ChatGPT 有 Plugins、Claude 有 Tools、Cursor 有 Extensions，每個 AI 工具都有自己的整合方式。MCP 統一了這些介面。

MCP 定義了三種能力模型：Tools（LLM 可呼叫的函數，如搜尋、執行程式碼、讀寫檔案）、Resources（LLM 可讀取的資料，如檔案內容、資料庫查詢結果）、Prompts（預定義的提示範本）。這三種能力涵蓋了 Agent 與外部世界互動的所有方式。

MCP 採用沙盒化安全設計——Server 端控制存取權限，Client 端控制工具呼叫，雙重驗證確保安全。Apache 2.0 開源授權，提供 TypeScript SDK 和 Python SDK 官方實作。Claude Code、Cursor、Gemini CLI、Codex CLI 等主流 Agent 工具都已原生支援 MCP，生態系正在快速成長。

## 關鍵要素

- **統一標準**：一個 JSON-RPC 協議連接所有工具和資料源，工具開發者只需實作一次即可被所有支援 MCP 的 LLM 使用
- **三種能力模型**：Tools（可呼叫的函數）、Resources（可讀取的資料）、Prompts（預定義的提示範本）
- **廣泛採用**：Claude Code、Cursor、Gemini CLI、Codex CLI 等主流工具已原生支援
- **安全性設計**：沙盒化設計，Server 端控制存取權限，Client 端控制工具呼叫
- **開源可擴展**：Apache 2.0 授權，TypeScript SDK 和 Python SDK 官方實作

## 各框架的做法

- **Claude Code** → Anthropic 官方 Coding Agent CLI，MCP 原生支援
  👉 詳見 [[anthropics-claude-code|Claude Code]]
- **Goose** → 通用 AI Agent，MCP + ACP，Rust 實現
  👉 詳見 [[aaif-goose-goose|Goose]]
- **OpenCode** → Coding Agent CLI，MCP + 子 Agent + 工作樹平行
  👉 詳見 [[anomalyco-opencode|OpenCode]]
- **Browser Use** → 瀏覽器 Agent，Computer-Use + MCP
  👉 詳見 [[browser-use-browser-use|Browser Use]]
- **n8n MCP** → 工作流自動化 + MCP 整合
  👉 詳見 [[czlonkowski-n8n-mcp|n8n MCP]]
- **Awesome MCP Servers** → 30+ 分類的 MCP Server 策展列表
  👉 詳見 [[punkpeye-awesome-mcp-servers|Awesome MCP Servers]]
- **Kimi CLI** → Moonshot AI 終端 Agent，`kimi mcp` 子命令管理 MCP Server
  👉 詳見 [[MoonshotAI-kimi-cli|Kimi CLI]]
- **wigolo** → 本地優先 MCP 網頁情報層，10 工具免 API key
  👉 詳見 [[KnockOutEZ-wigolo|wigolo]]

## 相關概念

- [[AI-Agent]] — Agent 透過 MCP 使用工具
- [[AI-Skills]] — Skills 定義「做什麼」，MCP 定義「怎麼連」
- [[Context-Database]] — Context DB 可透過 MCP 介面提供記憶服務
- [[Knowledge-Graph]] — 知識圖譜可透過 MCP 介面提供查詢服務
- [[sandbox]] — MCP 的沙盒化設計是安全邊界的一部分
- [[harness-engineering]] — MCP 是 Harness 的工具連接標準

## 來源
- MCP 官方規範與相關原始資料
- 知識庫內 MCP 相關專案頁面