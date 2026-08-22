---
title: LLM 底層技術
slug: llm-internals
created: 2026-06-04
updated: 2026-08-22
language: zh-TW
---

# LLM 底層技術

> Transformer 內部的三大加速與最佳化技術：Flash Attention（減少記憶體搬運）、KV Cache（避免重算）、Positional Embedding（位置資訊注入）。三者共同決定了 LLM 的推論速度、成本和 context window 大小。

## 核心內容

LLM 底層技術是指讓大語言模型高效運行的核心演算法和硬體最佳化方法。這些技術不修改模型的計算結果（數學等價），只改變計算方式或記憶體管理策略，從而大幅提升推論速度和降低成本。

Flash Attention 的核心洞察是：GPU 運算本身瞬間完成，但搬資料才是拖慢速度的關鍵。它用「在線 Softmax」技巧把多次 HBM↔SRAM 讀寫壓縮為少量 chunk 操作，Sequence 4096 時加速 8-9 倍，已成為 PyTorch 預設啟用的技術。KV Cache 則把已算好的 Key/Value 存下來，生成新 token 時只需算 Q，但 KV Cache 會佔用大量 GPU 記憶體（Gemma 2 27B 每個 token 佔 736KB），衍生出 GQA、MLA、Sliding Window 等壓縮方法。

Positional Embedding 從 Sinusoidal（2017）到 ALiBi（2021）到 RoPE（2022），演進方向是讓位置資訊更相容 KV Cache 和 Flash Attention。加上投機解碼（用輕量草稿模型預測多個 token，主模型一次平行驗證），四者共同構成現代 LLM 推論的基礎設施。三者互相影響：RoPE 必須相容 KV Cache，Flash Attention 的 chunk 運算依賴 KV Cache 的分塊存取，KV Cache 的大小限制決定了 Position Interpolation 的策略。

## 關鍵要素

- **Flash Attention**：不改變 attention 計算結果，只改變計算順序，減少 GPU 記憶體搬運次數，數學等價加速 8-9 倍
- **KV Cache**：儲存已算好的 Key/Value 避免重算，但佔用大量 GPU 記憶體，需透過 GQA、MLA、Sliding Window 壓縮
- **MLA 壓縮**：DeepSeek 的 Multi-Head Latent Attention 將多組 K/V 壓縮成低維向量，不需要解壓縮就能直接計算 attention
- **Positional Embedding 演進**：Sinusoidal → ALiBi → RoPE，RoPE 完全相容 Flash Attention / KV Cache，被 LLaMA、Qwen、Gemma 採用
- **投機解碼**：用輕量草稿模型預測多個 token，主模型一次平行驗證，2-3x 加速且零品質損失
- **快取命中原則**：System prompt 中穩定內容放前面、變動內容放後面，讓 KV Cache 跨對話共用

## 各框架的做法

- **vLLM** → 高吞吐服務引擎，PagedAttention 管理 KV Cache 記憶體，Continuous Batching
  👉 詳見 [[vLLM]]
- **SGLang** → RadixAttention 前綴快取，跨請求重用 KV Cache
  👉 詳見 [[sgl-project-sglang|SGLang]]
- **NVIDIA TensorRT-LLM** → GPU 深度最佳化，Tensor Core + FP8 量化 + Disaggregated Serving
  👉 詳見 [[NVIDIA-TensorRT-LLM]]
- **llama.cpp** → 本地推論引擎，GGUF 量化格式，CPU+GPU 混合運算
  👉 詳見 [[llama-cpp|llama.cpp]]
- **LMCache** → KV Cache 跨實例共享，降低 TTFT
  👉 詳見 [[LMCache-LMCache|LMCache]]
- **OBLITERATUS** → 以 activation probing、SVD、cross-layer alignment、residual decomposition 定位與修改拒答機制
  👉 詳見 [[elder-plinius-OBLITERATUS|OBLITERATUS]]

## 相關概念

- [[LLM]] — 底層技術是 LLM 高效運行的基礎
- [[Token-Optimization]] — 從應用層降低成本，底層技術從推論層加速
- [[AI-Agent]] — Agent 的長期運行依賴高效的推論基礎設施
- [[flash-attention]] — Flash Attention 的詳細教學
- [[kv-cache]] — KV Cache 的詳細教學
- [[positional-embedding-evolution]] — 位置編碼演進歷史
- [[elder-plinius-OBLITERATUS|OBLITERATUS]] — 從可解釋性角度分析 refusal directions 與 guardrail geometry

## 來源
- 知識庫內 Flash Attention、KV Cache、Positional Embedding 相關原始資料