---
title: Agent 交易
slug: agent-trading
language: zh-TW
---

# Agent 交易

> AI Agent 在金融交易領域的應用：自動化策略執行、多 Agent 協作和風險管理。

## 核心內容

Agent 交易是 AI Agent 和量化交易的交集。傳統量化交易依賴預設規則和統計模型，而 Agent 交易系統引入了自主決策能力——Agent 能根據市場變化即時調整策略、分析非結構化資訊（新聞、財報、社群情緒），並在多個資產之間動態分配資金。

多 Agent 系統是 Agent 交易的核心架構。典型的設計包括：研究 Agent 負責分析市場數據和新聞情緒、交易 Agent 負責策略執行和訂單管理、風險 Agent 負責監控暴露度和止損控制。各 Agent 之間透過訊息傳遞協作，自動完成從研究到交易的整個流程，減少人類介入的延遲和情緒偏差。

Agent 交易的優勢在於能整合多種資訊來源並做出即時決策。相較於傳統量化模型只能處理結構化價格數據，Agent 系統能透過 LLM 理解財報會議逐字稿、央行聲明、社群媒體情緒等非結構化資訊，將這些信號轉化為交易決策。同時，Agent 的自主規劃能力讓策略可以根據市場狀態動態調整，而非固守單一規則。

## 關鍵要素

- **多 Agent 協作** — 研究、交易、風險 Agent 分工合作，自動完成交易全流程
- **非結構化資訊整合** — LLM 理解新聞、財報、社群情緒，轉化為交易信號
- **即時策略調整** — Agent 根據市場變化動態調整，非固守預設規則
- **風險管理自動化** — 自動止損、倉位控制、暴露度監控和風險預警
- **MCP 工具整合** — 透過 MCP 連接券商 API、行情數據源和新聞聚合服務

## 各框架的做法

- **TradingAgents** → 多 Agent 交易系統，LLM 驅動的研究→交易→風險全流程
  👉 詳見 [[TauricResearch-TradingAgents]]
- **AI-Trader** → 全自動交易平台，MCP 整合券商 API
  👉 詳見 [[HKUDS-AI-Trader]]
- **Vibe Trading** → 個人交易 Agent，AI Skills 驅動的策略執行
  👉 詳見 [[HKUDS-Vibe-Trading]]
- **Fincept Terminal** → 機構級金融智慧平台，Agent 整合多市場數據
  👉 詳見 [[FinceptTerminal]]
- **MiroFish** → 群體智慧 + 世界模型，多 Agent 金融預測
  👉 詳見 [[666ghj-MiroFish]]

## 相關概念

- [[financial-forecasting]] — 金融預測是 Agent 交易的決策基礎
- [[backtesting]] — 回測驗證 Agent 交易策略的歷史表現
- [[AI-Agent]] — Agent 交易是多 Agent 協作的金融應用
- [[MCP]] — MCP 讓交易 Agent 連接券商 API 和數據源

## 來源

- TradingAgents、AI-Trader、Vibe Trading 等專案頁面
- Anthropic Financial Services 相關資源