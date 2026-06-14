---
title: 每日股票分析 (daily-stock-analysis)
slug: daily-stock-analysis
created: 2026-05-03
stars: '⭐38.1k'
updated: 2026-05-22
language: zh-TW
---

# 每日股票分析 (daily-stock-analysis)

> LLM 驅動的股市分析概念 — 用 AI 大模型每日自動生成投資決策儀表盤

## 快速導航

- 📊 **代表專案** → [[ZhuLinsen-daily_stock_analysis]]（最完整實作，⭐38.1k）
- 🤖 **AI Agent** → [[AI-Agent]]（自動化分析是 Agent 工作流）
- 🧠 **LLM** → [[LLM]]（用大模型做綜合判斷）

## 是什麼

每日股票分析是一種自動化工作流：定時拉取行情數據 → 多維度分析（技術面 + 基本面 + 輿情） → LLM 綜合判斷 → 推送決策報告。核心是「數據聚合 + 策略引擎 + LLM 推理 + 多渠道推送」的 pipeline。

## 代表專案

- → **[[ZhuLinsen-daily_stock_analysis]]** — 最完整的實作，⭐38.1k，覆蓋 A股/港股/美股，15 種內建策略，GitHub Actions 零成本運行，Web 工作台 + Agent 問股

## 核心特色

- **多源數據聚合**：技術面、行情、籌碼、輿情、公告、資金流、基本面 — 7 個維度
- **策略引擎**：每種策略 = 一個結構化 prompt（均線、纏論、波浪、情緒週期等）
- **LLM 推理**：多 LLM 路由，按成本品質選模型
- **多渠道推送**：企業微信、飛書、Telegram、Discord、Slack、郵件
- **回測驗證**：歷史分析事後驗證，計算準確率
- **零成本運行**：GitHub Actions cron 自動執行，非交易日自動跳過

## 怎麼用

最完整的實作是 [[ZhuLinsen-daily_stock_analysis]]，典型使用流程：

```bash
# 方式一：GitHub Actions（推薦，零成本）
# 1. Fork 倉庫 → 2. 設定 Secrets → 3. 啟用 Actions → 自動每日分析

# 方式二：本地運行
git clone https://github.com/ZhuLinsen/daily_stock_analysis.git && cd daily_stock_analysis
pip install -r requirements.txt
cp .env.example .env && vim .env  # 設定 API keys
python main.py                    # 單次分析
python main.py --stocks 600519,hk00700,AAPL  # 指定股票
python main.py --market-review    # 大盤復盤

# 方式三：Web 工作台
python main.py --webui             # 啟動 Web 介面
```

## 跟其他方案的關係

| 方案 | 定位 | 市場 | 策略 | 回測 | 推送 | 運行 |
|------|------|------|------|------|------|------|
| **[[ZhuLinsen-daily_stock_analysis]]** | 決策儀表盤 | A+港+美 | 15 種 | ✅ | 6 渠道 | GitHub Actions |
| **[[HKUDS-AI-Trader]]** | AI 交易平台 | 多市場 | 策略框架 | ✅ | 有限 | 自架 |
| **[[virattt-dexter\|Dexter]]** | 深度研究 | 美股 SEC | ❌ | ❌ | ❌ | 本地 |

- daily-stock-analysis 是 [[AI-Agent]] 在金融分析領域的概念框架
- 其策略引擎是 [[Prompt-Engineering]] 結構化 prompt 的實踐——每個策略 = 一個精心設計的 prompt
- 與 Dexter 互補：daily-stock-analysis 做交易決策（儀表盤、訊號、回測），Dexter 做深度研究（SEC filing、多步推理）

## 跟相關概念的關係

- [[AI-Agent]] — 自動化分析本質是 Agent 工作流
- [[LLM]] — 用大模型做綜合判斷
- [[Prompt-Engineering]] — 策略 = 結構化 prompt
- [[HKUDS-AI-Trader]] — AI 交易平台，daily_stock_analysis 偏分析儀表盤

## 相關概念

← [[ZhuLinsen-daily_stock_analysis]] · [[AI-Agent]] · [[LLM]] · [[Prompt-Engineering]]

## 來源

- [原始資料](../raw/2026-05-03-daily-stock-analysis.md)