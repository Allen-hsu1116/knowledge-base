# vLLM

> 高吞吐量、記憶體效率的 LLM 推論和服務引擎，PagedAttention 發明者。79.5K ⭐。

## 快速導航
- 🧠 **LLM 底層技術** → [[llm-internals]]（PagedAttention 是 KV Cache 管理的突破）
- ⚡ **Token 優化** → [[Token-Optimization]]（高效推理等同於單位時間產出更多 token）
- 🏠 **本地部署** → [[Ollama]]（Ollama 適合本地，vLLM 適合生產）

## 是什麼

vLLM 是高吞吐量、記憶體效率的 LLM 推論和服務引擎，最初由 UC Berkeley Sky Computing Lab 開發，現由 2000+ 貢獻者維護。它發明了 PagedAttention 技術，徹底改變了 LLM 服務的記憶體管理方式，是 LLM 服務化的事實標準。

## 核心特色

- **PagedAttention**：發明者，像作業系統管理虛擬記憶體一樣管理 KV Cache
- **Continuous Batching**：動態批次管理，最大化 GPU 利用率
- **量化支援**：FP8、INT8、INT4、GPTQ/AWQ、GGUF 等
- **注意力核心最佳化**：FlashAttention、FlashInfer、FlashMLA
- **投機解碼**：n-gram、EAGLE 等投機解碼策略
- **分散式推論**：Tensor、Pipeline、Data、Expert Parallelism
- **OpenAI 相容 API**：無縫替換 OpenAI API
- **多 LoRA 支援**：一個服務跑多個 LoRA

## 怎麼用

```bash
pip install vllm

# 啟動 OpenAI 相容伺服器
vllm serve meta-llama/Meta-Llama-3-8B

# 或直接離線推論
python -m vllm.entrypoints.openai.api_server --model meta-llama/Meta-Llama-3-8B
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[Ollama]] | 本地推理 | vLLM 適合生產/高吞吐，Ollama 適合個人/原型 |
| [[llama-cpp]] | 推論引擎 | vLLM 重 GPU 高吞吐，llama.cpp 重 CPU 本地推理 |
| [[sgl-project-sglang]] | 服務框架 | vLLM 和 SGLang 是直接競品；SGLang 有 RadixAttention 前綴快取優勢 |
| [[NVIDIA-TensorRT-LLM]] | NVIDIA 推論加速 | vLLM 更通用，TensorRT-LLM 在 NVIDIA GPU 上更快 |
| [[huggingface-transformers]] | 模型框架 | vLLM 使用 HuggingFace 模型定義 |
| [[llm-internals]] | 概念頁 | PagedAttention 解決了 KV Cache 的記憶體碎片問題 |

## 相關概念
← [[llm-internals]] · [[LLM]] · [[Token-Optimization]]

## 來源
- raw/2026-05-10-vllm.md

---

- **GitHub**: https://github.com/vllm-project/vllm
- **Stars**: ⭐79,515
- **License**: Apache-2.0
- **收錄日期**: 2026-05-10