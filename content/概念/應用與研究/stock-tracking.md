---
title: 股市追蹤
slug: stock-tracking
created: 2026-05-27
updated: 2026-05-27
language: zh-TW
---

# 股市追蹤

> 即時監控和分析股票市場數據的技術與工具，涵蓋行情、歷史數據、技術指標和基本面分析。

## 核心內容

股市追蹤涉及即時行情、歷史數據、技術指標和基本面分析的整合。對於投資人和量化交易者而言，持續且準確的市場數據是做出決策的基礎。開源工具的興起讓個人投資者也能建立專業級的股市追蹤系統，不再完全依賴付費的金融終端。

股市追蹤系統通常包含幾個層次：即時行情擷取（透過券商 API 或公開數據源）、歷史數據儲存（K 線、量價、財報數據）、技術指標計算（MA、RSI、MACD 等）、基本面數據整合（營收、盈餘、股利）和視覺化呈現（圖表、儀表板、通知）。現代系統還整合 AI 分析能力，用 LLM 自動解讀市場動態和生成分析報告。

自動化是股市追蹤的重要趨勢。透過 GitHub Actions 等持續整合工具，可以建立每日自動分析管線——定時擷取最新數據、計算指標、生成報告、推送通知。結合 AI Agent 後，系統不僅能追蹤數據，還能主動發現異常、解讀事件影響和提供決策建議。

## 關鍵要素

- **即時行情擷取** — 透過券商 API 或公開數據源取得即時報價
- **歷史數據儲存** — K 線、量價、財報等結構化數據的持久化
- **技術指標計算** — MA、RSI、MACD、布林通道等常用指標的自動計算
- **基本面整合** — 營收、盈餘、股利、法人買賣超等基本面數據
- **自動化分析管線** — GitHub Actions 定時執行擷取、分析和報告生成
- **AI 解讀** — LLM 自動解讀市場動態，生成自然語言分析報告

## 各框架的做法

- **OpenStock** → 開源股市追蹤，即時報價，免費且可自架
  👉 詳見 [[Open-Dev-Society-OpenStock]]
- **Daily Stock Analysis** → GitHub Actions 自動化每日股市分析，LLM 驅動
  👉 詳見 [[daily-stock-analysis]]
- **AlphaSift** → 多因子選股 + 股市掃描，自動化篩選分析
  👉 詳見 [[ZhuLinsen-alphasift]]
- **Fincept Terminal** → 機構級金融智慧平台，多市場數據追蹤
  👉 詳見 [[FinceptTerminal]]
- **Anthropic Financial Services** → AI Agent + AI Skills + MCP 的金融服務框架
  👉 詳見 [[anthropics-financial-services]]

## 相關概念

- [[financial-forecasting]] — 股市追蹤數據是金融預測的輸入
- [[backtesting]] — 歷史追蹤數據用於策略回測驗證
- [[agent-trading]] — Agent 交易系統依賴即時股市追蹤
- [[data-analysis]] — 數據分析是股市追蹤數據的解讀方法
- [[AI-Agent]] — AI Agent 讓追蹤系統具備主動分析和決策能力

## 來源

- OpenStock、Daily Stock Analysis、AlphaSift 等專案頁面
- 券商 API 和公開市場數據源相關文件