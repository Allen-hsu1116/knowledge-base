# Qdrant

> Rust 寫的高效能向量搜尋引擎，支援過濾、分片、多租戶。31.2K ⭐。

## 快速導航
- 📚 **RAG** → [[rag]]（Qdrant 是 RAG 系統的向量搜尋引擎）
- 🔍 **知識圖譜** → [[Knowledge-Graph]]（Qdrant 支援向量+標量混合搜尋）

## 是什麼

Qdrant（讀 quadrant）是 Rust 寫的高效能向量搜尋引擎和向量資料庫，支援豐富的過濾條件、分片和多租戶。它的 Rust 實現保證了高效能和可靠性，適合需要精細過濾的 RAG 和語義搜尋場景。

## 核心特色

- **Rust 實現**：高效能、記憶體安全、可靠
- **豐富過濾**：metadata 過濾 + 向量搜尋同時進行
- **分片和多租戶**：企業級部署支援
- **量化壓縮**：Scalar、Product、Binary 量化降低記憶體占用
- **混合搜尋**：向量 + 關鍵字
- **Agent Skills**：提供 Qdrant Skill 讓 AI Coding Assistant 直接使用
- **Qdrant Cloud**：完全管理的雲端版本

## 怎麼用

```bash
# Docker 啟動
docker run -p 6333:6333 qdrant/qdrant
```

```python
from qdrant_client import QdrantClient

client = QdrantClient(url="http://localhost:6333")
client.create_collection(collection_name="docs", vectors_config={...})
client.upsert(collection_name="docs", points=[...])
results = client.search(collection_name="docs", query_vector=vec, limit=5)
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[Milvus]] | 向量資料庫 | Milvus 重分散式大規模，Qdrant 重輕量高效 |
| [[Chroma]] | 向量資料庫 | Chroma 極簡原型，Qdrant 生產就緒 |
| [[rag]] | 概念頁 | Qdrant 是 RAG 系統的向量搜尋引擎 |

## 相關概念
← [[rag]] · [[Knowledge-Graph]]

## 來源
- raw/2026-05-10-qdrant.md

---

- **GitHub**: https://github.com/qdrant/qdrant
- **Stars**: ⭐31,189
- **License**: Apache-2.0
- **收錄日期**: 2026-05-10