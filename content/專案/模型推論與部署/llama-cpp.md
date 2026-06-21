---
title: llama.cpp
slug: llama-cpp
created: 2026-05-10
updated: 2026-05-10
stars: 109,260
language: zh-TW
---

# llama.cpp

> ⭐109,260 · C/C++ 實現的 LLM 推論引擎，讓消費級硬體也能跑 LLaMA 模型。109K ⭐。

## 快速導航
- 🧠 **LLM 底層技術** → [[llm-internals]]（llama.cpp 是推論加速的基礎設施）
- 🏠 **本地部署** → [[模型推論與部署|Ollama]]（Ollama 底層使用 llama.cpp）
- ⚡ **效能優化** → [[Token-Optimization]]（本地推理降低 API 成本和延遲）

## 是什麼

llama.cpp 是 Georgi Gerganov 開發的 C/C++ LLM 推論引擎，最初為了讓 LLaMA 模型能在 MacBook 上運行。它純 C/C++ 實現，無外部依賴，支援多種量化格式和硬體加速，是本地 LLM 推理的基石。Ollama、LM Studio 等工具的底層都使用 llama.cpp。109K+ stars，是 LLM 生態中最受歡迎的專案之一。

## 核心特色

- **純 C/C++**：零外部依賴，編譯即用，任何平台都能跑
- **GGUF 量化**：支援 2-bit 到 8-bit 量化（Q2_K、Q4_K_M、Q5_K_M、Q8_0 等），記憶體占用極低
- **跨平台**：macOS（Metal）、Linux、Windows、Android、iOS
- **CPU + GPU 混合推論**：Apple Silicon、CUDA、ROCm、Vulkan、SYCL 都支援
- **記憶體映射（mmap）**：載入大模型不用全部讀進記憶體，秒級啟動
- **100+ 模型架構**：LLaMA、Mistral、Qwen、Gemma、Phi、DeepSeek、Command R 等
- **伺服器模式**：OpenAI 相容 API，可直接替換 OpenAI 端點
- **LoRA 支援**：動態載入 LoRA adapter
- **多 GPU 支援**：張量平行分割到多張 GPU

## 怎麼用

```bash
# 編譯（最簡方式）
make

# 或使用 CMake（推薦）
cmake -B build && cmake --build build --config Release

# 下載模型並運行
./llama-cli -m ./models/llama-7b.Q4_K_M.gguf -p "Hello, world!"

# 互動對話模式
./llama-cli -m ./models/llama-7b.Q4_K_M.gguf --conversation

# 啟動 OpenAI 相容 API 伺服器
./llama-server -m ./models/llama-7b.Q4_K_M.gguf --host 0.0.0.0 --port 8080

# 多 GPU 推論
./llama-cli -m ./models/llama-70b.Q4_K_M.gguf -ngl 2  # 使用 2 張 GPU
```

## 為什麼重要

llama.cpp 是本地 LLM 推理的基礎設施。它的價值在於讓任何人在消費級硬體（MacBook、樹莓派、手機）上都能跑 LLM，不需要 GPU 叢集。這大大降低了 LLM 的使用門檻，催生了 Ollama、LM Studio 等易用工具。GGUF 格式成為了本地模型的事實標準。

## 跟其他方案的關係

| 專案 | 定位 | 硬體需求 | 特色 |
|------|------|---------|------|
| [[模型推論與部署|Ollama]] | 本地推理工具 | 消費級 | Ollama 底層使用 llama.cpp，提供更好的使用者體驗 |
| [[vLLM]] | 高吞吐服務引擎 | 資料中心 GPU | llama.cpp 重 CPU 本地，vLLM 重 GPU 生產 |
| [[sgl-project-sglang|SGLang]] | 服務框架 | 資料中心 GPU | SGLang 偏服務化部署，llama.cpp 偏本地推理 |
| [[huggingface-transformers]] | 模型框架 | 通用 | llama.cpp 支援 HuggingFace 模型轉換為 GGUF |
| [[NVIDIA-TensorRT-LLM]] | NVIDIA GPU 推論加速 | NVIDIA 資料中心 | TensorRT-LLM 在 NVIDIA 上更快，llama.cpp 更通用 |
| [[litellm|LiteLLM]] | API Gateway | 通用 | LiteLLM 可統一管理 llama.cpp 等本地模型 |

## 相關概念
← [[llm-internals]] · [[LLM]] · [[Token-Optimization]]

## 來源
- raw/2026-05-10-llama-cpp.md

---

- **GitHub**: https://github.com/ggerganov/llama.cpp
- **Stars**: ⭐109,260
- **License**: MIT
- **收錄日期**: 2026-05-10

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/ggerganov/llama.cpp |
| **Stars** | ⭐109,260 |
| **收錄日期** | 2026-05-10 |
