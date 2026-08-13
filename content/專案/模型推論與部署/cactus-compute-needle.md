---
title: Needle 2
slug: cactus-compute-needle
created: 2026-08-13
updated: 2026-08-13
stars: 4224
language: Python
topics: [on-device-ai, llm, tool-calling, edge-ai, structured-extraction, cactus, gemma]
---

# Needle 2

> ⭐4.2k · 14MB 基礎模型，為手機、穿戴裝置、智慧家庭和機器人設計的Tool Calling 模型——45M 參數，28MB RAM 跑完整 session

## 快速導航

- 🧠 **LLM** → [[LLM]]
- 📱 **邊緣 AI** → [[edge-AI]]
- 🖥️ **模型推論與部署** → [[模型推論與部署]]
- ⚡ **Token 優化** → [[Token-Optimization]]

## 是什麼

Needle 2 是一個開源的 45M 參數基礎模型，專為工具呼叫（Tool Calling）、裝置使用和結構化資料擷取設計。整個模型是一個 14MB 的二進位檔案，跑一個完整 session 只需要約 28MB RAM。它建構在 Simple Attention Network 的研究發現上，用 CQ2-bit 壓縮，並烤進自己的推論引擎裡——不需要 PyTorch、不需要 CUDA、不需要任何外部依賴。

在基準測試上，Needle 2 跟 FunctionGemma 270M、LFM2.5 230M 和 Apple FM 等小型模型互有勝負，但體積只有它們的 1/5 到 1/70，而且只有 2-bit 量化（對手是 f16）。這讓它適合部署在手機、穿戴裝置、智慧家庭設備和機器人上，做本地工具呼叫和結構化擷取，不需要網路連線。

核心設計是把每個問題都當成函式呼叫來解。你宣告可用的工具，模型回答呼叫。沒有工具能服務的請求會被拒絕（回傳空呼叫 `[]`），不會有自由文字 fallback。參數只包含輸入中有證據的值，沒有證據的可選欄位會被省略而非猜測。

## 核心特色

- **自包含引擎**：權重烤進單一 14MB 引擎，推論不做任何網路操作，不需 PyTorch/CUDA
- **Byte-level Grammar 約束**：從你的 JSON Schema 編譯出 byte-level grammar，每個 token 都受約束，JSON 不可能 malformed
- **信心分數 gating**：每個回應帶校準信心分數（post-hoc head + decode probability 的最小值），設一個閾值，高分執行、低點升級到大模型
- **Tool Retrieval**：超過 5 個工具時自動啟用檢索，每 turn 只渲染 top 5 工具到 context，未被選中的工具完全不可達
- **Bounded Memory**：256-token 滑動窗口，工具釘為 KV sinks，總記憶體不論對話多長都維持在 ~28MB
- **Simple Attention Network**：Hadamard MLP 取代 FFN、GQA attention、engram key-value memory、multi-lane hyper-connections
- **LoRA 微調 + 合併匯出**：凍結基底 LoRA 微調，合併後匯出為單一 `.cact` 檔，同一引擎直接跑
- **結構化擷取**：宣告 Pydantic model 做為唯一工具，`extract()` 回傳 typed object，schema 遵從是保證而非請求

## 怎麼用

```bash
# 安裝
pip install cactus-needle
```

```python
import needle

@needle.tool
def get_weather(city: str):
    "Get the current weather for a city."
    return {"city": city, "temp_c": 27, "sky": "clear"}

agent = needle.Needle(tools=[get_weather])
print(agent.run("what's it like in Lagos right now?")["results"])
# [{'city': 'Lagos', 'temp_c': 27, 'sky': 'clear'}]
```

```python
# 進階：用 Annotated + Field 約束值
from typing import Annotated

@needle.tool
def send_money(
    amount: Annotated[float, needle.Field(gt=0, le=10000, description="USD, up to 10,000")],
    to:     Annotated[str,   needle.Field(pattern=r"^@[a-z0-9_]+$", description="recipient handle")],
):
    "Send money to a handle."
    return {"sent": amount, "to": to}

# 結構化擷取
from pydantic import BaseModel
class Invoice(BaseModel):
    vendor: str
    total: float
    due_date: str

invoice = needle.extract("Invoice from Acme Corp, $1,200.00, due 2026-09-01", Invoice)
print(invoice.vendor, invoice.total)  # -> Acme Corp 1200.0
```

```bash
# LoRA 微調
needle finetune data.jsonl --epochs 3
needle build checkpoints/needle2.pkl --lora checkpoints/needle_lora.pkl --out my_needle.cact

# Playground
needle playground  # http://127.0.0.1:7860
```

## 跟其他方案的關係

- **FunctionGemma 270M**：Google 的小型 function calling 模型，270M 參數，品質接近但體積是 Needle 的 6x
- **LFM2.5 230M**：Liquid AI 的小模型，230M 參數，架構不同（非 Transformer），體積是 Needle 的 5x
- **Apple FM**：Apple 的裝置端基礎模型，閉源，體積更大
- **Ollama + 小模型**：Ollama 跑 1B-3B 模型，品質更高但 RAM 需求是 Needle 的 10-50x
- **Needle 2**：45M 參數、14MB binary、28MB RAM、2-bit 量化、byte-level grammar 約束、信心 gating、tool retrieval、無網路

Needle 2 不是要取代大模型，而是填補「設備太小、RAM 太少、不能連網」的場景。在這些限制下，它是目前最小的可用 tool calling 模型。

## 相關概念

← [[LLM]] · [[edge-AI]] · [[模型推論與部署]] · [[Token-Optimization]] · [[llama-cpp]]

## 來源

- GitHub: <https://github.com/cactus-compute/needle>
- HuggingFace: <https://huggingface.co/Cactus-Compute/needle2>
- Paper: <https://arxiv.org/abs/2607.18363>
- 原始 README: `raw/2026-08-13-cactus-compute-needle.md`

---

| 欄位 | 值 |
|------|-----|
| GitHub | cactus-compute/needle |
| Stars | ⭐4.2k |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-08-13 |