# LLM 底層技術

> Transformer 內部的三大加速與最佳化技術：Flash Attention（減少記憶體搬運）、KV Cache（避免重算）、Positional Embedding（位置資訊注入）。三者共同決定了 LLM 的推論速度、成本和 context window 大小。

## 快速導航

- ⚡ [[flash-attention]] · [[kv-cache]] · [[LLM]] · [[Token-Optimization]]
- 🧠 **LLM** → [[LLM]]（大語言模型概念總覽）
- 📚 **知識庫方法論** → [[llm-knowledge-base]]（Transformer 推論與知識庫的關係）
- 🤖 **AI Agent** → [[AI-Agent]]（Agent 的長期運行依賴高效的推論基礎設施）

## 是什麼

LLM 底層技術是指讓大語言模型高效運行的核心演算法和硬體最佳化方法。這些技術不修改模型的計算結果（數學等價），只改變計算方式或記憶體管理策略，從而大幅提升推論速度和降低成本。

三大核心技術互相影響：
- **Flash Attention**：減少 GPU 記憶體搬運次數，加速 attention 計算
- **KV Cache**：避免重算已處理的 Key/Value，節省推論時間
- **Positional Embedding**：注入位置資訊，決定 context window 大小

加上**投機解碼**（解決記憶體頻寬瓶頸），四者共同構成現代 LLM 推論的基礎設施。

## 核心特色

- **Flash Attention 數學等價加速**：不改變 attention 計算結果，只改變計算順序，用「在線 Softmax」技巧把多次 HBM↔SRAM 讀寫壓縮為少量 chunk 操作。Sequence 4096 時加速 8-9 倍，已成為 PyTorch 預設啟用的技術
- **KV Cache 避免重算**：把已算好的 Key/Value 存下來，生成新 token 時只需算 Q，直接從快取讀取 K 和 V。但 KV Cache 會撐爆 GPU 記憶體（Gemma 2 27B 每個 token 佔 736KB），衍生出 GQA、MLA、Sliding Window 等方法
- **MLA 的神妙壓縮**：DeepSeek 的 Multi-Head Latent Attention 將多組 K/V 壓縮成低維向量 C，且不需要解壓縮就能直接計算 attention（Q' · C 數學等價於 Q · K），實測結果甚至比原始 MHA 稍好
- **投機解碼零品質損失加速**：用輕量草稿模型（Drafter）預測多個 token，主模型一次平行驗證，同意就整段接受。Drafter 重用主模型的 KV Cache，2-3x 加速且零品質損失

## 怎麼用

### 推論框架選擇

| 工具 | 定位 | 特色 | Stars |
|------|------|------|-------|
| [[vLLM]] | 高吞吐服務引擎 | PagedAttention、Continuous Batching、分散式推論 | ⭐79.5K |
| [[sgl-project-sglang|SGLang]] | 高效能服務框架 | RadixAttention 前綴快取、跨硬體支援、多模態 | ⭐27.6K |
| [[NVIDIA-TensorRT-LLM]] | NVIDIA GPU 專屬加速 | Tensor Core、FP8 量化、Disaggregated Serving | ⭐13.6K |
| [[llama-cpp|llama.cpp]] | 本地推論引擎 | C/C++、GGUF 量化、CPU+GPU、MacBook 可跑 | ⭐109K |
| [[Ollama]] | 本地一鍵部署 | 包裝 llama.cpp、模型庫、API | ⭐171K |

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
# 會導致 cache 無法命中，每次都要重新計算
```

### 量化選擇指南

| 精度 | 大小 | 速度 | 品質 | 適用場景 |
|------|------|------|------|----------|
| FP16 | 基準 | 基準 | 完美 | 需要最高品質 |
| INT8 | ~50% | 1.3-1.5x | 微降 | 大部分場景 |
| INT4 (GGUF) | ~25% | 1.5-2x | 可接受 | 本地部署、消費級 GPU |

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[LLM]] | 直屬 | 底層技術是 LLM 高效運行的基礎 |
| [[AI-Agent]] | 應用層 | Agent 的長期運行依賴高效的推論基礎設施 |
| [[Token-Optimization]] | 互補 | Token 優化從應用層降低成本，底層技術從推論層加速 |
| [[flash-attention]] | 組成 | Flash Attention 是底層技術之一 |
| [[kv-cache]] | 組成 | KV Cache 是底層技術之一 |
| [[positional-embedding-evolution]] | 組成 | 位置編碼演進是底層技術之一 |
| [[gemma4-mtp-drafters]] | 擴展 | 投機解碼解決記憶體頻寬瓶頸 |
| [[llm-knowledge-base]] | 知識層 | 知識庫的 context 載入策略受底層技術影響 |

## 三大技術詳解

### Flash Attention：少搬資料就是加速

> 透過減少 GPU HBM↔SRAM 的資料搬運次數，在不改變 attention 計算結果的前提下加速 8-9 倍。

- **工作台（SRAM）**：小但極快，一次只能放少量資料（~十幾 MB）
- **倉庫（HBM）**：大但相對慢（A100 有 80GB），所有 QKV 都存放在此
- **核心瓶頸**：運算本身瞬間完成，但**搬資料是拖慢速度的關鍵**
- **關鍵技巧**：邊掃描邊修正（Online Softmax），不需要全域 Amax 就能正確計算
- **更進一步**：跳過 A_hat，直接計算 O，attention weight 從未被真正算出來

### KV Cache：存下來就不用重算

> 把已算好的 Key 和 Value 存下來避免重算，但倉庫空間有限，衍生出 GQA、MLA、Sliding Window 等方法。

- **Prefill**（一次處理大量 token）和 **Decode**（逐 token 生成）兩階段
- Gemma 2 27B 每個 token 佔 736KB，A100 80GB 只能存 ~114K tokens
- **MLA 神妙之處**：壓縮向量 C 存入倉庫，不需要解壓縮就能計算 attention
- **Streaming LLM 洞見**：Sliding window + 保留最前面幾個 token，超長 sequence 也能保持表現
- **跨對話 KV Cache**：相同前綴可共用，System prompt 越穩定越前面，cache hit 越高

### Positional Embedding 演進

> 從 Sinusoidal 到 RoPE 到 NoPE，Positional Embedding 的設計反映了 Transformer 對位置資訊需求的理解不斷深化。

| 世代 | 年份 | 設計 | 優勢 | 採用者 |
|------|------|------|------|--------|
| **Sinusoidal** | 2017 | 固定 Embedding 加到 Token 上 | 相對距離性質 | 原始 Transformer |
| **ALiBi** | 2021 | Attention 分數減去常數×相對距離 | 512 token 訓練外推更長 | — |
| **RoPE** | 2022 | 旋轉 Q/K 向量注入位置資訊 | 完全相容 Flash Attention / KV Cache | LLaMA, Qwen, Gemma |
| **NoPE / DroPE** | 2024+ | 多層 Self-Attention 隱含位置資訊 | inference 外推更長 | 實驗性 |

### 投機解碼：用推理加速解決記憶體頻寬瓶頸

自迴歸生成的真正瓶頸不是計算力，而是記憶體頻寬。投機解碼（[[gemma4-mtp-drafters]]）的做法是：用輕量草稿模型快速預測多個 token，主模型一次平行驗證，Drafter 直接重用主模型的 KV Cache。

### 三者互相影響

- RoPE 的設計必須相容 KV Cache（否則無法部署）
- Flash Attention 的 chunk 運算依賴 KV Cache 的分塊存取
- KV Cache 的大小限制決定了 Position Interpolation 的策略

## 相關概念

← [[LLM]] · [[AI-Agent]] · [[llm-knowledge-base]] · [[Token-Optimization]] · [[gemma4-mtp-drafters]]

## 來源

- Flash Attention：[raw/2026-05-03-flash-attention.md](../raw/2026-05-03-flash-attention.md)
- KV Cache：[raw/2026-05-03-kv-cache.md](../raw/2026-05-03-kv-cache.md)
- Positional Embedding：[raw/2026-05-03-positional-embedding-evolution.md](../raw/2026-05-03-positional-embedding-evolution.md)

---

_此頁由 daily-llm-trending 自動維護_