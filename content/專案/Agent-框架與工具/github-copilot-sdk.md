---
title: GitHub Copilot SDK
slug: github-copilot-sdk
created: 2026-06-06
updated: 2026-06-06
stars: 9244
language: Java
topics: [AI Agent, Agent SDK, MCP, BYOK]
---

# GitHub Copilot SDK

> ⭐9244 · GitHub 官方多平台 Agent SDK——把 Copilot Agent 嵌入你的應用，6 種語言全覆蓋

## 快速導航

[[AI-Agent|AI Agent]] · [[anthropics-claude-code|Claude Code]] · [[github-copilot-sdk|Copilot SDK]]

## 是什麼

GitHub Copilot SDK 是 GitHub 官方推出的多平台 Agent 開發套件，讓開發者能在自己的應用和服務中嵌入 Copilot Agent 的完整能力——包括規劃、工具呼叫、檔案編輯、多輪對話等。SDK 暴露的是 Copilot CLI 背後同一個生產級 Agent 引擎，只是用程式化的方式呼叫。

架構非常簡潔：你的應用 → SDK Client → JSON-RPC → Copilot CLI（server 模式）。SDK 自動管理 CLI 生命週期，也可以連接到外部 CLI server。這意味著你不需要自己建構 Agent 編排邏輯——定義 Agent 行為，Copilot 處理剩下的。

支援 6 種語言：TypeScript/Node.js、Python、Go、.NET、Rust、Java，另有社群維護的 Clojure 和 C++ SDK。每種 SDK 都遵循同一套 API 設計，學一次全語言通用。更重要的是支援 BYOK（Bring Your Own Key），可以用 OpenAI、Azure AI Foundry、Anthropic 等多家 LLM 提供者的 API Key，不一定要 GitHub Copilot 訂閱。

## 核心特色

- **6 種語言全覆蓋**：TypeScript、Python、Go、.NET、Rust、Java 官方 SDK，外加 Clojure 和 C++ 社群 SDK，同一套 API 設計學一次全語言通用
- **JSON-RPC 架構**：所有 SDK 透過 JSON-RPC 與 Copilot CLI server 溝通，SDK 自動管理 CLI 生命週期，也可連接外部 server——適合生產環境的水平擴展
- **BYOK 多模型支援**：不只綁 GitHub 模型，可以用自己的 OpenAI、Anthropic、Azure AI Foundry API Key，把 Agent 指向任何相容模型，彈性極高
- **自定義 Agent / Skill / Tool**：可以定義自己的 Agent 行為、技能和工具，擴展 Copilot 的預設工具集，打造特定領域的 AI 助手
- **MCP 整合**：支援 Model Context Protocol，讓 Copilot Agent 連接外部工具和資料來源，與 [[MCP|MCP]] 生態系無縫接軌

## 怎麼用

```bash
# TypeScript / Node.js
npm install @github/copilot-sdk

# Python
pip install github-copilot-sdk

# Go
go get github.com/github/copilot-sdk/go

# .NET
dotnet add package GitHub.Copilot.SDK

# Rust
cargo add github-copilot-sdk

# Java (Maven)
# com.github:copilot-sdk-java
```

```python
# Python：基本 Agent 呼叫
from github_copilot_sdk import CopilotClient

client = CopilotClient()
response = client.chat("Explain this codebase")
print(response.text)

# 自定義 Agent + Tool
from github_copilot_sdk import CopilotClient, Agent, Tool

my_tool = Tool(
    name="search_docs",
    description="Search internal documentation",
    handler=search_docs_fn
)

agent = Agent(tools=[my_tool])
client = CopilotClient(agent=agent)
```

```typescript
// TypeScript：基本使用
import { CopilotClient } from '@github/copilot-sdk';

const client = new CopilotClient();
const response = await client.chat('Refactor this function');
console.log(response.text);
```

詳細文件請參考 [Getting Started Guide](https://github.com/github/copilot-sdk/blob/main/docs/getting-started.md) 和 [Cookbook](https://github.com/github/awesome-copilot/blob/main/cookbook/copilot-sdk)。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 語言支援 | BYOK | 自定義 Agent | MCP |
|------|-------|------|---------|------|-------------|-----|
| **GitHub Copilot SDK** | ⭐9.2k | Agent SDK | TS/Python/Go/.NET/Rust/Java | ✅ | ✅ | ✅ |
| [[CopilotKit-CopilotKit|CopilotKit]] | ⭐32.7k | Agent 前端框架 | React/Angular/Vue/RN | ✅ | ✅ | ✅ AG-UI |
| [[anthropics-claude-code|Claude Code]] | ⭐128k | Coding Agent CLI | CLI | ❌ | ✅ | ✅ |
| [[LangChain]] | ⭐136.8k | Agent 編排框架 | Python/JS | ✅ | ✅ | ❌ |
| [[czlonkowski-n8n-mcp|n8n MCP]] | ⭐20.9k | 工作流自動化 | GUI + API | ✅ | ✅ | ✅ |

GitHub Copilot SDK 的差異化在於它是唯一一個把 Copilot CLI 的生產級 Agent 引擎用 6 種語言程式化暴露的 SDK——其他 Agent 框架要嘛只做前端 UI（CopilotKit）、要嘛只做編排邏輯（LangChain），而 Copilot SDK 是把「已經在幾十萬開發者手中驗證過的 Agent runtime」直接給你呼叫。

## 相關概念

← [[AI-Agent]] · [[anthropics-claude-code]] · [[MCP]]

## 來源

- GitHub: <https://github.com/github/copilot-sdk>
- 原始 README: `raw/2026-06-06-github-copilot-sdk.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/github/copilot-sdk |
| Stars | ⭐9244|
| License | MIT |
| 收錄日期 | 2026-06-06 |
