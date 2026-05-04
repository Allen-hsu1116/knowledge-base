# OpenClaude

> 開源 coding-agent CLI，支援 OpenAI、Gemini、DeepSeek、Ollama、Codex 等 200+ 模型。一個工具統一所有 terminal-first 工作流。

| 項目 | 資訊 |
|------|------|
| **GitHub** | [Gitlawb/openclaude](https://github.com/Gitlawb/openclaude) |
| **Stars** | ⭐25,668 |
| **Language** | Python 3.11+ / Next.js 16 |
| **版本** | v0.8.0 |
| **建立日期** | 2026-04-01 |
| **收錄日期** | 2026-05-04 |

## 快速導航

- 🖥️ **Coding Agent CLI** → [[Coding-Agent-CLI]]（OpenClaude 是 terminal-first coding agent）
- 🤖 **AI Agent** → [[AI-Agent]]（多模型路由是 agent 化的基礎）
- 🔌 **MCP** → [[MCP]]（OpenClaude 支援 MCP 工具整合）

## 簡介

OpenClaude 是 Claude Code 的開源替代品，核心差異在於：不鎖定單一供應商，一個 CLI 跨所有模型。支援 OpenAI-compatible API、Gemini、GitHub Models、Codex OAuth、Codex、Ollama、Atomic Chat 等後端，保持統一的 terminal-first 工作流：prompts、tools、agents、MCP、slash commands、streaming output。

## 競品定位

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

## 安裝與使用

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

## Agent 路由

OpenClaude 支援不同 agent 路由到不同模型：

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

## 核心特色

- **多模型統一**：一個 CLI 操作 OpenAI、Gemini、DeepSeek、Ollama 等 200+ 模型
- **Provider Profile**：`/provider` 儲存多組 API 設定，一鍵切換
- **Agent 路由**：不同任務用不同模型（Explore 用快模型，Plan 用強模型）
- **MCP 支援**：整合外部工具和資料源
- **VS Code 擴充**：內建 VS Code 整合和主題支援
- **Streaming Output**：即時串流回應

## 技術棧

- **後端**：Python 3.11+
- **前端**：Next.js 16
- **授權**：MIT License

## 相關連結

- [GitHub](https://github.com/Gitlawb/openclaude)
- [GitLawb Mirror](https://gitlawb.com/node/repos/z6MkqDnb/openclaude)