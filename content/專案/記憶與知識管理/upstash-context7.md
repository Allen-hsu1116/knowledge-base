---
source: https://github.com/upstash/context7
date: 2026-05-09
tags: [documentation, llm, mcp, context, upstash, code-editor]
---

# Context7 — LLM 專用的即時文件查詢平台

> Context7 解決 LLM 依賴過時或通用資訊的問題，從源頭拉取最新的版本特定文件和程式碼範例，直接注入 prompt。

**GitHub**: https://github.com/upstash/context7
**Stars**: ~54.8k | **License**: MIT

## 解決什麼問題

LLM 常見問題：
- ❌ 基於一年前訓練資料的程式碼範例
- ❌ 幻覺出不存在的 API
- ❌ 對舊版套件給出通用答案

Context7 從源頭拉取最新的、版本特定的文件和程式碼範例，直接放入 prompt。

## 兩種模式

| 模式 | 說明 |
|------|------|
| CLI + Skills | 安裝 skill，用 ctx7 CLI 指令拉取文件（不需 MCP） |
| MCP | 註冊 Context7 MCP server，Agent 原生呼叫文件工具 |

## 安裝

```bash
npx ctx7 setup
```

OAuth 認證、生成 API key、安裝對應 skill。可用 `--cursor`、`--claude`、`--opencode` 指定 Agent。

手動 MCP 設定：server URL `https://mcp.context7.com/mcp`，API key 透過 `CONTEXT7_API_KEY` header。

## MCP 工具

| 工具 | 說明 |
|------|------|
| `ctx7 library` | 按名稱搜尋 Context7 索引中的函式庫 |
| `ctx7 docs` | 用 library ID 取得文件 |
| `resolve-library-id` | 將一般名稱轉為 Context7 library ID |
| `query-docs` | 按相關性排序取得文件 |

## 使用範例

在 prompt 中提及「use context7」：

```
Create a Next.js middleware that checks for a valid JWT in cookies
and redirects unauthenticated users to `/login`. use context7
```

指定函式庫：
```
Implement basic authentication with Supabase. use library /supabase/supabase
```

## 支援 30+ MCP 客戶端

包括 Cursor, Claude Code, OpenCode, VS Code, Windsurf 等。

## 相關主題

- [[MCP|MCP 協議]]
- [[openclaw|OpenClaw]]

## 參考資料

- [GitHub - upstash/context7](https://github.com/upstash/context7)