---
title: 每日股票分析 (daily-stock-analysis)
created: 2026-05-03
updated: 2026-05-22
topics:
  - stock-analysis
  - LLM
  - trading
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

## 核心能力

- **多源數據聚合**：技術面、行情、籌碼、輿情、公告、資金流、基本面 — 7 個維度
- **策略引擎**：每種策略 = 一個結構化 prompt（均線、纏論、波浪、情緒週期等）
- **LLM 推理**：多 LLM 路由，按成本品質選模型
- **多渠道推送**：企業微信、飛書、Telegram、Discord、Slack、郵件
- **回測驗證**：歷史分析事後驗證，計算準確率

## 跟相關概念的關係

- [[AI-Agent]] — 自動化分析本質是 Agent 工作流
- [[LLM]] — 用大模型做綜合判斷
- [[Prompt-Engineering]] — 策略 = 結構化 prompt
- [[HKUDS-AI-Trader]] — AI 交易平台，daily_stock_analysis 偏分析儀表盤

## 相關概念

← [[ZhuLinsen-daily_stock_analysis]] · [[AI-Agent]] · [[LLM]] · [[Prompt-Engineering]]

## 來源

- raw/ZhuLinsen-daily_stock_analysis.md