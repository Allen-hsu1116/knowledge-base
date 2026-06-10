# Hugging Face Transformers

> 機器學習模型定義框架，支援 100 萬+ 模型檢查點，是整個 AI 生態的樞紐。160K ⭐。

## 快速導航
- 🧠 **LLM** → [[LLM]]（Transformers 是 LLM 生態的基礎設施）
- 📡 **推論加速** → [[vLLM]]（vLLM 使用 Transformers 模型定義）
- 🏠 **本地部署** → [[Ollama]]（Ollama 支援 HuggingFace 模型格式）

## 是什麼

Hugging Face Transformers 是機器學習模型定義框架，定義了模型的「通用語言」——如果一個模型被 Transformers 支援，它就能相容幾乎所有訓練框架（Axolotl、DeepSpeed、FSDP）和推論引擎（vLLM、SGLang、TGI、llama.cpp）。它是 AI 生態的樞紐，Hugging Face Hub 上有 100 萬+ 模型檢查點。

## 核心特色

- **模型定義樞紐**：統一定義，跨框架相容
- **100 萬+ 模型檢查點**：Hugging Face Hub 是最大的模型庫
- **多模態**：文字、視覺、音訊、多模態模型
- **推論 + 訓練**：兩者都支援
- **整合生態**：幾乎所有 AI 工具都依賴 Transformers
- **量化支援**：bitsandbytes、GPTQ、AWQ 等

## 怎麼用

```bash
pip install transformers
```

```python
from transformers import AutoModelForCausalLM, AutoTokenizer

model = AutoModelForCausalLM.from_pretrained("meta-llama/Llama-3-8B")
tokenizer = AutoTokenizer.from_pretrained("meta-llama/Llama-3-8B")

inputs = tokenizer("Hello, world!", return_tensors="pt")
outputs = model.generate(**inputs)
print(tokenizer.decode(outputs[0]))
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[vLLM]] | 推論引擎 | vLLM 使用 Transformers 模型定義 |
| [[llama-cpp]] | 推論引擎 | llama.cpp 支援從 Transformers 格式轉換 |
| [[Ollama]] | 本地推理 | Ollama 支援 HuggingFace 模型 |
| [[LangChain]] | 應用框架 | LangChain 底層可用 HuggingFace 模型 |

## 相關概念
← [[LLM]] · [[llm-internals]]

## 來源
- raw/2026-05-10-huggingface-transformers.md

---

- **GitHub**: https://github.com/huggingface/transformers
- **Stars**: ⭐160,425
- **License**: Apache-2.0
- **收錄日期**: 2026-05-10