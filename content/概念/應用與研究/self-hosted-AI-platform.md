---
title: 自架 AI 平台
slug: self-hosted-AI-platform
language: zh-TW
---

# 自架 AI 平台

> 在自有基礎設施上部署和運行 AI 服務，掌控資料隱私、客製化和成本。

## 核心內容

自架 AI 平台是指將 AI 服務部署在自有基礎設施（伺服器、雲端 VM、本地機器）上運行，而非依賴第三方 API。這涵蓋從 LLM 推論引擎到完整的 AI 應用平台，讓組織和個人完全掌控資料隱私、模型選擇和成本。

自架的核心動機包括資料主權（資料不離開自有環境）、完全客製（模型、介面、工作流皆可控）、成本控制（無 API 按量計費，長期成本可預測）、離線運行（不依賴網路連線），以及無審查限制（不受 API 提供商的內容過濾）。對於處理敏感資料的企業或追求隱私的個人使用者，自架是唯一能完全掌控資料流向的方案。

一個典型的自架 AI 平台由多個元件組合而成：LLM 推論引擎（Ollama、vLLM）負責運行模型，前端介面（Open WebUI）提供使用者互動，向量資料庫（Milvus、Qdrant、Chroma）支撐 RAG 知識庫，Agent 框架（LangChain、CrewAI）處理工作流編排，API 代理（LiteLLM）統一多模型入口。大部分自架平台支援 Docker Compose 一鍵部署，大幅降低架設門檻。

## 關鍵要素

- **多模型支援** — 可同時運行本地模型和雲端 API，透過 BYOK（自帶 API Key）彈性切換
- **Docker 一鍵部署** — 大部分自架平台支援 Docker Compose，數分鐘內完成部署
- **Ollama 整合** — 無縫連接本地模型，零配置即可使用開源 LLM
- **MCP 協議支援** — 透過 MCP 連接外部工具和資料來源，擴展平台能力
- **多用戶管理** — 角色權限、對話歷史、使用配額等企業級功能
- **GPU 加速** — 支援 NVIDIA GPU 加速推論，vLLM 提供高吞吐服務

## 各框架的做法

- **Open WebUI** → 開源 LLM 平台，支援多模型、RAG、Agent，Docker 一鍵部署
  👉 詳見 [[open-webui-open-webui|Open WebUI]]
- **Project N.O.M.A.D.** → 離線知識伺服器，整合 Ollama 與 RAG，適合斷網環境
  👉 詳見 [[Crosstalk-Solutions-project-nomad|Project N.O.M.A.D.]]
- **Presenton** → AI 簡報產生器，支援自架部署確保資料隱私
  👉 詳見 [[presenton-presenton|Presenton]]
- **AIRI** → 自架 AI 陪伴平台，整合 Live2D 與語音互動
  👉 詳見 [[moeru-ai-airi|AIRI]]

## 相關概念

- [[self-hosted|自架]] — 更廣義的自架軟體概念
- [[模型推論與部署]] — LLM 推論引擎和部署架構
- [[workflow-automation|工作流自動化]] — 自架平台提供自動化工作流運行環境
- [[privacy|隱私]] — 自架的核心驅動力之一
- [[rag|RAG]] — 自架平台的核心功能模組

## 來源

- Open WebUI 專案文件
- LiteLLM API Gateway 文件
- 自架 AI 生態系整理