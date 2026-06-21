---
title: vLLM
slug: vLLM
created: 2026-05-10
updated: 2026-05-10
stars: 79,515
language: zh-TW
---

# vLLM

> ⭐79,515 · 高吞吐量、記憶體效率的 LLM 推論和服務引擎，PagedAttention 發明者。79.5K ⭐。

## 快速導航
- 🧠 **LLM 底層技術** → [[llm-internals]]（PagedAttention 是 KV Cache 管理的突破）
- ⚡ **Token 優化** → [[Token-Optimization]]（高效推理等同於單位時間產出更多 token）
- 🏠 **本地部署** → [[模型推論與部署|Ollama]]（Ollama 適合本地，vLLM 適合生產）

## 是什麼

vLLM 是高吞吐量、記憶體效率的 LLM 推論和服務引擎，最初由 UC Berkeley Sky Computing Lab 開發，現由 2000+ 貢獻者維護。它發明了 PagedAttention 技術，徹底改變了 LLM 服務的記憶體管理方式，是 LLM 服務化的事實標準。79K+ stars，是生產環境部署 LLM 的首選引擎。

## 核心特色

- **PagedAttention**：發明者，像作業系統管理虛擬記憶體一樣管理 KV Cache，解決記憶體碎片問題
- **Continuous Batching**：動態批次管理，最大化 GPU 利用率
- **量化支援**：FP8、INT8、INT4、GPTQ/AWQ、GGUF 等多種量化格式
- **注意力核心最佳化**：FlashAttention、FlashInfer、FlashMLA
- **投機解碼**：n-gram、EAGLE 等投機解碼策略，加速生成
- **分散式推論**：Tensor、Pipeline、Data、Expert Parallelism 全支援
- **OpenAI 相容 API**：無縫替換 OpenAI API，一行指令啟動服務
- **多 LoRA 支援**：一個服務跑多個 LoRA adapter，動態切換
- **2000+ 貢獻者**：活躍開源社群，快速支援新模型
- **Prefix Caching**：自動快取共享前綴，提升多輪對話效能

## 怎麼用

```bash
pip install vllm

# 啟動 OpenAI 相容伺服器
vllm serve meta-llama/Meta-Llama-3-8B

# 或使用 Python API 啟動
python -m vllm.entrypoints.openai.api_server --model meta-llama/Meta-Llama-3-8B

# 離線推論
from vllm import LLM, SamplingParams

llm = LLM(model="meta-llama/Meta-Llama-3-8B")
outputs = llm.generate(["Hello, world!"], SamplingParams(max_tokens=100))

# 多 GPU 推論
vllm serve meta-llama/Meta-Llama-3-70B --tensor-parallel-size 4

# 啟用 Prefix Caching
vllm serve meta-llama/Meta-Llama-3-8B --enable-prefix-caching
```

## 跟其他方案的關係

| 專案 | 定位 | 硬體需求 | 獨特優勢 |
|------|------|---------|---------|
| [[模型推論與部署|Ollama]] | 本地推理 | 消費級 | Ollama 適合個人/原型 |
| [[llama-cpp|llama.cpp]] | 推論引擎 | CPU/GPU | llama.cpp 重 CPU 本地推理 |
| [[sgl-project-sglang|SGLang]] | 服務框架 | 資料中心 | SGLang 有 RadixAttention 前綴快取 |
| [[NVIDIA-TensorRT-LLM]] | NVIDIA 推論加速 | NVIDIA 資料中心 | TensorRT-LLM 在 NVIDIA 上更快 |
| [[huggingface-transformers|Transformers]] | 模型框架 | 通用 | vLLM 使用 Transformers 模型定義 |
| [[litellm|LiteLLM]] | API Gateway | 通用 | LiteLLM 可作為 vLLM 前面的 Gateway |
| [[llm-internals]] | 概念頁 | — | PagedAttention 是 KV Cache 管理的突破 |

## 相關概念
← [[llm-internals]] · [[LLM]] · [[Token-Optimization]]

## 來源
- raw/2026-05-10-vllm.md

---

- **GitHub**: https://github.com/vllm-project/vllm
- **Stars**: ⭐79,515
- **License**: Apache-2.0
- **收錄日期**: 2026-05-10

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/vllm-project/vllm |
| **Stars** | ⭐79,515 |
| **收錄日期** | 2026-05-10 |
