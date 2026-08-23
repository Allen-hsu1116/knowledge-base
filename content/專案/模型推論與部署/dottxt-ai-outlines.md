---
title: Outlines
slug: dottxt-ai-outlines
created: 2026-07-22
updated: 2026-07-22
stars: 14840
language: Python
topics: [cfg, generative-ai, json, llms, structured-generation, regex, symbolic-ai]
---

# Outlines

> ⭐14840 · 保證 LLM 輸出符合指定結構的 Python 函式庫，支援 Pydantic model、JSON Schema、Regex、CFG、Function Signature，同一份程式碼跨 OpenAI / vLLM / Ollama / transformers / llama.cpp 運行。

## 快速導航


- 🧠 **模型推論與部署** → [[模型推論與部署]]（Outlines 是推論層的結構化生成方案）
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]（結構化輸出是 Prompt 工程的進階形態）
- ⚡ **LLM 底層技術** → [[llm-internals]]（Outlines 透過 CFG 和 logits 攔截在生成時控制結構）

## 是什麼

Outlines 是由 .txt 公司開發的開源 Python 函式庫，解決 LLM 應用中最常見的痛點：輸出不可預測。大部分解決方案在生成後才用 parsing、regex 或脆弱的程式碼修復壞掉的輸出，而 Outlines 在生成過程中就保證結構正確——直接從任何 LLM 的 token 機率分佈中攔截並引導，確保每一步生成的 token 都符合目標結構。

它的核心理念是模仿 Python 自身的型別系統：要 yes/no 回答就用 `Literal["Yes", "No"]`，要數字就用 `int`，要複雜物件就定義 Pydantic model。同一份程式碼可以在 OpenAI、Ollama、vLLM、transformers、llama.cpp 等不同後端上運行，切換模型不需要改程式碼。NVIDIA、Cohere、HuggingFace、vLLM 等都是它的使用者。

Outlines 的學術基礎來自 2023 年的論文《Efficient Guided Generation for Large Language Models》（Willard & Louf, arXiv:2307.09702），提出在 LLM 生成過程中透過 Context-Free Grammar 和有限狀態機攔截 logits 的方法，在不犧牲品質的前提下保證結構有效性。

## 核心特色

- **生成時保證結構**：不是生成後再 parse，而是在 token 生成時就透過 logits mask 限制只能產生符合結構的 token，從根源消除格式錯誤
- **型別即介面**：直接用 Python 型別系統（Literal、int、Pydantic model、function signature）定義輸出結構，無需學習額外 DSL
- **跨後端一致**：同一份程式碼支援 OpenAI API、vLLM server、Ollama、HuggingFace transformers、llama.cpp，換模型不換程式碼
- **多種結構支援**：Multiple Choices（列舉）、JSON/Pydantic（複雜物件）、Regex（正規表達式）、CFG（Context-Free Grammar）、Function Calling（從函數簽名推斷結構）
- **Jinja 模板系統**：內建 `outlines.Template` 支援 Jinja2 語法，可從字串或檔案載入模板，動態生成 prompt，支援 few-shot learning
- **Application 封裝**：可將模板和型別封裝成可重用的 Application，模組化管理複雜的 LLM 工作流

## 怎麼用

### 安裝

```bash
pip install outlines
```

### 基本用法

```python
import outlines
from transformers import AutoTokenizer, AutoModelForCausalLM
from typing import Literal
from pydantic import BaseModel

# 連接模型
model = outlines.from_transformers(
    AutoModelForCausalLM.from_pretrained("microsoft/Phi-3-mini-4k-instruct", device_map="auto"),
    AutoTokenizer.from_pretrained("microsoft/Phi-3-mini-4k-instruct")
)

# 簡單分類
sentiment = model("Analyze: 'Great product!'", Literal["Positive", "Negative", "Neutral"])
# → "Positive"

# 提取數值
temperature = model("Boiling point of water in Celsius?", int)
# → 100

# 複雜結構（Pydantic model）
class ProductReview(BaseModel):
    rating: int
    pros: list[str]
    cons: list[str]
    summary: str

review = model("Review: XPS 13 has great battery...", ProductReview, max_new_tokens=200)
review = ProductReview.model_validate_json(review)
```

### 進階：Jinja 模板 + 批次處理

```python
template = outlines.Template.from_string("""
<|im_start|>user
Categorize this product:
{{ description }}
<|im_end|>
<|im_start|>assistant
""")

categories = model(
    [template(description=desc) for desc in product_descriptions],
    ProductCategory,
    max_new_tokens=200
)
```

### 進階：Union 型別處理不完整資料

```python
from typing import Union, Literal
EventResponse = Union[EventInfo, Literal["I don't know"]]
# 模型可以回傳結構化物件或 "I don't know"
result = model(prompt, EventResponse, max_new_tokens=200)
```

## 跟其他方案的關係

| 方案 | 機制 | 保證強度 | 後端相依 |
|------|------|----------|----------|
| **Outlines** | 生成時 logits mask + CFG | ✅ 生成時保證 | 多後端（OpenAI/vLLM/Ollama/transformers/llama.cpp） |
| **OpenAI Structured Output** | API 層級 schema 約束 | ✅ API 保證 | 僅 OpenAI |
| **Instructor** | Pydantic + 重試循環 | ⚠️ 事後修復 + 重試 | 多後端 |
| **手動 JSON parse** | 生成後 regex/json.loads | ❌ 不保證，常失敗 | 任意 |
| **SGLang** | 推論引擎內建結構化生成 | ✅ 引擎層保證 | 僅 SGLang |

Outlines 與 [[sgl-project-sglang|SGLang]] 的差異：SGLang 是完整的推論引擎，結構化生成是其中一個功能；Outlines 是專注於結構化生成的函式庫，可以掛載到各種推論後端上。兩者底層都使用 CFG + logits 攔截的技術路線。

與 [[litellm|LiteLLM]] 互補：LiteLLM 統一 API 介面，Outlines 統一結構化輸出。可以先透過 LiteLLM 路由到不同模型，再用 Outlines 確保輸出結構。

## 相關概念


← [[模型推論與部署]] · [[Prompt-Engineering]] · [[llm-internals]] · [[LLM]]

## 來源

- GitHub: https://github.com/dottxt-ai/outlines
- raw/2026-07-22-dottxt-ai-outlines.md
- 論文: Willard & Louf, "Efficient Guided Generation for Large Language Models", arXiv:2307.09702 (2023)

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/dottxt-ai/outlines |
| Stars | ⭐14840|
| License | Apache-2.0 |
| 收錄日期 | 2026-07-22 |
