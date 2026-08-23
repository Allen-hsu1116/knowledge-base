---
title: AI Hedge Fund
slug: virattt-ai-hedge-fund
created: 2026-07-13
updated: 2026-07-13
stars: 61400
language: Python
topics:
  - ai-agent
  - llm
  - multi-agent
  - financial-trading
  - hedge-fund
---

# AI Hedge Fund

> ⭐61400 · 多 Agent AI 對沖基金——模擬 13 位傳奇投資大師的決策風格，LLM 驅動的選股、估值、風控全流程。

## 快速導航


- 🤖 **AI Agent** → [[AI-Agent]]（多 Agent 協作的金融決策）
- 📈 **Agent 交易** → [[agent-trading|Agent 交易]]（Agent 在金融交易的應用）
- 💰 **金融預測** → [[financial-forecasting|金融預測]]（LLM 驅動的市場分析）
- 🔬 **Dexter** → [[virattt-dexter|Dexter]]（同一作者的金融研究 Agent）

## 是什麼

AI Hedge Fund 是一個概念驗證專案，用 LLM 驅動的多 Agent 系統模擬一個對沖基金的完整運作。系統的核心亮點是把 13 位真實的投資傳奇——包括巴菲特、芒格、葛拉漢、彼得林區、凱西伍德、塔雷伯、達摩達蘭等——各做成一個專門的 LLM Agent，每個 Agent 都按照該投資大師的投資哲學和決策風格來分析股票。

除了名人分析師 Agent，系統還包含估值 Agent、情緒 Agent、基本面 Agent、技術面 Agent 等功能型 Agent，加上風控經理和投資組合經理做最終決策。整個流程是：分析師 Agent 各自產生交易信號 → 估值/情緒/基本面/技術面 Agent 補充分析 → 風控經理計算風險指標 → 投資組合經理做最終決定。

專案明確聲明僅供教育研究用途，不執行真實交易。系統支援 OpenAI、Groq、Anthropic、DeepSeek 和本地 Ollama 等多種 LLM provider，提供 CLI 和 Web App 兩種介面，還內建回測功能。

## 核心特色

- **13 位投資大師 Agent**：巴菲特、芒格、葛拉漢、彼得林區、凱西伍德、塔雷伯、達摩達蘭、Michael Burry、Bill Ackman、Mohnish Pabrai、Phil Fisher、Rakesh Jhunjhunwala、Stanley Druckenmiller——每位都有獨特的投資哲學和決策邏輯
- **4 個功能型分析 Agent**：估值 Agent 計算內在價值、情緒 Agent 分析市場情緒、基本面 Agent 分析財務數據、技術面 Agent 分析技術指標，各自獨立產生交易信號
- **風控 + 投資組合管理**：風控經理計算風險指標並設定倉位限制，投資組合經理做最終交易決策和訂單生成
- **回測引擎**：內建 backtester，可指定日期範圍回測策略表現
- **多 LLM Provider**：支援 OpenAI、Groq、Anthropic、DeepSeek，也支援本地 Ollama
- **CLI + Web App**：命令列介面適合自動化，Web App 提供視覺化操作

## 怎麼用

### 安裝

```bash
git clone https://github.com/virattt/ai-hedge-fund.git
cd ai-hedge-fund
cp .env.example .env
# 編輯 .env 加入 API keys（至少一個 LLM key）
poetry install
```

### 執行 AI Hedge Fund

```bash
# 基本執行
poetry run python src/main.py --ticker AAPL,MSFT,NVDA

# 使用本地 LLM（Ollama）
poetry run python src/main.py --ticker AAPL,MSFT,NVDA --ollama

# 指定日期範圍
poetry run python src/main.py --ticker AAPL,MSFT,NVDA --start-date 2024-01-01 --end-date 2024-03-01
```

### 執行回測

```bash
poetry run python src/backtester.py --ticker AAPL,MSFT,NVDA
```

## 跟其他方案的關係

| 方案 | Stars | 角色 | 多 Agent 架構 | 投資大師模擬 | 回測 | 適合場景 |
|------|-------|------|-------------|------------|------|---------|
| **AI Hedge Fund** | ⭐61.4k | AI 對沖基金 | ✅ 13+ Agent | ✅ 13 位大師 | ✅ | 教育、策略探索 |
| [[TauricResearch-TradingAgents\|TradingAgents]] | ⭐81.8k | 模擬交易公司 | ✅ 多角色辯論 | ❌ | 模擬 | 多角度決策研究 |
| [[virattt-dexter\|Dexter]] | ⭐23.6k | 金融研究 Agent | 單 Agent | ❌ | ❌ | 深度財報研究 |
| [[HKUDS-AI-Trader\|AI-Trader]] | ⭐6.3k | 交易 Agent | 單 Agent | ❌ | 有限 | 輕量交易原型 |
| [[ZhuLinsen-daily_stock_analysis\|Daily Stock Analysis]] | ⭐38.1k | AI 股市儀表盤 | 單 Agent | ❌ | ❌ | 視覺化選股 |

AI Hedge Fund 與 [[TauricResearch-TradingAgents|TradingAgents]] 都是多 Agent 交易框架，但 AI Hedge Fund 的獨特之處在於模擬具名投資大師的決策風格（人格化 Agent），而 TradingAgents 模擬的是交易公司的職能分工（分析師、交易員、風控）。兩者互補：AI Hedge Fund 適合探索不同投資哲學如何分析同一標的，TradingAgents 適合研究結構化的交易決策流程。


## 相關概念

← [[AI-Agent]] · [[agent-trading]] · [[financial-forecasting]] · [[virattt-dexter]]

## 來源

- GitHub: <https://github.com/virattt/ai-hedge-fund>
- 原始 README: `raw/2026-07-13-virattt-ai-hedge-fund.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/virattt/ai-hedge-fund |
| Stars | ⭐61400|
| License | MIT |
| 收錄日期 | 2026-07-13 |
