---
title: OpenWork
slug: different-ai-openwork
created: 2026-07-30
updated: 2026-07-30
stars: 17911
language: TypeScript
topics:
  - ai-agent
  - mcp
  - coding-agent
  - desktop-app
  - workflow-sharing
---

# OpenWork

> ⭐17.9k · 開源版 Claude Cowork，用一個 MCP 把 Skills、Plugins 和連接的服務跨 Agent、跨團隊、跨機器共享

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]
- 🔌 **MCP** → [[MCP]]
- 🛠 **Coding Agent CLI** → [[Coding-Agent-CLI]]
- 🏗 **自架** → [[self-hosted]]

## 是什麼

OpenWork 是一個免費開源的桌面應用，定位為 Claude Cowork 和 Codex 的開源替代品，支援 macOS、Windows 和 Linux 三大平台。它的核心理念是讓你只加一個 OpenWork MCP 到 Codex、Claude Code、Cursor 或其他相容的 Agent，就能在所有工具、隊友和機器之間重用同一套 Skills、MCPs 和已連接的服務。建立一次，分享給同事或朋友，或留給自己用。

桌面應用在你需要專屬工作空間時可以打開，但不是必須的——你可以直接從現有的 Agent 使用 OpenWork。對於較大的組織，管理介面讓你發布能力、管理存取權限，並設定共享或每個使用者的連接。

OpenWork Den 是團隊或組織的管理控制台，可以大規模部署推論資源、控制哪些成員和團隊可以使用各個模型提供者，還能透過 Marketplace 發布 Skills 和 Plugins 並指派給組織、團隊或特定人員。

## 核心特色

- **一個 MCP 串接所有 Agent** — 加入一個 OpenWork MCP 到 Codex、Claude Code、Cursor 或任何相容 Agent，就能重用同一套 Skills、Plugins、MCP 連接和 Google Workspace / Microsoft 365 能力
- **兩個核心工具** — `search_capabilities` 搜尋可用能力，`execute_capability` 執行能力，簡單且可組合的 Agent 介面
- **OpenWork Den 組織管理** — 大規模部署推論資源、邀請隊友、建立團隊、設定桌面政策、限制本地模型存取、控制 App 版本
- **Marketplace 發布機制** — Skills 和 Plugins 透過 Marketplace 發布，可指派給組織、團隊或個人
- **Anthropic 相容插件匯入** — 匯入 Anthropic 相容插件，使其支援的 Skills 和遠端 MCPs 透過 OpenWork MCP 可用
- **跨平台桌面應用** — macOS、Windows、Linux 原生支援，不需要時也可純 MCP 模式從現有 Agent 使用

## 怎麼用

### 安裝桌面應用

從 [openworklabs.com/download](https://openworklabs.com/download) 下載對應平台的安裝包。

### 從 AI Agent 安裝

複製以下 prompt 貼到 Claude Code、Cursor、Codex、ChatGPT 或任何能執行指令的 Agent：

```text
Install OpenWork on my computer, set up my first workspace, and open it ready to use. Follow the steps in https://openworklabs.com/start.md?v=hero
```

### 加入 MCP 到各 Agent

```bash
# Codex
codex mcp add openwork --url https://api.openworklabs.com/mcp/agent

# Claude Code
claude mcp add --transport http openwork https://api.openworklabs.com/mcp/agent
```

OpenCode 設定（`opencode.json`）：

```json
{
  "mcp": {
    "openwork": {
      "type": "remote",
      "enabled": true,
      "url": "https://api.openworklabs.com/mcp/agent",
      "oauth": {}
    }
  }
}
```

任何 MCP Client 可直接使用：`https://api.openworklabs.com/mcp/agent`

## 跟其他方案的關係

| 方案 | Stars | 類型 | 跨 Agent 共享 | 組織管理 | MCP 原生 |
|------|-------|------|--------------|----------|----------|
| **OpenWork** | ⭐17.9k | 桌面 App + MCP | ✅ | ✅ Den | ✅ |
| [[anthropics-claude-code\|Claude Code]] | ⭐127.9k | Coding Agent CLI | ❌ | ❌ | ✅ |
| [[anomalyco-opencode\|OpenCode]] | ⭐174k | Coding Agent CLI | ❌ | ❌ | ✅ |
| Claude Cowork (閉源) | — | SaaS | ✅ 有限 | ✅ | ❌ |

OpenWork 的核心差異化在於：用一個 MCP 就能在所有 Agent 之間共享能力，桌面 App 是可選的但不是必須的，組織管理（Den）支援大規模部署和權限控制。

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[Coding-Agent-CLI]] · [[self-hosted]] · [[AI-Skills]]

## 來源

- GitHub: https://github.com/different-ai/openwork
- 官網: https://openworklabs.com
- 原始 README: `raw/2026-07-30-openwork.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [different-ai/openwork](https://github.com/different-ai/openwork) |
| Stars | ⭐17,911 |
| License | NOASSERTION |
| Language | TypeScript |
| 收錄日期 | 2026-07-30 |