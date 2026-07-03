---
title: Machine Learning for Trading
slug: stefan-jansen-machine-learning-for-trading
created: 2026-06-02
updated: 2026-06-02
stars: 17870
language: Jupyter Notebook
---

# Machine Learning for Trading

> ⭐17.9k · ML for Algorithmic Trading 第二版配套程式碼，150+ Jupyter Notebook 涵蓋 ML 交易全流程。

## 快速導航
[[financial-forecasting|金融預測]] · [[TauricResearch-TradingAgents|TradingAgents]] · [[HKUDS-AI-Trader|AI-Trader]] · [[FareedKhan-dev-train-llm-from-scratch|Train LLM From Scratch]]

## 是什麼

Machine Learning for Trading 是 Stefan Jansen 所著《Machine Learning for Algorithmic Trading》第二版的配套程式碼庫，收錄超過 150 個 Jupyter Notebook，把書中概念、演算法和實際案例全部變成可執行的程式碼。這不是一本只講理論的書，而是一個從資料取得、特徵工程、模型訓練到策略回測的完整 ML4T 工作流程。

全書分四大部分、23 章加附錄，超過 800 頁。Part 1 從資料到策略開發：市場資料、基本面資料、另類資料、特徵工程、投組最佳化。Part 2 ML 基礎：線性模型、時間序列、貝氏方法、隨機森林、梯度提升、無監督學習。Part 3 NLP 交易：情緒分析、主題模型、詞嵌入。Part 4 深度學習與強化學習：CNN、RNN、自編碼器、GAN、深度強化學習交易 Agent。

這個 repo 特別珍貴的是它複製了多篇頂級期刊的近年研究，像是用 CNN 處理時間序列影像化的報酬預測、用自編碼器提取風險因子做資產定價、用 GAN 生成合成時間序列資料等。

## 核心特色

- **150+ 可執行 Notebook**：每章都有完整程式碼範例，書中提到的演算法都能跑
- **ML4T 完整工作流程**：從資料取得 → 特徵工程 → 模型訓練 → 策略設計 → 回測驗證，端到端
- **多種 ML 方法**：線性回歸、隨機森林、梯度提升、貝氏方法、CNN、RNN、自編碼器、GAN、深度強化學習
- **NLP 金融應用**：SEC 文件情緒分析、財報會議紀錄主題模型、詞嵌入
- **策略回測**：整合 Zipline 回測引擎，可直接把 ML 預測信號轉成可回測的交易策略
- **100+ Alpha 因子庫**：附錄提供超過 100 個不同的 alpha 因子描述

## 怎麼用

### 環境安裝

建議按章節安裝需要的套件，避免一次性安裝所有依賴造成版本衝突：

```bash
# 使用 conda-forge 安裝核心回測環境
conda install -c conda-forge zipline-reloaded pyfolio-reloaded alphalens-reloaded empyrical-reloaded
```

### Docker（推薦新手）

```bash
# 詳見 installation/ 目錄的說明
docker build -t ml4t .
docker run -it ml4t
```

### 資料下載

```bash
# 見 data/ 目錄的 README 和各章節 notebook 中的資料下載指引
# Algoseek 資料可從 https://www.algoseek.com/ml4t-book-data.html 下載
```

## 跟其他方案的關係

| 方案 | 類型 | 涵蓋範圍 | LLM 整合 | 回測引擎 | 適合場景 |
|------|------|---------|---------|---------|---------|
| **ML4T** | 教學 + 程式碼 | ML 全流程 | ❌ 傳統 ML | ✅ Zipline | 系統學習 ML 交易 |
| [[TauricResearch-TradingAgents|TradingAgents]] | 框架 | 多 Agent 決策 | ✅ 多 Provider | ✅ 模擬交易所 | LLM 驅動交易決策 |
| [[HKUDS-AI-Trader|AI-Trader]] | Agent | 單 Agent | ✅ | 有限 | 輕量交易原型 |
| [[daily-stock-analysis|Daily Stock Analysis]] | 工具 | 股市分析 | ✅ | ❌ | 每日自動分析 |
| [[FareedKhan-dev-train-llm-from-scratch|Train LLM From Scratch]] | 教學 | LLM 訓練 | N/A | ❌ | 學習 LLM 底層 |

## 相關概念
← [[TauricResearch-TradingAgents|TradingAgents]] · [[financial-forecasting|金融預測]] 相關概念

## 來源

- raw/2026-06-02-stefan-jansen-machine-learning-for-trading.md
- GitHub: [stefan-jansen/machine-learning-for-trading](https://github.com/stefan-jansen/machine-learning-for-trading)
- 書籍官網: [ml4trading.io](https://ml4trading.io)
- Raw 檔案: 原始資料

---

| 項目 | 值 |
|------|-----|
| GitHub | [stefan-jansen/machine-learning-for-trading](https://github.com/stefan-jansen/machine-learning-for-trading) |
| Stars | ⭐17,870 |
| License | — |
| Language | Jupyter Notebook |
| 收錄日期 | 2026-06-02 |