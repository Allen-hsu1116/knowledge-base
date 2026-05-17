# MCP

> MCP（Model Context Protocol）是 Anthropic 提出的開放協議，讓 LLM 能透過統一介面連接外部工具和資料來源。已成為 AI agent 生態系的標準化方向。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（MCP 是 Agent 使用工具的標準介面）
- 🛠️ **AI Skills** → [[AI-Skills]]（Skills 定義「做什麼」，MCP 定義「怎麼連」）
- 🕸️ **Knowledge Graph** → [[Knowledge-Graph]]（MCP 可以讓 Agent 查詢知識圖譜）
- 📚 **知識庫** → [[llm-knowledge-base]]（知識庫可透過 MCP 介面提供檢索服務）

## 什麼是 MCP

MCP 是一個 JSON-RPC 協議，定義了 LLM 和外部工具/資料源之間的通訊標準。就像 USB 之於硬體裝置 — 任何工具只要實作 MCP 介面，任何 LLM 都能使用它。

### 核心架構

```
┌──────────┐     JSON-RPC      ┌──────────┐
│  LLM     │ ◄──────────────► │ MCP Host │
│ (Client) │                   │ (Server) │
└──────────┘                   └──────────┘
                                    │
                    ┌───────────────┼───────────────┐
                    ▼               ▼               ▼
              ┌──────────┐   ┌──────────┐   ┌──────────┐
              │  Tools   │   │ Resources│   │ Prompts  │
              │ (可呼叫) │   │ (可讀取) │   │ (範本)   │
              └──────────┘   └──────────┘   └──────────┘
```

### 三大能力

| 能力 | 說明 | 範例 |
|------|------|------|
| **Tools** | LLM 可呼叫的函數 | 搜尋、執行程式碼、讀寫檔案 |
| **Resources** | LLM 可讀取的資料 | 檔案內容、資料庫查詢結果 |
| **Prompts** | 預定義的提示範本 | 「用這個格式回答」 |

## 為什麼重要

### 統一標準解決碎片化

在 MCP 出現之前，每個工具整合都需要客製化：
- ChatGPT 有 Plugins
- Claude 有 Tools
- Cursor 有 Extensions
- 每個 AI 工具都有自己的整合方式

MCP 統一了這些介面，讓工具開發者只需實作一次，就能被所有支援 MCP 的 LLM 使用。

### 實際應用場景

- **檔案系統**：MCP Server 讓 Agent 讀寫本地檔案
- **資料庫**：MCP Server 讓 Agent 查詢 PostgreSQL、SQLite
- **瀏覽器**：MCP Server 讓 Agent 操作網頁
- **搜尋**：MCP Server 讓 Agent 搜尋網路、文件庫
- **知識圖譜**（[[safishamsi-graphify]]）：MCP Server 讓 Agent 查詢知識圖譜

## 採用狀況

| 工具 | MCP 支援 |
|------|----------|
| Claude Code | ✅ 原生支援 |
| Cursor | ✅ 原生支援 |
| OpenClaw | ✅ 原生支援 |
| Gemini CLI | ✅ 支援 |
| Codex CLI | ✅ 支援 |
| OpenClaude | ✅ 支援 |

## 技術規格

- **協議**：JSON-RPC 2.0 over stdio/SSE
- **授權**：Apache 2.0（開源）
- **官方實作**：TypeScript SDK、Python SDK
- **規範版本**：2025-03-26

## 相關專案

- [[affaan-m-everything-claude-code]] — Agent harness，MCP 整合
- [[HKUDS-nanobot]] — 輕量 Agent，MCP server 支援
- [[googleworkspace-cli]] — Google Workspace MCP 整合
- [[mempalace]] — 記憶系統，MCP 介面
- [[safishamsi-graphify]] — 知識圖譜，MCP stdio server
- [[sickn33-antigravity-awesome-skills]] — 1,443+ Skills，多工具支援 MCP

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[Knowledge-Graph]] · [[llm-knowledge-base]]

---

_此頁由 daily-llm-trending 自動維護_