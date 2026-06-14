---
title: 自架 AI 平台
slug: self-hosted-AI-platform
aliases:
  - Self-Hosted AI Platform
  - 自架式 AI
updated: 2026-06-14
language: zh-TW
---

# 自架 AI 平台

> 在自有基礎設施上部署和運行 AI 服務，掌控資料隱私、客製化和成本。

## 快速導航

- ⚡ [[embedded-AI]] · [[AI-Agent]] · [[workflow-automation]] · [[模型推論與部署]]
- 🌐 **Open WebUI** → [[open-webui-open-webui]]（開源 LLM 平台）
- 🦙 **Ollama** → [[Ollama]]（本地 LLM 運行）
- 🎨 **Presenton** → [[presenton-presenton]]（AI 簡報產生器）

## 是什麼

自架 AI 平台是指將 AI 服務部署在自有基礎設施（伺服器、雲端 VM、本地機器）上運行，而非依賴第三方 API 的方案。這涵蓋從 LLM 推論引擎到完整的 AI 應用平台，讓組織和個人完全掌控資料隱私、模型選擇和成本。

### 為什麼自架

- **資料主權**：資料不離開自有環境，滿足合規和隱私要求
- **完全客製**：模型、介面、工作流完全可控
- **成本控制**：無 API 按量計費，長期成本可預測
- **離線運行**：不依賴網路連線，適合斷網環境
- **無審查限制**：不受 API 提供商的內容審查限制

## 核心特色

- **多模型支援**：可同時運行 OpenAI、Anthropic、本地模型等多種 LLM
- **Docker 一鍵部署**：大部分自架平台支援 Docker Compose 一鍵啟動
- **BYOK（自帶 API Key）**：彈性選擇雲端 API 或本地模型
- **Ollama 整合**：無縫連接本地模型，零配置即可使用
- **MCP 協議支援**：透過 MCP 連接外部工具和資料來源
- **多用戶管理**：角色權限、對話歷史、使用配額等企業級功能
- **GPU 加速**：支援 NVIDIA GPU 加速推論，vLLM 高吞吐服務

## 怎麼用

### 部署 Open WebUI（最流行的自架 LLM 平台）

```bash
# Docker 一鍵部署
docker run -d -p 3000:8080 \
  --add-host=host.docker.internal:host-gateway \
  -v open-webui:/app/backend/data \
  --name open-webui \
  --restart always \
  ghcr.io/open-webui/open-webui:main
```

### 搭配 Ollama 運行本地模型

```bash
# 安裝 Ollama
curl -fsSL https://ollama.com/install.sh | sh

# 下載並運行模型
ollama run llama3
ollama run mistral

# Open WebUI 自動偵測 Ollama
# 在瀏覽器打開 http://localhost:3000
```

### 自架 AI 平台的元件組合

| 元件 | 功能 | 推薦方案 |
|------|------|----------|
| LLM 推論 | 運行語言模型 | Ollama、vLLM、llama.cpp |
| 前端介面 | 使用者互動 | Open WebUI、Chatbot UI |
| 向量資料庫 | RAG 知識庫 | Milvus、Qdrant、Chroma |
| Agent 框架 | 工作流編排 | LangChain、CrewAI |
| 負載均衡 | API 統一入口 | LiteLLM |

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[embedded-AI]] | 邊緣 | 自架是伺服器端，嵌入式是裝置端 |
| [[AI-Agent]] | 運行環境 | 自架平台是 Agent 的部署環境 |
| [[workflow-automation]] | 整合 | 自架平台提供自動化工作流運行環境 |
| [[AI-presentation]] | 應用 | AI 簡報可自架確保資料隱私 |
| [[rag]] | 元件 | RAG 是自架平台的核心功能模組 |

## 相關專案

- [[open-webui-open-webui|Open WebUI]] — 開源 LLM 平台（⭐80K+）
- [[Ollama]] — 本地 LLM 運行
- [[presenton-presenton|Presenton]] — AI 簡報產生器（支援自架）

## 相關概念

← [[embedded-AI]] · [[AI-Agent]] · [[workflow-automation]] · [[模型推論與部署]] · [[rag]]

## 來源

- [Open WebUI 專案文件](../raw/2026-05-24-open-webui-open-webui.md)
- [LiteLLM API Gateway](../raw/2026-05-03-litellm.md)
- Awesome Self-Hosted 列表

---

_此頁由 daily-llm-trending 自動維護_