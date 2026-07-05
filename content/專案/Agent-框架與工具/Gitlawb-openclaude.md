---
title: OpenClaude
slug: Gitlawb-openclaude
created: 2026-05-10
updated: 2026-05-10
stars: 25,668
language: zh-TW
topics: [Coding Agent CLI, AI Agent, MCP]
---

# OpenClaude

> ⭐25,668 · 開源 coding-agent CLI，支援 OpenAI、Gemini、DeepSeek、Ollama、Codex 等 200+ 模型。一個工具統一所有 terminal-first 工作流。

## 快速導航

- 🖥️ **Coding Agent CLI** → [[Coding-Agent-CLI]]
- 🤖 **AI Agent** → [[AI-Agent]]
- 🔌 **MCP** → [[MCP]]

## 是什麼

OpenClaude 是 Claude Code 的開源替代品，核心差異在於：不鎖定單一供應商，一個 CLI 跨所有模型。支援 OpenAI-compatible API、Gemini、GitHub Models、Codex OAuth、Codex、Ollama、Atomic Chat 等後端，保持統一的 terminal-first 工作流：prompts、tools、agents、MCP、slash commands、streaming output。

## 核心特色

- **多模型統一** — 一個 CLI 操作 OpenAI、Gemini、DeepSeek、Ollama 等 200+ 模型
- **Provider Profile** — `/provider` 儲存多組 API 設定，一鍵切換
- **Agent 路由** — 不同任務用不同模型（Explore 用快模型，Plan 用強模型）
- **MCP 支援** — 整合外部工具和資料源
- **VS Code 擴充** — 內建 VS Code 整合和主題支援
- **Streaming Output** — 即時串流回應

### Agent 路由範例

```json
{
  "agentModels": {
    "deepseek-v4-flash": {
      "base_url": "https://api.deepseek.com/v1",
      "api_key": "sk-your-key"
    },
    "gpt-4o": {
      "base_url": "https://api.openai.com/v1",
      "api_key": "sk-your-key"
    }
  },
  "agentRouting": {
    "Explore": "deepseek-v4-flash",
    "Plan": "gpt-4o",
    "default": "gpt-4o"
  }
}
```

## 怎麼用

```bash
# 安裝
npm install -g @gitlawb/openclaude

# 啟動
openclaude

# 設定 provider
/provider          # 引導式設定

# 最快 OpenAI 設定
export CLAUDE_CODE_USE_OPENAI=1
export OPENAI_API_KEY=sk-your-key-here
export OPENAI_MODEL=gpt-4o
openclaude

# 最快本地 Ollama 設定
export CLAUDE_CODE_USE_OPENAI=1
export OPENAI_BASE_URL=http://localhost:11434/v1
export OPENAI_MODEL=qwen2.5-coder:7b
openclaude
```

## 跟其他方案的關係

| 工具 | 供應商 | 付費模式 | 開源 |
|------|--------|----------|------|
| **Claude Code** | Anthropic | 訂閱制 | ❌ |
| **Cursor** | Cursor | 訂閱制 | ❌ |
| **Codex CLI** | OpenAI | API 計費 | ✅ |
| **Gemini CLI** | Google | 免費額度 | ✅ |
| **Kiro** | AWS | 訂閱制 | ❌ |
| **GitHub Copilot** | GitHub | 訂閱制 | ❌ |
| **OpenCode CLI** | 開源社群 | 免費 | ✅ |
| **Antigravity** | Antigravity | 訂閱制 | ❌ |
| **OpenClaude** | Gitlawb | 免費 | ✅ MIT |

OpenClaude 是 [[Coding-Agent-CLI]] 的開源實作，多模型路由是 [[AI-Agent]] 化的基礎，支援 [[MCP]] 工具整合。

## 相關概念

← [[Coding-Agent-CLI]] · [[AI-Agent]] · [[MCP]]

## 來源

- raw/Gitlawb-openclaude.md

---

- **GitHub**: https://github.com/Gitlawb/openclaude
- **Stars**: ⭐25,668
- **License**: MIT
- **收錄日期**: 2026-05-04

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/Gitlawb/openclaude |
| **Stars** | ⭐25,668 |
| **收錄日期** | 2026-05-10 |
