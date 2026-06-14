---
title: Dify
slug: langgenius-dify
created: 2026-06-12
updated: 2026-06-12
stars: 144883
language: TypeScript
---

# Dify

> ⭐144k · 開源 LLM 應用開發平台，視覺化 AI workflow + RAG + Agent + 模型管理一站搞定

快速導航：[[AI-Agent]] · [[rag]] · [[workflow-automation]] · [[LangChain]]

## 是什麼

Dify 是一個開源的 LLM 應用開發平台，把 AI workflow、RAG pipeline、Agent 能力、模型管理和可觀測性整合在同一個直覺式介面裡。開發者可以用視覺化拖拽的方式組合 AI 工作流，從原型到正式上線的週期大幅縮短。

不同於 LangChain 等純程式碼框架，Dify 用低代碼/無代碼的方式降低了 AI 應用的開發門檻。它同時支援雲端版和自架版，自架版透過 Docker Compose 一行指令就能啟動，對中小團隊非常友善。

平台內建了數百個 LLM 供應商的整合（GPT、Mistral、Llama3 等等），以及 50+ 種 Agent 工具（Google Search、DALL·E、Stable Diffusion、WolframAlpha），讓開發者不需要從零串接就能快速搭建生產級 AI 應用。

## 核心特色

- **視覺化 Workflow 編排**：拖拽式畫布建構和測試 AI 工作流，支援分支、迴圈、條件判斷等複雜邏輯
- **全面模型支援**：無縫整合數百家商用/開源 LLM，任何 OpenAI API 相容模型都能直接接入
- **RAG Pipeline**：從文件匯入到檢索的完整 RAG 能力，內建 PDF、PPT 等常見格式的文字抽取
- **Agent 能力**：支援 Function Calling 和 ReAct 兩種 Agent 模式，50+ 內建工具可擴充
- **LLMOps 可觀測性**：整合 Langfuse、Opik、Arize Phoenix 等監測平台，持續改進提示詞和模型
- **Backend-as-a-Service**：所有功能都有對應 API，輕鬆嵌入既有業務邏輯

## 怎麼用

**Docker Compose 自架（推薦）：**

```bash
# 克隆專案
git clone https://github.com/langgenius/dify.git
cd dify/docker

# 複製環境變數
cp .env.example .env

# 啟動服務
docker compose up -d
```

啟動後在瀏覽器開啟 `http://localhost/install` 即可進入初始化設定。

最低系統需求：CPU ≥ 2 Core、RAM ≥ 4 GiB。

**雲端版（零設定）：**

直接到 [cloud.dify.ai](https://cloud.dify.ai) 註冊使用，Sandbox 方案含 200 次 GPT-4 免費呼叫。

**Python SDK 呼叫：**

```python
from dify_client import DifyClient

client = DifyClient(api_key="your-api-key")
result = client.create_chat_message(inputs={}, query="Hello", user="user-123")
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 低代碼 | RAG | Agent 工具 |
|------|-------|------|--------|-----|-----------|
| **Dify** | ⭐144k | 一站式平台 | ✅ 視覺化 | ✅ 內建 | 50+ 內建 |
| [[LangChain\|LangChain]] | ⭐136k | 程式碼框架 | ❌ 純程式碼 | ✅ | 豐富生態 |
| [[CrewAI\|CrewAI]] | ⭐51k | 多Agent框架 | ❌ 程式碼為主 | ❌ | 中等 |
| [[workflow-automation\|n8n]] | ⭐192k | 工作流自動化 | ✅ 視覺化 | ❌ | MCP 整合 |
| [[CopilotKit-CopilotKit\|CopilotKit]] | ⭐32k | AI UI 框架 | ❌ React 為主 | ✅ | AG-UI |

← [[AI-Agent]] · [[rag]] · [[workflow-automation]] · [[LangChain]]

## 來源

- GitHub: <https://github.com/langgenius/dify>
- 原始 README: `raw/2026-06-12-langgenius-dify.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [langgenius/dify](https://github.com/langgenius/dify) |
| Stars | ⭐144,883 |
| License | NOASSERTION (自訂授權) |
| Language | TypeScript |
| 收錄日期 | 2026-06-12 |