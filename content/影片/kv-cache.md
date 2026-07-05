---
title: KV Cache — 加快語言模型生成速度 (2/2)
slug: kv-cache
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
topics: [llm, kv-cache, gqa, mla, sliding-window, teaching]
---

# KV Cache — 加快語言模型生成速度 (2/2)

> ⭐— · KV Cache 是推論加速的關鍵技術：把已算好的 Key/Value 存下來避免重算。但 KV Cache 會撐爆 GPU 記憶體，因此衍生出 GQA、MLA、Sliding Window、Streaming LLM、Pruning 等方法來節省空間。

## 快速導航

- ⚡ [[flash-attention]] · [[LLM]] · [[Token-Optimization]] · [[llm-internals]]
- 💾 **Flash Attention** → [[flash-attention]]（KV Cache 優化的基礎技術）
- 🧭 **位置編碼演進** → [[positional-embedding-evolution]]（Transformer 另一個關鍵組件）
- 🧠 **LLM 總覽** → [[LLM]]（KV Cache 是現代 LLM 推論的必備技術）
- ⚡ **Token 優化** → [[Token-Optimization]]（KV Cache 節省直接降低推論成本）

## 是什麼

KV Cache 是語言模型推論加速的核心技術。語言模型生成分兩階段：**Prefill**（一次處理整個 prompt）和 **Decode**（逐 token 生成）。在 Decode 階段，每個新 token 只需計算自己的 Query，之前的 Key 和 Value 可以直接從快取讀取，不需重新計算。

KV Cache 解決了「重算」的問題，但帶來了「空間」的問題：以 Gemma 2 27B 為例，每個 token 佔 736KB，A100 80GB 只能存 ~114K tokens，遠遠不夠長 context 需求。因此衍生出多種節省 KV Cache 空間的方法。

## 核心特色

- **避免重算**：Decode 階段每個新 token 只需計算 Q，之前的 K 和 V 直接從快取讀取，省去 O(n²) 的重複計算
- **空間壓力**：KV Cache 佔用大量 GPU 記憶體，Gemma 2 27B 每個 token 就佔 736KB，長 context 需求（10萬+ tokens）會直接撐爆 GPU
- **GQA 折衷**：Grouped-Query Attention 讓多個 Query 共用一組 K/V，在 MHA（品質最好但空間最大）和 MQA（空間最小但品質下降明顯）之間取得平衡，主流模型（LLaMA、Gemma）都採用此方法
- **MLA 突破**：DeepSeek 的 Multi-Head Latent Attention 將多組 K/V 壓縮成低維向量 C，且不需要解壓縮就能直接計算 attention（Q' · C 數學等價於 Q · K），表現甚至比原始 MHA 稍好
- **Streaming LLM 洞見**：只需在 Sliding Window 加上最前面幾個 token，超長 sequence 也能保持表現，原因是模型在「沒什麼好 attend」時會 attend 第一個 token，拿掉會導致表現崩潰

## 怎麼用

### 快取最佳化實踐

```python
# System prompt 排列原則（影響 cache hit）
# ✅ 好的做法：穩定內容在前，變動內容在後
system_prompt = """
[穩定] 你是一個 AI 助手。
[穩定] 工具列表：...
[穩定] 安全規則：...
[變動] 今日日期：2026-05-31
[變動] 使用者上次對話摘要：...
"""

# ❌ 壞的做法：變動內容穿插在穩定內容中
# cache 無法命中，每次都要重新計算
```

### 跨對話 KV Cache（Cache Input）

- **只有相同前綴（prefix）的 sequence 才能共用 KV Cache**
- AI Agent 的 system prompt 通常是固定的 → 很容易 cache hit
- **System prompt 排列原則**：越穩定的內容放越前面，越可能變動的放越後面
- Prompt 寫法也影響 cache hit：`幫我訂從 X 到 Y 的班機，X=台北, Y=波士頓` 比 `幫我訂從台北到波士頓的班機` 更容易命中
- 實測：Gemini 2.5 Pro 和 GPT-4o 可達 **50%+ 成本節省**
- OpenAI cache input 打 1 折（\$2.5 → \$0.25 per million tokens）

### 方法選擇指南

| 場景 | 推薦方法 | 說明 |
|------|----------|------|
| 一般服務 | GQA | 平衡品質和空間 |
| 高品質需求 | MHA + 量化 | 最高品質，用量化省空間 |
| 超長 context | Streaming LLM | 保留前幾個 token + sliding window |
| 成本敏感 | MLA (DeepSeek) | 壓縮空間且品質不降 |
| 短對話 | MQA | 最省空間，短對話品質差異小 |

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[flash-attention]] | 基礎 | Flash Attention 的 chunk 運算依賴 KV Cache 的分塊存取 |
| [[LLM]] | 應用層 | KV Cache 是現代 LLM 推論的必備技術 |
| [[Token-Optimization]] | 互補 | KV Cache 節省直接降低推論 token 成本 |
| [[llm-internals]] | 組成 | KV Cache 是 LLM 底層技術之一 |
| [[positional-embedding-evolution]] | 並行 | 位置編碼設計必須相容 KV Cache |
| [[gemma4-mtp-drafters]] | 互補 | 投機解碼重用 KV Cache 來加速推理 |
| [[Context-Database]] | 類比 | Context DB 的分層載入類似 KV Cache 的分塊策略 |

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
- 表現甚至比原始 MHA 稍好

### 4. Sliding Window Attention
- 只 attend 固定範圍內的 token（如最近 4096 個）
- 多層疊加後，receptive field 可以更大
- Mistral 7B 曾使用此方法

### 5. Streaming LLM
- Sliding Window + 保留最前面幾個 token
- 發現：模型在「沒什麼好 attend」時，會 attend 到第一個 token
- 加上前幾個 token 後，即使超長 sequence 也能保持表現
- **不需要額外訓練**

### 6. KV Cache Pruning
- 觀察：多數 token 的 K/V 幾乎沒被 attend
- 做法：丟掉很少被 attend 的 K/V，只保留重要的
- 壓縮 5 倍（只留 20%）仍可保持表現
- 但困難任務上可能傷害表現

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

## 相關概念

← [[flash-attention]] · [[LLM]] · [[Token-Optimization]] · [[llm-internals]] · [[positional-embedding-evolution]] · [[gemma4-mtp-drafters]]

## 參考資料

- [李宏毅 YouTube 課程](https://www.youtube.com/watch?v=fDQaadKysSA)
- [Flash Attention 論文](https://arxiv.org/abs/2205.14135)
- [Streaming LLM 論文](https://arxiv.org/abs/2309.17453)

## 來源

- [KV Cache 課程筆記](../raw/2026-05-03-kv-cache.md)

---

_此頁由 daily-llm-trending 自動維護_