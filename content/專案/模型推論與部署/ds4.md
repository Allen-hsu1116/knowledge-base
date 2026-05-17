---
title: DS4
---

# DS4 — DeepSeek 4 Flash 本地推論引擎

> Redis 創造者 antirez 為 DeepSeek V4 Flash 打造的專用本地推論引擎。不是通用 runner，而是端到端完成的單模型方案。— antirez (Salvatore Sanfilippo)

## 快速導航
- 🧠 **LLM** → [[LLM]]: DS4 是 LLM 推論引擎
- ⚡ **LLM 底層** → [[llm-internals|LLM 底層技術]]: KV cache 壓縮是底層技術的一環
- 🖥️ **Ollama** → [[Ollama]]: 通用本地部署方案，DS4 是單模型專用方案
- 🔧 **llama.cpp** → [[llama-cpp|llama.cpp]]: DS4 基於 llama.cpp/GGML 開發路徑

## 是什麼

DS4（DrawfStar 4）是 antirez 為 DeepSeek V4 Flash 打造的專用本地推論引擎。不是通用 GGUF runner，而是完全自包含的單模型引擎，針對 Metal（macOS）和 CUDA（NVIDIA）最佳化。

## 為什麼 DeepSeek V4 Flash 值得專用引擎

| 優勢 | 說明 |
|------|------|
| 更快的推論 | active parameters 更少，比同級 dense 模型快 |
| 思考更短 | thinking section 長度與問題複雜度成正比，最短可到其他模型的 1/5 |
| 1M context | 百萬 token 上下文視窗 |
| KV cache 壓縮 | 極度壓縮的 KV cache，支援磁碟持久化 |
| 2-bit 量化 | 特殊量化方式，128GB MacBook 可跑，96GB 也有人成功跑 250k context |
| 知識更廣 | 284B 參數在知識邊緣取樣比小模型強很多 |

## 設計理念

antirez 認為本地推論應該是三件事一體：
1. 推論引擎 + HTTP API（ds4-server）
2. 特製 GGUF（針對引擎和硬體最佳化）
3. 測試與驗證（coding agent 整合測試）

不是只讓模型「能跑」，而是讓一個本地模型端到端地「完成」。

## 支援後端

| 後端 | 狀態 |
|------|------|
| Metal（macOS） | 主要目標，96GB+ RAM |
| NVIDIA CUDA | 支援，特別針對 DGX Spark |
| AMD ROCm | 獨立分支，社群維護 |

## 專案資訊

- **GitHub**: https://github.com/antirez/ds4
- **Stars**: ⭐8,303
- **語言**: C
- **授權**: MIT
- **作者**: antirez (Salvatore Sanfilippo，Redis 創造者)

## 與相關主題的連結

- [[LLM]] — DS4 是 LLM 推論引擎
- [[llm-internals|LLM 底層技術]] — KV cache 壓縮、量化是底層技術
- [[Ollama]] — 通用本地部署方案，DS4 是單模型專用方案
- [[llama-cpp|llama.cpp]] — DS4 基於 llama.cpp/GGML 開發路徑
- [[vLLM]] — 另一個推論加速方案，偏向伺服器端