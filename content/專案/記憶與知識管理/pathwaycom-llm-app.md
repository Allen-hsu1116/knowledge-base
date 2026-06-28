---
title: Pathway LLM App
slug: pathwaycom-llm-app
created: 2026-06-28
updated: 2026-06-28
stars: 59201
language: Jupyter Notebook
topics:
  - rag
  - llm
  - real-time
  - vector-database
  - retrieval-augmented-generation
  - llmops
---

# Pathway LLM App

> ⭐59k · 即時資料同步的 RAG 管線模板庫，Docker-friendly、免外部向量資料庫

快速導航：[[rag|RAG]] · [[LangChain]] · [[llama-index|LlamaIndex]] · [[ragflow|RAGFlow]]

## 是什麼

Pathway LLM App 是 Pathway Live Data Framework 的 AI 管線模板庫，提供一系列開箱即用的 LLM 應用模板，核心賣點是「即時資料同步」——RAG 管線能自動偵測資料來源的新增、刪除、更新，即時重新索引，確保 AI 回答永遠基於最新資料。

與傳統 RAG 方案最大的不同在於：Pathway 不需要外部的向量資料庫（如 Pinecone、Weaviate、Qdrant）、快取（如 Redis）和 API 框架（如 FastAPI）等獨立模組。它將資料同步、向量索引、全文搜尋、API 服務全部整合在一個 Python 函式庫裡，底層由 Rust 引擎驅動，記憶體內完成所有運算。這大幅簡化了 RAG 應用的基礎設施複雜度。

模板庫涵蓋多種場景：基本 QA RAG、即時文件索引（可作為 LangChain/LlamaIndex 的 retriever 後端）、多模態 RAG（GPT-4o 解析 PDF 中的圖表）、非結構化資料轉 SQL、自適應 RAG（Adaptive RAG 技術可降低 4 倍 token 成本）、私有 RAG（Mistral + Ollama 完全本地部署）、投影片搜尋等。每個模板可獨立運行，也能輕鬆客製化。

## 核心特色

- **即時資料同步**：自動偵測檔案系統、Google Drive、SharePoint、S3、Kafka、PostgreSQL、即時 API 等資料來源的變更，即時重新索引
- **零外部依賴**：內建向量索引（基於 usearch）、混合全文搜尋（基於 Tantivy）、API 服務、快取，不需額外安裝向量資料庫或 Redis
- **7+ 應用模板**：QA RAG、文件索引、多模態 RAG、Unstructured-to-SQL、Adaptive RAG、私有 RAG、投影片搜尋
- **Docker-friendly**：每個模板可作為 Docker 容器運行，暴露 HTTP API 供前端串接
- **百萬級文件擴展**：模板設計支援擴展至數百萬頁文件
- **LangChain / LlamaIndex 整合**：可作為 retriever 後端嵌入既有 LLM 應用
- **Adaptive RAG 技術**：Pathway 自研技術，在維持準確度的前提下降低 4 倍 token 成本

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/pathwaycom/llm-app.git
cd llm-app

# 以基本 QA RAG 為例
cd templates/question_answering_rag

# 安裝依賴
pip install -r requirements.txt

# 設定 API Key（OpenAI 等）
export OPENAI_API_KEY=sk-...

# 用 Docker 運行（推薦）
docker compose up -d

# 或直接用 Python 運行
python app.py
# 服務啟動後可透過 HTTP API 查詢
# 部分模板附帶 Streamlit UI 供快速測試
streamlit run ui/app.py
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **Pathway LLM App** | ⭐59k | RAG 管線模板 | 即時資料同步 | 零外部依賴 |
| [[ragflow\|RAGFlow]] | ⭐80k | RAG 平台 | 文件解析 + RAG | 完整平台 |
| [[LangChain]] | ⭐137k | LLM 框架 | 全面生態 | 可整合 Pathway |
| [[llama-index\|LlamaIndex]] | ⭐49k | 資料框架 | RAG 專精 | 可整合 Pathway |
| [[Mintplex-Labs-anything-llm\|AnythingLLM]] | ⭐62k | 本地 AI 應用 | 30+ LLM | 多用戶 |

← [[rag|RAG]] · [[LangChain]] · [[llama-index|LlamaIndex]] · [[ragflow|RAGFlow]]

## 來源

- GitHub: <https://github.com/pathwaycom/llm-app>
- 原始 README: `raw/2026-06-28-pathwaycom-llm-app.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [pathwaycom/llm-app](https://github.com/pathwaycom/llm-app) |
| Stars | ⭐59,201 |
| License | MIT |
| Language | Jupyter Notebook |
| 收錄日期 | 2026-06-28 |