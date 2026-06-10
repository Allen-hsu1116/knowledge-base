# llama.cpp

> C/C++ 實現的 LLM 推論引擎，讓消費級硬體也能跑 LLaMA 模型。109K ⭐。

## 快速導航
- 🧠 **LLM 底層技術** → [[llm-internals]]（llama.cpp 是推論加速的基礎設施）
- 🏠 **本地部署** → [[Ollama]]（Ollama 底層使用 llama.cpp）
- ⚡ **效能優化** → [[Token-Optimization]]（本地推理降低 API 成本和延遲）

## 是什麼

llama.cpp 是 Georgi Gerganov 開發的 C/C++ LLM 推論引擎，最初為了讓 LLaMA 模型能在 MacBook 上運行。它純 C/C++ 實現，無外部依賴，支援多種量化格式和硬體加速，是本地 LLM 推理的基石。Ollama、LM Studio 等工具的底層都使用 llama.cpp。

## 核心特色

- **純 C/C++**：零外部依賴，編譯即用
- **GGUF 量化**：支援 2-bit 到 8-bit 量化，記憶體占用極低
- **跨平台**：macOS（Metal）、Linux、Windows、Android
- **CPU + GPU**：Apple Silicon、CUDA、ROCm、Vulkan 都支援
- **記憶體映射（mmap）**：載入大模型不用全部讀進記憶體
- **100+ 模型架構**：LLaMA、Mistral、Qwen、Gemma、Phi 等
- **伺服器模式**：OpenAI 相容 API

## 怎麼用

```bash
# 編譯
make

# 下載模型並運行
./llama-cli -m ./models/llama-7b.Q4_K_M.gguf -p "Hello, world!"

# 啟動 API 伺服器
./llama-server -m ./models/llama-7b.Q4_K_M.gguf --host 0.0.0.0 --port 8080
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[Ollama]] | 本地推理工具 | Ollama 底層使用 llama.cpp |
| [[vLLM]] | 高吞吐服務引擎 | llama.cpp 重 CPU 本地，vLLM 重 GPU 生產 |
| [[huggingface-transformers]] | 模型框架 | llama.cpp 支援 HuggingFace 模型轉換 |

## 相關概念
← [[llm-internals]] · [[LLM]] · [[Token-Optimization]]

## 來源
- raw/2026-05-10-llama-cpp.md

---

- **GitHub**: https://github.com/ggerganov/llama.cpp
- **Stars**: ⭐109,260
- **License**: MIT
- **收錄日期**: 2026-05-10