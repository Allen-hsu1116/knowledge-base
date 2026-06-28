---
title: AnythingLLM
slug: Mintplex-Labs-anything-llm
created: 2026-06-27
updated: 2026-06-27
stars: 62153
language: JavaScript
topics:
  - llm
  - rag
  - ai-agents
  - local-ai
  - self-hosted-ai
  - vector-database
---

# AnythingLLM

> ⭐62.2k · 全能 AI 應用，本地優先的 ChatGPT 替代方案，聊天+文檔+Agent 一體化

## 快速導航
- 🧠 **RAG** → [[RAG]]
- 🏠 **Ollama** → [[Ollama]]
- 🖥 **Open WebUI** → [[open-webui-open-webui|Open WebUI]]

## 是什麼

AnythingLLM 是一個開源的全方位 AI 應用，讓你在幾分鐘內搭建一個私有、功能完整的 ChatGPT。它的核心理念是「停止租用你的智慧，擁有它」——連接你喜歡的本地或雲端 LLM，導入你的文檔，然後開始對話。

開箱即用的功能包括內建 Agent、多用戶支援、向量資料庫、文檔管道，無需額外配置。它支援 30+ 種 LLM 提供商（OpenAI、Anthropic、Ollama、Azure、Gemini、DeepSeek 等），多種嵌入模型，以及 9 種向量資料庫（LanceDB、Pinecone、Chroma、Qdrant、Milvus 等）。

AnythingLLM 採用 Monorepo 架構，包含前端（Vite + React）、後端（Node.js Express）、文檔收集器、Docker 部署、嵌入式聊天小工具和 Chrome 瀏覽器擴充功能。它也提供桌面版應用（Mac、Windows、Linux），讓使用者可以完全在本地運行。

## 核心特色

- **動態模型路由**：根據自定義規則自動將對話路由到最適合的提供商和模型
- **自動記憶與用戶管理記憶**：LLM 能記住關於你或工作區的重要資訊
- **定時任務**：以 cron 排程運行循環任務或提示，具備完整 Agent 能力
- **智能技能選擇**：為模型啟用無限工具，同時減少高達 80% 的 token 使用量
- **無代碼 Agent 建構器**：視覺化建構 AI Agent 工作流
- **MCP 相容性**：支援 Model Context Protocol 整合
- **多模態支援**：支援閉源和開源 LLM 的多模態能力
- **多用戶與權限控制**：Docker 版支援多用戶實例和精細權限管理
- **嵌入式聊天小工具**：可嵌入網站的自訂聊天 widget

## 怎麼用

```bash
# Docker 一鍵部署
docker pull mintplexlabs/anythingllm
docker run -d -p 3001:3001 \
  -v /path/to/.env:/server/.env \
  -v /path/to/storage:/server/storage \
  mintplexlabs/anythingllm

# 開發環境
yarn setup          # 填入 .env 檔案
yarn dev:server     # 啟動後端
yarn dev:frontend   # 啟動前端
yarn dev:collector  # 啟動文檔收集器
```

也支援 AWS、GCP、DigitalOcean、Railway、Render 等多種雲端部署方案。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **AnythingLLM** | ⭐62.2k | AI 應用平台 | 本地優先、30+ LLM | RAG + Agent + 多用戶 |
| [[open-webui-open-webui|Open WebUI]] | ⭐100k+ | LLM Web UI | 自架平台 | 向量資料庫 + RAG |
| [[langgenius-dify|Dify]] | ⭐144k | LLM 應用平台 | Workflow 編排 | 自架 + 雲端 |
| [[CherryHQ-cherry-studio|Cherry Studio]] | ⭐47.3k | AI 客戶端 | 多模型客戶端 | Agent Skills |
| [[Crosstalk-Solutions-project-nomad|Project N.O.M.A.D.]] | ⭐27k | 離線 AI | Ollama + RAG | 自架知識伺服器 |

← [[RAG]] · [[Ollama]] · [[open-webui-open-webui|Open WebUI]] · [[LangChain]] · [[self-hosted-AI-platform]]

## 來源

- GitHub: <https://github.com/Mintplex-Labs/anything-llm>
- 原始 README: `raw/2026-06-27-Mintplex-Labs-anything-llm.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [Mintplex-Labs/anything-llm](https://github.com/Mintplex-Labs/anything-llm) |
| Stars | ⭐62,153 |
| License | MIT |
| Language | JavaScript |
| 收錄日期 | 2026-06-27 |