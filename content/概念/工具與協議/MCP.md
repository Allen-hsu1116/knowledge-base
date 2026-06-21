---
title: MCP
slug: MCP
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# MCP

> ⭐— · MCP（Model Context Protocol）是 Anthropic 提出的開放協議，讓 LLM 能透過統一介面連接外部工具和資料來源。已成為 AI agent 生態系的標準化方向。

## 快速導航

- ⚡ [[AI-Agent]] · [[AI-Skills]] · [[Knowledge-Graph]] · [[llm-knowledge-base]]
- 🤖 **AI Agent** → [[AI-Agent]]（MCP 是 Agent 使用工具的標準介面）
- 🛠️ **AI Skills** → [[AI-Skills]]（Skills 定義「做什麼」，MCP 定義「怎麼連」）
- 🕸️ **Knowledge Graph** → [[Knowledge-Graph]]（MCP 可以讓 Agent 查詢知識圖譜）
- 📚 **知識庫** → [[llm-knowledge-base]]（知識庫可透過 MCP 介面提供檢索服務）

## 是什麼

MCP 是一個 JSON-RPC 協議，定義了 LLM 和外部工具/資料來源之間的通訊標準。就像 USB 之於硬體裝置——任何工具只要實作 MCP 介面，任何 LLM 都能使用它。

在 MCP 出現之前，每個工具整合都需要客製化：ChatGPT 有 Plugins、Claude 有 Tools、Cursor 有 Extensions，每個 AI 工具都有自己的整合方式。MCP 統一了這些介面，讓工具開發者只需實作一次，就能被所有支援 MCP 的 LLM 使用。

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

## 核心特色

- **統一標準**：一個 JSON-RPC 協議連接所有工具和資料源，就像 USB 之於硬體裝置。工具開發者只需實作一次 MCP 介面，就能被所有支援 MCP 的 LLM 使用
- **三種能力模型**：Tools（可呼叫的函數）、Resources（可讀取的資料）、Prompts（預定義的提示範本），三種能力模型涵蓋了 Agent 與外部世界互動的所有方式
- **廣泛採用**：Claude Code、Cursor、OpenClaw、Gemini CLI、Codex CLI、OpenClaude 等主流 Agent 工具都已原生支援 MCP，生態系正在快速成長
- **安全性設計**：MCP 採用沙盒化設計，工具只能存取被授權的資源。Server 端控制存取權限，Client 端控制工具呼叫，雙重驗證確保安全
- **開源且可擴展**：Apache 2.0 授權，TypeScript SDK 和 Python SDK 官方實作，任何人都能開發 MCP Server

## 怎麼用

### 安裝 MCP Server

```json
// claude_desktop_config.json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/path/to/dir"]
    },
    "postgresql": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-postgres", "postgresql://..."]
    }
  }
}
```

### 開發自訂 MCP Server

```python
# Python MCP Server 範例
from mcp.server import Server

server = Server("my-tool")

@server.tool("search")
async def search(query: str) -> str:
    """搜尋知識庫"""
    results = await search_knowledge_base(query)
    return results

@server.resource("config://app")
async def get_config() -> str:
    """取得應用設定"""
    return json.dumps(app_config)
```

### 實際應用場景

- **檔案系統**：MCP Server 讓 Agent 讀寫本地檔案
- **資料庫**：MCP Server 讓 Agent 查詢 PostgreSQL、SQLite
- **瀏覽器**：MCP Server 讓 Agent 操作網頁
- **搜尋**：MCP Server 讓 Agent 搜尋網路、文件庫
- **知識圖譜**（[[safishamsi-graphify]]）：MCP Server 讓 Agent 查詢知識圖譜
- **記憶系統**（[[mempalace]]）：MCP Server 管理Agent 的長期記憶

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[AI-Agent]] | 消費者 | Agent 透過 MCP 使用工具 |
| [[AI-Skills]] | 互補 | Skills 定義「做什麼」，MCP 定義「怎麼連」 |
| [[Context-Database]] | 基礎設施 | Context DB 可透過 MCP 介面提供記憶服務 |
| [[Knowledge-Graph]] | 工具 | 知識圖譜可透過 MCP 介面提供查詢服務 |
| [[harness-engineering]] | 架構 | MCP 是 Harness 的工具連接標準 |
| [[prompt-security]] | 安全 | MCP 的沙盒化設計是安全邊界的一部分 |
| [[Coding-Agent-CLI]] | 實作 | Coding Agent CLI 透過 MCP 連接工具 |
| [[LLM]] | 使用者 | LLM 透過 MCP 介面存取外部能力 |

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

## 來源

- [MCP 原始資料](../raw/2026-05-09-mcp.md)
- [Model Context Protocol 官方規範](https://modelcontextprotocol.io/)
- [Anthropic MCP 公告](https://www.anthropic.com/news/model-context-protocol)
- [MCP Wikipedia](https://en.wikipedia.org/wiki/Model_Context_Protocol)
- [MCP GitHub](https://github.com/modelcontextprotocol)
