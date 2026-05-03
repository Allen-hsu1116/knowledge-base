# Positional Embedding 演進

> 從 Sinusoidal 到 RoPE 到 NoPE，Positional Embedding 的設計反映了 Transformer 對位置資訊需求的理解不斷深化。

## 快速導航
- 🧠 **LLM 內部機制** → [[llm-knowledge-base]]（Positional Embedding 是 Transformer 架構的核心組件）
- 🛠 **AI 工作流** → [[ai-workflow]]（Train Short Test Long 與 context window 擴展影響 Agent 長期運作）

## 核心內容

### Self-Attention 的位置盲點
Self-Attention 的計算過程（Q·K 內積 → Softmax → Weighted Sum of V）本質上不考慮 Token 順序。交換輸入位置不影響輸出，這對語義理解是致命的（「你打我」vs「我打你」）。

### 四代 Positional Embedding 的設計哲學

1. **Sinusoidal（2017）**：每個位置一個固定 Embedding，加到 Token 上。兩兩維度可看作旋轉指針（秒針/分針/時針的類比）。關鍵性質：P_{k+r} = M_r · P_k，兩位置關係只跟相對距離有關——但對 Attention 的影響是間接的。

2. **ALiBi（2021）**：直接在 Attention 分數減去「常數×相對距離」，簡單粗暴卻有效。只在 512 token 上訓練就能外推到更長序列，全面碾壓 Sinusoidal。啟示：Relative Position 極度重要。

3. **RoPE**：透過旋轉 Q/K 向量注入位置資訊，Attention 結果等價於 Q·R_{m-n}·K^T（R 只跟相對位置有關）。優勢：不改 Attention 計算流程，完全相容 Flash Attention / KV Cache。LLaMA、Qwen、Gemma 都採用。**常見誤解**：RoPE 不保證距離越遠 Attention 越小（隨機 Q/K 實驗可驗證），但這反而是優勢——可以產生跳過相鄰 token 的精細 attention pattern。

4. **NoPE / DroPE**：多層 Self-Attention 在因果語言模型中其實隱含位置資訊。NoPE 在 inference 時可外推更長序列，但訓練時 loss 不如 RoPE。DroPE（金剛經比喻：如筏喻者）訓練時用 RoPE，訓練後期拔掉，反而能得到更好的長序列處理能力。

### Train Short Test Long 的策略
- **Position Interpolation**：把位置編號除以擴展倍率（允許小數），需微調
- **Frequency-based（NTK-aware / YARN / LongRoPE）**：高頻維度不動、低頻維度壓縮，可達 2M token
- **Dynamic Scaling**：短序列用原來位置、超過門檻才做內插，但會破壞 KV Cache

## 關鍵概念
- **Absolute vs Relative Position**：絕對位置資訊 vs 相對距離資訊，後者更重要
- **Sinusoidal 合角公式性質**：P_{k+r} = M_r · P_k，是 RoPE 設計的靈感來源
- **RoPE 旋轉矩陣**：每兩維一組旋轉，θ_i = 1/10000^{2i/d}
- **KV Cache 相容性**：決定方法能否在實際部署中流行的關鍵因素
- **DroPE 的佛法隱喻**：訓練需要 positional embedding（船），到岸後要捨棄（法尚應捨）

## 相關概念
← [[llm-knowledge-base]]

## 來源
- raw/2026-05-03-Ll-wk8x3G_g.md