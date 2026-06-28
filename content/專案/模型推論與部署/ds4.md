---
title: DS4
slug: ds4
stars: '⭐10277'
updated: 2026-06-14
language: zh-TW
---

# DS4 — DeepSeek 4 Flash 本地推論引擎

> ⭐10277 · Redis 創造者 antirez 為 DeepSeek V4 Flash 打造的專用本地推論引擎。不是通用 runner，而是端到端完成的單模型方案。

## 快速導航

- 🧠 **LLM** → [[LLM]]: DS4 是 LLM 推論引擎
- ⚡ **LLM 底層** → [[llm-internals|LLM 底層技術]]: KV cache 壓縮是底層技術的一環
- 🖥️ **Ollama** → [[模型推論與部署|Ollama]]: 通用本地部署方案，DS4 是單模型專用方案
- 🔧 **llama.cpp** → [[llama-cpp|llama.cpp]]: DS4 基於 llama.cpp/GGML 開發路徑

## 是什麼

DS4（DrawfStar 4）是 antirez 為 DeepSeek V4 Flash 打造的專用本地推論引擎。不是通用 GGUF runner，而是完全自包含的單模型引擎，針對 Metal（macOS）和 CUDA（NVIDIA）最佳化。

## 核心特色

- **DeepSeek V4 Flash 專用最佳化** — 不是通用推論引擎，而是針對 DeepSeek V4 Flash 的架構特性（MoE、KV cache 壓縮、2-bit 量化）做深度最佳化
- **KV Cache 壓縮** — 極度壓縮的 KV cache，支援磁碟持久化。1M context window 在消費級硬體上也能跑
- **2-bit 量化** — 特殊量化方式，128GB MacBook 可跑，96GB 也有人成功跑 250k context
- **端到端完成** — 推論引擎 + HTTP API（ds4-server）+ 特製 GGUF + 測試驗證一體。不是只讓模型「能跑」，而是讓一個本地模型端到端地「完成」
- **Metal + CUDA 雙後端** — 主要目標 macOS Metal（96GB+ RAM），也支援 NVIDIA CUDA（特別針對 DGX Spark），AMD ROCm 有獨立分支

## 怎麼用

```bash
# 下載預建二進位檔
# 從 GitHub Releases 下載對應平台版本
# https://github.com/antirez/ds4/releases

# 啟動伺服器
./ds4-server --model path/to/model.gguf

# API 呼叫（OpenAI 相容格式）
curl http://localhost:8080/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{"model":"deepseek-v4-flash","messages":[{"role":"user","content":"Hello"}]}'
```

### DeepSeek V4 Flash 為什麼值得專用引擎

| 優勢 | 說明 |
|------|------|
| 更快的推論 | active parameters 更少，比同級 dense 模型快 |
| 思考更短 | thinking section 長度與問題複雜度成正比，最短可到其他模型的 1/5 |
| 1M context | 百萬 token 上下文視窗 |
| KV cache 壓縮 | 極度壓縮的 KV cache，支援磁碟持久化 |
| 2-bit 量化 | 特殊量化方式，128GB MacBook 可跑 |

## 跟其他方案的關係

DS4 跟 [[模型推論與部署|Ollama]] 的定位根本不同：Ollama 是通用本地部署方案（跑任何 GGUF 模型），DS4 是 DeepSeek V4 Flash 專用引擎（只跑一個模型，但跑得又快又好）。Ollama 是瑞士刀，DS4 是手術刀。

跟 [[llama-cpp|llama.cpp]] 的關係：DS4 基於 llama.cpp/GGML 開發路徑，但做了 DeepSeek V4 Flash 專用的深度最佳化（KV cache 壓縮、2-bit 量化、Metal/CUDA 最佳化）。

跟 [[vLLM]] 的差異：vLLM 是伺服器端推論加速方案，DS4 是本地端專用引擎。一個偏向資料中心，一個偏向個人開發者。

## 相關概念

← [[LLM]] · [[llm-internals|LLM 底層技術]] · [[模型推論與部署|Ollama]] · [[llama-cpp|llama.cpp]]

## 來源

- GitHub: https://github.com/antirez/ds4
- [2026-05-13 素材](../raw/2026-05-13-ds4.md)

---

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/antirez/ds4 |
| Stars | ⭐10,277 |
| Language | C |
| 建立日期 | 2026-05-06 |
| 授權 | MIT |
| 收錄日期 | 2026-05-07 |