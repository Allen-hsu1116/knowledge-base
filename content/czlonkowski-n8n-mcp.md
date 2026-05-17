---
title: n8n-MCP
date: 2026-05-16
---

# n8n-MCP

> MCP server that gives AI assistants comprehensive access to n8n's 1,650 workflow automation nodes — enabling Claude, Cursor, Windsurf and other AI tools to build and validate n8n workflows with deep structural knowledge.

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [czlonkowski/n8n-mcp](https://github.com/czlonkowski/n8n-mcp) |
| Stars | ⭐20.9k |
| Language | TypeScript |
| 建立日期 | 2025-06-07 |
| 收錄日期 | 2026-05-16 |
| 授權 | MIT |

## 快速導航

- [[MCP]] — Model Context Protocol 核心概念
- [[AI-Agent]] — AI Agent 生態系
- [[Coding-Agent-CLI]] — AI 程式開發工具
- [[Prompt-Engineering]] — 提示工程

## 詳細簡介

n8n-MCP 是一個 Model Context Protocol 伺服器，作為 n8n 工作流自動化平台與 AI 模型之間的橋樑。它讓 Claude Desktop、Claude Code、Cursor、Windsurf 等 AI 工具能夠理解並操作 n8n 的節點系統，大幅降低 AI 在建構工作流時的出錯率。

這個專案的核心價值在於提供了極為完整的節點知識覆蓋：1,650 個 n8n 節點（820 個核心 + 830 個社群）、99% 的屬性覆蓋率、87% 的官方文件覆蓋率，以及 2,352 個工作流模板。AI 不再需要猜測節點參數，而是可以精確地查詢、驗證和建構工作流。

專案提供雲端託管的免費方案（每日 100 次 tool call）和自架方案（支援 npx、Docker、Railway），安裝和使用門檻極低。此外還有配套的 n8n-skills，能進一步教導 AI 如何建構生產級工作流。

## 核心特色

### 全面節點知識庫

涵蓋 n8n 全部 1,650 個節點（820 核心節點 + 830 社群節點），包含 99% 的屬性覆蓋率與 63.6% 的操作覆蓋率。AI 可以查詢每個節點的完整屬性 schema、可用操作和文件。

### 模板優先工作流

內建 2,352 個工作流模板（99.96% AI metadata 覆蓋），AI 在建構工作流時會優先搜尋現有模板，而非從零開始。支援按 metadata、任務類型、關鍵字、節點類型等多種方式篩選模板。

### 多層驗證機制

提供 `validate_node(mode='minimal')` → `validate_node(mode='full')` → `validate_workflow` 三層驗證流程，確保 AI 生成的節點配置和工作流結構正確無誤。強調「永不信任預設值」，要求 AI 顯式設定所有參數。

### 多 IDE 支援

原生支援 Claude Code、VS Code (GitHub Copilot)、Cursor、Windsurf、Codex、Antigravity 等 AI 開發環境，每個 IDE 都有專門的設定指南。

### AI 工具偵測

自動偵測 265 個具備 AI 能力的工具變體，並提供完整文件。這讓 AI 助手能精確找到適合的 AI 節點來建構 agent 工作流。

## 安裝方式

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
在 `claude_desktop_config.json` 中加入：
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

## 技術棧

- **Runtime**: Node.js / TypeScript
- **Protocol**: Model Context Protocol (MCP)
- **Package**: npm (n8n-mcp)
- **Container**: Docker (ghcr.io/czlonkowski/n8n-mcp)
- **Testing**: 5,418 tests passing
- **CI/CD**: GitHub Actions + Codecov

## 授權

MIT License

## 相關連結

- [GitHub](https://github.com/czlonkowski/n8n-mcp)
- [npm](https://www.npmjs.com/package/n8n-mcp)
- [Dashboard](https://dashboard.n8n-mcp.com)
- [n8n-skills](https://github.com/czlonkowski/n8n-skills)
- [Self-Hosting Guide](https://github.com/czlonkowski/n8n-mcp/blob/main/docs/SELF_HOSTING.md)