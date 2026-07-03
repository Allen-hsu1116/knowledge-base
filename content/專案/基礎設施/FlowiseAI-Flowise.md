---
title: Flowise
slug: FlowiseAI-Flowise
created: 2023-03-31
updated: 2026-06-17
stars: 53659
language: TypeScript
topics: [agentic-ai, agentic-workflow, agents, chatbot, langchain, large-language-models, low-code, no-code, rag, workflow-automation]
---

# Flowise

> ⭐53.7k · 低代碼視覺化建構 AI Agent 和 LLM 工作流，拖曳即可串接 LangChain

## 快速導航
[[rag|RAG 檢索增強生成]] · [[workflow-automation|Agent 工作流]] · [[n8n-io-n8n|n8n]]

## 是什麼

Flowise 是一個開源的低代碼/無代碼平台，讓你用拖曳式介面建構 AI Agent 和 LLM 工作流。基於 LangChain 生態系統，它把複雜的 LLM pipeline 變成可視化的節點連線，從聊天機器人到 RAG 管線再到多 Agent 協作，都能透過拖曳完成。

Flowise 的核心架構是 Monorepo，包含 server（Node.js 後端）、ui（React 前端）、components（第三方節點整合）和 api-documentation（Swagger UI）。它不只提供基本的 LLM Chain，還支援 Agent、Tool、Vector Store、Embedding 等完整 LangChain 元件，讓你在不寫程式的情況下建構複雜的 AI 應用。

對於想要快速原型開發或沒有深厚程式背景的團隊來說，Flowise 是一個非常友善的選擇。它同時支援本地開發、Docker 部署和 Flowise Cloud 雲端服務。

## 核心特色

- **視覺化拖曳介面**：直覺式拖曳建構 LLM 工作流，即時預覽和測試
- **LangChain 原生整合**：完整支援 LangChain 元件，包含 Agent、Tool、Memory、Vector Store 等
- **RAG 管線建構**：拖曳即可建構文件載入、分段、嵌入、檢索的完整 RAG 流程
- **多 Agent 支援**：支援 Agentic AI 和 Multi-Agent 系統的視覺化建構
- **多種部署方式**：npm 安裝、Docker、原始碼建置、Flowise Cloud
- **API 与 SDK**：自動生成 Swagger API 文件，支援程式化呼叫

## 怎麼用

```bash
# 最快上手：npm 全域安裝（需要 Node.js >= 20）
npm install -g flowise
npx flowise start
# 開啟 http://localhost:3000

# Docker Compose 部署
git clone https://github.com/FlowiseAI/Flowise.git
cd Flowise/docker
cp .env.example .env
docker compose up -d
# 開啟 http://localhost:3000

# 從原始碼建置（開發者）
git clone https://github.com/FlowiseAI/Flowise.git
cd Flowise
npm i -g pnpm
pnpm install
pnpm build
pnpm start
```

## 跟其他方案的關係

| 方案 | 類型 | 視覺化 | 自架 | Agent 支援 | 適用場景 |
|------|------|--------|------|-----------|----------|
| [[FlowiseAI-Flowise|Flowise]] | 視覺化 LLM 建構 | ✅ 拖曳式 | ✅ 開源 | ✅ 多 Agent | 快速原型、無碼開發 |
| [[langgenius-dify|Dify]] | LLM App 平台 | ✅ 拖曳式 | ✅ 開源 | ✅ 內建 | LLM 應用全流程 |
| [[langfuse-langfuse|Langfuse]] | LLM 觀測平台 | ✅ 儀表板 | ✅ 開源 | ✅ 追蹤 | 監控與評測 |
| [[n8n-io-n8n|n8n]] | 工作流自動化 | ✅ 拖曳式 | ✅ 公平碼 | ✅ AI 節點 | 通用自動化+AI |
| LangFlow | LangChain 視覺化 | ✅ | ✅ 開源 | ⚠️ 基礎 | LangChain 原型開發 |

## 相關概念
← [[rag|RAG 檢索增強生成]] · [[workflow-automation|Agent 工作流]] · [[n8n-io-n8n|n8n]] · [[langflow-ai-langflow|Langflow]]

## 來源

- GitHub：https://github.com/FlowiseAI/Flowise
- 官方文件：https://docs.flowiseai.com/
- 部署指南：https://docs.flowiseai.com/configuration/deployment
- Raw 檔案：`knowledge-base/raw/2026-06-17-FlowiseAI-Flowise.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [FlowiseAI/Flowise](https://github.com/FlowiseAI/Flowise) |
| Stars | ⭐53,659 |
| License | 自訂授權（Flowise AI Inc.） |
| Language | TypeScript |
| 收錄日期 | 2026-06-17 |