---
title: TradingAgents
slug: TauricResearch-TradingAgents
created: 2026-06-02
updated: 2026-06-02
stars: 81772
language: Python
---

# TradingAgents

> ⭐81.8k · 多 Agent LLM 金融交易框架，模擬真實交易公司的多角色協作決策。

快速導航：[[HKUDS-AI-Trader|AI-Trader]] · [[financial-forecasting|金融預測]] · [[HKUDS-Vibe-Trading|Vibe Trading]] · [[agent-trading|Agent 交易]]

## 是什麼

TradingAgents 是一個多 Agent 交易框架，核心概念是把真實交易公司的運作模式搬進 LLM 驅動的系統裡。一間真實的投資公司有基本面分析師、技術分析師、情緒分析師、交易員、風控團隊——TradingAgents 把每個角色都做成一個專門的 LLM Agent，讓它們各司其職、相互辯論、協同做出交易決策。

這個框架不只是把 LLM 當成一個「聰明的預測器」，而是把它拆成一個決策組織。每個 Agent 拿到的資訊、要回答的問題、以及決策權限都不同，然後透過結構化的討論流程來收斂出最終策略。從基本面研究到風險管理，整條決策鏈都有明確的角色分工。

背後是 LangGraph 在做 Agent 編排，支援多種 LLM provider（GPT、Gemini、Claude、Grok、DeepSeek、Qwen 等），也提供 Docker 部署方式和本地 Ollama 支援。

## 核心特色

- **多角色 Agent 架構**：基本面分析師、情緒分析師、新聞分析師、技術分析師各有專門的 LLM Agent，模擬真實交易團隊分工
- **多空辯論機制**：看多和看空 Researcher 對 Analyst 報告進行結構化辯論，平衡收益預期與風險考量
- **風險管理流程**：Risk Management 團隊持續評估波動率、流動性等風險因子，Portfolio Manager 做最終審批
- **多 Provider 支援**：OpenAI、Google、Anthropic、xAI、DeepSeek、Qwen、GLM、MiniMax、Azure 全部可用
- **結構化輸出**：Research Manager、Trader、Portfolio Manager 使用結構化輸出格式，提升決策可追溯性
- **Docker + Ollama**：一鍵 Docker 部署，本地模型透過 Ollama 也能跑

## 怎麼用

### 安裝

```bash
git clone https://github.com/TauricResearch/TradingAgents.git
cd TradingAgents
conda create -n tradingagents python=3.13
conda activate tradingagents
pip install .
```

### Docker

```bash
cp .env.example .env   # 填入你的 API key
docker compose run --rm tradingagents
```

### 本地模型（Ollama）

```bash
docker compose --profile ollama run --rm tradingagents-ollama
```

### 設定 API Key

```bash
export OPENAI_API_KEY=sk-***
export GOOGLE_API_KEY=***
export ANTHROPIC_API_KEY=***
```

## 跟其他方案的關係

| 方案 | 角色 | 多 Agent | LLM Provider | 回測 | 適合場景 |
|------|------|---------|-------------|------|---------|
| **TradingAgents** | 模擬交易公司 | ✅ 多角色辯論 | 多 Provider | 模擬交易所 | 研究、多角度決策 |
| [[HKUDS-AI-Trader\|AI-Trader]] | 交易 Agent | 單 Agent | 單一 | 有限 | 輕量交易原型 |
| [[HKUDS-Vibe-Trading\|Vibe Trading]] | 交易 Agent | 單 Agent | 單一 | 有限 | Vibe-based 交易 |
| [[virattt-dexter\|Dexter]] | 金融研究 | 單 Agent | 多 Provider | ✅ | 財報研究 |
| [[stefan-jansen-machine-learning-for-trading\|ML4T]] | 教學資源 | 無 | 傳統 ML | ✅ Zipline | 學習 ML 交易 |

← [[HKUDS-AI-Trader|AI-Trader]] · [[financial-forecasting|金融預測]] 相關概念

## 來源

- raw/2026-06-02-TauricResearch-TradingAgents.md
- GitHub: [TauricResearch/TradingAgents](https://github.com/TauricResearch/TradingAgents)
- 論文: [arXiv 2412.20138](https://arxiv.org/abs/2412.20138)
- Raw 檔案: [[raw/2026-06-02-TauricResearch-TradingAgents|原始資料]]

---

| 項目 | 值 |
|------|-----|
| GitHub | [TauricResearch/TradingAgents](https://github.com/TauricResearch/TradingAgents) |
| Stars | ⭐81,772 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-06-02 |