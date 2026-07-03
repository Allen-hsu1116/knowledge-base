---
title: 回測
slug: backtesting
language: zh-TW
---

# 回測

> 用歷史數據驗證交易策略或模型的表現，是量化交易從假設到上線的必要步驟。

## 核心內容

回測（Backtesting）是將交易策略套用到歷史市場數據上，評估策略的收益、風險和穩健性。在量化交易中，任何策略在上線前都必須通過回測驗證——用過去的市場數據模擬策略執行，觀察其在不同市場環境下的表現，判斷是否值得投入實際資金。

好的回測框架需要處理幾個關鍵陷阱。**生存偏差**（Survivorship Bias）：只用目前仍存在的公司數據回測，忽略已下市的公司，會高估策略收益。**未來資訊洩漏**（Look-ahead Bias）：使用了回測時點不應知道的未來資訊（如用收盤價做開盤決策），導致不切實際的績效。**過擬合**（Overfitting）：策略參數過度調整以適應歷史數據，在樣本外表現大幅衰退。**交易成本忽略**：不計手續費、滑價和衝擊成本，回測績效與實際落差巨大。

現代回測框架還需要處理多資產組合的交叉影響、不同時間尺度的信號整合、以及市場流動性限制。先進的回測系統結合 AI Agent 能自動化策略生成、回測驗證和參數優化的閉環，透過自演化機制持續改進策略。

## 關鍵要素

- **生存偏差處理** — 包含已下市公司的歷史數據，避免高估策略收益
- **未來資訊洩漏防護** — 嚴格確保每個時點只用當時可得的資訊做決策
- **交易成本模擬** — 計入手續費、滑價和市場衝擊成本，還原真實交易環境
- **多場景壓力測試** — 在多種市場環境（牛市、熊市、震盪、黑天鵝）下驗證穩健性
- ** Walk-forward 分析** — 將數據分為訓練和測試窗口，模擬策略的持續有效性
- **AI 自演化** — Agent 自動生成、回測和優化策略的閉環

## 各框架的做法

- **AlphaEvo** → 策略回測 + 金融預測 + 自演化引擎，自動化策略改進閉環
  👉 詳見 [[ZhuLinsen-alphaevo]]
- **ML for Trading** → ML 金融交易教學，含回測實戰 Jupyter Notebook
  👉 詳見 [[stefan-jansen-machine-learning-for-trading]]
- **AlphaSift** → 多因子選股 + 股市掃描，回測驅動的策略篩選
  👉 詳見 [[ZhuLinsen-alphasift]]
- **TradingAgents** → 多 Agent 交易系統，含策略回測驗證
  👉 詳見 [[TauricResearch-TradingAgents]]
- **Daily Stock Analysis** → GitHub Actions 自動化每日分析，含歷史回測
  👉 詳見 [[daily-stock-analysis]]

## 相關概念

- [[financial-forecasting]] — 金融預測產生策略，回測驗證策略
- [[agent-trading]] — Agent 交易系統需要回測驗證策略穩健性
- [[AI-Agent]] — 模擬是回測的方法論基礎
- [[data-analysis]] — 數據分析是回測結果解讀的基礎
- [[stock-tracking]] — 股市追蹤提供回測所需的歷史數據

## 來源

- AlphaEvo、ML for Trading、AlphaSift 等專案頁面
- 量化交易回測方法論相關文獻