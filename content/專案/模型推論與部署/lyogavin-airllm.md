---
title: AirLLM
slug: lyogavin-airllm
created: 2026-06-04
updated: 2026-06-04
stars: 18902
language: Jupyter Notebook
topics: [LLM, 分層推理, 低 VRAM, 記憶體最佳化]
---

# AirLLM

> ⭐18.9k · Jupyter Notebook · Apache-2.0 · 70B inference with single 4GB GPU — 用分層推理讓筆電也能跑 70B 模型

## 快速導航

[[模型推論與部署|模型推論與部署]] · [[vLLM|vLLM]] · [[llama-cpp|llama.cpp]] · [[Ollama|Ollama]]

## 是什麼

AirLLM 是一個大語言模型推理記憶體最佳化框架，核心思路是**分層推理（layer-wise inference）**：不把整個模型一次載入 GPU 記憶體，而是在推理時逐層載入、逐層計算、逐層釋放。這樣一來，即使只有 4GB VRAM 的單卡 GPU，也能跑 70B 參數的模型，而且不需要量化、蒸餾或剪枝。

這個方案跟傳統量化（如 4-bit/8-bit quantization）的關鍵差異在於：AirLLM 的分層載入不改變模型權重，輸出品質跟原模型完全一致。它還支援在分層推理之上疊加 block-wise 量化，進一步壓縮每層的載入大小，達到 3x 推理加速，且精度損失極小。目前已支援 Llama 3.1 405B（8GB VRAM）、Qwen2.5、Mistral、ChatGLM 等主流模型家族。

AirLLM 的使用體驗設計得跟 Hugging Face Transformers 幾乎一樣，只需把 `AutoModel` 換成 AirLLM 的版本，其他 tokenizer、generate 的呼叫方式都不變。

## 核心特色

- **4GB 跑 70B**：分層推理讓單卡 4GB GPU 即可推理 70B 模型，8GB 可跑 405B
- **無損品質**：不做量化/剪枝/蒸餾，輸出跟原模型完全一致
- **3x 加速**：選配 block-wise 量化壓縮每層載入大小，推理速度提升 3 倍
- **Prefetching**：預取下一層權重，重叠載入和計算，額外 10% 加速
- **多模型支援**：Llama 3/3.1（70B/405B）、Qwen2.5、Mistral、ChatGLM、Baichuan、InternLM 等主流開源模型
- **MacOS 支援**：Apple Silicon 也能跑，透過 MLX 後端
- **AutoModel 偵測**：自動偵測模型類型，不需要手動指定模型類別

## 怎麼用

### 安裝

```bash
pip install airllm

# 若要啟用 4bit/8bit 壓縮加速，額外安裝 bitsandbytes
pip install -U bitsandbytes
```

### 基本推理 — 70B 模型在 4GB GPU

```python
from airllm import AutoModel

MAX_LENGTH = 128

# 用 HuggingFace repo ID 或本地路線初始化
model = AutoModel.from_pretrained("garage-bAInd/Platypus2-70B-instruct")

input_text = ['What is the capital of United States?']

input_tokens = model.tokenizer(input_text,
    return_tensors="pt",
    return_attention_mask=False,
    truncation=True,
    max_length=MAX_LENGTH,
    padding=False)

generation_output = model.generate(
    input_tokens['input_ids'].cuda(),
    max_new_tokens=20,
    use_cache=True,
    return_dict_in_generate=True)

output = model.tokenizer.decode(generation_output.sequences[0])
print(output)
```

### 啟用 4bit 壓縮加速

```python
model = AutoModel.from_pretrained("garage-bAInd/Platypus2-70B-instruct",
                     compression='4bit'  # 或 '8bit'
                    )
```

### MacOS（Apple Silicon）

```bash
# 需先安裝 mlx 和 torch
pip install airllm
# 然後正常跑，AirLLM 會自動偵測 MacOS 並使用 MLX 後端
```

## 跟其他方案的關係

| 方案 | 4GB 跑 70B | 品質損失 | 速度 | 複雜度 | 備註 |
|------|-----------|---------|------|--------|------|
| **AirLLM** | ✅ | 無（分層載入） | 慢於全載入 | 低 | 分層推理，不改權重 |
| [[llama-cpp|llama.cpp]] | 需 GGUF 4bit 量化 | 有（量化） | 中 | 中 | CPU/GPU 混合，需先轉檔 |
| [[vLLM|vLLM]] | ❌（需多卡） | 無 | 快 | 高 | PagedAttention，生產級 |
| [[Ollama|Ollama]] | 需量化模型 | 有（量化） | 中 | 低 | 一鍵部署，基於 llama.cpp |
| [[ds4|DS4]] | 需量化 | 有（量化） | 中 | 中 | DeepSeek 加速，量化方案 |

AirLLM 的定位是**消費級硬體跑大模型**的獨特入口。跟 [[llama-cpp|llama.cpp]] 的量化路線不同，它用分層推理保留原模型精度，代價是推理速度較慢（每 token 要多次載入權重）。如果目標是生產級高吞吐，[[vLLM|vLLM]] 更合適；如果只是想在筆電上「跑得動」大模型且不想損失精度，AirLLM 是最直接的方案。

## 相關概念
← [[llama-cpp|llama.cpp]] · [[vLLM|vLLM]] · [[模型推論與部署|模型推論與部署]] → 相關概念

## 來源

- GitHub：[lyogavin/airllm](https://github.com/lyogavin/airllm)
- Raw 檔案：`raw/2026-06-04-lyogavin-airllm.md`
- PyPI：[airllm](https://pypi.org/project/airllm/)
- Colab 範例：[Run All Types of Models](https://github.com/lyogavin/airllm/blob/main/air_llm/examples/run_all_types_of_models.ipynb)

---

| 項目 | 值 |
|------|-----|
| GitHub | [lyogavin/airllm](https://github.com/lyogavin/airllm) |
| Stars | ⭐18,902 |
| License | Apache-2.0 |
| Language | Jupyter Notebook |
| 收錄日期 | 2026-06-04 |