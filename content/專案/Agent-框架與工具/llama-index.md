---
title: LlamaIndex
slug: llama-index
created: 2026-05-15
stars: 49,422
updated: 2026-05-15
language: zh-TW
topics: [RAG, 資料框架, 文件解析]
---

# LlamaIndex

> ⭐49,422 · LLM 資料框架，專注資料攝取、索引和查詢，讓 LLM 輕鬆連接私有資料。49K+ ⭐。

## 快速導航
- 📚 **RAG** → [[rag]]（LlamaIndex 是 RAG 的主流框架之一）
- 🤖 **AI Agent** → [[AI-Agent]]（LlamaAgents 支援文件 Agent 部署）
- 🔍 **文件解析** → [[document-parsing]]（LlamaParse 支援 130+ 格式）

## 是什麼

LlamaIndex 是 LLM 資料框架，提供資料連接器、索引建構和查詢引擎，讓開發者把私有資料（API、PDF、SQL 等）接入 LLM。5 行程式碼就能建好索引並查詢，底層也可深度客製化。

## 核心特色

- **Data Connectors**：攝取各種資料來源和格式（API、PDF、SQL 等）
- **Data Indexes**：把資料結構化成索引和知識圖譜，方便 LLM 使用
- **Query Engine**：進階檢索和查詢介面，支援 RAG
- **LlamaParse**：企業級 OCR 和文件解析平台（130+ 格式）
- **LlamaAgents**：部署式文件 Agent，支援 Workflows 和 Agent Builder
- **300+ 整合包**：LlamaHub 上有大量 LLM、嵌入和向量資料庫整合

## 怎麼用

```bash
pip install llama-index
```

```python
from llama_index.core import VectorStoreIndex, SimpleDirectoryReader

documents = SimpleDirectoryReader("data/").load_data()
index = VectorStoreIndex.from_documents(documents)

query_engine = index.as_query_engine()
response = query_engine.query("What is the revenue?")
```

非 OpenAI 模型（如 Ollama）：

```python
from llama_index.core import Settings, VectorStoreIndex, SimpleDirectoryReader
from llama_index.llms.ollama import Ollama
from llama_index.embeddings.huggingface import HuggingFaceEmbedding

Settings.llm = Ollama(model="llama-3.1:latest")
Settings.embed_model = HuggingFaceEmbedding(model_name="BAAI/bge-small-en-v1.5")
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[LangChain]] | Agent/Chain 框架 | LangChain 偏工具串接和 Agent 編排，LlamaIndex 偏資料層 |
| [[ragflow]] | RAG 引擎 | ragflow 是端到端 RAG 平台，LlamaIndex 是框架 |
| [[docling]] | 文件解析 | LlamaParse 競品，但 LlamaParse 支援更多格式 |
| [[qmd]] | 本地搜尋引擎 | QMD 偏 CLI 搜尋，LlamaIndex 偏框架和 API |
| [[CrewAI]] | 多 Agent 協作 | 可用 LlamaIndex 作為 CrewAgent 的資料層 |

## 相關概念

- [[rag]] — 檢索增強生成
- [[document-parsing]] — 文件解析
- [[AI-Agent]] — AI Agent
- [[LangChain]] — LLM 應用開發框架
- [[向量資料庫]] — 向量資料庫

## 來源

- raw/2026-05-15-llama-index.md

---

- **GitHub**: https://github.com/run-llama/llama_index
- **Stars**: ⭐49,422
- **License**: MIT
- **收錄日期**: 2026-05-15

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/run-llama/llama_index |
| **Stars** | ⭐49,422 |
| **收錄日期** | 2026-05-15 |
