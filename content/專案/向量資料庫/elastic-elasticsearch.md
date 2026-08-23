---
title: Elasticsearch
slug: elastic-elasticsearch
created: 2026-07-04
updated: 2026-07-04
stars: 77337
language: Java
topics: ["elasticsearch", "search-engine", "java", "vector-search", "rag"]
---

# Elasticsearch

> ⭐77337 · 分散式搜尋與分析引擎，向量資料庫，RAG 與生成式 AI 應用的搜尋基石

## 快速導航


- 🧠 **向量資料庫** → [[向量資料庫]]
- 🛠 **RAG** → [[rag|RAG]]
- 📦 **Milvus** → [[Milvus]]
- 🏗 **搜尋引擎** → [[qmd|QMD]]

## 是什麼

Elasticsearch 是一個分散式搜尋與分析引擎，也是可擴展的資料儲存和向量資料庫，專為生產級工作負載的速度和相關性最佳化。它是 Elastic Stack（ELK Stack）的基礎元件，廣泛用於全文搜尋、日誌分析、指標監控等場景。

近年 Elasticsearch 大力佈局 AI 領域，新增了向量搜尋能力，支援 Retrieval Augmented Generation (RAG) 場景。它可以在海量資料集上執行近即時搜尋、向量搜尋，並與生成式 AI 應用整合。Elastic 團隊也持續在 Lucene 和機器學習方面貢獻創新。

## 核心特色

- **分散式架構**：天然分散式設計，自動分片（sharding）和副本（replica），水平擴展處理 PB 級資料
- **向量搜尋**：內建向量資料庫能力，支援 dense_vector 和 sparse_vector，可用於語意搜尋和 RAG
- **全文搜尋**：基於 Apache Lucene，提供強大的全文搜尋、相關性評分、聚合分析
- **REST API**：所有操作透過 HTTP REST API 進行，支援 curl 和多種語言客戶端（Python、Java、JS、Go 等）
- **混合搜尋**：支援全文搜尋 + 向量搜尋的混合模式，結合 BM25 和向量相似度評分
- **Kibana 整合**：搭配 Kibana 提供資料視覺化、Dev Tools Console、儀表板

## 怎麼用

### 本地快速啟動（Docker）

```bash
# 一鍵啟動 Elasticsearch + Kibana
curl -fsSL https://elastic.co/start-local | sh
```

啟動後可存取：
- Elasticsearch: http://localhost:9200
- Kibana: http://localhost:5601

### Python 客戶端

```bash
pip install elasticsearch
```

```python
import os
from elasticsearch import Elasticsearch

client = Elasticsearch(
    "http://localhost:9200",
    basic_auth=("elastic", os.getenv("ES_LOCAL_PASSWORD"))
)

# 建立索引
client.indices.create(index="my-index")

# 新增文件
client.index(index="my-index", id=1, document={
    "firstname": "Jennifer",
    "lastname": "Walters"
})

# 搜尋
result = client.search(index="my-index", query={
    "match": {"firstname": "Jennifer"}
})
```

### 向量搜尋範例

```python
# 建立含向量欄位的索引
client.indices.create(index="embeddings", mappings={
    "properties": {
        "embedding": {"type": "dense_vector", "dims": 768}
    }
})

# 向量相似度搜尋
client.search(index="embeddings", query={
    "knn": {
        "field": "embedding",
        "query_vector": query_embedding,
        "k": 10,
        "num_candidates": 100
    }
})
```

### 從原始碼建置

```bash
git clone https://github.com/elastic/elasticsearch.git
cd elasticsearch
./gradlew localDistro
```

## 跟其他方案的關係

| 面向 | Elasticsearch | Milvus | Qdrant | Supabase (pgvector) |
|------|---------------|--------|--------|---------------------|
| 類型 | 搜尋引擎 + 向量 DB | 專用向量 DB | 專用向量 DB | PostgreSQL 擴充 |
| 向量搜尋 | ✅ dense/sparse | ✅ 專用 | ✅ 專用 | ✅ pgvector |
| 全文搜尋 | ✅ Lucene BM25 | ❌ | ❌ | ✅ PostgreSQL FTS |
| 分散式 | ✅ 原生 | ✅ | ✅ | ❌ (單節點) |
| 混合搜尋 | ✅ 原生 | ❌ | ❌ | ❌ (需手動) |
| 語言 | Java | Go | Rust | C |
| 適合場景 | 搜尋+RAG | 大規模向量 | 輕量向量 | 一體化後端 |

Elasticsearch 與 [[Milvus]]、[[Qdrant]]、[[Chroma]] 等專用向量資料庫不同：它是一個完整的搜尋引擎，向量搜尋只是其能力之一。在 RAG 場景中，Elasticsearch 的混合搜尋（全文 + 向量）能提供更好的檢索品質。與 [[supabase-supabase|Supabase]] 的 pgvector 相比，Elasticsearch 在大規模分散式場景更有優勢，但部署和維運成本更高。[[ragflow|RAGFlow]] 等專案可以使用 Elasticsearch 作為後端搜尋引擎。

← [[向量資料庫]] · [[rag|RAG]] · [[Milvus]]


## 相關概念


← [[向量資料庫]] · [[rag]] · [[Milvus]] · [[qmd]]

## 來源

- [GitHub: elastic/elasticsearch](https://github.com/elastic/elasticsearch)
- [官方網站](https://www.elastic.co/products/elasticsearch)
- [Search Labs](https://www.elastic.co/search-labs)
- [elasticsearch-labs](https://github.com/elastic/elasticsearch-labs)
- raw/2026-07-04-elasticsearch.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/elastic/elasticsearch |
| Stars | ⭐77337|
| License | Elastic License |
| 收錄日期 | 2026-07-04 |
