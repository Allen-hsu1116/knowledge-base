# LLM 底層技術

> Transformer 內部的三大加速與最佳化技術：Flash Attention（減少記憶體搬運）、KV Cache（避免重算）、Positional Embedding（位置資訊注入）。三者共同決定了 LLM 的推論速度、成本和 context window 大小。

## 快速導航

- 🧠 **LLM** → [[LLM]]（大語言模型概念總覽）
- 📚 **知識庫方法論** → [[llm-knowledge-base]]（Transformer 推論與知識庫的關係）
- 🤖 **AI Agent** → [[AI-Agent]]（Agent 的長期運行依賴高效的推論基礎設施）

---

## Flash Attention：少搬資料就是加速

> 透過減少 GPU HBM↔SRAM 的資料搬運次數，在不改變 attention 計算結果的前提下加速 8-9 倍。

### GPU 運算的底層邏輯

- **工作台（SRAM）**：小但極快，一次只能放少量資料（~十幾 MB）
- **倉庫（HBM）**：大但相對慢（A100 有 80GB），所有 QKV 都存放在此
- **核心瓶頸**：運算本身瞬間完成，但**搬資料是拖慢速度的關鍵**
- Flash Attention 的核心思想：**減少搬資料次數 = 加速**

### 簡化版：合併 Amax 和 Summation

- 關鍵技巧：**邊掃描邊修正**
- 假設當前 chunk 的最大值 D_k 就是 Amax，先算出 summation S_k
- 當下一個 chunk 發現更大的 D_{k+1} 時，用 `S_k × exp(D_k - D_{k+1})` 修正
- 數學原理：`exp(A_i - D_k) × exp(D_k - D_{k+1}) = exp(A_i - D_{k+1})`
- 結果：A_i 讀兩次就得到 A_hat，而非多次讀寫

### 完整版：跳過 A_hat，直接算 O

- **靈魂拷問**：一定要算出 attention weight 才能算 weighted sum O 嗎？
- 做法：每個 chunk 同時讀入 K 和 V，邊算 attention 邊算 weighted sum
- O 的修正：`O_k = O_{k-1} × (S_{k-1}/S_k) × exp(D_{k-1} - D_k) + 新 chunk 的 V weighted sum`
- **最終 O 完全正確**，但過程中 attention weight 從未被真正算出來
- 副作用：用 Hugging Face 讀 attention weight 會報錯

### 實測結果

- 虛擬 QKV：sequence 4096 時加速約 8-9 倍
- 真實模型（Yi-34B）：7300 tokens 快不明顯，70000 tokens 從 2s → 1.3s
- Sequence 太長仍會 CUDA OOM（倉庫被撐爆），這是 KV Cache 要解決的問題

---

## KV Cache：存下來就不用重算

> KV Cache 把已算好的 Key 和 Value 存下來避免重算，但倉庫空間有限，衍生出 GQA、MLA、Sliding Window 等方法。

### 基本原理

- 生成過程分 **Prefill**（一次輸入大量 token）和 **Decode**（逐 token 輸出）
- Decode 階段：新 token 的 Q 只需跟之前所有 K 算 attention，再用 V 做 weighted sum
- **核心想法**：已算好的 K 和 V 存下來，下次不用重算
- Q 不需存：每個新 token 只用自己的 Q

### 倉庫會被撐爆

- Gemma 2 27B 實例：46 層 × 30 heads × 128 維 × 2 bytes × 2 (K+V) = **736 KB/token**
- A100 80GB 只能存 ~114K tokens——對長 context 需求遠遠不夠

### 減少空間的方法

| 方法 | 原理 | 改變 Attention？ | 需要訓練？ | 使用模型 |
|------|------|:---:|:---:|------|
| **Multi-Query Attention** | 所有 Query 共用一組 K、V | ✅ | ✅ | — |
| **Grouped-Query Attention (GQA)** | 多個 Query 共用一組 K、V | ✅ | ✅ | LLaMA, Gemma |
| **Multi-Head Latent Attention (MLA)** | 壓縮 K、V 成低維向量 C，存 C 即可 | ✅ | ✅ | DeepSeek |
| **Sliding Window Attention** | 只 attend 固定 window 範圍 | ✅ | 視情況 | Mistral 7B |
| **Streaming LLM** | Sliding window + 保留最前幾個 token | ✅ | 否 | — |
| **KV Cache Pruning** | 丟掉沒人 attend 的 K、V | ✅ | 否 | Scissorhands, H2O |

### MLA 的神妙之處

- 壓縮向量 C 存入倉庫，**不需要解壓縮就能計算 attention**
- Q' = W_K^T × Q，直接在壓縮維度做 dot product，與解壓縮後計算**數學等價**
- Weighted sum 也可在壓縮維度做，只解壓縮一次
- 實測結果甚至比原始 Multi-Head Attention 稍好

### Streaming LLM 的洞見

- Sliding window 在長 sequence 上表現突然變差
- **只需在 window 中額外保留最前面的幾個 token**，表現就大增
- 原因：模型有預設行為——沒什麼好 attend 時就 attend 第一個 token；拿掉第一個 token 模型世界就崩壞

### 跨對話的 KV Cache（Cache Input）

- **只有相同前綴（prefix）的 sequence 才能共用 KV Cache**
- AI Agent 的 system prompt 通常是固定的 → 很容易 cache hit
- **System prompt 排列原則**：越穩定的內容放越前面，越可能變動的放越後面
- Prompt 寫法也影響 cache hit：`幫我訂從 X 到 Y 的班機，X=台北, Y=波士頓` 比 `幫我訂從台北到波士頓的班機` 更容易命中
- 實測：Gemini 2.5 Pro 和 GPT-4o 可達 **50%+ 成本節省**

---

## Positional Embedding 演進

> 從 Sinusoidal 到 RoPE 到 NoPE，Positional Embedding 的設計反映了 Transformer 對位置資訊需求的理解不斷深化。

### Self-Attention 的位置盲點

Self-Attention 的計算過程（Q·K 內積 → Softmax → Weighted Sum of V）本質上不考慮 Token 順序。交換輸入位置不影響輸出（「你打我」vs「我打你」）。

### 四代 Positional Embedding

| 世代 | 年份 | 設計 | 優勢 | 採用者 |
|------|------|------|------|--------|
| **Sinusoidal** | 2017 | 固定 Embedding 加到 Token 上 | P_{k+r} = M_r · P_k 相對距離性質 | 原始 Transformer |
| **ALiBi** | 2021 | Attention 分數減去常數×相對距離 | 512 token 訓練就能外推更長序列 | — |
| **RoPE** | 2022 | 旋轉 Q/K 向量注入位置資訊 | 完全相容 Flash Attention / KV Cache | LLaMA, Qwen, Gemma |
| **NoPE / DroPE** | 2024+ | 多層 Self-Attention 隱含位置資訊 | inference 外推更長 | 實驗性 |

### RoPE 的關鍵

- 透過旋轉 Q/K 向量注入位置資訊，Attention 結果等價於 Q·R_{m-n}·K^T
- **常見誤解**：RoPE 不保證距離越遠 Attention 越小，但這反而是優勢——可以產生跳過相鄰 token 的精細 attention pattern
- **KV Cache 相容**：決定方法能否在實際部署中流行的關鍵因素

### Train Short Test Long 策略

| 策略 | 原理 | 最大 context |
|------|------|-------------|
| **Position Interpolation** | 位置編號除以擴展倍率 | 需微調 |
| **NTK-aware / YARN / LongRoPE** | 高頻不動、低頻壓縮 | 2M token |
| **Dynamic Scaling** | 超過門檻才做內插 | 破壞 KV Cache |

### DroPE 的佛法隱喻

訓練時用 RoPE（船），訓練後期拔掉（到岸捨船）。訓練需要 positional embedding，到岸後要捨棄（法尚應捨）。

---

## 三者的關聯

| 技術 | 解決的問題 | 對 Agent 的影響 |
|------|-----------|----------------|
| **Flash Attention** | 搬資料太慢 | 長 context 推論更便宜 |
| **KV Cache** | 重算太浪費 | 跨對話省 50%+ 成本 |
| **Positional Embedding** | 位置資訊缺失 | 決定 context window 上限 |

三者互相影響：
- RoPE 的設計必須相容 KV Cache（否則無法部署）
- Flash Attention 的 chunk 運算依賴 KV Cache 的分塊存取
- KV Cache 的大小限制決定了 Position Interpolation 的策略

## 相關概念

← [[LLM]] · [[AI-Agent]] · [[llm-knowledge-base]] · [[Token-Optimization]]

## 來源

- Flash Attention：raw/2026-05-03-vXb2QYOUzl4.md
- KV Cache：raw/2026-05-03-fDQaadKysSA.md
- Positional Embedding：raw/2026-05-03-Ll-wk8x3G_g.md