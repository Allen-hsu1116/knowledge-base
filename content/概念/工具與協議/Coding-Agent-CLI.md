# Coding Agent CLI

> Coding Agent CLI 是以終端機為主要介面的 AI 程式開發助手，提供提示、工具、代理、MCP、斜線指令和串流輸出等完整工作流程。從單一 chatbot 走向多模型、多工具、多 agent 的整合開發環境。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（Coding Agent CLI 是 Agent 在開發領域的實作）
- 🔌 **MCP** → [[MCP]]（Agent 透過 MCP 連接工具）
- 🛠️ **AI Skills** → [[AI-Skills]]（Skills 定義 Agent 在特定情境下的行為）
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]（System prompt 和 SKILL.md 是 CLI 的基礎）

## 什麼是 Coding Agent CLI

Coding Agent CLI 讓開發者在終端機中直接使用 AI 完成程式開發任務。不同於 IDE 內嵌的 AI（如 GitHub Copilot），CLI 模式更貼近開發者的日常工作流 — 命令列、腳本、自動化。

### 核心能力

| 能力 | 說明 |
|------|------|
| **多模型切換** | 同一個 CLI 在 OpenAI、Gemini、Ollama 之間切換 |
| **Agent Routing** | 不同任務路由到不同模型（Explore 用快模型，Plan 用強模型） |
| **MCP 整合** | 透過 MCP 連接外部工具、API、資料源 |
| **Skills 系統** | 結構化操作手冊定義 Agent 的行為 |
| **Streaming Output** | 即時串流回應，不需等待完成 |
| **斜線指令** | `/review`、`/test`、`/deploy` 等快捷指令 |

## 主要 Coding Agent CLI 對比

| 工具 | 開源 | 多模型 | MCP | Skills | Agent Routing | 本地模型 |
|------|------|--------|-----|--------|---------------|----------|
| **Claude Code** | ❌ | ❌ | ✅ | ✅ | ❌ | ❌ |
| **Codex CLI** | ✅ | ❌ | ✅ | ❌ | ❌ | ❌ |
| **Gemini CLI** | ✅ | ❌ | ✅ | ❌ | ❌ | ❌ |
| **OpenClaude** | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| **Cursor** | ❌ | ❌ | ✅ | ❌ | ❌ | ❌ |
| **Kiro** | ❌ | ❌ | ✅ | ❌ | ❌ | ❌ |

OpenClaude（[[Gitlawb-openclaude]]）是目前唯一同時支援**多模型 + MCP + Skills + Agent Routing + 本地模型**的開源方案。

## 為什麼重要

- **降低入門門檻**：一個指令就能開始 AI 輔助開發
- **本地模型支援**：隱私敏感的開發可以用 Ollama 本地跑
- **成本優化**：Agent routing 讓簡單任務用便宜模型，複雜任務用強模型
- **開放生態**：MCP + Skills 讓工具和知識可以自由組合

## Provider Profile 模式

現代 Coding Agent CLI 支援 Provider Profile — 儲存多組 API 設定，一鍵切換：

```bash
# 設定 provider
/provider

# 切換到 DeepSeek（便宜、快）
/provider use deepseek-flash

# 切換到 GPT-4o（強、貴）
/provider use gpt-4o

# 切換到 Ollama（本地、免費）
/provider use ollama
```

## 相關專案

- [[Gitlawb-openclaude]] — 開源多模型 Coding Agent CLI，支援 200+ 模型
- [[affaan-m-everything-claude-code]] — Agent harness 效能優化系統
- [[HKUDS-nanobot]] — 超輕量 Agent，多頻道支援
- [[sickn33-antigravity-awesome-skills]] — 1,443+ Skills 可安裝到任何 CLI
- [[open-design]] — 16 個 CLI agent 自動偵測 + 31 個設計 Skills 的開源設計工具

## 相關概念

← [[CLAUDE-md]] · [[AI-Agent]] · [[MCP]] · [[AI-Skills]] · [[Prompt-Engineering]] · [[Token-Optimization]] · [[walkinglabs-learn-harness-engineering]] · [[Donchitos-Claude-Code-Game-Studios]]

## 來源
- 相關 GitHub/文章資料

---

_此頁由 daily-llm-trending 自動維護_