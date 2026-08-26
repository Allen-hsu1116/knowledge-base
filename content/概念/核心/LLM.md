---
title: LLM
slug: LLM
created: 2026-06-04
updated: 2026-08-26
language: zh-TW
---

# LLM

> LLM（Large Language Model）是大語言模型，透過大規模文字資料訓練，能理解與生成自然語言。近年從純文字走向多模態、推理能力增強、本地部署與 agent 化應用。

## 核心內容

LLM 是一種基於 Transformer 架構的深度學習模型，透過在海量文字資料上進行自監督學習（預測下一個 token），學會語言的統計規律和世界知識。模型參數從數十億到數千億不等，參數越多，推理和生成能力通常越強。

LLM 的核心能力包括文字生成（寫作、翻譯、摘要、程式碼生成）、指令遵循（理解結構化指令並精確執行）、推理（鏈式推理、多步規劃、自我修正）、工具使用（呼叫 API、執行程式碼）、多模態（處理圖片、音訊、影片）。從 2017 年 Transformer 問世，到 GPT-3 規模定律的發現，再到 ChatGPT 的 RLHF 對齊，如今已進入推理模型和 Agent 時代。

開源模型（Llama、Qwen、DeepSeek）讓任何人都能部署 LLM，形成蓬勃的下游應用生態。LLM 以 token 為計價單位——1 個中文約 1-2 tokens，1 個英文約 0.75 tokens——token 消耗直接影響成本和延遲，催生了 Token Optimization 等應用層優化技術。

## 關鍵要素

- **泛化能力**：一個模型能處理數千種任務，從翻譯到程式碼生成到數學推理，不需要針對每個任務單獨訓練
- **指令遵循**：透過 RLHF 和 SFT 訓練，能精確理解並執行結構化指令，讓 Agent 化應用成為可能
- **推理能力增強**：Chain-of-thought、self-correction、multi-step planning 等技術讓 LLM 從「回答問題」進化到「自主完成任務」
- **工具使用**：透過 MCP 等標準介面呼叫 API、執行程式碼、操作瀏覽器，從「只能說」變成「能做事」
- **開放生態**：開源模型讓任何人都能部署，形成蓬勃的下游應用生態

## 各框架的做法

- **Ollama** → 本地一鍵運行 LLM，模型庫豐富，最簡單的本地部署方案
  👉 詳見 [[Ollama]]
- **vLLM** → 高吞吐推論引擎，PagedAttention + Continuous Batching，伺服器級部署首選
  👉 詳見 [[vLLM]]
- **llama.cpp** → C/C++ 推論引擎，消費級硬體可跑，GGUF 量化格式
  👉 詳見 [[llama-cpp|llama.cpp]]
- **SGLang** → 高效能服務框架，RadixAttention 前綴快取，跨硬體支援
  👉 詳見 [[sgl-project-sglang|SGLang]]
- **Hugging Face Transformers** → 模型定義框架，100 萬+ 模型生態
  👉 詳見 [[huggingface-transformers|Hugging Face Transformers]]
- **LiteLLM** → LLM Gateway，100+ Provider 統一 API
  👉 詳見 [[litellm]]
- **GenLayer Project Boilerplate** → 將 LLM 的非確定性網頁判讀放進可由 equivalence principle 驗證的 intelligent contract
  👉 詳見 [[genlayerlabs-genlayer-project-boilerplate|GenLayer Project Boilerplate]]
- **ONNX Runtime** → 將可匯出的 Transformer／ML 模型轉成 ONNX graph，交由跨硬體 Execution Provider 執行
  👉 詳見 [[microsoft-onnxruntime|ONNX Runtime]]
- **Marin** → 公開資料策展、預訓練、後訓練、評估、scaling 與失敗實驗的基礎模型研發流程
  👉 詳見 [[marin-community-marin]]

## 相關概念

- [[AI-Agent]] — LLM 是 Agent 的大腦，Agent 是 LLM 的應用
- [[Prompt-Engineering]] — 設計 LLM 的輸入
- [[Token-Optimization]] — 降低 LLM 的使用成本
- [[llm-internals]] — Flash Attention、KV Cache 等底層技術
- [[MCP]] — 讓 LLM 連接外部工具
- [[rag]] — 讓 LLM 存取外部知識
- [[self-correction]] — 提升 LLM 的可靠性
- [[kvcache-ai-ktransformers]] — CPU-GPU 異構運算，消費級硬體跑超大 MoE 模型
- [[genlayerlabs-genlayer-project-boilerplate|GenLayer Project Boilerplate]] — 以共識驗證 LLM 從外部資料擷取出的結果
- [[microsoft-onnxruntime|ONNX Runtime]] — 跨框架模型執行與硬體加速
- [[marin-community-marin]] — 從資料到大型 GPU／TPU 實驗的開放基礎模型研發平台

## 來源
- 知識庫內 LLM 相關原始資料與專案頁面