# SGLang

> 高效能 LLM 和多模態模型服務框架，由 LMSYS 開發，每天處理數兆 token。27.6K ⭐。

## 快速導航
- 🧠 **LLM** → [[LLM]]（SGLang 是 LLM 推論服務的重要基礎設施）
- ⚡ **推論加速** → [[llm-internals]]（RadixAttention 是 KV Cache 前綴快取的創新應用）
- 🚀 **推論引擎比較** → [[vLLM]]、[[NVIDIA-TensorRT-LLM]]、[[llama-cpp|llama.cpp]]（同類推論框架）

## 是什麼

SGLang 是由 LMSYS 開發的高效能 LLM 和多模態模型服務框架，每天處理數兆 token。其核心創新是 RadixAttention 技術，透過自動前綴快取大幅提升重複前綴場景的效能。支援 NVIDIA GPU、AMD GPU 和 TPU（via Jax backend），並提供 Day-0 支援給最新開源模型。

## 核心特色

- **RadixAttention**：自動前綴快取，Radix Tree 管理共享前綴，大幅提升重複場景效能
- **多硬體支援**：NVIDIA GPU、AMD GPU、原生 TPU 支援（Jax backend）
- **Disaggregated Serving**：預填充/解碼分離部署
- **大規模 Expert Parallelism**：DeepSeek MoE 最佳化
- **Diffusion 模型**：影片和圖片生成加速
- **Day-0 模型支援**：DeepSeek V3/R1、GPT-OSS、Mistral、Qwen 等即日支援
- **a16z 開源 AI 補助金**獲得者
- **加入 PyTorch 生態系**

## 怎麼用

```bash
# pip 安裝
pip install sglang

# 啟動伺服器
python -m sglang.launch_server.run_server --model-path meta-llama/Meta-Llama-3-8B

# 或使用 Docker
docker run --gpus all -it --rm lmsys/sglang:latest
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[vLLM]] | 推論引擎 | SGLang 和 vLLM 是直接競品；SGLang 的 RadixAttention 是獨特優勢 |
| [[NVIDIA-TensorRT-LLM]] | NVIDIA 專屬引擎 | TensorRT-LLM 在 NVIDIA 上更快，SGLang 更通用跨硬體 |
| [[llama-cpp\|llama.cpp]] | 本地推論 | SGLang 是伺服器級，llama.cpp 是本地端 |
| [[Ollama]] | 本地部署 | Ollama 偏個人使用，SGLang 偏生產部署 |
| [[huggingface-transformers\|Transformers]] | 模型框架 | SGLang 支援 HuggingFace 模型定義 |

## 相關概念
← [[LLM]] · [[llm-internals]] · [[Token-Optimization]]

## 來源
- raw/2026-05-10-sgl-project-sglang.md

---

- **GitHub**: https://github.com/sgl-project/sglang
- **Stars**: ⭐27,589
- **License**: Apache-2.0
- **收錄日期**: 2026-05-10