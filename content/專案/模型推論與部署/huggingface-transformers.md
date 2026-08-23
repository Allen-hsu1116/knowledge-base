---
title: Hugging Face Transformers
slug: huggingface-transformers
created: 2026-05-10
updated: 2026-05-10
stars: 160,425
language: zh-TW
topics: [LLM, 模型生態]
---

# Hugging Face Transformers

> ⭐160425 · 機器學習模型定義框架，支援 100 萬+ 模型檢查點，是整個 AI 生態的樞紐。160K ⭐。

## 快速導航

- 🧠 **LLM** → [[LLM]]（Transformers 是 LLM 生態的基礎設施）
- 📡 **推論加速** → [[vLLM]]（vLLM 使用 Transformers 模型定義）
- 🏠 **本地部署** → [[模型推論與部署|Ollama]]（Ollama 支援 HuggingFace 模型格式）

## 是什麼


Hugging Face Transformers 是機器學習模型定義框架，定義了模型的「通用語言」——如果一個模型被 Transformers 支援，它就能相容幾乎所有訓練框架（Axolotl、DeepSpeed、FSDP）和推論引擎（vLLM、SGLang、TGI、llama.cpp）。

它是 AI 生態的樞紐，Hugging Face Hub 上有 100 萬+ 模型檢查點。160K+ stars，是 AI 生態中影響力最大的開源專案之一。

## 核心特色

- **模型定義樞紐**：統一定義，跨框架相容，是模型生態的「通用語言」
- **100 萬+ 模型檢查點**：Hugging Face Hub 是最大的模型庫，涵蓋文字、視覺、音訊
- **多模態**：文字、視覺、音訊、多模態模型全部支援
- **推論 + 訓練**：兩者都支援，從推論到微調到預訓練
- **整合生態**：幾乎所有 AI 工具都依賴 Transformers
- **量化支援**：bitsandbytes（8-bit、4-bit）、GPTQ、AWQ 等量化方法
- **Trainer API**：內建訓練器，支援分散式訓練、混合精度、梯度累加
- **Pipeline API**：一行程式碼完成推論，支援 20+ 任務類型
- **Python 3.10+、PyTorch 2.4+**：現代化依賴

## 怎麼用

```bash
pip install transformers
# 如需訓練功能
pip install transformers[torch]
```

```python
from transformers import AutoModelForCausalLM, AutoTokenizer, pipeline

# 方式一：Pipeline API（最簡單）
generator = pipeline("text-generation", model="meta-llama/Llama-3-8B")
result = generator("Hello, world!", max_length=50)

# 方式二：完整控制
model = AutoModelForCausalLM.from_pretrained("meta-llama/Llama-3-8B")
tokenizer = AutoTokenizer.from_pretrained("meta-llama/Llama-3-8B")

inputs = tokenizer("Hello, world!", return_tensors="pt")
outputs = model.generate(**inputs)
print(tokenizer.decode(outputs[0]))

# 量化載入（4-bit）
from transformers import BitsAndBytesConfig
model = AutoModelForCausalLM.from_pretrained(
    "meta-llama/Llama-3-8B",
    quantization_config=BitsAndBytesConfig(load_in_4bit=True),
)
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 | 互動方式 |
|------|------|------|---------|
| [[vLLM]] | 推論引擎 | vLLM 使用 Transformers 模型定義 | vLLM 載入 HF 模型做高效推論 |
| [[llama-cpp|llama.cpp]] | 推論引擎 | llama.cpp 支援從 Transformers 格式轉換 | HF → GGUF 轉換 |
| [[NVIDIA-TensorRT-LLM]] | NVIDIA 推論加速 | TensorRT-LLM 可從 HF 模型定義轉換 | HF → TRT-LLM 引擎 |
| [[sgl-project-sglang|SGLang]] | 服務框架 | SGLang 支援 HuggingFace 模型定義 | 直接載入 HF 模型 |
| [[模型推論與部署|Ollama]] | 本地推理 | Ollama 支援 HuggingFace 模型 | HF 格式匯入 |
| [[LangChain]] | 應用框架 | LangChain 底層可用 HuggingFace 模型 | Pipeline 整合 |
| [[litellm|LiteLLM]] | API Gateway | LiteLLM 統一 HF 模型 API | Provider 整合 |

Transformers 是 AI 生態的「作業系統」——幾乎所有 LLM 工具都以它為基礎。模型先在 Transformers 上定義，再由 vLLM、SGLang、TGI 等推論引擎載入做高效推理，或由 llama.cpp 轉換為 GGUF 格式在本地運行。

## 相關概念

← [[LLM]] · [[llm-internals]] · [[pytorch-pytorch]]

## 來源

- [GitHub：專案原始碼](https://github.com/huggingface/transformers)
- raw/2026-05-10-huggingface-transformers.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/huggingface/transformers |
| Stars | ⭐160425|
| License | Apache-2.0 |
| 收錄日期 | 2026-05-10 |
