# 股票智能分析系統 (daily_stock_analysis)

> 基於 AI 大模型的 A股/港股/美股自選股智能分析系統，每日自動分析並推送「決策儀表盤」。GitHub Actions 零成本運行。

## 快速導航

- 🧠 **LLM** → [[LLM]]
- 🤖 **AI Agent** → [[AI-Agent]]
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]

## 是什麼

daily_stock_analysis 是一個 LLM 驅動的股票分析系統，覆蓋 A股、港股、美股。每日自動生成 AI 決策儀表盤，包含買賣訊號、風險警報和多維度分析，並透過企業微信、飛書、Telegram、Discord、Slack 等多渠道推送結果。用 GitHub Actions 定時執行，零伺服器成本。

## 核心特色

- **AI 決策儀表盤** — 一句話核心結論 + 評分 + 買賣點位 + 風險警報 + 操作檢查清單。LLM 綜合所有分析維度後給出可直接操作的結論
- **多維度分析** — 技術面（K線型態、指標）、即時行情、籌碼分布（主力動向）、新聞輿情（SerpAPI/Tavily/Brave 搜尋）、公告、資金流與基本面。7 個維度數據聚合後由 LLM 做綜合判斷
- **全球市場** — A股、港股、美股、美股指數及常見 ETF。數據源涵蓋 AkShare、Tushare、Pytdx、Baostock、YFinance、Longbridge
- **策略系統** — 內建 11 種策略能力：A股復盤、美股 Regime、均線、纏論、波浪、情緒週期等。每個策略用結構化 prompt 定義分析邏輯
- **Agent 問股** — 多輪策略對話，支援均線金叉/纏論/波浪等 11 種內建策略。可以追問「為什麼這樣判斷？」、「換纏論策略看呢？」
- **AI 回測驗證** — 歷史分析事後驗證，計算方向準確率和模擬收益。用歷史數據回測 AI 分析的準確度
- **多渠道推送** — 企業微信、飛書、Telegram、Discord、Slack、郵件。推播格式針對各平台最佳化
- **零成本定時運行** — GitHub Actions cron 自動執行，不需要伺服器。免費用戶也能每日收到分析報告
- **Web 工作台** — 配置管理、手動分析、歷史報告、回測、持倉管理。網頁版管理介面

## 怎麼實現的

daily_stock_analysis 的架構是 Data Aggregation + Strategy Engine + LLM Reasoning + Push Pipeline：

1. **多源數據聚合**：同時從 6+ 個數據源抓取數據（TickFlow、AkShare、Tushare 等做 A 股；YFinance、Longbridge 做美股港股）。數據源之間有 fallback 機制，一個源失敗自動切換
2. **策略引擎**：每個策略用結構化 prompt 定義分析邏輯和輸出格式。例如「均線策略」定義金叉/死叉判斷邏輯、「纏論策略」定義筆、線段、中樞判斷邏輯。LLM 按策略 prompt 分析數據
3. **LLM 推理層**：支援多個 LLM 提供者（AIHubMix、Gemini、OpenAI、DeepSeek、通義千問、Claude、Ollama），按成本和品質路由。多維度數據聚合後，LLM 做綜合判斷產出決策儀表盤
4. **Agent 問股**：多輪對話用 [[AI-Agent]] 架構實作，每輪可以切換策略。Agent 維護對話上下文，根據追問調用不同策略
5. **GitHub Actions Pipeline**：cron 觸發 → 拉數據 → 跑策略 → LLM 分析 → 推送。整個流程在 GitHub Actions 中完成，零伺服器

## 怎麼用

```bash
git clone https://github.com/ZhuLinsen/daily_stock_analysis.git && cd daily_stock_analysis
pip install -r requirements.txt
cp .env.example .env && vim .env
# 設定 LLM API key、數據源 token、推送渠道 token

# 單次分析
python main.py

# Agent 問股（多輪對話）
# 在 Web 工作台或 CLI 中
> 分析 600519 茅台
> 用纏論策略再看一次
> 最近新聞有什麼影響？

# GitHub Actions 自動執行
# 設定 .github/workflows/daily_analysis.yml
# cron 每日定時觸發，自動推送結果

# 支援的 LLM
# AIHubMix, Gemini, OpenAI, DeepSeek, 通義千問, Claude, Ollama
```

## 跟其他方案的關係

| 方案 | 定位 | 市場 | 策略 | 回測 | 推送 | 運行 |
|------|------|------|------|------|------|------|
| **daily_stock_analysis** | 決策儀表盤 | A+港+美 | 11 種 | ✅ | 6 渠道 | GitHub Actions |
| **Dexter** | 深度研究 | 美股 SEC | ❌ | ❌ | ❌ | 本地 |

- daily_stock_analysis 是 [[AI-Agent]] 在金融分析領域的實作，使用 [[LLM]] 進行分析決策
- 其 11 種策略是 [[Prompt-Engineering]] 結構化 prompt 的實踐 — 每個策略 = 一個精心設計的 prompt
- **vs [[virattt-dexter|Dexter]]**：daily_stock_analysis 做交易決策（儀表盤、訊號、回測），Dexter 做深度研究（SEC filing、多步推理）。兩者互補：研究 → 決策

## 相關概念

← [[AI-Agent]] · [[LLM]] · [[Prompt-Engineering]]

## 來源

- raw/ZhuLinsen-daily_stock_analysis.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [ZhuLinsen/daily_stock_analysis](https://github.com/ZhuLinsen/daily_stock_analysis) | ⭐33,706 | MIT | 2026-05-03 |