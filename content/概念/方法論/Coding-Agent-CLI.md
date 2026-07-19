---
title: Coding Agent CLI
slug: Coding-Agent-CLI
created: 2025-06-07
updated: 2025-06-07
language: zh-TW
---

# Coding Agent CLI

> 以終端機為主要介面的 AI 程式開發助手，從單一 chatbot 走向多模型、多工具、多 Agent 的整合開發環境。

## 核心內容

Coding Agent CLI 讓開發者在終端機中直接使用 AI 完成程式開發任務。不同於 IDE 內嵌的 AI（如 GitHub Copilot），CLI 模式更貼近開發者的日常工作流——命令列、腳本、自動化。開發者不需要切換到另一個應用，AI 就在已經習慣的終端機環境中運作。

現代 Coding Agent CLI 已經從簡單的程式碼生成工具，進化成整合多模型切換、Agent Routing、MCP 工具連接、Skills 系統、串流輸出和斜線指令的完整開發環境。同一個 CLI 可以在 OpenAI、Gemini、Anthropic、Ollama 之間切換，根據任務複雜度選擇最適合的模型。

CLI 模式的核心優勢在於可組合性和自動化。透過 Agent Routing，簡單任務（如程式碼探索）路由到快模型、複雜任務（如架構規劃）路由到強模型、精準任務（如程式碼修復）路由到精準模型，優化成本和品質。同時，CLI 可以被腳本呼叫、被 CI/CD 管線觸發，實現自動化的程式碼審查和測試生成。

## 關鍵要素

- **多模型切換** — 同一個 CLI 支援多個 LLM Provider，按任務複雜度選擇模型
- **Agent Routing** — Explore 用快模型、Plan 用強模型、Execute 用精準模型，優化成本
- **MCP 整合** — 透過 MCP 連接外部工具、API 和資料源，擴展 CLI 能力邊界
- **Skills 系統** — SKILL.md 格式定義結構化操作手冊，讓 Agent 按規範執行特定任務
- **串流輸出** — 即時串流回應，不需等待完成，提升開發體驗
- **斜線指令** — `/review`、`/test`、`/deploy` 等快捷指令，一鍵觸發常見操作

## 各框架的做法

- **Claude Code** → Anthropic 官方 CLI，Git 工作流深度整合，Skills 支援
  👉 詳見 [[anthropics-claude-code]]
- **OpenCode** → 開源 Coding Agent CLI，子 Agent + 工作樹平行執行
  👉 詳見 [[anomalyco-opencode]]
- **OpenHands** → Coding Agent 控制中心，ACP 協議 + 多後端 + 自動化工作流
  👉 詳見 [[OpenHands-OpenHands]]
- **cmux** → 終端機 AI Agent，支援多 session 和通知系統
  👉 詳見 [[manaflow-ai-cmux]]
- **Pi Agent Harness** → Coding Agent CLI + Agent Skills + Agent Runtime
  👉 詳見 [[earendil-works-pi]]
- **OpenClaude** → 開源多模型 CLI，支援 200+ 模型 + MCP + Skills + Agent Routing
  👉 詳見 [[Gitlawb-openclaude]]

## 相關概念

- [[AI-Agent]] — Coding Agent CLI 是 Agent 在開發領域的實作
- [[MCP]] — MCP 定義 CLI 如何連接外部工具
- [[AI-Skills]] — Skills 定義 CLI 在特定情境下的行為
- [[ogulcancelik-herdr|herdr]] — 終端機 Agent 多工器，管理多個 Coding Agent CLI
- [[AI-Skills]] — CLAUDE.md 是 Agent 行為規範的核心載體
- [[harness-engineering]] — CLI 的配置和規則是 Harness Engineering 的實作
- [[Coding-Agent-CLI]] — 工具包為 CLI 提供搜尋和導航能力
- [[openinterpreter-openinterpreter|Open Interpreter]] — 低成本模型 Coding Agent，多 Harness 模擬
- [[Dicklesworthstone-destructive_command_guard|dcg]] — AI Coding Agent 命令安全守衛
- [[MoonshotAI-kimi-cli|Kimi CLI]] — Moonshot AI 終端 AI Agent，Shell 模式 + ACP + MCP

## 來源

- Claude Code、OpenCode、OpenHands 等專案頁面
- Agent Routing 和 Provider Profile 相關技術文件