---
title: Kronos
date: 2026-05-15
stars: 24824
language: Python
repo: shiyu-coder/Kronos
---

# Kronos — 金融市場 K 線的基礎模型

Kronos 是第一個專為金融 K 線（蠟燭圖）序列設計的開源基礎模型，在超過 45 個全球交易所的資料上預訓練，已被 AAAI 2026 接受。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [shiyu-coder/Kronos](https://github.com/shiyu-coder/Kronos) |
| Stars | ⭐24,824 |
| Language | Python |
| 建立日期 | 2025-07-01 |
| 收錄日期 | 2026-05-15 |
| 授權 | MIT |

## 快速導航

- [[LLM]] — Kronos 使用 Transformer 架構，是金融領域的基礎模型
- [[AI-Trader]] — 直接相關：金融市場預測與量化交易
- [[模型推論與部署]] — 模型大小從 4.1M 到 499.2M 不等，部署彈性大
- [[daily-stock-analysis]] — 相關：日常股票分析工具
- [[agent-trading]] — 相關：AI 代理交易

## 詳細簡介

不同於通用時間序列基礎模型（TSFM），Kronos 是專為金融市場的「語言」——K 線序列——設計的。金融資料有獨特的高噪音特性，通用模型在這個領域表現不佳。Kronos 使用新穎的兩階段框架解決這個問題：先用專門的 tokenizer 將連續的多維 K 線資料（OHLCV）量化為層級化的離散 token，再用大型自回歸 Transformer 在這些 token 上預訓練，讓它成為多種量化任務的統一模型。

這個設計有兩個關鍵創新：第一，金融 tokenizer 把連續的 OHLCV 資料轉為離散 token，保留了價格的層級結構（開盤、最高、最低、收盤之間的關係）。第二，自回歸預訓練讓模型學到了金融時間序列的深層模式，而不是簡單的統計特徵。

## 核心特色

### 模型家族

Kronos 提供四種大小的預訓練模型：

| 模型 | Tokenizer | 上下文長度 | 參數量 | 開源 |
|------|-----------|-----------|--------|------|
| Kronos-mini | Kronos-Tokenizer-2k | 2048 | 4.1M | ✅ |
| Kronos-small | Kronos-Tokenizer-base | 512 | 24.7M | ✅ |
| Kronos-base | Kronos-Tokenizer-base | 512 | 102.3M | ✅ |
| Kronos-large | Kronos-Tokenizer-base | 512 | 499.2M | ❌ |

mini 版本的上下文長度達到 2048，是其他版本的 4 倍，適合需要更長歷史回顧的場景。

### 機率性預測

Kronos 不只是輸出單一預測值。透過溫度（T）和核取樣（top_p）控制，可以生成多條預測路徑（sample_count），取平均作為最終預測。這種機率性預測讓使用者能評估預測的不確定性。

### 批次預測

`predict_batch` 方法支援多個時間序列的平行預測，特別適合需要同時預測多個資產或時間段的場景。所有序列必須有相同的歷史長度和預測長度，方法會自動處理每個序列的歸一化和反歸一化。

### 微調管線

Kronos 提供完整的微調流程，整合了 Microsoft 的 Qlib 框架來處理中國 A 股市場資料。微調分兩階段：先微調 tokenizer 適應特定領域的資料分佈，再微調 predictor 針對預測任務優化。支援多 GPU 訓練（torchrun）。

## 安裝方式

```bash
# 安裝依賴
pip install -r requirements.txt

# 微調需要 Qlib
pip install pyqlib
```

```python
from model import Kronos, KronosTokenizer, KronosPredictor
import pandas as pd

# 載入模型
tokenizer = KronosTokenizer.from_pretrained("NeoQuasar/Kronos-Tokenizer-base")
model = Kronos.from_pretrained("NeoQuasar/Kronos-small")
predictor = KronosPredictor(model, tokenizer, max_context=512)

# 準備資料
df = pd.read_csv("data/XSHG_5min_600977.csv")
df['timestamps'] = pd.to_datetime(df['timestamps'])
x_df = df.loc[:399, ['open', 'high', 'low', 'close', 'volume', 'amount']]
x_timestamp = df.loc[:399, 'timestamps']
y_timestamp = df.loc[400:519, 'timestamps']

# 預測
pred_df = predictor.predict(
    df=x_df, x_timestamp=x_timestamp, y_timestamp=y_timestamp,
    pred_len=120, T=1.0, top_p=0.9, sample_count=1
)
```

## 技術棧

- **Python 3.10+** — 主要語言
- **PyTorch** — 模型框架
- **Hugging Face** — 模型託管與載入
- **Qlib** — 金融資料處理與回測
- **Pandas** — 資料處理

## 相關連結

- [GitHub Repo](https://github.com/shiyu-coder/Kronos)
- [論文 (arXiv)](https://arxiv.org/abs/2508.02739)
- [即時 Demo](https://shiyu-coder.github.io/Kronos-demo/)
- [Hugging Face 模型](https://huggingface.co/NeoQuasar)