---
title: Production Agentic RAG Course
slug: jamwithai-production-agentic-rag-course
created: 2026-06-03
updated: 2026-06-03
stars: 6376
language: Python
topics:
  - rag
  - llm
  - opensearch
  - fastapi
  - langgraph
  - docker
---

# Production Agentic RAG Course

> ⭐6.4k · 從基礎設施到 Agentic RAG 的 7 週實戰課程，用 arXiv 論文策展人帶你打造生產級 RAG 系統

快速導航：[[rag|RAG]] · [[LangChain]] · [[document-parsing|文件解析]]

## 是什麼

Production Agentic RAG Course（又稱 "The Mother of AI Project"）是一個以**實作為導向**的 RAG 系統課程，帶你從零開始打造一個能自動抓取 arXiv 論文、理解內容、回答研究問題的 AI 研究助手。課程名為「arXiv Paper Curator」，每週一個主題，逐層堆疊：從 Docker 基礎設施、資料注入管線、關鍵字搜尋、到語意向量搜尋，最後進入 Agentic RAG。

課程最大的特色是**走專業路線**：先打好 BM25 關鍵字搜尋的基礎，再往上疊加向量搜尋做 hybrid retrieval，而不是一開始就跳到向量搜尋。這正是成功公司在做 RAG 時的實際做法——搜尋基礎先穩，AI 再加強。七週的學習路徑從 Week 1 基礎設施到 Week 7 的 LangGraph Agentic RAG + Telegram Bot，每一步都有程式碼、Jupyter Notebook 和詳細的部落格文章搭配。

技術棧包含 FastAPI（API 層）、OpenSearch（BM25 + 向量混合搜尋）、PostgreSQL（metadata 儲存）、Apache Airflow（工作流編排）、Ollama（本地 LLM 推論）、LangGraph（Agentic RAG）、Jina AI（embedding）、Langfuse（觀測性）等，全部用 Docker Compose 一鍵啟動。

## 核心特色

- **🏗️ 七週漸進式課程**：從基礎設施到 Agentic RAG，每週有明確交付物和部落格文章
- **📚 專業路線**：先學 BM25 關鍵字搜尋，再加向量搜尋做 hybrid retrieval——這是成功公司的實際做法
- **🤖 Agentic RAG**：第七週用 LangGraph 實作智能決策、文件評分、查詢改寫、防護欄（guardrails）
- **📱 Telegram Bot 整合**：行動端也能使用你的 RAG 系統，隨口就能問論文問題
- **🔍 完整觀測性**：Langfuse tracing + Redis caching 做生產級監控和效能最佳化
- **🐳 Docker 一鍵部署**：所有服務用 Docker Compose 啟動，零配置摩擦
- **📖 每週有部落格+程式碼**：每個主題都有配套的詳細部落格文章和可追溯的 git tag

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/jamwithai/production-agentic-rag-course.git
cd arxiv-paper-curator

# 設定環境變數
cp .env.example .env
# 編輯 .env 加入 Jina embedding API key 和 Langfuse keys

# 安裝依賴
uv sync

# 啟動所有服務
docker compose up --build -d

# 驗證服務運行
curl http://localhost:8000/api/v1/health

# 或克隆特定週的版本
git clone --branch week1.0 https://github.com/jamwithai/arxiv-paper-curator
```

各服務端口：API Docs `:8000/docs`、Gradio `:7861`、Langfuse `:3000`、Airflow `:8080`、OpenSearch Dashboards `:5601`

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心特色 | 語言 |
|------|-------|------|----------|------|
| **Production Agentic RAG Course** | ⭐6.4k | 課程 | 7週漸進式 RAG 課程，含 Agentic RAG | Python |
| [[ragflow|RAGFlow]] | ⭐79.7k | 框架 | RAG 引擎，文件解析 | Python |
| [[LangChain]] | ⭐136.8k | 框架 | LLM 應用框架，含 RAG | Python/JS |
| [[microsoft-ai-agents-for-beginners|AI Agents for Beginners]] | ⭐62.5k | 課程 | 12+ 課 AI Agent 入門 | 多語言 |
| [[rasbt-LLMs-from-scratch|LLMs from Scratch]] | ⭐93.8k | 課程 | 從零訓練 LLM | Python |

← [[rag]] · [[LangChain]] · [[document-parsing|文件解析]]

## 來源

- GitHub: <https://github.com/jamwithai/production-agentic-rag-course>
- 原始 README: `raw/2026-06-03-jamwithai-production-agentic-rag-course.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [jamwithai/production-agentic-rag-course](https://github.com/jamwithai/production-agentic-rag-course) |
| Stars | ⭐6,376 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-06-03 |