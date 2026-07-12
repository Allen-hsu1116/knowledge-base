---
title: Zvec
slug: alibaba-zvec
created: 2026-07-07
updated: 2026-07-07
stars: 13506
language: C++
topics:
  - vector-database
  - RAG
  - semantic-search
  - llm-memory
  - embedded
---

# Zvec

> ⭐13.5k · 阿里巴巴開源 in-process 向量資料庫，毫秒級搜尋十億級向量，零伺服器零設定

## 快速導航
- [[rag]]
- [[向量資料庫]]
- [[AI-Agent]]
- [[MCP]]
- [[Milvus]]


快速導航：[[rag]] · [[向量資料庫]] · [[AI-Agent]] · [[MCP]]

## 是什麼

Zvec 是阿里巴巴開源的 in-process 向量資料庫，設計為直接嵌入應用程式中運行，無需獨立伺服器或額外設定。它在阿里巴巴集團內部經過實戰測試，提供生產級的低延遲和大規模相似度搜尋能力。

與 Milvus、Qdrant 等需要獨立部署的向量資料庫不同，Zvec 以嵌入式庫的形式存在——就像 SQLite 之於 PostgreSQL。這意味著它可以在任何地方運行：Jupyter Notebook、伺服器、CLI 工具，甚至邊緣裝置。安裝後幾秒就能開始搜尋，不需要設定伺服器或複雜的配置。

Zvec v0.5.0（2026 年 6 月）引入了原生全文搜尋（FTS）、混合檢索（向量+全文+標量過濾單一查詢）、DiskANN 磁碟索引（大幅降低記憶體使用），以及 Go/Rust SDK 和 RISC-V 支援，使它成為 RAG 和 AI Agent 記憶系統的輕量級基礎設施。

## 核心特色

- **極速搜尋**：毫秒級搜尋數十億級向量，效能經過阿里巴巴大規模生產環境驗證
- **In-process 嵌入式**：無需伺服器、無需設定，pip install 後直接在程式中使用，就像 SQLite 一樣簡單
- **Dense + Sparse 向量**：支援密集向量和稀疏向量、多向量查詢，以及多種索引類型（記憶體到磁碟）
- **原生全文搜尋**：v0.5.0 新增，可直接在字串欄位上建立 FTS 索引，用自然語言或結構化表達式查詢
- **混合搜尋**：在單一 MultiQuery 中融合向量相似度、全文搜尋和結構化過濾，實現精準檢索
- **持久化保障**：Write-Ahead Logging（WAL）確保資料不會遺失，即使程式崩潰或斷電
- **多語言 SDK**：Python、Node.js、Go、Rust、Dart/Flutter 官方 SDK，跨平台支援 Linux/macOS/Windows
- **DiskANN 索引**：v0.5.0 新增的磁碟索引，將大部分索引保留在磁碟上，大幅降低大規模資料集的記憶體使用

## 怎麼用

### 安裝

```bash
# Python
pip install zvec

# Node.js
npm install @zvec/zvec

# Go
go get github.com/zvec-ai/zvec-go

# Rust
cargo add zvec
```

### 快速開始

```python
import zvec

# 定義 collection schema
schema = zvec.CollectionSchema(
    name="example",
    vectors=zvec.VectorSchema("embedding", zvec.DataType.VECTOR_FP32, 4),
)

# 建立 collection
collection = zvec.create_and_open(path="./zvec_example", schema=schema)

# 插入文件
collection.insert([
    zvec.Doc(id="doc_1", vectors={"embedding": [0.1, 0.2, 0.3, 0.4]}),
    zvec.Doc(id="doc_2", vectors={"embedding": [0.2, 0.3, 0.4, 0.1]}),
])

# 向量相似度搜尋
results = collection.query(
    zvec.VectorQuery("embedding", vector=[0.4, 0.3, 0.3, 0.1]),
    topk=10
)

print(results)
```

### 混合搜尋

```python
# 向量 + 全文 + 標量過濾 單一查詢
results = collection.query(
    zvec.MultiQuery(
        vector=zvec.VectorQuery("embedding", vector=[0.4, 0.3, 0.3, 0.1]),
        text=zvec.TextQuery("content", "AI agent"),
        filter=zvec.Filter("year > 2024"),
    ),
    topk=10
)
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 部署模式 | 混合搜尋 | 磁碟索引 | 語言 SDK |
|------|-------|------|---------|---------|---------|---------|
| **Zvec** | ⭐13.5k | In-process | 嵌入式庫 | ✅ v0.5.0 | ✅ DiskANN | Python/Node/Go/Rust/Dart |
| [[Milvus]] | ⭐44.2k | 雲原生 | 獨立伺服器 | ✅ | ✅ | Python/Go/Java/Node |
| [[Qdrant]] | ⭐31.2k | 雲原生 | 獨立伺服器 | ✅ | ✅ | Python/Rust/JS/Go |
| [[Chroma]] | ⭐27.9k | 嵌入式+伺服器 | 兩種模式 | ✅ | ❌ | Python/JS |
| [[yichuan-w-LEANN\|LEANN]] | ⭐11.8k | 嵌入式 | 嵌入式庫 | ✅ | ❌ | Python |

← [[rag]] · [[向量資料庫]] · [[AI-Agent]] · [[MCP]]

## 相關概念

← [[rag] · [[向量資料庫] · [[AI-Agent] · [[MCP] · [[Milvus]

## 來源

- GitHub: <https://github.com/alibaba/zvec>
- 原始 README: `raw/2026-07-07-alibaba-zvec.md`
- 官方文件: <https://zvec.org/en/docs/db/>
- Benchmarks: <https://zvec.org/en/docs/db/benchmarks/>
- DeepWiki: <https://deepwiki.com/alibaba/zvec>

---

| 項目 | 值 |
|------|-----|
| GitHub | [alibaba/zvec](https://github.com/alibaba/zvec) |
| Stars | ⭐13,506 |
| License | Apache-2.0 |
| Language | C++ |
| 收錄日期 | 2026-07-07 |