---
title: AlphaSift
slug: ZhuLinsen-alphasift
created: 2026-05-21
updated: 2026-05-28
stars: 38100
language: Python
topics: [多因子選股, 股市掃描, 金融分析]
---

# AlphaSift

> ⭐38100 · 多因子選股與全市場掃描引擎，Daily Stock Analysis 生態系的選股子專案

## 快速導航

[[ZhuLinsen-daily_stock_analysis|Daily Stock Analysis]] · [[ZhuLinsen-alphaevo|AlphaEvo]] · [[financial-forecasting|金融預測]] · [[stock-tracking|股票追蹤]]

## 是什麼


AlphaSift 是 [[ZhuLinsen-daily_stock_analysis|Daily Stock Analysis]] 生態系中的選股引擎，負責多因子篩選和全市場掃描。

它從龐大的股票池中快速提取候選標的，然後交給 [[ZhuLinsen-alphaevo|AlphaEvo]] 進行策略回測驗證。支援 A 股、港股、美股多市場，內建多種選股因子和篩選策略。

## 核心特色

- 🎯 **多因子選股**：技術面、基本面、資金面等多維度因子篩選
- 🔍 **全市場掃描**：A 股、港股、美股全覆蓋
- ⚡ **快速初篩**：從數千檔標的中即時篩選候選股
- 🔗 **生態系整合**：篩選結果直接對接 AlphaEvo 進行回測驗證
- 📊 **多策略支援**：均線金叉、纏論、波浪、趨勢等多種內建篩選邏輯
- 🤖 **AI 輔助**：LLM 智能分析篩選結果，提供選股建議

## 怎麼用

```bash
# AlphaSift 作為 Daily Stock Analysis 的子專案
# 需先安裝 Daily Stock Analysis
git clone https://github.com/ZhuLinsen/daily_stock_analysis.git
cd daily_stock_analysis

# 安裝依賴
pip install -r requirements.txt

# 設定環境變數
cp .env.example .env
# 編輯 .env 填入 AI 模型 API Key

# 執行全市場掃描
python main.py --market-review

# 指定股票進行選股篩選
python main.py --stocks 600519,hk00700,AAPL
```

## 跟其他方案的關係

| 專案 | Stars | 定位 | 選股篩選 | AI 輔助 | 生態整合 |
|------|-------|------|---------|---------|---------|
| **AlphaSift** | ⭐38.1k* | 多因子選股引擎 | ✅ | ✅ | ✅ DSA 生態系 |
| [[ZhuLinsen-daily_stock_analysis|Daily Stock Analysis]] | ⭐38.1k | AI 股市分析儀表盤 | ✅ | ✅ | — |
| [[ZhuLinsen-alphaevo|AlphaEvo]] | ⭐38.1k* | 策略回測引擎 | ❌ | ✅ | ✅ DSA 生態系 |
| [[Open-Dev-Society-OpenStock|OpenStock]] | ⭐12.1k | 股市追蹤平台 | ❌ | ❌ | ❌ |

> *Stars 數為 Daily Stock Analysis 主專案數據

## 相關概念

← [[ZhuLinsen-daily_stock_analysis]] · [[ZhuLinsen-alphaevo]] · [[financial-forecasting]] · [[stock-tracking]]

## 來源

- GitHub: <https://github.com/ZhuLinsen/alphasift>
- 主專案: <https://github.com/ZhuLinsen/daily_stock_analysis>
- 原始 README: `raw/ZhuLinsen-daily_stock_analysis.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/ZhuLinsen/daily_stock_analysis |
| Stars | ⭐38100|
| License | MIT |
| 收錄日期 | 2026-05-21 |
