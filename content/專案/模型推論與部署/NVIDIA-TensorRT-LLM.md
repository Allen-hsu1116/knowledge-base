---
title: TensorRT-LLM
slug: NVIDIA-TensorRT-LLM
created: 2026-05-10
updated: 2026-05-10
stars: 13,598
language: zh-TW
topics: [LLM, 推論加速, GPU 最佳化]
---

# TensorRT-LLM

> ⭐13598 · NVIDIA 官方的 LLM 推論加速框架，在 NVIDIA GPU 上提供高效能推論最佳化。13.6K ⭐。

## 快速導航

- 🧠 **LLM** → [[LLM]]（推論加速是 LLM 生產部署的關鍵）
- ⚡ **推論加速** → [[llm-internals]]（TensorRT-LLM 實作了 Flash Attention、KV Cache、投機解碼等底層技術）
- 🚀 **推論引擎比較** → [[vLLM]]、[[sgl-project-sglang|SGLang]]、[[llama-cpp|llama.cpp]]（同類推論框架）

## 是什麼


TensorRT-LLM 是 NVIDIA 官方出品的 LLM 推論加速框架，用 Python API 定義模型，C++ runtime 高效執行。

它深度最佳化 NVIDIA GPU 推論，支援 Tensor Core、多種量化、CUDA Graph，以及 Disaggregated Serving 和 Expert Parallelism 等生產級部署特性。對於在 NVIDIA GPU 上部署 LLM 推論服務的場景，TensorRT-LLM 提供了最極致的效能。

## 核心特色

- **NVIDIA GPU 深度最佳化**：Tensor Core、FP8/INT4/INT8 量化、CUDA Graph 批次大小調優
- **Disaggregated Serving**：預填充/解碼分離部署，獨立擴展提升吞吐
- **Expert Parallelism**：MoE 模型大規模平行，支援 DeepSeek 等 MoE 架構
- **投機解碼**：N-gram、EAGLE 等投機解碼策略
- **Sparse Attention**：稀疏注意力加速長 context 推理
- **Skip Softmax Attention**：加速長上下文推論
- **DWDP**：分散式權重資料平行，在 NVL72 上實現高效能推論
- **MoE 通訊最佳化**：NVLink 上的 One-Sided AlltoAll
- **Day-0 模型支援**：DeepSeek V3/R1、GPT-OSS 等最新模型即日支援
- **Diffusion 模型支援**：視覺生成加速
- **Python API + C++ Runtime**：開發簡單，執行高效

## 技術重點

TensorRT-LLM 的核心優勢來自 NVIDIA GPU 的深度最佳化：
- **Tensor Core 加速**：FP8/INT8/INT4 量化充分利用 Tensor Core
- **CUDA Graph 批次調優**：減少 CPU-GPU 同步開銷，提升吞吐
- **Disaggregated Serving**：預填充和生成解碼分離部署，各自獨立擴展，避免資源浪費
- **Expert Parallelism**：MoE 模型的專家切片平行，支援 DeepSeek V3/R1 等大規模 MoE 架構

## 怎麼用

```bash
# pip 安裝
pip install tensorrt-llm

# 或使用 Docker（推薦生產環境）
docker run --gpus all -it --rm nvcr.io/nvidia/tensorrt-llm:latest

# 建構模型引擎
trtllm-build --model_dir ./model --output_dir ./engine

# 啟動推論伺服器
python -m tensorrt_llm.entrypoints.openai.api_server --engine_dir ./engine
```

## 跟其他方案的關係

| 專案 | 定位 | 硬體支援 | 特色 |
|------|------|---------|------|
| [[vLLM]] | 通用推論引擎 | 多廠牌 GPU | vLLM 更通用跨硬體，TensorRT-LLM 在 NVIDIA 上更快 |
| [[sgl-project-sglang|SGLang]] | 推論引擎 | NVIDIA/AMD/TPU | SGLang 的 RadixAttention 是獨特優勢 |
| [[llama-cpp|llama.cpp]] | 本地推論引擎 | CPU/GPU | llama.cpp 偏消費級硬體，TensorRT-LLM 偏資料中心 |
| [[模型推論與部署|Ollama]] | 本地部署 | CPU/GPU | Ollama 底層可用 llama.cpp，TensorRT-LLM 適合大規模部署 |
| [[huggingface-transformers|Transformers]] | 模型框架 | 通用 | TensorRT-LLM 可從 HuggingFace 模型定義轉換 |
| [[litellm|LiteLLM]] | API Gateway | 通用 | LiteLLM 可管理 TensorRT-LLM 服務的模型路由 |

## 相關概念

← [[LLM]] · [[llm-internals]] · [[Token-Optimization]]

## 來源

- [GitHub：專案原始碼](https://github.com/NVIDIA/TensorRT-LLM)
- raw/2026-05-10-NVIDIA-TensorRT-LLM.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/NVIDIA/TensorRT-LLM |
| Stars | ⭐13598|
| License | Apache-2.0 |
| 收錄日期 | 2026-05-10 |
