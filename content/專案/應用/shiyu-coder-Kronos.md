---
title: Kronos
created: 2026-05-15
---

# Kronos

> 金融市場 K 線的基礎模型，在超過 45 個全球交易所資料上預訓練，AAAI 2026 接受。機率性預測 + 金融 tokenizer，4.1M 到 499.2M 多規格。⭐24,824

## 快速導航
- 🧠 **LLM** → [[LLM]]（Kronos 使用 Transformer 架構，是金融領域的基礎模型）
- 📊 **AI Trader** → [[HKUDS-AI-Trader]]（金融市場交易平台）
- 📊 **Daily Stock** → [[daily-stock-analysis]]（日常股票分析工具）
- 🚀 **模型推論與部署** → [[模型推論與部署]]（模型大小從 4.1M 到 499.2M，部署彈性大）

## 是什麼

Kronos 是第一個專為金融 K 線（蠟燭圖）序列設計的開源基礎模型，在超過 45 個全球交易所的資料上預訓練，已被 AAAI 2026 接受。不同於通用時間序列基礎模型（TSFM），Kronos 使用新穎的兩階段框架：先用專門的 tokenizer 將連續的多維 K 線資料（OHLCV）量化為層級化的離散 token，再用大型自回歸 Transformer 在這些 token 上預訓練。

## 核心特色

- **模型家族**：4 種大小（mini 4.1M / small 24.7M / base 102.3M / large 499.2M），mini 版本上下文長度 2048
- **機率性預測**：透過溫度和核取樣控制，生成多條預測路徑，取平均作為最終預測
- **批次預測**：支援多個時間序列的平行預測，自動處理歸一化和反歸一化
- **微調管線**：整合 Microsoft Qlib 框架處理中國 A 股市場資料，兩階段微調（tokenizer → predictor）
- **金融 tokenizer**：把連續 OHLCV 資料轉為離散 token，保留價格的層級結構

## 怎麼用

```bash
# 安裝依賴
pip install -r requirements.txt

# 微調需要 Qlib
pip install pyqlib
```

```python
from model import Kronos, KronosTokenizer, KronosPredictor
import pandas as pd

tokenizer = KronosTokenizer.from_pretrained("NeoQuasar/Kronos-Tokenizer-base")
model = Kronos.from_pretrained("NeoQuasar/Kronos-small")
predictor = KronosPredictor(model, tokenizer, max_context=512)

pred_df = predictor.predict(
    df=x_df, x_timestamp=x_timestamp, y_timestamp=y_timestamp,
    pred_len=120, T=1.0, top_p=0.9, sample_count=1
)
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[HKUDS-AI-Trader]] | Agent 交易平台 | Kronos 可作為 AI Trader 的預測引擎 |
| [[daily-stock-analysis]] | 日常股票分析 | Kronos 是更底層的預測模型 |
| [[minimind\|MiniMind]] | 從零訓練 LLM | 兩者都是小模型從零訓練的範例 |

## 相關概念

← [[LLM]] · [[HKUDS-AI-Trader]] · [[模型推論與部署]]

## 來源

- raw/2026-05-15-shiyu-coder-Kronos.md

---

- **GitHub**: https://github.com/shiyu-coder/Kronos
- **Stars**: ⭐24,824
- **License**: MIT
- **收錄日期**: 2026-05-15