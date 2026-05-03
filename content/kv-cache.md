# KV Cache：存下來就不用重算

> KV Cache 把已算好的 Key 和 Value 存下來避免重算，但倉庫空間有限，衍生出 GQA、MLA、Sliding Window、Streaming LLM 等一系列方法（詳細參考頁）

## 快速導航
- 🧠 **LLM 推論架構** → [[llm-knowledge-base]]（Transformer 推論流程與 attention 機制）
- 🛠 **推論加速方法群** → [[ai-workflow]]（Flash Attention + KV Cache + Speculative Decoding 的整體策略）
- 🔐 **Cache Input 定價** → [[prompt-security]]（前綴匹配的 cache hit 機制與成本節省）

## 核心內容

### KV Cache 基本原理
- 生成過程分 **Prefill**（一次輸入大量 token）和 **Decode**（逐 token 輸出）
- Decode 階段：新 token 的 Q 只需跟之前所有 K 算 attention，再用 V 做 weighted sum
- **核心想法**：已算好的 K 和 V 存下來，下次不用重算
- Q 不需存：每個新 token 只用自己的 Q

### 倉庫會被撐爆
- Gemma 2 27B 實例：46 層 × 30 heads × 128 維 × 2 bytes × 2 (K+V) = **736 KB/token**
- A100 80GB 只能存 ~114K tokens——對長 context 需求遠遠不夠

### 減少 KV Cache 空間的方法

| 方法 | 原理 | 改變 Attention？ | 需要訓練？ | 使用模型 |
|------|------|:---:|:---:|------|
| **Multi-Query Attention** | 所有 Query 共用一組 K、V | ✅ | ✅ | — |
| **Grouped-Query Attention (GQA)** | 多個 Query 共用一組 K、V | ✅ | ✅ | LLaMA, Gemma |
| **Multi-Head Latent Attention (MLA)** | 壓縮 K、V 成低維向量 C，存 C 即可 | ✅ | ✅ | DeepSeek |
| **Sliding Window Attention** | 只 attend 固定 window 範圍 | ✅ | 視情況 | Mistral 7B |
| **Streaming LLM** | Sliding window + 保留最前幾個 token | ✅ | 否（也可訓練） | — |
| **KV Cache Pruning** | 丟掉沒人 attend 的 K、V | ✅ | 否 | Scissorhands, H2O |

### Multi-Head Latent Attention 的神妙之處
- 壓縮向量 C 存入倉庫，**不需要解壓縮就能計算 attention**
- Q' = W_K^T × Q，直接在壓縮維度做 dot product，與解壓縮後計算**數學等價**
- Weighted sum 也可在壓縮維度做：`O = W_V × Σ(α̂_i × C_i)`，只解壓縮一次
- 實測結果甚至比原始 Multi-Head Attention 稍好

### Streaming LLM 的洞見
- Sliding window 在長 sequence 上表現突然變差
- **只需在 window 中額外保留最前面的幾個 token**，表現就大增
- 原因：模型有預設行為——沒什麼好 attend 時就 attend 第一個 token；拿掉第一個 token 模型世界就崩壞
- 不需額外訓練

### 跨對話的 KV Cache（Cache Input）
- **只有相同前綴（prefix）的 sequence 才能共用 KV Cache**
- 前面變一個 token，後面全部 K、V 都不一樣
- AI Agent 的 system prompt 通常是固定的 → 很容易 cache hit
- **System prompt 排列原則**：越穩定的內容放越前面，越可能變動的放越後面
- Claude 有認真考慮此問題（工具列表放前面，日期放後面）
- Prompt 寫法也影響 cache hit：`幫我訂從 X 到 Y 的班機，X=台北, Y=波士頓` 比 `幫我訂從台北到波士頓的班機` 更容易命中
- 實測：Gemini 2.5 Pro 和 GPT-4o 可達 **50%+ 成本節省**

## 關鍵概念
- **Prefill vs Decode**：兩階段生成模型，KV Cache 主要加速 Decode
- **GQA**：Multi-Head 和 Multi-Query 的折衷，業界主流
- **MLA 無需解壓縮**：壓縮維度上直接做 dot product 和 weighted sum
- **Attention Sink**：模型預設 attend 第一個 token，拿掉它表現崩壞
- **Prefix Caching**：相同前綴可跨對話共用 KV Cache，直接影響成本

## 相關概念
← [[llm-knowledge-base]]

## 來源
- raw/2026-05-03-fDQaadKysSA.md