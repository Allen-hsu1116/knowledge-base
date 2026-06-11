---
title: Context7
source: https://github.com/upstash/context7
date: 2026-05-09
---

# Context7

> LLM 專用的即時文件查詢平台，從源頭拉取最新的版本特定文件和程式碼範例，直接注入 prompt，解決 LLM 依賴過時資訊的問題。⭐54.8k

## 快速導航

- 🔌 **MCP** → [[MCP]]（Context7 提供 MCP Server 讓 Agent 原生呼叫）
- 🤖 **AI Agent** → [[AI-Agent]]（Agent 可透過 Context7 取得即時文件）
- 📄 **文件解析** → [[document-parsing]]（Context7 解決的是文件時效性問題）

## 是什麼

Context7 是 Upstash 開發的 LLM 專用即時文件查詢平台。它解決了 LLM 依賴過時訓練資料的根本問題——從源頭拉取最新的、版本特定的文件和程式碼範例，直接注入 prompt。

LLM 常見問題：基於一年前訓練資料的程式碼範例、幻覺出不存在的 API、對舊版套件給出通用答案。Context7 從源頭拉取最新文件，直接放入 prompt。

## 核心特色

- **兩種模式**：CLI + Skills 模式（不需 MCP）和 MCP 模式（Agent 原生呼叫）
- **30+ MCP 客戶端**：支援 Cursor, Claude Code, OpenCode, VS Code, Windsurf 等
- **版本特定文件**：不只是泛泛的 API 文件，而是特定版本的精確文件
- **即時更新**：從源頭拉取，不受訓練資料截止日期限制

## 怎麼用

```bash
# 安裝
npx ctx7 setup

# 在 prompt 中提及「use context7」
# Create a Next.js middleware that checks for a valid JWT. use context7
```

MCP 設定：server URL `https://mcp.context7.com/mcp`，API key 透過 `CONTEXT7_API_KEY` header。

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[MCP]] | 協議 | Context7 是 MCP 的實作之一 |
| [[openclaw\|OpenClaw]] | Agent 平台 | OpenClaw 可透過 Context7 MCP 取得即時文件 |
| [[qmd\|QMD]] | 本地搜尋引擎 | QMD 搜尋本地知識庫，Context7 搜尋線上文件 |

## 相關概念

← [[MCP]] · [[AI-Agent]] · [[document-parsing]]

## 來源

- GitHub: https://github.com/upstash/context7
- Stars: ⭐54,800
- License: MIT
- 收錄日期: 2026-05-09