---
title: Awesome Systematic Trading
slug: paperswithbacktest-awesome-systematic-trading
created: 2026-07-29
updated: 2026-07-29
stars: 9601
language: Python
topics: [algorithmic-trading, quant, quantitative-finance, backtesting, trading-strategies, awesome-list]
---

# Awesome Systematic Trading

> ⭐9601 · A curated list of awesome libraries, packages, strategies, books, blogs, tutorials for systematic trading.

## 快速導航


- 📊 **金融預測** → [[financial-forecasting|金融預測]]
- 🤖 **Agent 交易** → [[agent-trading|Agent 交易]]
- 📈 **回測方法論** → [[backtesting|回測]]
- 📉 **股市追蹤** → [[stock-tracking|股市追蹤]]

## 是什麼

Awesome Systematic Trading 是一份精心策展的系統化交易（量化交易）資源清單，涵蓋從研究到實盤交易的完整生態系。它收錄了 97 個開源庫和套件、40+ 篇描述原始系統化交易策略的學術論文、55 本從入門到專業的書籍，以及 23 部影片和訪談。

這份清單的獨特之處在於它不只是列連結——每個策略都附帶 Sharpe Ratio、波動率、再平衡頻率、QuantConnect 實作程式碼和原始論文連結。策略按資產類別分類（債券、商品、貨幣、股票、加密貨幣），並按 Sharpe Ratio 降序排列，讓研究者可以快速找到風險調整後報酬最高的策略。

配套網站 paperswithbacktest.com 提供了更完整的策略實作集合，形成從理論到程式碼的完整閉環。

## 核心特色

- **97 個交易庫分類索引**：涵蓋事件驅動回測框架（vnpy、zipline、backtrader、QuantConnect）、向量化框架（vectorbt）、加密貨幣交易（Freqtrade、Jesse）、技術指標（ta-lib、pandas-ta）、投資組合優化（PyPortfolioOpt、Riskfolio-Lib）、定價（FinancePy、tf-quant-finance）等
- **40+ 學術策略 + 可執行程式碼**：每個策略附帶 Sharpe Ratio、波動率、再平衡頻率、QuantConnect 實作和原始論文——從 Time Series Momentum（Sharpe 0.576）到 Overnight Seasonality in Bitcoin（Sharpe 0.892）
- **完整 ML 生態**：QLib（Microsoft AI 量化平台）、FinRL（深度強化學習量化金融）、MlFinLab、TradingGym，涵蓋從特徵工程到模型訓練
- **跨資產類別覆蓋**：債券、商品、貨幣、股票、REITs、加密貨幣——每類資產都有對應的數據源、策略和工具
- **中英雙語**：提供中文版 README，適合華語量化社群

## 怎麼用

```bash
# 克隆 repo 瀏覽完整清單
git clone https://github.com/paperswithbacktest/awesome-systematic-trading.git

# 策略實作已託管在 paperswithbacktest.com
# 每個策略有對應的 QuantConnect 實作，例如：
# static/strategies/time-series-momentum-effect.py
# static/strategies/asset-growth-effect.py
# static/strategies/pairs-trading-with-stocks.py
```

探索策略的方式：
1. 依資產類別瀏覽（Equities / Currencies / Commodities / Cryptos）
2. 按 Sharpe Ratio 排序找高風險調整報酬策略
3. 點擊 Paper 連結閱讀原始學術論文
4. 用 QuantConnect 實作程式碼回測

## 跟其他方案的關係

| 資源 | 類型 | 策略數 | 含程式碼 | 含論文 |
|------|------|--------|---------|--------|
| **Awesome Systematic Trading** | 策展清單 | 40+ | ✅ QuantConnect | ✅ |
| [[virattt-ai-hedge-fund\|AI Hedge Fund]] | AI Agent | 13 大師 | ✅ Python | ❌ |
| [[TauricResearch-TradingAgents\|TradingAgents]] | AI Agent | — | ✅ Python | ❌ |
| [[stefan-jansen-machine-learning-for-trading\|ML for Trading]] | 教學書 | — | ✅ Jupyter | ❌ |
| [[backtesting\|回測方法論]] | 概念 | — | — | — |

## 相關概念


← [[financial-forecasting]] · [[agent-trading]] · [[backtesting]] · [[stock-tracking]]

## 來源

- GitHub: https://github.com/paperswithbacktest/awesome-systematic-trading
- Website: https://paperswithbacktest.com
- raw/2026-07-29-paperswithbacktest-awesome-systematic-trading.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/paperswithbacktest/awesome-systematic-trading |
| Stars | ⭐9601|
| License | 未標示 |
| 收錄日期 | 2026-07-29 |
