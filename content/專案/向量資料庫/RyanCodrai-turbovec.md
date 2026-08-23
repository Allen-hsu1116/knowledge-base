---
title: turbovec
slug: RyanCodrai-turbovec
created: 2026-07-18
updated: 2026-07-18
stars: 13309
language: Python
topics: ["ann", "avx512", "embedding", "faiss", "nearest-neighbor", "neon", "quant", "quantization", "rag", "rust", "simd", "turboquant", "vector-search"]
---

# turbovec

> ⭐13309 · Rust 向量索引，基於 Google TurboQuant 量化，16x 壓縮且搜尋比 FAISS 快

## 快速導航


- 🔍 **向量資料庫** → [[向量資料庫]]
- 🧠 **RAG** → [[rag]]
- ⚡ **模型推論與部署** → [[模型推論與部署]]

## 是什麼

turbovec 是一個用 Rust 寫的向量索引庫，提供 Python 綁定，核心建立在 Google Research 的 [TurboQuant](https://arxiv.org/abs/2504.19874) 演算法上。TurboQuant 是一種 data-oblivious 量化器——不需要看資料就能決定量化參數，因此不需要訓練階段，加入向量即索引。

它的核心賣點是壓縮率：1000 萬份文件的語料庫以 float32 儲存需要 31 GB，turbovec 壓縮到 4 GB，而且搜尋速度比 FAISS 更快。這讓它特別適合隱私敏感、記憶體受限或延遲敏感的 RAG 場景——完全本地運行，不仰賴任何託管服務。

SIMD 核心使用手寫的 NEON（ARM）和 AVX-512BW（x86）指令，在 ARM 上比 FAISS IndexPQFastScan 快 10-19%，在 x86 上 4-bit 配置也勝出。搜尋時還支援 allowlist 過濾，直接在 SIMD 核心內部以 32-vector block 粒度短路不含允許 slot 的區塊，避免無謂的計算。

## 核心特色

- **無訓練線上索引** — 加入向量即索引，不需要 train step、參數調優或隨語料增長重建索引。TurboQuant 的量化參數從數學推導而來（Lloyd-Max codebook），不依賴資料分布
- **SIMD 加速搜尋** — 手寫 NEON 和 AVX-512BW 核心，ARM 上比 FAISS 快 10-19%，x86 上 4-bit 配置領先。nibble-split lookup table 最大化吞吐
- **搜尋時過濾** — 傳入 id allowlist 或 slot bitmask，核心直接在 SIMD block 粒度短路無關區塊。選擇性高的過濾器可跳過大部分 SIMD 計算成本
- **16x 壓縮** — 1536 維向量從 6144 bytes（FP32）壓縮到 384 bytes（2-bit），失真度在 Shannon 理論下界的 2.7 倍以內
- **框架整合** — LangChain、LlamaIndex、Haystack、Agno 的 drop-in 替換，pip install 即用
- **純本地** — 無託管服務、無資料外流，搭配任何開源 embedding 模型即可組成完全 air-gapped 的 RAG stack

## 怎麼用

### Python 安裝

```bash
pip install turbovec
```

### 基本用法

```python
from turbovec import TurboQuantIndex

index = TurboQuantIndex(dim=1536, bit_width=4)
index.add(vectors)
index.add(more_vectors)

scores, indices = index.search(query, k=10)

index.write("my_index.tv")
loaded = TurboQuantIndex.load("my_index.tv")
```

### 帶穩定 ID 的版本（支援刪除）

```python
import numpy as np
from turbovec import IdMapIndex

index = IdMapIndex(dim=1536, bit_width=4)
index.add_with_ids(vectors, np.array([1001, 1002, 1003], dtype=np.uint64))

scores, ids = index.search(query, k=10)
index.remove(1002)  # O(1) by id
```

### 混合檢索（過濾搜尋）

```python
allowed = np.array(db.execute("SELECT id FROM docs WHERE tenant=?", (t,)).fetchall(),
                   dtype=np.uint64)
scores, ids = idx.search(query, k=10, allowlist=allowed)
```

### Rust 用法

```bash
cargo add turbovec
```

```rust
use turbovec::TurboQuantIndex;

let mut index = TurboQuantIndex::new(1536, 4).unwrap();
index.add(&vectors);
let results = index.search(&queries, 10);
```

### 框架整合

```bash
pip install turbovec[langchain]    # 替換 InMemoryVectorStore
pip install turbovec[llama-index]  # 替換 SimpleVectorStore
pip install turbovec[haystack]     # 替換 InMemoryDocumentStore
pip install turbovec[agno]         # 替換 LanceDb
```

## 跟其他方案的關係

| 方案 | 語言 | 壓縮方式 | 訓練需求 | 過濾搜尋 | 本地優先 |
|------|------|----------|----------|----------|----------|
| **turbovec** | Rust+Python | TurboQuant (data-oblivious) | 無需 | SIMD 核心內建 | ✅ |
| FAISS IndexPQ | C+++Python | Product Quantization | 需要訓練 | 後過濾 | ✅ |
| [[Qdrant]] | Rust | Scalar quantization | 可選 | payload 過濾 | ✅ |
| [[alibaba-zvec\|Zvec]] | Rust | DiskANN + 量化 | 需要索引 | 混合搜尋 | ✅ |
| [[Milvus]] | Go | 多種（PQ/SQ/IVF） | 需要索引 | 元資料過濾 | 分散式 |

turbovec 的核心差異化在於「無訓練」和「極致壓縮」。FAISS 的 PQ 需要先用資料訓練碼本，turbovec 的 TurboQuant 從數學推導量化參數，加向量即索引。對於隱私敏感場景（不想把資料拿來訓練量化器）和快速原型開發特別有吸引力。

## 相關概念


← [[向量資料庫]] · [[rag]] · [[模型推論與部署]]

## 來源

- GitHub: https://github.com/RyanCodrai/turbovec
- TurboQuant 論文: https://arxiv.org/abs/2504.19874
- raw/2026-07-18-RyanCodrai-turbovec.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/RyanCodrai/turbovec |
| Stars | ⭐13309|
| License | MIT |
| 收錄日期 | 2026-07-18 |
