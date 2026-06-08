---



title: NexusRAG
slug: LeDat98-NexusRAG
created: 2026-05-09
stars: '⭐297'



updated: 2026-05-09
language: zh-TW
topics: []
---

# NexusRAG

> 混合式 RAG 系統，結合向量搜尋、知識圖譜與重排序，提升檢索品質與推理能力。

## 快速導航

- 🔍 **RAG** → [[rag]]（NexusRAG 是 RAG 的實作方案之一）
- 🕸️ **Knowledge Graph** → [[Knowledge-Graph]]（NexusRAG 使用知識圖譜做推理）
- 📄 **文件解析** → [[document-parsing]]（RAG 的上游步驟）

## 是什麼

NexusRAG 是由 LeDat98 開發的開源混合式 RAG（檢索增強生成）系統。它不依賴單一檢索方式，而是同時整合向量搜尋、知識圖譜和重排序（reranking）三種技術，讓 LLM 在生成回答時能參考更精準、更有結構的外部知識。

核心理念：向量搜尋擅長語意相似度匹配，知識圖譜擅長多跳推理和結構化關聯，重排序擅長精確評分——三者結合才能讓 RAG 系統同時具備廣度和深度。

## 核心特色

- **混合檢索架構**：同時支援向量搜尋（語意匹配）、BM25 關鍵字搜尋和知識圖譜查詢，三路結果融合排序
- **知識圖譜整合**：自動從文件中提取實體與關係，建構知識圖譜支援多跳推理
- **重排序管線**：交叉編碼器（Cross-encoder）對候選結果做精確重排序，提升最終檢索品質
- **文件解析支援**：支援多種文件格式的解析和結構化提取
- **模組化設計**：各檢索通道可獨立啟用或停用，方便根據場景調整

## 怎麼用

```bash
# 安裝
pip install nexus-rag

# 基本使用
from nexusrag import NexusRAG

rag = NexusRAG(
    vector_store=True,      # 啟用向量搜尋
    knowledge_graph=True,    # 啟用知識圖譜
    reranker=True            # 啟用重排序
)

# 索引文件
rag.index("./documents")

# 查詢
result = rag.query("什麼是 Flash Attention？")
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[ragflow]] | 開源 RAG 引擎 | 同為 RAG 引擎，ragflow 側重端到端管線 |
| [[qmd\|QMD]] | 本地混合搜尋引擎 | QMD 側重本地 CLI 搜尋，NexusRAG 側重知識圖譜 |
| [[llama-index\|LlamaIndex]] | LLM 資料框架 | LlamaIndex 是框架層，NexusRAG 是應用層 |
| [[safishamsi-graphify]] | 知識圖譜 MCP | graphify 側重建圖，NexusRAG 側重檢索 |
| [[self-rag]] | 自我反思 RAG | Self-RAG 側重生成品質審查，NexusRAG 側重檢索品質 |

## 相關概念

← [[rag]] · [[Knowledge-Graph]] · [[document-parsing]]

## 來源

- GitHub: https://github.com/LeDat98/NexusRAG
- Stars: ⭐297
- 收錄日期: 2026-05-09