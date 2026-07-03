---
title: Coding Agent CLI
slug: Coding-Agent-CLI
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

## 工具基礎設施

Coding Agent CLI 的能力不只來自 LLM，還來自底層工具基礎設施：**搜尋工具**（ripgrep 等快速程式碼搜尋）、**導航工具**（go-to-definition、find-references、符號跳轉）、**程式碼理解工具**（AST 解析、依賴圖、呼叫關係分析）。這些工具構成 Agent 的「感知器官」——沒有它們，Agent 就像盲人摸象，只能靠 LLM 推測程式碼結構。工具品質直接決定 Agent 的程式碼理解深度和修改精準度。

## Spec-Driven Development

Spec-Driven Development（規格驅動開發）是一種結構化開發工作流：**Propose**（提出規格變更）→ **Explore**（探索影響範圍）→ **Apply**（實作變更）→ **Archive**（歸檔規格）。[[Fission-AI-OpenSpec]] 和 [[github-spec-kit]] 等工具將此流程自動化，讓 AI Agent 能以規格檔為中心進行開發，而非直接修改程式碼。這為 Coding Agent CLI 提供了從「隨意改碼」到「規格先行」的工作流基礎。

## Copilot 生態系

GitHub Copilot 已從程式碼補全工具發展為完整生態系：**Agent**（自主執行任務的 AI 助手）、**Skill**（結構化操作技能）、**Hook**（事件觸發的自動化鉤子）、**Workflow**（多步驟工作流）、**Plugin**（第三方擴充套件）。這套生態系與 CLI 模式的 Coding Agent 互補——Copilot 偏 IDE 內嵌，CLI Agent 偏終端機自動化，兩者共同覆蓋開發者的全工作流。

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

## 來源

- Claude Code、OpenCode、OpenHands 等專案頁面
- Agent Routing 和 Provider Profile 相關技術文件