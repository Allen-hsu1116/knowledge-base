---
title: TurboVec
slug: RyanCodrai-turbovec
created: 2026-06-10
updated: 2026-06-10
stars: 10180
language: Python
topics:
  - ann
  - embedding
  - faiss
  - nearest-neighbor
  - quantization
  - rag
  - rust
  - simd
  - turboquant
  - vector-search
---

# TurboVec

> ⭐10.2k · 基於 Google TurboQuant 演算法的向量索引——10M 文件從 31GB 壓縮到 4GB，搜尋速度超越 FAISS。

## 快速導航

- 🧠 [[rag|RAG]] — 檢索增強生成核心概念
- 🔍 [[向量資料庫]] — 向量資料庫基礎設施
- ⚡ [[Token-Optimization|Token Optimization]] — LLM 效率優化相關

## 是什麼

TurboVec 是用 Rust 打造的向量索引庫，提供 Python 綁定，基於 Google Research 的 TurboQuant 演算法。TurboQuant 是一種「資料無關」（data-oblivious）的量化器，能達到 Shannon 下界的壓縮率，且不需要 codebook 訓練、不需要重建步驟。

核心突破在於：隨機旋轉後，每個坐標遵循可預測的分佈（Beta → Gaussian），使得 Lloyd-Max 純量量化能直接應用最優分桶，無需從資料學習。配合 TQ+ 逐坐標校正和長度重正規化評分，在低 bit-width 下也能維持高召回率。

## 核心特色

- **線上增量索引**：新增向量即索引，無需訓練步驟、無需重建
- **超越 FAISS**：ARM 上快 12-20%，x86 上持平或領先 FAISS IndexPQFastScan
- **搜尋時過濾**：傳入 allowlist 直接在 SIMD kernel 內過濾，不 over-fetch
- **16x 壓縮**：1536 維向量從 6,144 bytes (FP32) 壓縮到 384 bytes (2-bit)
- **純本地運行**：無需託管服務，資料不出機器，適合隱私敏感場景
- **框架整合**：LangChain、LlamaIndex、Haystack、Agno 的 drop-in 替換

## 怎麼用

**Python 安裝：**
```bash
pip install turbovec
```

**基本使用：**
```python
from turbovec import TurboQuantIndex

index = TurboQuantIndex(dim=1536, bit_width=4)
index.add(vectors)
index.add(more_vectors)  # 增量新增，不需要重建

scores, indices = index.search(query, k=10)

# 持久化
index.write("my_index.tv")
loaded = TurboQuantIndex.load("my_index.tv")
```

**帶 ID 的索引（支援刪除）：**
```python
import numpy as np
from turbovec import IdMapIndex

idx = IdMapIndex(dim=1536, bit_width=4)
idx.add_with_ids(vectors, np.array([1001, 1002, 1003], dtype=np.uint64))
scores, ids = idx.search(query, k=10)   # 回傳你的 uint64 ID
idx.remove(1002)                          # O(1) 刪除
```

**混合檢索（過濾搜尋）：**
```python
# SQL/BM25 先縮範圍，TurboVec 再做稠密重排
allowed = np.array(db.execute("SELECT id FROM docs WHERE tenant=?", (t,)).fetchall(),
                   dtype=np.uint64)
scores, ids = idx.search(query, k=10, allowlist=allowed)
```

## 跟其他方案的關係

| 專案 | 定位 | 與 TurboVec 的關係 |
|------|------|---------------------|
| [[Milvus]] | 分散式向量資料庫 | Milvus 側重分散式服務，TurboVec 側重嵌入式本地索引 |
| [[Qdrant]] | 向量搜尋引擎 | Qdrant 是獨立服務，TurboVec 是嵌入庫 |
| [[Chroma]] | 輕量向量資料庫 | Chroma 是 Python-first 向量 DB，TurboVec 是更極致的壓縮索引 |
| FAISS | Facebook 向量搜尋庫 | TurboVec 直接對標 FAISS IndexPQFastScan，在 ARM 上快 12-20% |
| [[rag\|RAG]] | 檢索增強生成 | TurboVec 可作為 RAG 的向量索引層，特別適合隱私和成本敏感場景 |
| [[yichuan-w-LEANN\|LEANN]] | 輕量 RAG 引擎 | LEANN 側重端到端 RAG，TurboVec 側重向量壓縮和搜尋效能 |

← [[rag]] · [[向量資料庫]] · [[Token-Optimization|Token Optimization]] · [[yichuan-w-LEANN|LEANN]]

## 來源

- GitHub: [RyanCodrai/turbovec](https://github.com/RyanCodrai/turbovec)
- 論文: [TurboQuant (arXiv:2504.19874)](https://arxiv.org/abs/2504.19874)
- raw/2026-06-10-turbovec.md

---

| 項目 | 內容 |
|------|------|
| GitHub | [RyanCodrai/turbovec](https://github.com/RyanCodrai/turbovec) |
| Stars | ⭐10,180 |
| License | MIT |
| Language | Python（Rust 核心） |
| 收錄日期 | 2026-06-10 |