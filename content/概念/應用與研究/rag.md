---
title: RAG（檢索增強生成）
slug: rag
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# RAG（檢索增強生成）

> Retrieval-Augmented Generation — 結合外部知識檢索與 LLM 生成，讓模型回答有根據、可追溯。從「模型自己想」到「先查再答」，是 LLM 應用從玩具到工具的關鍵一步。

## 快速導航

- ⚡ [[document-parsing]] · [[hichunk]] · [[Knowledge-Graph]] · [[AI-Agent]]
- 📄 **文件解析** → [[document-parsing]]（RAG 的前置步驟）
- 🧱 **分塊策略** → [[hichunk]]（階層式分塊改進檢索品質）
- 🗂️ **增量索引** → [[cocoindex]]（RAG 管線的增量最佳化）
- 🕸️ **知識圖譜** → [[Knowledge-Graph]]（結構化知識增強檢索）

## 是什麼

RAG（Retrieval-Augmented Generation）是一種讓 LLM 在生成回答前先檢索外部知識的技術架構。核心流程：使用者提問 → 系統從知識庫檢索相關內容 → 將檢索結果作為上下文餵給 LLM → LLM 基於檢索內容生成回答。

RAG 解決了 LLM 的三大先天限制：**知識截止日**（訓練資料有時效性）、**幻覺問題**（模型可能生成看似合理但錯誤的內容）、**專業知識缺失**（企業內部文件不在訓練資料中）。透過檢索增強，回答變得有根據、可追溯回原始文件。

### 為什麼需要 RAG

| 問題 | 說明 | RAG 如何解決 |
|------|------|---------------|
| **知識截止日** | LLM 的訓練資料有截止日，無法回答最新資訊 | 即時檢索最新文件，回答不限於訓練資料 |
| **幻覺問題** | LLM 可能生成看似合理但錯誤的內容 | 引用來源文件，回答有根據可追溯 |
| **專業知識** | 企業內部文件、專業領域知識不在訓練資料中 | 檢索企業知識庫，回答涵蓋專業內容 |
| **可追溯性** | LLM 的回答無法追溯來源 | 引用具體文件和段落 |

## 核心特色

- **向量搜尋 + 混合搜尋**：用嵌入模型（如 BAAI/bge-m3）將文字轉為向量，透過餘弦相似度檢索。混合搜尋結合 BM25 關鍵字搜尋 + 向量語義搜尋 + RRF 融合排序，比單一向量搜尋更精準
- **知識圖譜增強**：提取實體與關係，支援多跳推理。傳統 RAG 只能檢索局部片段，知識圖譜能沿邊推理發現隱含連結，Token 效率提升 71.5x（graphify 測試數據）
- **文件解析品質決定下游效果**：表格合併格錯位、圖表數值遺失、格式語義消失等上游解析問題會沿管線一路放大。高品質 RAG 從高品質文件解析開始
- **增量索引降低更新成本**：只索引變更的部分，不重複處理整個知識庫（cocoindex）。對於頻繁更新的企業文件，增量索引可大幅降低計算成本
- **重排序提升精準度**：交叉編碼器（Cross-encoder）對候選結果做精確評分，在初步檢索的基礎上進一步優化排序，提升最終回用品質

## 怎麼用

### 基本流程

```
使用者提問
    ↓
查詢理解 + 改寫
    ↓
混合搜尋（BM25 + 向量 + RRF）
    ↓
重排序（Cross-encoder）
    ↓
上下文組裝（檢索結果 + 問題）
    ↓
LLM 生成回答 + 引用來源
```

### 使用 LlamaIndex（基本 RAG 管線）

```python
from llama_index.core import VectorStoreIndex, SimpleDirectoryReader

documents = SimpleDirectoryReader("./data").load_data()
index = VectorStoreIndex.from_documents(documents)
query_engine = index.as_query_engine()
response = query_engine.query("What is RAG?")
print(response)
```

### 使用 RAGFlow（Docker 部署）

```bash
git clone https://github.com/infiniflow/ragflow.git
cd ragflow
docker compose -f docker/docker-compose.yml up -d
# 存取 http://localhost:9380
```

### 常見使用場景

- **企業知識庫**：員工可即時查詢公司內部文件和政策
- **客服機器人**：基於產品文件和 FAQ 回答客戶問題
- **法律文件檢索**：快速找到相關法規和判例
- **學術研究**：基於論文資料庫回答研究問題
- **醫療輔助**：基於醫學文獻和臨床指南提供建議

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[document-parsing]] | 前置 | 文件解析是 RAG 管線的前置步驟 |
| [[hichunk]] | 串接 | 階層式分塊改進 RAG 的檢索品質 |
| [[cocoindex]] | 最佳化 | 增量索引最佳化 RAG 的更新效率 |
| [[Knowledge-Graph]] | 增強 | 知識圖譜增強 RAG 的推理能力 |
| [[AI-Agent]] | 整合 | Agent 系統整合 RAG 獲取外部知識 |
| [[Context-Database]] | 替代 | Context DB 是另一種 context 管理方式 |
| [[LLM]] | 基礎 | RAG 是 LLM 的增強技術 |
| [[Token-Optimization]] | 成本 | RAG 檢索結果會消耗 token，需優化 |

## 各框架的做法

### RAG 引擎

| 專案 | 說明 | Stars |
|------|------|-------|
| 👉 [[ragflow]] | 開源 RAG 引擎，深度文件理解 + 接地引用 | ⭐79k |
| 👉 [[qmd\|QMD]] | 本地優先混合搜尋引擎，BM25+向量+LLM重排序 | ⭐24.9k |
| 👉 [[llama-index\|LlamaIndex]] | LLM 資料框架，RAG 管線+文件解析+Agent | ⭐49.4k |
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

## 相關概念

← [[document-parsing]] · [[Knowledge-Graph]] · [[AI-Agent]] · [[hichunk]] · [[cocoindex]] · [[qmd]] · [[yichuan-w-LEANN|LEANN]]

## 來源

- [RAG 相關原始檔案](../raw/2026-05-03-ragflow.md)
- [文件解析基礎](../raw/2026-05-03-docling.md)

---

_此頁由 daily-llm-trending 自動維護_