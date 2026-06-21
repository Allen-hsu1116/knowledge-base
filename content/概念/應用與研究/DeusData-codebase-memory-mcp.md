---
title: Codebase Memory MCP
slug: DeusData-codebase-memory-mcp
created: 2026-06-20
updated: 2026-06-20
stars: 8238
language: C
topics: [claude-code, code-analysis, code-intelligence, knowledge-graph, mcp, mcp-server, model-context-protocol, sqlite, tree-sitter, codex, cursor, windsurf, aider, gemini-cli, graph-visualization, opencode, ast, cypher]
---

# Codebase Memory MCP

> ⭐8.2k · 最快的 AI 編碼代理程式碼智慧引擎——將整個程式碼庫索引為知識圖譜，查詢低於 1ms。

## 快速導航
[[colbymchenry-codegraph|CodeGraph]] · [[Understand-Anything|Understand Anything]] · [[tirth8205-code-review-graph|Code Review Graph]] · [[MCP|MCP]]

## 是什麼

Codebase Memory MCP 是由 DeusData 開發的高效能程式碼智慧 MCP Server。它使用 tree-sitter AST 分析將整個程式碼庫索引為持久化知識圖譜——包含函數、類別、呼叫鏈、HTTP 路由和跨服務連結。它能在毫秒內完成平均倉庫的索引，Linux 核心中型專案（28M 行程式碼、75K 檔案）也只需 3 分鐘。

這個工具的核心優勢在於效率。研究論文（arXiv:2603.27277）顯示，在 31 個真實倉庫的評估中，它達到 83% 的回答品質，同時使用比檔案逐一探索少 10 倍的 token 和少 2.1 倍的工具呼叫。5 個結構化查詢僅需約 3,400 tokens，而傳統的逐一檔案搜尋需要約 412,000 tokens——節省 120 倍。

它以單一靜態二進位檔案分發，零依賴，支援 macOS、Linux 和 Windows。安裝指令自動偵測 11 種編碼代理（Claude Code、Codex CLI、Gemini CLI、Zed、OpenCode 等），自動配置 MCP 條目、指令檔案和 pre-tool hooks。提供 14 個 MCP 工具，涵蓋搜尋、追蹤、架構分析、影響分析、Cypher 查詢、死碼檢測等。

## 核心特色

- **極致索引速度**：Linux 核心中型專案 3 分鐘完成，RAM-first 管線（LZ4 壓縮 + 記憶體 SQLite + Aho-Corasick）
- **158 語言支援**：tree-sitter 語法編譯進二進位檔，零安裝需求
- **120x 更少 token**：5 個結構化查詢 ~3,400 tokens vs ~412,000 tokens（逐一檔案搜尋）
- **11 Agent 自動配置**：Claude Code、Codex CLI、Gemini CLI、Zed、OpenCode、Antigravity、Aider、KiloCode、VS Code、OpenClaw、Kiro
- **14 MCP 工具**：搜尋、追蹤、架構、影響分析、Cypher 查詢、死碼檢測、跨服務 HTTP 連結、ADR 管理
- **Hybrid LSP 語意類型解析**：Python、TypeScript、PHP、C#、Go、C/C++、Java、Kotlin、Rust 共 9 語言
- **內建 3D 圖譜視覺化**：localhost:9749 互動式 UI
- **團隊共享圖譜工件**：.codebase-memory/graph.db.zst 壓縮檔，隊友跳過重新索引

## 怎麼用

```bash
# 一鍵安裝（macOS / Linux）
curl -fsSL https://raw.githubusercontent.com/DeusData/codebase-memory-mcp/main/install.sh | bash

# 含圖譜視覺化 UI
curl -fsSL https://raw.githubusercontent.com/DeusData/codebase-memory-mcp/main/install.sh | bash -s -- --ui

# Windows (PowerShell)
Invoke-WebRequest -Uri https://raw.githubusercontent.com/DeusData/codebase-memory-mcp/main/install.ps1 -OutFile install.ps1
.\install.ps1

# 安裝後重啟你的 coding agent，然後說「Index this project」
# 啟用自動索引
codebase-memory-mcp config set auto_index true

# 啟動圖譜 UI
codebase-memory-mcp --ui=true --port=9749

# 更新
codebase-memory-mcp update
```

## 跟其他方案的關係

| 方案 | 核心定位 | 語言數 | Token 節省 | Agent 數 | 分發方式 |
|------|----------|--------|-----------|----------|----------|
| [[DeusData-codebase-memory-mcp|Codebase Memory]] | 程式碼知識圖譜 MCP | 158 | 120x | 11 | 單一二進位 |
| [[colbymchenry-codegraph|CodeGraph]] | 程式碼圖譜 | — | — | — | MCP |
| [[Understand-Anything|Understand Anything]] | 程式碼理解 | — | — | — | — |
| [[tirth8205-code-review-graph|Code Review Graph]] | Code Review 圖譜 | — | — | — | MCP |
| [[safishamsi-graphify|Graphify]] | Knowledge Graph | — | — | — | MCP |

與 [[colbymchenry-codegraph|CodeGraph]] 和 [[safishamsi-graphify|Graphify]] 互補：前者提供更廣泛的程式碼圖譜功能，Codebase Memory MCP 則以 C 語言原生實作達到極致的索引速度和 token 效率。與 [[MCP|MCP]] 生態的關係在於它是 MCP Server，為 coding agent 提供程式碼智慧工具。

## 相關概念

← [[colbymchenry-codegraph|CodeGraph]] · [[Understand-Anything|Understand Anything]] · [[tirth8205-code-review-graph|Code Review Graph]] · [[MCP|MCP]]

## 來源

- GitHub：https://github.com/DeusData/codebase-memory-mcp
- 論文：https://arxiv.org/abs/2603.27277
- Raw 檔案：`knowledge-base/raw/2026-06-20-DeusData-codebase-memory-mcp.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [DeusData/codebase-memory-mcp](https://github.com/DeusData/codebase-memory-mcp) |
| Stars | ⭐8,238 |
| License | MIT |
| Language | C |
| 收錄日期 | 2026-06-20 |