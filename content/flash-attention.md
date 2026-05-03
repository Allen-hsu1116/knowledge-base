# Flash Attention：少搬資料就是加速

> Flash Attention 透過減少 GPU HBM↔SRAM 的資料搬運次數，在不改變 attention 計算結果的前提下加速 8-9 倍（詳細參考頁）

## 快速導航
- 🧠 **LLM 內部運算** → [[llm-knowledge-base]]（Transformer self-attention 的基礎原理）
- 🛠 **推論加速方法群** → [[ai-workflow]]（Flash Attention + KV Cache + Speculative Decoding 的整體策略）

## 核心內容

### GPU 運算的底層邏輯
- **工作台（SRAM）**：小但極快，一次只能放少量資料（~十幾 MB）
- **倉庫（HBM）**：大但相對慢（A100 有 80GB），所有 QKV 都存放在此
- **核心瓶頸**：運算本身瞬間完成，但**搬資料是拖慢速度的關鍵**
- Flash Attention 的核心思想：**減少搬資料次數 = 加速**

### Naive Attention 的問題
- 從 A_i 到 A_hat 需要多次讀寫倉庫：找 Amax → 算 exponential → 算 summation → 算 A_hat → 算 weighted sum
- 每次只能讀一個 chunk 上工作台，整個 sequence 長度 L 越長，讀寫次數越多

### Flash Attention 簡化版：合併 Amax 和 Summation
- 關鍵技巧：**邊掃描邊修正**
- 假設當前 chunk 的最大值 D_k 就是 Amax，先算出 summation S_k
- 當下一個 chunk 發現更大的 D_{k+1} 時，用 `S_k × exp(D_k - D_{k+1})` 修正
- 數學原理：`exp(A_i - D_k) × exp(D_k - D_{k+1}) = exp(A_i - D_{k+1})`
- 結果：A_i 讀兩次就得到 A_hat，而非多次讀寫

### 完整 Flash Attention：跳過 A_hat，直接算 O
- **靈魂拷問**：一定要算出 attention weight 才能算 weighted sum O 嗎？
- 做法：每個 chunk 同時讀入 K 和 V，邊算 attention 邊算 weighted sum
- O 的修正：`O_k = O_{k-1} × (S_{k-1}/S_k) × exp(D_{k-1} - D_k) + 新 chunk 的 V weighted sum`
- **最終 O 完全正確**，但過程中 attention weight 從未被真正算出來
- 副作用：用 Hugging Face 讀 attention weight 會報錯

### 實測結果
- 虛擬 QKV：sequence 4096 時加速約 8-9 倍
- 真實模型（Yi-34B）：7300 tokens 快不明顯，70000 tokens 從 2s → 1.3s
- Sequence 太長仍會 CUDA OOM（倉庫被撐爆），這是 KV Cache 要解決的問題

## 關鍵概念
- **SRAM vs HBM**：工作台 vs 倉庫的比喻，搬資料是瓶頸而非計算
- **Online Softmax**：邊掃描邊做 softmax，用指數修正避免重新讀取
- **Chunk-based 運算**：因工作台大小有限，必須分塊處理
- **不顯式計算 attention weight**：Flash Attention 最神奇的地方——跳過中間結果直接算最終輸出

## 相關概念
← [[llm-knowledge-base]]

## 來源
- raw/2026-05-03-vXb2QYOUzl4.md