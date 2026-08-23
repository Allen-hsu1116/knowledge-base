---
title: Ollama
slug: Ollama
created: 2026-05-10
updated: 2026-05-10
stars: 171,080
language: zh-TW
topics: [LLM, 本地部署]
---

# Ollama

> ⭐171080 · 本地一鍵運行大型語言模型，支援 Llama、Gemma、DeepSeek 等數百種開源模型。171K ⭐。

## 快速導航

- 🧠 **LLM** → [[LLM]]（Ollama 讓 LLM 本地部署變簡單）
- 📡 **推論加速** → [[llm-internals]]（Ollama 底層用 llama.cpp 做推理）
- ⚡ **效能優化** → [[Token-Optimization]]（本地推理降低 API 成本）

## 是什麼


Ollama 讓你在本地一鍵運行大型語言模型，是目前本地 LLM 部署的事實標準工具。

它把複雜的模型下載、量化、GPU 配置封裝成一條 `ollama run` 命令，大幅降低了本地推理的門檻。

## 核心特色

- **一鍵安裝**：macOS、Linux、Windows 原生支援，三行指令即可開始
- **豐富模型庫**：ollama.com/library 提供數百種模型一鍵下載（Llama、Gemma、DeepSeek、Qwen、Mistral 等）
- **REST API**：`localhost:11434` 提供 OpenAI 相容 API，現有應用無縫切換
- **Python / JS SDK**：`pip install ollama` / `npm i ollama`，快速整合
- **Agent 整合**：支援 Claude Code、OpenClaw、Copilot、Codex 等 AI Agent 工具
- **量化支援**：自動選擇最佳量化格式（4-bit、5-bit 等），平衡速度和精度
- **GPU 加速**：自動偵測並使用 GPU（NVIDIA、Apple Metal、AMD ROCm）
- **Modelfile**：自訂模型提示詞、參數、系統訊息，類似 Dockerfile 的概念

## 怎麼用

```bash
# 安裝（macOS/Linux）
curl -fsSL https://ollama.com/install.sh | sh

# 運行模型（首次會自動下載）
ollama run gemma3

# 列出已下載的模型
ollama list

# API 呼叫
curl http://localhost:11434/api/chat -d '{
  "model": "gemma3",
  "messages": [{"role": "user", "content": "Hello!"}]
}'
```

```python
from ollama import chat
response = chat(model='gemma3', messages=[{'role': 'user', 'content': 'Hello!'}])
```

自訂 Modelfile：
```bash
# 建立 Modelfile
FROM gemma3
SYSTEM 你是一個繁體中文助手
PARAMETER temperature 0.7

# 建立自訂模型
ollama create my-assistant -f Modelfile
ollama run my-assistant
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[llama-cpp]] | 推論引擎 | Ollama 底層使用 llama.cpp 做推理 |
| [[vLLM]] | 服務引擎 | Ollama 適合個人/原型，vLLM 適合生產/高吞吐 |
| [[sgl-project-sglang]] | 服務框架 | SGLang 適合生產部署，Ollama 適合本地 |
| [[NVIDIA-TensorRT-LLM]] | NVIDIA 推論加速 | TensorRT-LLM 適合大規模 NVIDIA GPU 部署 |
| [[huggingface-transformers]] | 模型框架 | Ollama 支援 HuggingFace 模型格式 |
| [[litellm]] | LLM Gateway | LiteLLM 可以統一管理 Ollama 和雲端 API |

## 相關概念

← [[LLM]] · [[llm-internals]] · [[Token-Optimization]]

## 來源

- [GitHub：專案原始碼](https://github.com/ollama/ollama)
- raw/2026-05-10-ollama.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/ollama/ollama |
| Stars | ⭐171080|
| License | MIT |
| 收錄日期 | 2026-05-10 |
