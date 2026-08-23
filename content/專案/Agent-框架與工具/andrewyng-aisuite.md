---
title: aisuite + OpenCoworker
slug: andrewyng-aisuite
created: 2024-06-30
updated: 2026-06-14
stars: 14114
language: Python
topics: [LLM, Multi-Provider, Agent Harness, 桌面代理, BYOK]
---

# aisuite + OpenCoworker

> ⭐14114 · Andrew Ng 出品的輕量 Python LLM 統一介面，加上 OpenCoworker 桌面 AI 代理。

## 快速導航

[[LLM|LLM]] · [[Coding-Agent-CLI|Coding Agent CLI]] · [[MCP|MCP]] · [[litellm|LiteLLM]]

## 是什麼

aisuite 是 Andrew Ng（吳恩達）推出的輕量 Python 函式庫，提供兩層架構：底層是統一的 Chat Completions API，讓開發者用一行程式碼切換 OpenAI、Anthropic、Google、Mistral、Ollama 等 LLM 提供商；上層是 Agents API，提供工具（Tools）、工具包（Toolkits）和 MCP 整合，讓開發者能建構跨模型的多輪 Agent 應用。

aisuite 的設計哲學是「簡單至上」。底層 Chat Completions API 完全相容 OpenAI 介面風格，模型名稱使用 `provider:model-name` 格式（如 `openai:gpt-4o`、`anthropic:claude-sonnet-4-20250514`），一行設定檔就能切換提供商。上層 Agents API 讓你用原生 Python 函數作為工具，執行多輪對話迴圈，並內建檔案、Git、Shell 等工具包。

最新加入的 OpenCoworker 是建構在 aisuite 之上的桌面 AI 代理。它不僅能聊天，還能做深度研究、代替你操作電腦完成任務。可以讀檔案（需授權）、收發訊息（Slack、Email 等）、產出 PDF 報告等真實交付物，還支援排程自動化（如每日新聞摘要）。資料留在本機，使用自己的 API Key 或本地 Ollama。

## 核心特色

- **統一 Chat Completions API**：一個介面存取 OpenAI、Anthropic、Google、Mistral、Hugging Face、AWS Bedrock、Cohere、Ollama、OpenRouter 等多家 LLM 提供商，切換只需改一個字串
- **Agents API + Toolkits**：用原生 Python 函數作為工具，內建檔案系統、Git、Shell 等工具包，支援 MCP 伺服器整合和 Tool Policies 權限管理
- **OpenCoworker 桌面代理**：macOS / Windows 桌面 App，能做研究、操作檔案、收發訊息、生成報告，支援排程自動化
- **輕量設計**：`pip install aisuite` 即可開始，不需要龐大的依賴樹
- **BYOK + 本地模型**：帶自己的 API Key 或用 Ollama 跑本地模型，資料不出機器
- **多輪對話 + 工具呼叫**：Agent 可在多輪對話中呼叫工具、追蹤狀態、協調子任務

## 怎麼用

```bash
# 安裝基礎套件
pip install aisuite

# 或安裝特定提供商 SDK
pip install 'aisuite[anthropic]'
pip install 'aisuite[all]'

# 安裝 OpenCoworker 桌面 App
# macOS (Apple Silicon)
# https://github.com/andrewyng/aisuite/releases/latest/download/OpenCoworker-macos-arm64.dmg

# Windows
# https://github.com/andrewyng/aisuite/releases/latest/download/OpenCoworker-windows-setup.exe
```

基本使用：

```python
import aisuite as ai

client = ai.Client()
response = client.chat.completions.create(
    model="anthropic:claude-sonnet-4-20250514",
    messages=[{"role": "user", "content": "Hello!"}]
)
print(response.choices[0].message.content)
```

## 跟其他方案的關係

| 特色 | aisuite | [[litellm|LiteLLM]] | [[langgenius-dify|Dify]] | [[open-webui-open-webui|Open WebUI]] |
|------|---------|--------|------|----------|
| 定位 | 輕量 SDK | Proxy / Router | 全功能平台 | 全功能平台 |
| 多提供商 | ✅ 10+ | ✅ 100+ | ✅ | ✅ |
| Agent API | ✅ | ❌ | ✅ | 部分 |
| 桌面 App | ✅ OpenCoworker | ❌ | ❌ | ✅ Web |
| MCP | ✅ | ❌ | ✅ | ✅ |
| 開源 | ✅ MIT | ✅ MIT | ✅ | ✅ |
| 作者 | Andrew Ng | 社群 | Dify | 社群 |

## 相關概念

← [[LLM]] · [[Coding-Agent-CLI]]

## 來源

- GitHub: [andrewyng/aisuite](https://github.com/andrewyng/aisuite)
- 原始資料: `raw/2026-06-14/andrewyng-aisuite.json`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/andrewyng/aisuite |
| Stars | ⭐14114|
| License | MIT |
| 收錄日期 | 2024-06-30 |
