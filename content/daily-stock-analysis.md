# Daily Stock Analysis

> LLM 驅動的 A股/港股/美股智能分析系統。每日自動生成決策儀表盤，11 種內建策略，GitHub Actions 零成本運行。

## 快速導航
- 🧠 **AI Agent** → [[ai-workflow]]（LLM + Agent 結構的金融應用實例）
- 🛠 **LLM 知識庫** → [[llm-knowledge-base]]（多資料源聚合是知識庫的進階形態）

## 核心內容

Daily Stock Analysis 是一個 Python 專案，用 LLM 自動分析股票並推送決策報告。

### 主要功能
- **AI 決策儀表盤**：一句話結論 + 評分 + 買賣點位 + 風險警報
- **多維分析**：技術面、實時行情、籌碼分佈、新聞輿情、資金流、基本面
- **全球市場**：A股、港股、美股、ETF
- **11 種內建策略**：均線金叉、纏論、波浪、情緒週期等
- **Agent 問股**：多輪策略對話
- **多渠道推送**：企業微信、飛書、Telegram、Discord、Slack、郵件

### 技術棧
- AI 模型：Gemini、OpenAI、DeepSeek、Claude、Ollama 等
- 行情數據：AkShare、Tushare、YFinance 等
- 零成本部署：GitHub Actions 定時運行

### 安裝
1. Fork 倉庫
2. 配置 Secrets（AI 模型 API key）
3. 啟用 GitHub Actions
4. 每日自動分析並推送

## 相關概念
← [[ai-workflow]] · [[llm-knowledge-base]]

## 來源
- raw/2026-05-03-daily-stock-analysis.md