---
title: 位置編碼演進：Absolute → Relative → RoPE → 無 Positional Embedding
slug: positional-embedding-evolution
created: 2026-05-03
source: https://www.youtube.com/watch?v=Ll-wk8x3G_g
date: 2026-05-03
author: 李宏毅 (Hung-yi Lee)
channel: Hung-yi Lee
updated: 2026-06-14
stars: —
language: zh-TW
topics: [llm, positional-embedding, sinusoidal, alibi, rope, teaching]
---

# 位置編碼演進：Absolute → Relative → RoPE → 無 Positional Embedding

> ⭐— · Transformer 的 Self-Attention 不天生包含位置資訊。位置編碼從 Sinusoidal（絕對位置）→ ALiBi（相對位置偏壓）→ RoPE（旋轉位置編碼）一路演進，每種方法都有其取捨。

**來源**: 李宏毅 YouTube 課程
**影片**: https://www.youtube.com/watch?v=Ll-wk8x3G_g

## 是什麼

這是李宏毅對 Transformer 位置編碼演進的系統性講解。Self-Attention 是置換不變的（permutation invariant），把輸入 token 順序打亂，輸出的 weighted sum 不變。「你打我」和「我打你」意義不同，但 attention 算出最後位置的 embedding 一樣。因此必須額外告訴 Transformer 每個 token 的位置——這就是位置編碼的作用。

從最早的 Sinusoidal（絕對位置），到 ALiBi（相對位置偏壓），到目前主流的 RoPE（旋轉位置編碼），再到「完全不加位置編碼也行？」的實驗發現，每種方法都有其設計理念和取捨。

## 核心特色

- **為什麼需要 Positional Embedding**：Self-Attention 是置換不變的，必須額外注入位置資訊
- **Sinusoidal**：最早的絕對位置編碼，間接能考慮相對位置但影響不夠純粹
- **ALiBi**：極度簡單，Train Short Test Long，但太粗暴——假設遠距離一定不重要
- **RoPE**：目前主流，旋轉 Q/K 向量注入位置，不改變 attention 計算流程，Flash Attention 和 KV Cache 可直接套用
- **RoPE ≠ 距離越遠 attention 越小**：常見誤解，實際上不同維度旋轉速度不同，可產生鋸齒狀波動
- **位置內插與 NTK-Aware 縮放**：解決 Train Short Test Long 問題的技術

## 快速導航


- ⚡ **Flash Attention** → [[flash-attention]]（減少記憶體搬運的最佳化）
- 🗄️ **KV Cache** → [[kv-cache]]（避免重算 K/V 的快取機制）
- 🧠 **LLM** → [[LLM]]（大型語言模型總覽）
- 🔢 **RoPE** → 旋轉位置編碼（目前主流方法）

## 為什麼需要 Positional Embedding

Self-Attention 是置換不變的（permutation invariant）：把輸入 token 順序打亂，輸出的 weighted sum 不變。「你打我」和「我打你」意義不同，但 attention 算出最後位置的 embedding 一樣。因此必須額外告訴 Transformer 每個 token 的位置。

## 1. Sinusoidal Positional Embedding（絕對位置）

最早的方法（Transformer 原始論文，2017）：
- 每個位置 k 有一個固定的 embedding P_k
- 偶數維度用 sin(k / 10000^(2i/d))，奇數維度用 cos(k / 10000^(2i/d))
- 每 2 個維度可看作 2D 平面上的旋轉指針，不同維度旋轉速度不同
- **關鍵性質**：P_{k+r} = M_r × P_k（矩陣 M_r 只跟相對距離 r 有關）
- 這讓 Sinusoidal 間接能考慮相對位置，但影響不夠純粹

## 2. ALiBi — Attention with Linear Biases（相對位置）

- 不加 Positional Embedding，直接在 attention 分數減去 b × |m-n|
- b 是手動設定的常數（如 0.5, 1），不同 head 可設不同的 b
- 距離越遠 → attention 越小（單調遞減）
- **優點**：極度簡單，在短 sequence 訓練後可外推到更長 sequence（Train Short Test Long）
- **缺點**：太粗暴——假設遠距離 token 一定不重要，無法讓模型「跳過一個 token 看更遠的」

## 3. RoPE — Rotary Positional Embedding（旋轉位置編碼）

目前主流方法（LLaMA、Qwen、Gemma 都使用）：

### 核心想法
- 不加 embedding，而是**旋轉** Q 和 K 向量來注入位置資訊
- 每 2 個維度一組，旋轉角度 = 位置 × θ_i
- θ_i = 1 / 10000^(2i/d)（與 Sinusoidal 類似的設計）

### 關鍵性質
- Q^M · K^N = Q · R_{M-N} · K（attention 只跟相對位置 M-N 有關）
- 等價於在 Q 上乘一個只跟相對距離有關的旋轉矩陣
- **不改變 attention 計算流程**，Flash Attention 和 KV Cache 都能直接套用

### RoPE ≠ 距離越遠 attention 越小
- 常見誤解：RoPE 讓遠距離 attention 變小
- 實際上：不同維度旋轉速度不同，可能出現鋸齒狀波動
- 優勢：可以製造「跳過一個 token 看更遠的」attention pattern（如「我的貓」→ 貓比的更重要）

### Train Short Test Long 問題
- 訓練時最長看過 N 個 token，測試時超過 N 就會崩潰
- 原因：旋轉角度從未見過，模型無法處理

### 解法：位置內插與 NTK-Aware 縮放

| 方法 | 做法 | 儒點 |
|------|------|------|
| Position Interpolation | 直接壓縮位置編號到訓練範圍內 | 可能破壞相鄰 token 關係 |
| NTK-Aware Scaling | 調整 θ_i 的 base（10000→更大）讓旋轉更慢 | 保留近距離解析度，拉遠距離 |
| YaRN | 結合 NTK 縮放 + 溫度調整 + 混合策略 | 目前效果最好的方法之一 |

## 4. 沒有 Positional Embedding 也能運作？

實驗發現：某些情況下完全不加位置編碼，模型仍然能學到順序資訊：
- Causal mask（只能看左邊）本身就隱含了位置資訊
- 但明確的位置編碼仍然顯著提升表現

## 怎麼用

### 選擇位置編碼方法
- **新專案**：用 RoPE，目前主流且相容 Flash Attention 和 KV Cache
- **需要超長 context**：用 RoPE + NTK-Aware Scaling 或 YaRN
- **ALiBi 場景**：簡單場景需要 Train Short Test Long，但已被 RoPE 取代

### 實務考量
- RoPE 是目前所有主流模型（LLaMA、Qwen、Gemma）的選擇
- Flash Attention 和 KV Cache 都與 RoPE 相容，不需要額外處理
- 位置內插會破壞近距離 token 關係，NTK-Aware Scaling 更安全

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|------|------|------|
| [[flash-attention]] | 記憶體最佳化 | RoPE 與 Flash Attention 相容，不需額外處理 |
| [[kv-cache]] | 推論加速 | RoPE 與 KV Cache 相容，旋轉位置可直接快取 |
| [[LLM]] | 語言模型 | 位置編碼是 LLM 的基礎組件 |
| [[llm-internals]] | LLM 底層 | 位置編碼是底層技術的一部分 |

## 方法比較總結

| 方法 | 類型 | 相對位置 | 需訓練 | 外推能力 | 主流採用 |
|------|------|---------|--------|----------|----------|
| Sinusoidal | 絕對 | 間接 | ❌ | 差 | ❌（歷史） |
| ALiBi | 相對偏壓 | 直接 | ❌（手動） | 強 | ❌（被 RoPE 取代） |
| RoPE | 旋轉 | 直接 | ❌ | 中（需縮放技巧） | ✅ |
| T5 Bias | 相對偏壓 | 直接 | ✅ | 差 | ❌ |

## 相關概念


- [[flash-attention|Flash Attention]] — 減少記憶體搬運
- [[kv-cache|KV Cache]] — 避免重算 K/V
- [[LLM|LLM 總覽]]

← [[flash-attention]] · [[kv-cache]] · [[LLM]]

## 來源

- [李宏毅 YouTube 課程](https://www.youtube.com/watch?v=Ll-wk8x3G_g)
- [RoPE 論文](https://arxiv.org/abs/2104.09864)
- [ALiBi 論文](https://arxiv.org/abs/2108.12409)
- raw/2026-05-03-positional-embedding-evolution.md
- **收錄日期**: 2026-05-03
- **License**: 未標示

---

| 欄位 | 資訊 |
|------|------|
| GitHub | 不適用（非 GitHub 專案；見來源） |
| Stars | ⭐未標示 |
| License | 未標示 |
| 收錄日期 | 2026-05-03 |
