---



title: n8n-MCP
slug: czlonkowski-n8n-mcp
date: 2026-05-16

stars: '⭐21031'


updated: TODO
language: zh-TW
topics: []
---

# n8n-MCP

> MCP server that gives AI assistants comprehensive access to n8n's 1,650 workflow automation nodes — enabling Claude, Cursor, Windsurf and other AI tools to build and validate n8n workflows with deep structural knowledge.

## 快速導航

- [[MCP]] — Model Context Protocol 核心概念
- [[AI-Agent]] — AI Agent 生態系
- [[Coding-Agent-CLI]] — AI 程式開發工具
- [[Prompt-Engineering]] — 提示工程

## 是什麼

n8n-MCP 是一個 Model Context Protocol 伺服器，作為 n8n 工作流自動化平台與 AI 模型之間的橋樑。它讓 Claude Desktop、Claude Code、Cursor、Windsurf 等 AI 工具能夠理解並操作 n8n 的節點系統，大幅降低 AI 在建構工作流時的出錯率。核心價值：1,650 個節點（820 核心 + 830 社群）、99% 屬性覆蓋率、87% 官方文件覆蓋率、2,352 個工作流模板。

## 核心特色

### 全面節點知識庫

涵蓋 n8n 全部 1,650 個節點，包含 99% 屬性覆蓋率與 63.6% 操作覆蓋率。AI 可以查詢每個節點的完整屬性 schema、可用操作和文件。

### 模板優先工作流

內建 2,352 個工作流模板，AI 在建構工作流時會優先搜尋現有模板，而非從零開始。

### 多層驗證機制

`validate_node(mode='minimal')` → `validate_node(mode='full')` → `validate_workflow` 三層驗證流程，確保 AI 生成的節點配置和工作流結構正確無誤。

### 多 IDE 支援

原生支援 Claude Code、VS Code (GitHub Copilot)、Cursor、Windsurf、Codex、Antigravity 等 AI 開發環境。

### AI 工具偵測

自動偵測 265 個具備 AI 能力的工具變體，讓 AI 助手能精確找到適合的 AI 節點來建構 agent 工作流。

## 怎麼用

**雲端版（最快速）：**

直接到 [dashboard.n8n-mcp.com](https://dashboard.n8n-mcp.com) 註冊，取得 API key 後連接 MCP client 即可。免費方案每日 100 次 tool call。

**自架版（npx）：**

```bash
npx n8n-mcp
```

**自架版（Docker）：**

```bash
docker run -p 3000:3000 ghcr.io/czlonkowski/n8n-mcp
```

**Claude Desktop 設定：**

```json
{
  "mcpServers": {
    "n8n-mcp": {
      "command": "npx",
      "args": ["n8n-mcp"]
    }
  }
}
```

## 跟其他方案的關係

n8n-MCP 是 [[MCP]] 生態系中專注於工作流自動化的工具。跟 [[Coding-Agent-CLI]] 的關係：它讓 AI coding agent 能夠理解 n8n 的節點系統，直接在建構工作流時獲得精確的節點知識，而不是靠猜測。

跟其他 MCP server 相比，n8n-MCP 的差異在於覆蓋廣度：1,650 個節點、99% 屬性覆蓋率、2,352 個模板，讓 AI 幾乎不需要猜測節點參數。配套的 n8n-skills 進一步教導 AI 如何建構生產級工作流。

## 相關概念

← [[MCP]] · [[AI-Agent]] · [[Coding-Agent-CLI]] · [[Prompt-Engineering]]

## 來源

- [原始資料](../raw/2026-05-16-czlonkowski-n8n-mcp.md)
- GitHub: https://github.com/czlonkowski/n8n-mcp

---

| 項目 | 內容 |
|------|------|
| GitHub | [czlonkowski/n8n-mcp](https://github.com/czlonkowski/n8n-mcp) |
| Stars | ⭐21,031 |
| 語言 | TypeScript |
| 建立日期 | 2025-06-07 |
| 收錄日期 | 2026-05-16 |
| 授權 | MIT |