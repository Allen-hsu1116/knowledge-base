---
source: https://github.com/ZhuLinsen/daily_stock_analysis
date: 2026-05-03
author: ZhuLinsen
---

# Daily Stock Analysis — LLM 驅動的智能股市分析

> LLM 驅動的 A股/港股/美股智能分析系統。每日自動生成決策儀表盤，支援技術面+輿情+基本面多維分析，11 種內建策略，GitHub Actions 零成本運行。

**GitHub**: https://github.com/ZhuLinsen/daily_stock_analysis
**作者**: ZhuLinsen

## Key Features

### AI Decision Dashboard
- 一句話核心結論 + 評分 + 買賣點位 + 風險警報 + 操作檢查清單
- 多維度分析：技術面、實時行情、籌碼分佈、新聞輿情、公告、資金流與基本面

### 支援市場
- A股、港股、美股、美股指數及常見 ETF

### 11 種內建策略
- A股復盤、美股 Regime、均線、纏論、波浪、情緒週期等
- Agent 問股：多輪策略對話，支持均線金叉/纏論/波浪等策略

### 多渠道推送
- 企業微信、飛書、Telegram、Discord、Slack、郵件

### 零成本運行
- GitHub Actions 定時運行，無需伺服器

## Tech Stack

| 類別 | 工具 |
|------|------|
| AI Models | AIHubMix, Gemini, OpenAI, DeepSeek, 通義千問, Claude, Ollama |
| Market Data | TickFlow, AkShare, Tushare, Pytdx, Baostock, YFinance, Longbridge |
| News Search | SerpAPI, Tavily, Brave, MiniMax, SearXNG |

## 為什麼重要

1. **LLM + 金融分析的實踐**：展示 LLM 如何整合多源數據做決策
2. **零成本自動化**：GitHub Actions 讓任何人都能免費跑每日分析
3. **多策略組合**：11 種策略可互相驗證，降低單一策略風險
4. **開源可客製**：可替換數據源、模型和推送渠道

## 相關主題

- [[AI-Agent|AI Agent]] — Agent 框架
- [[ZhuLinsen-daily_stock_analysis|ZhuLinsen/daily_stock_analysis]] — Repo 頁面

## 參考資料

- [GitHub - ZhuLinsen/daily_stock_analysis](https://github.com/ZhuLinsen/daily_stock_analysis)