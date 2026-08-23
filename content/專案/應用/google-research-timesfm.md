---
title: TimesFM
slug: google-research-timesfm
created: 2024-04-29
updated: 2026-06-19
stars: 23178
language: Python
topics: [time-series, foundation-model, forecasting, google-research, llm]
---

# TimesFM

> ⭐23178 · Google Research 開發的時間序列基礎模型，decoder-only 架構，零樣本預測未知領域。

## 快速導航

[[financial-forecasting|金融預測]] · [[TauricResearch-TradingAgents|TradingAgents]] · [[shiyu-coder-Kronos|Kronos]]

## 是什麼

TimesFM（Time Series Foundation Model）是 Google Research 開發的時間序列預訓練基礎模型，用於時間序列預測。它採用 decoder-only 架構，類似 LLM 的自回歸方式，但在時間序列域上運作——模型讀入歷史時間序列片段，然後預測未來值。核心洞見是：大量真實世界時間序列的預訓練，可以讓模型學到通用時序模式，從而零樣本遷移到未見過的領域。

TimesFM 2.5 是最新版本，使用 200M 參數（從 2.0 的 500M 縮減），支援 16k context length（從 2048 大幅擴展），可選 30M quantile head 做機率預測，最長 1k horizon 的連續分位數預測。它還透過 XReg 支援外部變量（covariate），讓使用者能加入額外特徵來引導預測。

TimesFM 已整合到 Google 產品線：BigQuery ML 提供企業級 SQL 查詢、Google Sheets 讓使用者直接在試算表預測、Vertex Model Garden 提供 Dockerized endpoint。這使它成為目前最易取得的時間序列基礎模型之一。論文發表於 ICML 2024。

## 核心特色

- **Decoder-only 架構**：類似 LLM 的自回歸預測，但運作在時間序列域
- **零樣本遷移**：大量時序資料預訓練，能預測未見過的領域
- **TimesFM 2.5**：200M 參數、16k context、1k horizon、可選 30M quantile head
- **機率預測**：連續分位數預測（continuous quantile forecast），不只點預測
- **外部變量支援**：透過 XReg 加入 covariate，用額外特徵引導預測
- **LoRA 微調**：支援 HuggingFace Transformers + PEFT 做輕量微調
- **Flax 加速**：提供 Flax 版本用於更快推論
- **Google 產品整合**：BigQuery ML、Google Sheets、Vertex Model Garden

## 怎麼用

```bash
# 安裝
pip install timesfm[torch]
# 或 Flax 版
pip install timesfm[flax]
# 需要外部變量時
pip install timesfm[xreg]

# 本地安裝
git clone https://github.com/google-research/timesfm.git
cd timesfm
uv venv && source .venv/bin/activate
uv pip install -e .[torch]
```

```python
import torch
import numpy as np
import timesfm

model = timesfm.TimesFM_2p5_200M_torch.from_pretrained("google/timesfm-2.5-200m-pytorch")
model.compile(timesfm.ForecastConfig(
    max_context=1024, max_horizon=256,
    normalize_inputs=True,
    use_continuous_quantile_head=True,
    force_flip_invariance=True,
    infer_is_positive=True,
))
point_forecast, quantile_forecast = model.forecast(
    horizon=12,
    inputs=[np.linspace(0, 1, 100), np.sin(np.linspace(0, 20, 67))],
)
```

## 跟其他方案的關係

| 方案 | 類型 | 參數量 | Context | 機率預測 | 外部變量 | 微調 |
|------|------|--------|---------|----------|----------|------|
| [[google-research-timesfm|TimesFM]] | 時序基礎模型 | 200M | 16k | ✅ | ✅ (XReg) | ✅ LoRA |
| [[shiyu-coder-Kronos|Kronos]] | 時序基礎模型 | — | — | — | — | — |
| [[TauricResearch-TradingAgents|TradingAgents]] | Agent 交易 | — | — | — | — | — |
| Prophet | 經典時序 | — | — | ✅ | ✅ | ✅ |
| Lag-Llama | 時序基礎模型 | — | — | — | — | ✅ |

TimesFM 與 [[financial-forecasting|金融預測]] 概念高度相關，可用於股市、銷量等時序預測場景。與 [[shiyu-coder-Kronos|Kronos]]（K 線 LLM）屬於同類但聚焦不同：TimesFM 通用時序，Kronos 專注金融 K 線。

## 相關概念


← [[financial-forecasting]] · [[shiyu-coder-Kronos]] · [[TauricResearch-TradingAgents]]

## 來源

- GitHub：https://github.com/google-research/timesfm
- 論文：https://arxiv.org/abs/2310.10688（ICML 2024）
- HuggingFace：https://huggingface.co/collections/google/timesfm-release-66e4be5fdb56e960c1e482a6
- Raw 檔案：`knowledge-base/raw/2026-06-19-google-research-timesfm.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/google-research/timesfm |
| Stars | ⭐23178|
| License | Apache-2.0 |
| 收錄日期 | 2024-04-29 |
