---
source: https://www.youtube.com/watch?v=fDQaadKysSA
date: 2026-05-03
tags: [youtube, kv-cache, inference-optimization, gpu-memory, transformer, llm-speed, gqa, mla, sliding-window, lee-hung-yi]
author: 李宏毅 (Hung-yi Lee)
channel: Hung-yi Lee
---

# KV Cache — 加快語言模型生成速度 (2/2)

> KV Cache 是推論加速的關鍵技術：把已算好的 Key/Value 存下來避免重算。但 KV Cache 會撐爆 GPU 記憶體，因此衍生出 GQA、MLA、Sliding Window、Streaming LLM、Pruning 等方法來節省空間。

**來源**: 李宏毅 YouTube 課程
**影片**: https://www.youtube.com/watch?v=fDQaadKysSA

## 什麼是 KV Cache

語言模型生成分兩階段：
- **Prefill**：一次處理整個 prompt 的所有 token
- **Decode**：逐 token 生成，每個新 token 只需算自己的 Q，複用之前存下來的 K 和 V

每次生成新 token 時，不需要重新計算前面所有 token 的 K 和 V，直接從快取讀取。這就是 KV Cache。

## KV Cache 的問題

以 Gemma 2 27B 為例：
- 46 層 × 30 heads × 128 維 × 2 bytes (FP16) × 2 (K+V) = **736 KB/token**
- A100 80GB 只能存 ~114K tokens
- 長 context 需求（10萬+ tokens）會直接撐爆 GPU 記憶體

## 節省 KV Cache 的方法

### 1. Multi-Query Attention (MQA)
- 所有 Query 共用**同一組** K 和 V
- 大幅節省空間，但模型表現明顯下降

### 2. Grouped-Query Attention (GQA)
- 介於 MHA 和 MQA 之間：多個 Query 共用一組 K/V
- 例如 2 個 Query 共用 1 組 K/V → KV Cache 減半
- Gemma、LLaMA 等主流模型都有使用

### 3. Multi-Head Latent Attention (MLA)
- DeepSeek 使用的方法
- 將多組 K/V 壓縮成一個低維向量 C
- **神奇之處**：不需要解壓縮就能直接計算 Attention
  - Q · K = Q · (W_K · C) = (Q · W_K^T) · C = Q' · C
  - Weighted Sum 也可在壓縮空間中做，最後解壓縮一次即可
- 表現甚至比原始 MHA 稍好

### 4. Sliding Window Attention
- 只 attend 固定範圍內的 token（如最近 4096 個）
- 多層疊加後，receptive field 可以更大
- Mistral 7B 曾使用此方法

### 5. Streaming LLM
- Sliding Window + 保留最前面幾個 token
- 發現：模型在「沒什麼好 attend」時，會 attend 到第一個 token（attention 是強制的，權重和必須為 1）
- 如果不給第一個 token，模型表現會崩潰
- 加上前幾個 token 後，即使超長 sequence 也能保持表現
- **不需要額外訓練**

### 6. KV Cache Pruning
- 觀察：多數 token 的 K/V 幾乎沒被 attend
- 做法：丟掉很少被 attend 的 K/V，只保留重要的
- Scissorhands / H2O 等論文：壓縮 5 倍（只留 20%）仍可保持表現
- 但困難任務上可能傷害表現

## 跨對話的 KV Cache：Cache Input

- 前綴相同的 sequence 可以共用 KV Cache
- AI Agent 的 system prompt 通常固定 → 可以 cache hit
- OpenAI cache input 打 1 折（$2.5 → $0.25 per million tokens）
- **最佳實踐**：越穩定不動的內容放越前面（如工具列表），越可能變動的放越後面（如日期）
- 實測：在 Gemini 2.5 Pro 和 GPT-4o 上可省 50%+ 成本

## 方法比較總結

| 方法 | 改變 Attention | 需訓練 | 代價 |
|------|:-:|:-:|------|
| **Flash Attention** | ❌ | ❌ | 額外修正運算 |
| **KV Cache** | ❌ | ❌ | 佔用記憶體 |
| **GQA** | ✅ | ✅ | 簡化版 attention |
| **MLA** | ✅ | ✅ | 壓縮/解壓縮（但可避免） |
| **Sliding Window** | ✅ | 可選 | 限制 attend 範圍 |
| **Streaming LLM** | ✅ | 可選 | 需保留開頭 token |
| **KV Pruning** | ✅ | ❌ | 可能傷害表現 |
| **Speculative Decoding** | ❌ | ❌ | 額外小模型算力 |

## 相關主題

- [[flash-attention|Flash Attention]] — 減少記憶體搬運次數
- [[positional-embedding-evolution|位置編碼演進]] — Transformer 另一個關鍵組件
- [[LLM|LLM 總覽]]

## 參考資料

- [李宏毅 YouTube 課程](https://www.youtube.com/watch?v=fDQaadKysSA)
- [Flash Attention 論文](https://arxiv.org/abs/2205.14135)
- [Streaming LLM 論文](https://arxiv.org/abs/2309.17453)