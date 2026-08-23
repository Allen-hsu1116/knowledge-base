---
title: OpenHands
slug: OpenHands-OpenHands
created: 2024-03-13
updated: 2026-06-17
stars: 77391
language: Python
topics: [agent, artificial-intelligence, claude-ai, developer-tools, llm, openai, coding-agent]
---

# OpenHands

> ⭐77391 · 自架開發者控制中心，讓 Coding Agent 成為永遠在線的工程團隊

## 快速導航

[[AI-Agent|AI Agent]] · [[Coding-Agent-CLI|Coding Agent]] · [[workflow-automation|Agent 工作流]]

## 是什麼

OpenHands（原名 OpenDevin）是一個開源的開發者控制中心，專門用來管理、排程和監控各種 Coding Agent。它讓你能在一個統一的介面中啟動對話、指派任務，並將日常工程工作自動化——從產生報告發佈到 Slack，到自動拆解 GitHub Issue 成子任務，都能透過 Agent Canvas 完成。

OpenHands 的核心是 Agent Canvas 和 Agent Server。Agent Canvas 是前端介面，可以連接多個後端（本機、Docker、VM、雲端），並在不同後端之間無縫切換。Agent Server 是 REST API，讓你在一台機器上運行多個 Agent。此外還有 Automation Server，支援排程觸發和 Webhook 觸發的自動化流程。

特別值得注意的是，OpenHands 不只運行自己的 Agent，還支援 Claude Code、Codex、Gemini 等任何符合 Agent-Client Protocol (ACP) 的第三方 Agent。這意味著你可以把不同的 Coding Agent 統一管理在一個平台上。

## 核心特色

- **多後端架構**：支援本機、Docker、VM、雲端等多種運行環境，從同一個前端切換不同後端
- **Agent-Client Protocol (ACP)**：相容 OpenHands、Claude Code、Codex、Gemini 等各種 Agent
- **自動化工作流**：設定排程或 Webhook 觸發的自動化任務，整合 Slack、GitHub、Linear 等服務
- **自架優先**：完全掌控資料和部署環境，支援 Mac Mini 等專用機器或雲端 VM
- **Bring Your Own Model**：可搭配任何 LLM 使用，不限於特定模型供應商
- **企業就緒**：提供 OpenHands Enterprise 版本，支援 SSO、RBAC 等企業功能

## 怎麼用

```bash
# 方式一：npm 全域安裝（需要 Node.js 22+ 和 uv）
npm install -g @openhands/agent-canvas
agent-canvas

# 方式二：Docker（推薦正式環境）
export PROJECTS_PATH="$HOME/projects"
mkdir -p "$PROJECTS_PATH" "$HOME/.openhands"
docker run -it --rm \
  -p 8000:8000 \
  -v "$HOME/.openhands:/home/openhands/.openhands" \
  -v "${PROJECTS_PATH}:/projects" \
  ghcr.io/openhands/agent-canvas:1.0.0-rc.11

# 方式三：從原始碼建置
git clone https://github.com/OpenHands/agent-canvas.git
cd agent-canvas
npm install
npm run dev

# 開啟瀏覽器
# http://localhost:8000
```

## 跟其他方案的關係

| 方案 | 類型 | 自架 | 多 Agent | 自動化 | 適用場景 |
|------|------|------|---------|--------|----------|
| [[OpenHands-OpenHands|OpenHands]] | Agent 控制中心 | ✅ MIT | ✅ ACP 協議 | ✅ 排程+Webhook | 開發團隊 Agent 管理 |
| [[langgenius-dify|Dify]] | LLM App 平台 | ✅ 開源 | ✅ 內建 | ✅ 工作流 | LLM 應用開發 |
| [[n8n-io-n8n|n8n]] | 工作流自動化 | ✅ 公平碼 | ⚠️ 透過 AI 節點 | ✅ 400+ 整合 | 通用自動化 |
| Cursor/Copilot | IDE 內 Agent | ❌ 僅雲端 | ❌ 單一 | ❌ | 個人編碼輔助 |
| [[FlowiseAI-Flowise|Flowise]] | 視覺化 Agent 建構 | ✅ | ⚠️ 有限 | ❌ | 快速原型開發 |

## 相關概念

← [[AI-Agent]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub：專案原始碼](https://github.com/OpenHands/agent-canvas)
- GitHub：https://github.com/OpenHands/OpenHands
- 官方文件：https://docs.openhands.dev
- ACP 文件：https://docs.openhands.dev/openhands/usage/agent-canvas/acp-agents
- Raw 檔案：`knowledge-base/raw/2026-06-17-OpenHands-OpenHands.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/OpenHands/agent-canvas |
| Stars | ⭐77391|
| License | MIT (enterprise 目錄另授權) |
| 收錄日期 | 2024-03-13 |
