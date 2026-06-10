# TensorRT-LLM

> NVIDIA 官方的 LLM 推論加速框架，在 NVIDIA GPU 上提供高效能推論最佳化。13.6K ⭐。

## 快速導航
- 🧠 **LLM** → [[LLM]]（推論加速是 LLM 生產部署的關鍵）
- ⚡ **推論加速** → [[llm-internals]]（TensorRT-LLM 實作了 Flash Attention、KV Cache、投機解碼等底層技術）
- 🚀 **推論引擎比較** → [[vLLM]]、[[sgl-project-sglang|SGLang]]、[[llama-cpp|llama.cpp]]（同類推論框架）

## 是什麼

TensorRT-LLM 是 NVIDIA 官方出品的 LLM 推論加速框架，用 Python API 定義模型，C++ runtime 高效執行。它深度最佳化 NVIDIA GPU 推論，支援 Tensor Core、多種量化、CUDA Graph，以及 Disaggregated Serving 和 Expert Parallelism 等生產級部署特性。

## 核心特色

- **NVIDIA GPU 深度最佳化**：Tensor Core、FP8/INT4/INT8 量化、CUDA Graph
- **Disaggregated Serving**：預填充/解碼分離部署，獨立擴展提升吞吐
- **Expert Parallelism**：MoE 模型大規模平行，支援 DeepSeek 等 MoE 架構
- **投機解碼**：N-gram、EAGLE 等投機解碼策略
- **Sparse Attention**：稀疏注意力加速長 context 推理
- **Day-0 模型支援**：DeepSeek V3/R1、GPT-OSS 等最新模型即日支援
- **Diffusion 模型支援**：視覺生成加速
- **Python API + C++ Runtime**：開發簡單，執行高效

## 怎麼用

```bash
# pip 安裝
pip install tensorrt-llm

# 或使用 Docker
docker run --gpus all -it --rm nvcr.io/nvidia/tensorrt-llm:latest
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[vLLM]] | 通用推論引擎 | TensorRT-LLM 是 NVIDIA GPU 專屬最佳化，vLLM 更通用 |
| [[sgl-project-sglang\|SGLang]] | 推論引擎 | SGLang 的 RadixAttention 是獨特優勢，TensorRT-LLM 在 NVIDIA 上更快 |
| [[llama-cpp\|llama.cpp]] | 本地推論引擎 | llama.cpp 偏消費級硬體，TensorRT-LLM 偏資料中心 |
| [[Ollama]] | 本地部署 | Ollama 底層可用 llama.cpp，TensorRT-LLM 適合大規模部署 |
| [[huggingface-transformers\|Transformers]] | 模型框架 | TensorRT-LLM 可從 HuggingFace 模型定義轉換 |

## 相關概念
← [[LLM]] · [[llm-internals]] · [[Token-Optimization]]

## 來源
- raw/2026-05-10-NVIDIA-TensorRT-LLM.md

---

- **GitHub**: https://github.com/NVIDIA/TensorRT-LLM
- **Stars**: ⭐13,598
- **License**: Apache-2.0
- **收錄日期**: 2026-05-10