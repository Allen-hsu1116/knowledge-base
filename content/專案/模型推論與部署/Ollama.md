# Ollama

> 本地一鍵運行大型語言模型，支援 Llama、Gemma、DeepSeek 等數百種開源模型。171K ⭐。

## 快速導航
- 🧠 **LLM** → [[LLM]]（Ollama 讓 LLM 本地部署變簡單）
- 📡 **推論加速** → [[llm-internals]]（Ollama 底層用 llama.cpp 做推理）
- ⚡ **效能優化** → [[Token-Optimization]]（本地推理降低 API 成本）

## 是什麼

Ollama 讓你在本地一鍵運行大型語言模型，是目前本地 LLM 部署的事實標準工具。它把複雜的模型下載、量化、GPU 配置封裝成一條 `ollama run` 命令，大幅降低了本地推理的門檻。

## 核心特色

- **一鍵安裝**：macOS、Linux、Windows 原生支援
- **豐富模型庫**：ollama.com/library 提供數百種模型一鍵下載
- **REST API**：`localhost:11434` 提供 OpenAI 相容 API
- **Python / JS SDK**：`pip install ollama` / `npm i ollama`
- **Agent 整合**：支援 Claude Code、OpenClaw、Copilot、Codex 等
- **量化支援**：自動選擇最佳量化格式（4-bit、5-bit 等）
- **GPU 加速**：自動偵測並使用 GPU

## 怎麼用

```bash
# 安裝（macOS/Linux）
curl -fsSL https://ollama.com/install.sh | sh

# 運行模型
ollama run gemma3

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

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[llama-cpp]] | 推論引擎 | Ollama 底層使用 llama.cpp 做推理 |
| [[vllm]] | 服務引擎 | Ollama 適合個人/原型，vLLM 適合生產/高吞吐 |
| [[huggingface-transformers]] | 模型框架 | Ollama 支援 HuggingFace 模型格式 |
| [[litellm]] | LLM Gateway | LiteLLM 可以統一管理 Ollama 和雲端 API |

## 相關概念
← [[LLM]] · [[llm-internals]] · [[Token-Optimization]]

## 來源
- raw/2026-05-10-ollama.md

---

- **GitHub**: https://github.com/ollama/ollama
- **Stars**: ⭐171,080
- **License**: MIT
- **收錄日期**: 2026-05-10