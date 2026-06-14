---
title: 股票智能分析系統 (daily_stock_analysis)
slug: ZhuLinsen-daily_stock_analysis
created: 2026-05-03
updated: 2026-05-22
stars: 38100
language: Python
---

# 股票智能分析系統 (daily_stock_analysis)

> ⭐38.1k · LLM 驅動的 A股/港股/美股自選股智能分析系統，每日自動分析並推送「決策儀表盤」到企業微信/飛書/Telegram/Discord/Slack/郵箱

## 快速導航

- 🧠 **LLM** → [[LLM]]（LLM 驅動的金融分析）
- 🤖 **AI Agent** → [[AI-Agent]]（自動化分析是 Agent 化工作流的一環）
- 📊 **金融 AI** → [[HKUDS-AI-Trader]]（AI 交易平台）
- 🔄 **相關專案** → [[ZhuLinsen-alphasift]]（多因子選股）、[[ZhuLinsen-alphaevo]]（策略回測與進化）
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]（策略 = 結構化 prompt 工藝）

## 是什麼

daily_stock_analysis 是一個 LLM 驅動的股票分析系統，覆蓋 A股、港股、美股。每日自動生成 AI 決策儀表盤，包含買賣訊號、風險警報和多維度分析，並透過企業微信、飛書、Telegram、Discord、Slack 等多渠道推送結果。支援 GitHub Actions 定時執行，零伺服器成本。

## 核心特色

- **AI 決策儀表盤** — 一句話核心結論 + 評分 + 趨勢 + 買賣點位 + 風險警報 + 催化因素 + 操作檢查清單。LLM 綜合所有分析維度後給出可直接操作的結論
- **多維度數據聚合** — 技術面（K 線型態、指標）、即時行情、籌碼分布（主力動向）、新聞輿情（SerpAPI/Tavily/Brave/Bocha/MiniMax/SearXNG 搜尋）、公告、資金流與基本面。7 個維度數據聚合後由 LLM 做綜合判斷
- **全球市場** — A股、港股、美股、美股指數及常見 ETF。數據源涵蓋 TickFlow、AkShare、Tushare、Pytdx、Baostock、YFinance、Longbridge
- **15 種內建策略** — 均線金叉、纏論、波浪理論、多頭趨勢、熱點題材、事件驅動、成長質量、預期重估等。每個策略用結構化 prompt 定義分析邏輯
- **Agent 問股** — 多輪策略對話，支援 15 種內建策略。可以追問「為什麼這樣判斷？」、「換纏論策略看呢？」。支援 Web/Bot/API 三種入口
- **Web / 桌面工作台** — 手動分析、任務進度、歷史報告、完整 Markdown、回測、持倉管理、配置管理、淺色/深色主題
- **智能導入與補全** — 圖片、CSV/Excel、剪貼板導入；股票代碼/名稱/拼音/別名補全
- **大盤復盤** — 主要指數漲跌、板塊表現、市場概況自動生成
- **社交輿情** — Stock Sentiment API（Reddit / X / Polymarket），僅美股，可選
- **多渠道推送** — 企業微信、飛書、Telegram、Discord、Slack、郵件
- **零成本定時運行** — GitHub Actions cron 自動執行，不需要伺服器。非交易日自動跳過

## 怎麼實現的

daily_stock_analysis 的架構是 **Data Aggregation + Strategy Engine + LLM Reasoning + Push Pipeline**：

1. **多源數據聚合**：6+ 個數據源同時抓取，數據源之間有 fallback 機制，一個源失敗自動切換
2. **策略引擎**：每個策略用結構化 prompt 定義分析邏輯和輸出格式。LLM 按策略 prompt 分析數據
3. **LLM 推理層**：支援多個 LLM 提供者（Anspire、AIHubMix、Gemini、OpenAI、DeepSeek、通義千問、Claude、Ollama），按成本和品質路由
4. **Agent 問股**：多輪對話用 [[AI-Agent]] 架構實作，每輪可以切換策略
5. **GitHub Actions Pipeline**：cron 觸發 → 拉數據 → 跑策略 → LLM 分析 → 推送，零伺服器

## 怎麼用

```bash
# 克隆與安裝
git clone https://github.com/ZhuLinsen/daily_stock_analysis.git && cd daily_stock_analysis
pip install -r requirements.txt
cp .env.example .env && vim .env
# 設定 LLM API key、數據源 token、推送渠道 token

# 單次分析
python main.py

# 進階用法
python main.py --debug          # 調試模式
python main.py --dry-run        # 模擬運行
python main.py --stocks 600519,hk00700,AAPL  # 指定股票
python main.py --market-review  # 大盤復盤
python main.py --schedule       # 定時執行
python main.py --serve-only     # 僅啟動 Web 服務
python main.py --webui          # 啟動 Web 工作台

# GitHub Actions 零成本運行
# 設定 GitHub Secrets 後，每個工作日 18:00（北京時間）自動執行
```

## 相關專案

| 專案 | 定位 | 關係 |
|------|------|------|
| [[ZhuLinsen-alphasift\|AlphaSift]] | 多因子選股與全市場掃描 | daily_stock_analysis 做分析，AlphaSift 做選股 |
| [[ZhuLinsen-alphaevo\|AlphaEvo]] | 策略回測與自我進化 | daily_stock_analysis 做訊號，AlphaEvo 做驗證 |
| [[HKUDS-AI-Trader]] | AI 交易平台 | daily_stock_analysis 偏分析儀表盤，AI-Trader 偏交易平台 |
| [[HKUDS-Vibe-Trading]] | 完整交易 Agent | Vibe-Trading 偏 Agent 自主交易 |

## 跟其他方案的關係

| 方案 | 定位 | 市場 | 策略 | 回測 | 推送 | 運行 |
|------|------|------|------|------|------|------|
| **daily_stock_analysis** | 決策儀表盤 | A+港+美 | 15 種 | ✅ | 6 渠道 | GitHub Actions |
| **Dexter** | 深度研究 | 美股 SEC | ❌ | ❌ | ❌ | 本地 |

- daily_stock_analysis 是 [[AI-Agent]] 在金融分析領域的實作，使用 [[LLM]] 進行分析決策
- 其 15 種策略是 [[Prompt-Engineering]] 結構化 prompt 的實踐 — 每個策略 = 一個精心設計的 prompt
- **vs [[virattt-dexter|Dexter]]**：daily_stock_analysis 做交易決策（儀表盤、訊號、回測），Dexter 做深度研究（SEC filing、多步推理）。兩者互補：研究 → 決策

## 相關概念

← [[AI-Agent]] · [[LLM]] · [[Prompt-Engineering]] · [[HKUDS-AI-Trader]]

## 來源

- raw/ZhuLinsen-daily_stock_analysis.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [ZhuLinsen/daily_stock_analysis](https://github.com/ZhuLinsen/daily_stock_analysis) | ⭐38,100 | MIT | 2026-05-03 |