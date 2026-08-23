---
title: Chroma
slug: Chroma
created: 2026-05-10
updated: 2026-05-10
stars: 27,889
language: zh-TW
topics: [RAG, 向量資料庫]
---

# Chroma

> ⭐27889 · 開源 AI 向量資料庫，API 極簡（只有 4 個核心函數），適合快速原型。27.9K ⭐。

## 快速導航

- 📚 **RAG** → [[rag]]（Chroma 是 RAG 原型開發的首選向量資料庫）
- 🤖 **AI Agent** → [[AI-Agent]]（Chroma 常作為 Agent 的記憶層）

## 是什麼


Chroma 是開源 AI 向量資料庫，最大的特點是 API 極簡——只有 4 個核心函數（create_collection、add、query、get），5 分鐘就能跑起來。

它自動處理嵌入，不需要自己算向量，是 RAG 原型開發的首選。

## 核心特色

- **4 個核心 API**：create_collection、add、query、get，學習成本極低
- **自動嵌入**：內建嵌入模型，不用自己算向量，直接丟文字就行
- **過濾查詢**：metadata 和文件內容過濾，支援 where 條件
- **In-memory 模式**：零配置啟動，適合開發和測試
- **持久化模式**：簡單切換即可持久化到磁碟
- **Python + JavaScript 客戶端**：雙語言支援
- **Chroma Cloud**：無伺服器向量搜尋服務，適合生產環境
- **多使用者隔離**：支援多租戶資料隔離

## 怎麼用

```bash
pip install chromadb
```

```python
import chromadb

client = chromadb.Client()  # In-memory 模式
collection = client.create_collection("my-documents")

collection.add(
    documents=["This is document1", "This is document2"],
    metadatas=[{"source": "notion"}, {"source": "google-docs"}],
    ids=["doc1", "doc2"]
)

results = collection.query(query_texts=["search query"], n_results=2)

# 持久化模式
client = chromadb.PersistentClient(path="./chroma_db")

# 過濾查詢
results = collection.query(
    query_texts=["search query"],
    where={"source": "notion"},
    n_results=5
)
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[Milvus]] | 向量資料庫 | Chroma 適合原型，Milvus 適合十億級生產 |
| [[Qdrant]] | 向量搜尋引擎 | Chroma 更簡單，Qdrant 功能更豐富 |
| [[LangChain]] | LLM 框架 | LangChain 內建 Chroma 整合 |
| [[rag]] | 概念頁 | Chroma 是 RAG 原型的首選向量資料庫 |
| Pinecone | 雲端向量資料庫 | Pinecone 是 SaaS，Chroma 是開源自架 |
| Weaviate | 向量資料庫 | Weaviate 內建模組化，Chroma 更輕量 |

## 相關概念

← [[rag]] · [[AI-Agent]] · [[open-webui-open-webui]]

## 來源

- [GitHub：專案原始碼](https://github.com/chroma-core/chroma)
- raw/2026-05-10-chroma.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/chroma-core/chroma |
| Stars | ⭐27889|
| License | Apache-2.0 |
| 收錄日期 | 2026-05-10 |
