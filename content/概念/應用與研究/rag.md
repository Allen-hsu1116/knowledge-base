---
title: RAG（檢索增強生成）
created: 2026-05-09
---

# RAG（檢索增強生成）

> Retrieval-Augmented Generation — 結合外部知識檢索與 LLM 生成，讓模型回答有根據、可追溯。

## 快速導航

- 📄 **文件解析** → [[document-parsing]]（RAG 的前置步驟）
- 🧱 **分塊策略** → [[hichunk]]（階層式分塊改進檢索品質）
- 🗂️ **增量索引** → [[cocoindex]]（RAG 管線的增量最佳化）
- 🕸️ **知識圖譜** → [[Knowledge-Graph]]（結構化知識增強檢索）

## 核心內容

RAG（Retrieval-Augmented Generation）是一種讓 LLM 在生成回答前先檢索外部知識的技術架構。核心流程：使用者提問 → 系統從知識庫檢索相關內容 → 將檢索結果作為上下文餵給 LLM → LLM 基於檢索內容生成回答。

### 為什麼需要 RAG

- **知識截止日**：LLM 的訓練資料有截止日，無法回答最新資訊
- **幻覺問題**：LLM 可能生成看似合理但錯誤的內容
- **專業知識**：企業內部文件、專業領域知識不在訓練資料中
- **可追溯性**：RAG 讓回答有根據、可追溯回原始文件

### 關鍵技術

- **向量搜尋**：用嵌入模型（如 BAAI/bge-m3）將文字轉為向量，透過餘弦相似度檢索
- **混合搜尋**：BM25 關鍵字搜尋 + 向量語義搜尋 + RRF 融合排序
- **知識圖譜**：提取實體與關係，支援多跳推理
- **重排序**：交叉編碼器（Cross-encoder）對候選做精確評分
- **文件解析**：將 PDF、DOCX 等轉為結構化文字，保留語義格式
- **分塊策略**：語義分塊、結構分塊、滑動窗口上下文豐富化

## 各框架的做法

### RAG 引擎

| 專案 | 說明 | Stars |
|------|------|-------|
| 👉 [[ragflow]] | 開源 RAG 引擎，深度文件理解 + 接地引用 | ⭐79k |
| 👉 [[qmd|QMD]] | 本地優先混合搜尋引擎，BM25+向量+LLM重排序 | ⭐24.9k |
| 👉 [[llama-index|LlamaIndex]] | LLM 資料框架，RAG 管線+文件解析+Agent | ⭐49.4k |
| 👉 [[LeDat98-NexusRAG]] | 混合式 RAG 系統，向量+知識圖譜+重排序 | ⭐297 |
| 👉 [[flamehaven01-Flamehaven-Filesearch]] | 自架式 RAG 搜尋引擎，BM25+混合搜尋 | ⭐100 |

### RAG 研究

- 👉 [[self-rag]] — 按需檢索 + 自我審查反思 token，ICLR 2024 Oral

### 文件解析

| 專案 | 說明 | Stars |
|------|------|-------|
| 👉 [[docling]] | IBM 開源文件解析庫 | ⭐59k |
| 👉 [[microsoft-markitdown]] | Microsoft 文件轉 Markdown | ⭐120k |
| 👉 [[run-llama-ParseBench]] | 文件解析基準測試 | ⭐468 |

### 向量資料庫

| 專案 | 說明 | Stars |
|------|------|-------|
| 👉 [[Milvus]] | 高效能雲原生向量資料庫，十億級搜尋 | ⭐44.2k |
| 👉 [[Qdrant]] | Rust 高效能向量搜尋引擎 | ⭐31.2k |
| 👉 [[Chroma]] | 極簡 AI 向量資料庫，4 個核心 API | ⭐27.9k |

### 網頁資料採集

- 👉 [[Crawl4AI]] — LLM 友善網頁爬蟲，網頁→Markdown（⭐65.3k）

## 怎麼用

RAG 的典型使用流程：

```python
# 使用 LlamaIndex 的基本 RAG 管線
from llama_index.core import VectorStoreIndex, SimpleDirectoryReader

documents = SimpleDirectoryReader("./data").load_data()
index = VectorStoreIndex.from_documents(documents)
query_engine = index.as_query_engine()
response = query_engine.query("What is RAG?")
print(response)
```

```bash
# 使用 RAGFlow（Docker 部署）
git clone https://github.com/infiniflow/ragflow.git
cd ragflow
docker compose -f docker/docker-compose.yml up -d
# 存取 http://localhost:9380
```

## 跟其他方案的關係

| 概念 | 關係 |
|------|------|
| [[document-parsing]] | 文件解析是 RAG 管線的前置步驟 |
| [[hichunk]] | 階層式分塊改進 RAG 的檢索品質 |
| [[cocoindex]] | 增量索引最佳化 RAG 的更新效率 |
| [[Knowledge-Graph]] | 知識圖譜增強 RAG 的推理能力 |
| [[AI-Agent]] | Agent 系統整合 RAG 獲取外部知識 |

## 相關概念

← [[document-parsing]] · [[Knowledge-Graph]] · [[AI-Agent]] · [[hichunk]] · [[cocoindex]] · [[qmd]]

## 來源

- raw/ 目錄中多個 RAG 相關原始檔案

---

_此頁由 daily-llm-trending 自動維護_