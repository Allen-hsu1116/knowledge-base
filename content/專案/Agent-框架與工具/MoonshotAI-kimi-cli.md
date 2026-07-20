---
title: Kimi CLI
slug: MoonshotAI-kimi-cli
created: 2026-07-19
updated: 2026-07-19
stars: 9490
language: Python
topics:
  - cli
  - ai-agent
  - coding-agent
  - mcp
  - acp
  - terminal
  - moonshot
---

# Kimi CLI

> ⭐9.5k · Moonshot AI 出品的終端 AI 編碼助手，支援 MCP、ACP、Shell 模式與 VS Code 整合

## 快速導航

- 🤖 **Coding Agent CLI** → [[Coding-Agent-CLI]]
- 🔌 **MCP** → [[MCP]]
- 🧠 **AI Agent** → [[AI-Agent]]

## 是什麼

Kimi CLI 是 Moonshot AI（月之暗面）開發的終端 AI Agent，定位為「你的下一個 CLI Agent」。它可以讀寫程式碼、執行 shell 指令、搜尋與抓取網頁，並在執行過程中自主規劃和調整行動。專案使用 Python 開發，以 Apache-2.0 授權開源。

它的設計理念是把 AI Agent 的能力直接嵌入終端機工作流。不同於純對話型助手，Kimi CLI 讓你可以在同一個介面裡切換「Agent 模式」和「Shell 模式」——按 `Ctrl-X` 就能直接跑 shell 指令，不需要離開 Kimi CLI。這使得它既是一個 coding agent，也是一個增強版 shell。

Kimi CLI 正在演進為 **Kimi Code CLI**（新一代終端 AI Agent），安裝新版會自動遷移你的設定和 session。它支援 ACP（Agent Client Protocol），可以和 Zed、JetBrains 等 IDE 整合；也支援 MCP（Model Context Protocol），可以連接各種 MCP Server 擴充工具能力。

## 核心特色

- **Shell 命令模式** — 按 `Ctrl-X` 在 Agent 模式和 Shell 模式間切換，直接在 Kimi CLI 內跑 shell 指令，不需離開介面
- **ACP 整合** — 原生支援 Agent Client Protocol，可作為 ACP agent server 和 Zed、JetBrains 等任何 ACP 相容 IDE 搭配使用，命令 `kimi acp` 即可啟動
- **MCP 支援** — 透過 `kimi mcp` 子命令群組管理 MCP Server，支援 streamable HTTP（含 OAuth）和 stdio 兩種傳輸方式，也可用 `--mcp-config-file` 做 ad-hoc 配置
- **VS Code 擴充** — 提供 Kimi Code VS Code Extension，可在 VS Code 兎直接使用
- **Zsh 整合** — 透過 zsh-kimi-cli 插件和 Zsh 整合，按 `Ctrl-X` 切換到 agent 模式，為 shell 體驗注入 AI Agent 能力
- **自主規劃** — 能在執行過程中自主規劃和調整行動，讀寫程式碼、執行指令、搜尋網頁一氣呵成

## 怎麼用

### 安裝

```bash
pip install kimi-cli
```

### 啟動

```bash
kimi
```

首次使用需在終端執行 `/login` 完成登入。

### MCP 管理

```bash
# 新增 streamable HTTP server
kimi mcp add --transport http context7 https://mcp.context7.com/mcp --header "CONTEXT7_API_KEY: your-key"

# 新增 stdio server
kimi mcp add --transport stdio chrome-devtools -- npx chrome-devtools-mcp@latest

# 列出已新增的 MCP server
kimi mcp list

# 移除 MCP server
kimi mcp remove chrome-devtools
```

### ACP 整合（Zed / JetBrains）

```json
{
  "agent_servers": {
    "Kimi CLI": {
      "type": "custom",
      "command": "kimi",
      "args": ["acp"],
      "env": {}
    }
  }
}
```

### 開發

```bash
git clone https://github.com/MoonshotAI/kimi-cli.git
cd kimi-cli
make prepare
uv run kimi
make format
make check
make test
make build
```

## 跟其他方案的關係

| 方案 | Stars | 語言 | MCP | ACP | Shell 模式 | VS Code |
|------|-------|------|-----|-----|-----------|---------|
| **Kimi CLI** | ⭐9.5k | Python | ✅ | ✅ | ✅ (Ctrl-X) | ✅ |
| [[anthropics-claude-code\|Claude Code]] | ⭐128k | Python | ✅ | ✅ | — | ✅ |
| [[anomalyco-opencode\|OpenCode]] | ⭐174k | TypeScript | ✅ | ✅ | — | ✅ |
| [[nesquena-hermes-webui\|Hermes WebUI]] | ⭐10k | Python | ✅ | — | — | — |

Kimi CLI 的差異化在於 **Shell 模式**（Ctrl-X 切換）和 **Zsh 整合**——它不只是 coding agent，還直接成為 shell 的一部分。相比之下，Claude Code 和 OpenCode 更偏純 Agent 工作流。Kimi CLI 背後是 Moonshot AI 的模型能力（Kimi 系列），在中文場景有天然優勢。


## 相關概念
← [[Coding-Agent-CLI]] · [[MCP]] · [[AI-Agent]]

## 來源

- GitHub: https://github.com/MoonshotAI/kimi-cli
- 文件: https://moonshotai.github.io/kimi-cli/en/
- 原始 README: `raw/2026-07-19-MoonshotAI-kimi-cli.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [MoonshotAI/kimi-cli](https://github.com/MoonshotAI/kimi-cli) |
| Stars | ⭐9,490 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-07-19 |