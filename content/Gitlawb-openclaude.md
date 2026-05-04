# OpenClaude

> 開源 coding agent CLI，支援 OpenAI、Gemini、Ollama 等多種模型 provider，統一的終端機優先工作流程。

| 項目 | 資訊 |
|------|------|
| **GitHub** | [Gitlawb/openclaude](https://github.com/Gitlawb/openclaude) |
| **Stars** | ⭐25,668 |
| **Language** | TypeScript |
| **建立日期** | 2026-04-01 |
| **收錄日期** | 2026-05-04 |

## 簡介

OpenClaude 是一個開源的 coding agent CLI，讓你在同一個終端機介面中使用多種雲端 API 和本地模型後端。支援 OpenAI-compatible APIs、Gemini、GitHub Models、Codex OAuth、Ollama、Atomic Chat 等多種 provider，保留完整的 coding-agent 工作流程：bash、檔案工具、grep、glob、agents、tasks、MCP 和 web 工具。

## 主要特色

- **多 Provider 支援**：OpenAI、Gemini、GitHub Models、Codex OAuth、Ollama、Atomic Chat 等
- **Provider Profile**：`/provider` 指令引導設定，儲存為可切換的配置檔
- **Agent Routing**：為不同類型任務路由到不同模型，實現成本優化
- **MCP 整合**：支援 Model Context Protocol 連接外部工具
- **VS Code Extension**：附帶 VS Code 擴充功能整合
- **本地模型支援**：Ollama 一鍵啟動，無需 API key

## 安裝

```bash
npm install -g @gitlawb/openclaude
openclaude
```

## 相關概念

- [[Coding-Agent-CLI|Coding Agent CLI]] — 終端機優先的 AI 程式開發助手概念
- [[AI Agent]] — AI Agent 的通用概念
- [[MCP]] — Model Context Protocol

---

_此頁由 daily-llm-trending 自動維護_