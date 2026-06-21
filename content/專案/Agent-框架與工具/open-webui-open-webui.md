---
title: Open WebUI
slug: open-webui-open-webui
created: 2026-05-24
updated: 2026-05-24
stars: 100k+
language: Python/Svelte
---

# Open WebUI

> ⭐100k+ · 自架式 AI 平台，支援 Ollama 和 OpenAI 相容 API，內建 RAG 推論引擎

## 快速導航

- 🤖 **AI Agent 平台** → [[AI-Agent]]（Open WebUI 是 Agent 的前端與部署平台）
- 📚 **RAG 檢索增強** → [[ragflow|RAGFlow]]（Open WebUI 內建 RAG 支援）
- 🔍 **向量資料庫** → [[Milvus]]、[[Chroma]]、[[Qdrant]]（Open WebUI 支援 9 種向量資料庫）
- 🛠 **文件解析** → [[docling]]、[[pymupdf4llm]]（Open WebUI 支援多種文件萃取引擎）
- 🧩 **Pipeline 擴展** → [[AI-Skills]]（Pipelines 框架類似 Skills 層）

## 是什麼

Open WebUI 是一個功能豐富、可自架的 AI 平台，設計上可以**完全離線運行**。它是一個 ChatGPT/OpenUI 風格的 Web 介面，後端可接 Ollama 或任何 OpenAI 相容的 API，並內建 RAG（檢索增強生成）推論引擎。

核心價值：讓你用一套 UI 統一管理多種 LLM 後端，離線也能跑，而且不需要寫程式就能自訂 Agent、工具和 RAG pipeline。

## 核心特色

- **🚀 一鍵部署**：Docker / Kubernetes / pip 安裝，支援 CPU 和 CUDA 映像
- **🤝 多後端整合**：Ollama + OpenAI 相容 API（LMStudio、GroqCloud、Mistral、OpenRouter 等）
- **📚 內建 RAG**：支援 9 種向量資料庫（ChromaDB、PGVector、Qdrant、Milvus、Elasticsearch、OpenSearch、Pinecone、S3Vector、Oracle 23ai）+ 多種文件萃取引擎（Tika、Docling、Document Intelligence、Mistral OCR、PaddleOCR-vl）
- **🔍 15+ 搜尋引擎**：SearXNG、Google PSE、Brave Search、Kagi、Tavily、Perplexity 等
- **🐍 原生 Python Function Calling**：BYOF（Bring Your Own Function），用純 Python 寫工具直接整合 LLM
- **🧩 Pipelines 插件框架**：自訂邏輯、Rate Limiting、Usage Monitoring、Live Translation、Toxic Message Filtering 等
- **🛡️ 企業級安全**：RBAC、LDAP/AD、SCIM 2.0、SSO、OAuth
- **💾 Artifact 持久化**：內建 key-value 儲存 API，支援日誌、追蹤器、排行榜等跨 session 工具
- **🎨 圖片生成與編輯**：DALL-E、Gemini、ComfyUI（本地）、AUTOMATIC1111（本地）
- **🎤📞 語音/視訊通話**：多種 STT/TTS 引擎（Whisper、Deepgram、ElevenLabs、Azure）
- **⚖️ 水平擴展**：Redis session + WebSocket，支援多節點部署
- **📊 生產可觀測性**：內建 OpenTelemetry 支持

## 怎麼用

### pip 安裝
```bash
pip install open-webui
open-webui serve
# 打開 http://localhost:8080
```

### Docker（含本地 Ollama）
```bash
docker run -d -p 3000:8080 \
  --add-host=host.docker.internal:host-gateway \
  -v open-webui:/app/backend/data \
  --name open-webui --restart always \
  ghcr.io/open-webui/open-webui:main
```

### Docker + 捆綁 Ollama（GPU）
```bash
docker run -d -p 3000:8080 --gpus=all \
  -v ollama:/root/.ollama \
  -v open-webui:/app/backend/data \
  --name open-webui --restart always \
  ghcr.io/open-webui/open-webui:ollama
```

### 僅用 OpenAI API
```bash
docker run -d -p 3000:8080 \
  -e OPENAI_API_KEY=sk-xxx \
  -v open-webui:/app/backend/data \
  --name open-webui --restart always \
  ghcr.io/open-webui/open-webui:main
```

### 離線模式
```bash
export HF_HUB_OFFLINE=1
```

## 跟其他方案的關係

| 特性 | Open WebUI | ChatGPT | Ollama WebUI | LM Studio | Text Generation WebUI |
|------|-----------|---------|--------------|-----------|----------------------|
| 自架 | ✅ | ❌ | ✅ | ✅（桌面） | ✅ |
| 多後端 | ✅（Ollama+OpenAI） | ❌ | ❌（僅 Ollama） | ❌（僅本地） | ✅（多種） |
| RAG 內建 | ✅（9 向量 DB） | ✅ | ❌ | ❌ | ❌ |
| Plugin 系統 | ✅（Pipelines） | ✅（GPTs） | ❌ | ❌ | ❌ |
| 企業認證 | ✅（LDAP/SCIM/SSO） | ✅ | ❌ | ❌ | ❌ |
| 離線運行 | ✅ | ❌ | ✅ | ✅ | ✅ |
| 水平擴展 | ✅（Redis） | N/A | ❌ | ❌ | ❌ |
| 開源 | ✅ | ❌ | ✅ | ❌ | ✅ |

> [[nesquena-hermes-webui|Hermes WebUI]] 是另一個 Web 介面方案，但專為 Hermes Agent 設計，提供 CLI 完全同位。Open WebUI 是通用 LLM 平台，Hermes WebUI 是專一 Agent 的深度介面。

## 相關概念
← [[AI-Agent]] · [[ragflow|RAGFlow]] · [[模型推論與部署|Ollama]] · [[Milvus]] · [[Chroma]] · [[docling]] · [[nesquena-hermes-webui|Hermes WebUI]]

## 來源

- 原始 README：`raw/2026-05-24-open-webui-open-webui.md`
- GitHub：https://github.com/open-webui/open-webui
- 文件：https://docs.openwebui.com/

---

| 項目 | 資訊 |
|------|------|
| GitHub | <https://github.com/open-webui/open-webui> |
| Stars | 100k+ |
| License | Open WebUI License（需保留品牌標識） |
| Language | Python / Svelte |
| 收錄日期 | 2026-05-24 |