---
title: Qdrant
slug: Qdrant
created: 2026-05-10
updated: 2026-05-10
stars: 31,189
language: zh-TW
---

# Qdrant

> ⭐31,189 · Rust 寫的高效能向量搜尋引擎，支援過濾、分片、多租戶。31.2K ⭐。

## 快速導航
- 📚 **RAG** → [[rag]]（Qdrant 是 RAG 系統的向量搜尋引擎）
- 🔍 **知識圖譜** → [[Knowledge-Graph]]（Qdrant 支援向量+標量混合搜尋）

## 是什麼

Qdrant（讀 quadrant）是 Rust 寫的高效能向量搜尋引擎和向量資料庫，支援豐富的過濾條件、分片和多租戶。它的 Rust 實現保證了高效能和記憶體安全，適合需要精細過濾的 RAG 和語義搜尋場景。31K+ stars，是向量資料庫領域的主流選擇之一。

## 核心特色

- **Rust 實現**：高效能、記憶體安全、可靠，無 GC 暫停
- **豐富過濾**：metadata 過濾 + 向量搜尋同時進行，支援布林邏輯組合
- **分片和多租戶**：企業級部署支援，橫向擴展無瓶頸
- **量化壓縮**：Scalar、Product、Binary 量化降低記憶體占用，最高 64x 壓縮比
- **混合搜尋**：向量 + 關鍵字（稀疏向量）聯合搜尋
- **Agent Skills**：提供 Qdrant Skill 讓 AI Coding Assistant 直接使用向量搜尋
- **Qdrant Cloud**：完全管理的雲端版本，免運維
- **OpenAPI 相容**：RESTful API + gRPC 雙協議
- **快照與復原**：自動快照、增量備份、零停機遷移

## 怎麼用

```bash
# Docker 啟動
docker run -p 6333:6333 qdrant/qdrant

# 或用 pip 安裝
pip install qdrant-client
```

```python
from qdrant_client import QdrantClient
from qdrant_client.models import Distance, VectorParams, PointStruct

client = QdrantClient(url="http://localhost:6333")

# 建立集合
client.create_collection(
    collection_name="docs",
    vectors_config=VectorParams(size=1536, distance=Distance.COSINE),
)

# 插入資料
client.upsert(
    collection_name="docs",
    points=[
        PointStruct(id=1, vector=[0.1, ...], payload={"source": "wiki", "lang": "zh"}),
    ],
)

# 搜尋（帶過濾條件）
results = client.search(
    collection_name="docs",
    query_vector=[0.1, ...],
    query_filter={"must": [{"key": "lang", "match": {"value": "zh"}}]},
    limit=5,
)
```

## 跟其他方案的關係

| 專案 | 定位 | 語言 | 過濾能力 | 特色 |
|------|------|------|---------|------|
| Qdrant | 向量資料庫 | Rust | ✅ 豐富過濾 | 輕量高效、記憶體安全 |
| [[Milvus]] | 向量資料庫 | Go/C++ | ✅ 過濾 | 重分散式大規模 |
| [[Chroma]] | 向量資料庫 | Python | 有限 | 極簡原型，快速上手 |
| Pinecone | 向量資料庫（雲端） | — | ✅ 過濾 | 完全託管，免運維 |
| Weaviate | 向量資料庫 | Go | ✅ 過濾 | 內建模組化（向量化和生成） |
| [[rag]] | 概念頁 | — | — | Qdrant 是 RAG 系統的向量搜尋引擎 |

## 相關概念
← [[rag]] · [[Knowledge-Graph]]

## 來源
- raw/2026-05-10-qdrant.md

---

- **GitHub**: https://github.com/qdrant/qdrant
- **Stars**: ⭐31,189
- **License**: Apache-2.0
- **收錄日期**: 2026-05-10

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/qdrant/qdrant |
| **Stars** | ⭐31,189 |
| **收錄日期** | 2026-05-10 |
