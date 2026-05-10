# Milvus

> 高效能雲原生向量資料庫，支援十億級向量搜尋。44.2K ⭐。

## 快速導航
- 📚 **RAG** → [[rag]]（Milvus 是 RAG 系統的向量搜尋基礎設施）
- 🔍 **知識圖譜** → [[Knowledge-Graph]]（Milvus 支援向量+標量混合搜尋）

## 是什麼

Milvus 是高效能雲原生向量資料庫，用 Go 和 C++ 實現，支援十億級向量搜尋。它提供分散式架構、GPU 加速、即時串流更新，是企業級 RAG 系統的標準選擇。

## 核心特色

- **十億級向量搜尋**：水平擴展，處理超大規模資料集
- **雲原生**：K8s 原生架構，支援分散式部署
- **GPU 加速**：硬體加速搜尋
- **即時串流更新**：不中斷服務即可更新資料
- **多種索引**：IVF、HNSW、DiskANN 等
- **混合搜尋**：向量相似度 + 標量過濾
- **Milvus Lite**：Python pip install 輕量版，適合原型

## 怎麼用

```bash
# Docker 啟動
docker run -d --name milvus-standalone \
  -p 19530:19530 -p 9091:9091 \
  milvusdb/milvus:v2.4-latest
```

```python
from pymilvus import MilvusClient

client = MilvusClient("milvus_demo.db")
client.create_collection(collection_name="docs", dimension=768)

# 插入和搜尋
client.insert(collection_name="docs", data=data)
results = client.search(collection_name="docs", data=query_vector, limit=5)
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[Qdrant]] | 向量搜尋引擎 | Qdrant 輕量 Rust 實現，Milvus 重分散式大規模 |
| [[Chroma]] | 向量資料庫 | Chroma 極簡適合原型，Milvus 適合生產大規模 |
| [[rag]] | 概念頁 | Milvus 是 RAG 系統的向量搜尋基礎設施 |

## 相關概念
← [[rag]] · [[Knowledge-Graph]]

## 來源
- raw/2026-05-10-milvus.md

---

- **GitHub**: https://github.com/milvus-io/milvus
- **Stars**: ⭐44,202
- **License**: Apache-2.0
- **收錄日期**: 2026-05-10