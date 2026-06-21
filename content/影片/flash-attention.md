---
title: Flash Attention — 加快語言模型生成速度
slug: flash-attention
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# Flash Attention — 加快語言模型生成速度

> ⭐— · Flash Attention 是一種不改變 attention 計算結果、隨插即用的 Transformer 加速技術。核心想法：減少 GPU HBM ↔ SRAM 之間的資料搬運次數，將原本多次讀寫壓縮為少數幾次。

## 快速導航

- ⚡ [[kv-cache]] · [[LLM]] · [[Token-Optimization]] · [[llm-internals]]
- 💾 **KV Cache** → [[kv-cache]]（Flash Attention 是 KV Cache 優化的基礎）
- 🧭 **位置編碼演進** → [[positional-embedding-evolution]]（Transformer 另一個關鍵組件）
- 🧠 **LLM 總覽** → [[LLM]]（Flash Attention 是現代 LLM 的預設元件）
- ⚡ **Token 優化** → [[Token-Optimization]]（Flash Attention 間接降低 token 推理成本）

## 是什麼

Flash Attention 是一種在 GPU 上加速 Transformer attention 計算的演算法。它不改變 attention 的計算結果（數學等價），只改變計算順序，將原本多次 GPU HBM↔SRAM 資料搬運壓縮為少數幾次，從而大幅提升推論速度。

簡單來說：標準 attention 每一步都要從慢速的大記憶體搬資料，Flash Attention 用「邊掃描邊修正」的技巧，把搬資料次數從 O(N²) 降到接近 O(N)。

### GPU 運算模型

GPU 有兩種記憶體：
- **HBM（倉庫）**：容量大但讀寫慢（A100 有 80GB）
- **SRAM（工作台）**：容量小但運算快（~十幾 MB）

瓶頸不在運算，而在**資料搬運**。小精靈（Execution Unit）要從倉庫搬資料到工作台才能運算，搬運次數決定速度。

## 核心特色

- **數學等價**：與標準 attention 理論上完全一致（實測誤差 ~10⁻⁷），不需要重新訓練模型，隨插即用
- **在線 Softmax（Online Softmax）**：核心技巧是在不知道全域 Amax 的情況下逐 chunk 計算並持續修正，每個 chunk 找出局部最大值，用指數修正來累加，最終結果完全正確
- **跳過顯式計算 A_hat**：更進一步，不計算完整的 attention weight，直接計算輸出 O，每個 chunk 的 O 也可透過指數修正來更新，最終 O 完全正確但 attention weight 從未被真正算出來
- **Sequence 長度 4096 時加速約 8-9 倍**：虛擬 QKV 實測結果；真實模型（Yi-34B）在 7300 tokens 時加速明顯，超長序列從 CUDA OOM 變為可正常運行
- **已成為預設**：PyTorch 的 `scaled_dot_product_attention` 預設啟用 Flash Attention，今天使用 LLM 時預設就在用

## 怎麼用

### 使用場景

- **長 context 推論**：Flash Attention 讓長序列的 attention 計算從不可行變為可行
- **KV Cache 優化基礎**：Flash Attention 是 KV Cache 分塊存取的基礎技術
- **本地模型推論**：配合 llama.cpp、vLLM 等框架，在消費級 GPU 上運行大模型

### 框架支援

| 框架 | Flash Attention 支援 | 說明 |
|------|----------------------|------|
| PyTorch 2.0+ | ✅ 預設啟用 | `scaled_dot_product_attention` |
| vLLM | ✅ 原生支援 | 用於高吞吐服務 |
| llama.cpp | ✅ 支援 | 本地推論加速 |
| Hugging Face | ✅ 支持 | 透過 `torch.nn.functional.scaled_dot_product_attention` |
| SGLang | ✅ 原生支援 | RadixAttention 前綴快取 |

### 程式碼範例

```python
# PyTorch 2.0+ 預設啟用 Flash Attention
import torch

# 直接使用，Flash Attention 自動啟用
attn_output = torch.nn.functional.scaled_dot_product_attention(
    query, key, value,
    attn_mask=None,
    is_causal=True
)

# 注意：使用 Flash Attention 時，
# 無法讀取 attention weight（因為根本沒算出來）
# 如果需要 attention weight，需明確關閉 Flash Attention
```

### 實測結果

| Sequence 長度 | 無 Flash Attention | 有 Flash Attention |
|---------------|-------------------|-------------------|
| ~7,300 tokens | 2.0s | 1.3s |
| 更長 | CUDA OOM | 仍可運行 |

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[kv-cache]] | 基礎 | Flash Attention 是 KV Cache 優化的基礎技術 |
| [[llm-internals]] | 組成 | Flash Attention 是 LLM 底層技術之一 |
| [[LLM]] | 應用層 | Flash Attention 是現代 LLM 推論的必備技術 |
| [[Token-Optimization]] | 間接 | Flash Attention 間接降低 token 推理成本 |
| [[positional-embedding-evolution]] | 並行 | 位置編碼是 Transformer 另一個關鍵組件 |
| [[gemma4-mtp-drafters]] | 互補 | 投機解碼解決記憶體頻寬瓶頸，Flash Attention 解決計算瓶頸 |
| [[vLLM]] | 實作 | vLLM 使用 Flash Attention + PagedAttention 實現高吞吐 |

## GPU 運算模型詳解

GPU 有兩種記憶體：
- **HBM（倉庫）**：容量大但讀寫慢
- **SRAM（工作台）**：容量小但運算快

瓶頸不在運算，而在**資料搬運**。小精靈（Execution Unit）要從倉庫搬資料到工作台才能運算，搬運次數決定速度。

### 標準 Attention 的問題

標準 self-attention 計算 `A_hat = softmax(Q·K^T) · V` 時：
1. Q 與 K 做 dot product 得到 A（多個 chunk，多次讀寫）
2. 找 Amax（掃過所有 chunk）
3. 算 softmax 分母 Σexp(A_i - Amax)（再掃一遍）
4. 算 A_hat = exp(A_i - Amax) / Σ（又掃一遍）
5. A_hat 與 V 做 weighted sum 得到 O（再掃一遍）

每一步都要從 HBM 讀寫，Sequence 長度 L 愈長，搬運次數愈多。

### Flash Attention 核心技巧

**在線 Softmax（Online Softmax）**：
1. 每個 chunk 找出局部最大值 `D_k`
2. 用 `D_k` 替代 Amax 計算 softmax，得到局部和 `S_k`
3. 下個 chunk 發現更大的值 `D_{k+1}` 時，修正前項：`S_k × exp(D_k - D_{k+1})`
4. 反覆修正直到最後一個 chunk，`D_B` 就是真正的 Amax

**跳過顯式計算 A_hat**：
- 不計算完整的 attention weight，直接計算輸出 O
- `O_k = O_{k-1} × (S_{k-1}/S_k) × exp(D_{k-1} - D_k) + 新 chunk 的加權和`
- 最終 `O_B` 就是正確的 attention 輸出，但從未真正算出 A_hat 矩陣

## 相關概念

← [[kv-cache]] · [[LLM]] · [[Token-Optimization]] · [[llm-internals]] · [[positional-embedding-evolution]] · [[gemma4-mtp-drafters]]

## 參考資料

- [Flash Attention 論文](https://arxiv.org/abs/2205.14135)
- [李宏毅 YouTube 課程](https://www.youtube.com/watch?v=vXb2QYOUzl4)

## 來源

- [Flash Attention 課程筆記](../raw/2026-05-03-flash-attention.md)

---

_此頁由 daily-llm-trending 自動維護_