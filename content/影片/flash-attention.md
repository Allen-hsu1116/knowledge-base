---
source: https://www.youtube.com/watch?v=vXb2QYOUzl4
date: 2026-05-03
author: 李宏毅 (Hung-yi Lee)
channel: Hung-yi Lee
---

# Flash Attention — 加快語言模型生成速度

> Flash Attention 是一種不改變 attention 計算結果、隨插即用的 Transformer 加速技術。核心想法：減少 GPU HBM ↔ SRAM 之間的資料搬運次數，將原本多次讀寫壓縮為少數幾次。

## 快速導航
- 💾 **KV Cache** → [[kv-cache]]（Flash Attention 是 KV Cache 優化的基礎）
- 🧭 **位置編碼演進** → [[positional-embedding-evolution]]（Transformer 另一個關鍵組件）
- 🧠 **LLM 總覽** → [[LLM]]（Flash Attention 是現代 LLM 的預設元件）
- ⚡ **Token 優化** → [[Token-Optimization]]（Flash Attention 間接降低 token 推理成本）

**來源**: 李宏毅 YouTube 課程
**影片**: https://www.youtube.com/watch?v=vXb2QYOUzl4
**原始論文**: Flash Attention (2022)

## GPU 運算模型

GPU 有兩種記憶體：
- **HBM（倉庫）**：容量大但讀寫慢
- **SRAM（工作台）**：容量小但運算快

瓶頸不在運算，而在**資料搬運**。小精靈（Execution Unit）要從倉庫搬資料到工作台才能運算，搬運次數決定速度。

## 標準 Attention 的問題

標準 self-attention 計算 `A_hat = softmax(Q·K^T) · V` 時：
1. Q 與 K 做 dot product 得到 A（多個 chunk，多次讀寫）
2. 找 Amax（掃過所有 chunk）
3. 算 softmax 分母 Σexp(A_i - Amax)（再掃一遍）
4. 算 A_hat = exp(A_i - Amax) / Σ（又掃一遍）
5. A_hat 與 V 做 weighted sum 得到 O（再掃一遍）

每一步都要從 HBM 讀寫，Sequence 長度 L 愈長，搬運次數愈多。

## Flash Attention 核心技巧

### 在線 Softmax（Online Softmax）

關鍵洞察：可以在不知道全域 Amax 的情況下，逐 chunk 計算並**持續修正**：

1. 每個 chunk 找出局部最大值 `D_k`
2. 用 `D_k` 替代 Amax 計算 softmax，得到局部和 `S_k`
3. 下個 chunk 發現更大的值 `D_{k+1}` 時，修正前項：`S_k × exp(D_k - D_{k+1})`
4. 反覆修正直到最後一個 chunk，`D_B` 就是真正的 Amax

### 跳過顯式計算 A_hat

更進一步：**不計算完整的 attention weight**，直接計算輸出 O：

每個 chunk 的 O 也可修正：
- `O_k = O_{k-1} × (S_{k-1}/S_k) × exp(D_{k-1} - D_k) + 新 chunk 的加權和`

最終 `O_B` 就是正確的 attention 輸出，但從未真正算出 A_hat 矩陣。

## 結果

| 項目 | 說明 |
|------|------|
| 數值正確性 | 與標準 attention 理論上完全一致（實測誤差 ~10⁻⁷） |
| 模型綁定 | 無，隨插即用 |
| 速度提升 | Sequence 長度 4096 時加速約 8-9 倍 |
| 代價 | 演算法較複雜，需額外修正計算，但瑕不掩瑜 |

## 實測結果（Yi-34B）

| Sequence 長度 | 無 Flash Attention | 有 Flash Attention |
|---------------|-------------------|-------------------|
| ~7,300 tokens | 2.0s | 1.3s |
| 更長 | CUDA OOM | 仍可運行 |

## 為什麼重要

- 今天使用 LLM 時，**預設就在用 Flash Attention**（PyTorch 的 `scaled_dot_product_attention` 預設啟用）
- 是 KV Cache 優化的基礎（見 [[kv-cache|KV Cache]]）
- 展示了**演算法層面的硬體感知優化**：不改數學，只改計算順序

## 相關主題

- [[kv-cache|KV Cache]] — 減少推論時的 KV 重算
- [[positional-embedding-evolution|位置編碼演進]] — Transformer 另一個關鍵組件
- [[LLM|LLM 總覽]]

## 參考資料

- [Flash Attention 論文](https://arxiv.org/abs/2205.14135)
- [李宏毅 YouTube 課程](https://www.youtube.com/watch?v=vXb2QYOUzl4)

## 來源
- raw/2026-05-03-flash-attention.md