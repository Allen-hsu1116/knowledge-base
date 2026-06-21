---
title: AlphaEvo
slug: ZhuLinsen-alphaevo
created: 2026-05-21
updated: 2026-05-28
stars: 38100
language: Python
---

# AlphaEvo

> ⭐38.1k · 策略回測與自我進化引擎，Daily Stock Analysis 生態系的驗證子專案

## 快速導航
[[ZhuLinsen-daily_stock_analysis|Daily Stock Analysis]] · [[ZhuLinsen-alphasift|AlphaSift]] · [[financial-forecasting|金融預測]] · [[backtesting|回測]]

## 是什麼

AlphaEvo 是 [[ZhuLinsen-daily_stock_analysis|Daily Stock Analysis]] 生態系中的策略回測引擎，負責驗證選股訊號和策略的自我進化。AlphaSift 做初篩，AlphaEvo 做驗證——兩者構成了 Daily Stock Analysis 的量化策略閉環。透過回測評估策略表現，並以迭代探索優化策略參數與組合。

## 核心特色

- 📊 **策略回測**：驗證選股訊號的歷史績效
- 🧬 **自我進化**：透過迭代探索優化策略參數與組合
- 🔗 **生態系整合**：與 AlphaSift 初篩結果無縫對接
- 📈 **多維度評估**：報酬率、最大回撤、Sharpe Ratio 等指標
- 🤖 **AI 輔助優化**：利用 LLM 智能調整策略參數
- 🔁 **閉環流程**：從訊號 → 初篩 → 回測 → 優化 → 再訊號

## 怎麼用

```bash
# AlphaEvo 作為 Daily Stock Analysis 的子專案
# 需先安裝 Daily Stock Analysis
git clone https://github.com/ZhuLinsen/daily_stock_analysis.git
cd daily_stock_analysis

# 安裝依賴
pip install -r requirements.txt

# 設定環境變數
cp .env.example .env
# 編輯 .env 填入 AI 模型 API Key

# 執行回測
python main.py --backtest

# 搭配 AlphaSift 初篩結果進行驗證
python main.py --stocks 600519,hk00700,AAPL --backtest
```

## 跟其他方案的關係

| 專案 | Stars | 定位 | 回測 | AI 輔助 | 生態整合 |
|------|-------|------|------|---------|---------|
| **AlphaEvo** | ⭐38.1k* | 策略回測引擎 | ✅ | ✅ | ✅ DSA 生態系 |
| [[ZhuLinsen-daily_stock_analysis|Daily Stock Analysis]] | ⭐38.1k | AI 股市分析儀表盤 | ✅ | ✅ | — |
| [[ZhuLinsen-alphasift|AlphaSift]] | ⭐38.1k* | 多因子選股引擎 | ❌ | ✅ | ✅ DSA 生態系 |
| Backtrader | ⭐14k+ | 回測框架 | ✅ | ❌ | ❌ |

> *Stars 數為 Daily Stock Analysis 主專案數據

## 相關概念
← [[ZhuLinsen-daily_stock_analysis|Daily Stock Analysis]] · [[ZhuLinsen-alphasift|AlphaSift]] · [[financial-forecasting|金融預測]] · [[backtesting|回測]]

## 來源

- GitHub: <https://github.com/ZhuLinsen/alphaevo>
- 主專案: <https://github.com/ZhuLinsen/daily_stock_analysis>
- 原始 README: `raw/ZhuLinsen-daily_stock_analysis.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [ZhuLinsen/alphaevo](https://github.com/ZhuLinsen/alphaevo) |
| Stars | ⭐38,100* |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-05-28 |

> *Stars 數為 Daily Stock Analysis 主專案數據