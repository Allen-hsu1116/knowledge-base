---
title: Milvus
slug: Milvus
created: 2026-05-10
updated: 2026-05-10
stars: 44,202
language: zh-TW
topics: [RAG, 向量資料庫]
---

# Milvus

> ⭐44202 · 高效能雲原生向量資料庫，支援十億級向量搜尋。44.2K ⭐。

## 快速導航

- 📚 **RAG** → [[rag]]（Milvus 是 RAG 系統的向量搜尋基礎設施）
- 🔍 **知識圖譜** → [[Knowledge-Graph]]（Milvus 支援向量+標量混合搜尋）
- 🤖 **AI Agent** → [[AI-Agent]]（Milvus 常作為 Agent 的長期記憶層）

## 是什麼


Milvus 是高效能雲原生向量資料庫，用 Go 和 C++ 實現，支援十億級向量搜尋。

它提供分散式架構、GPU 加速、即時串流更新，是企業級 RAG 系統的標準選擇。

## 核心特色

- **十億級向量搜尋**：水平擴展，處理超大規模資料集
- **雲原生**：K8s 原生架構，支援分散式部署，儲存與運算分離
- **GPU 加速**：硬體加速搜尋，支援 NVIDIA GPU
- **即時串流更新**：不中斷服務即可更新資料
- **多種索引**：IVF、HNSW、DiskANN 等，適合不同場景
- **混合搜尋**：向量相似度 + 標量過濾，支援多向量欄位和重排序
- **Milvus Lite**：Python pip install 輕量版，適合原型開發和邊緣部署
- **RESTful API**：提供 gRPC 和 REST API 雙介面，方便各語言整合
- **多租戶支援**：RBAC 權限控制和資源隔離

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

```bash
# Milvus Lite（輕量模式，不需 Docker）
pip install pymilvus
# 直接使用本機 SQLite 後端
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[Qdrant]] | 向量搜尋引擎 | Qdrant 輕量 Rust 實現，Milvus 重分散式大規模 |
| [[Chroma]] | 向量資料庫 | Chroma 極簡適合原型，Milvus 適合生產大規模 |
| [[rag]] | 概念頁 | Milvus 是 RAG 系統的向量搜尋基礎設施 |
| Weaviate | 向量資料庫 | Weaviate 內建模組化，Milvus 更輕量更靈活 |
| Pinecone | 雲端向量資料庫 | Pinecone 是 SaaS，Milvus 是開源自架 |

## 相關概念

← [[rag]] · [[Knowledge-Graph]] · [[open-webui-open-webui]] · [[AI-Agent]]

## 來源

- [GitHub：專案原始碼](https://github.com/milvus-io/milvus)
- raw/2026-05-10-milvus.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/milvus-io/milvus |
| Stars | ⭐44202|
| License | Apache-2.0 |
| 收錄日期 | 2026-05-10 |
