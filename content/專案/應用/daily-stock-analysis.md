---
source: https://github.com/ZhuLinsen/daily_stock_analysis
date: 2026-05-03
author: ZhuLinsen
---

# Daily Stock Analysis

> LLM 驅動的 A股/港股/美股智能分析系統。每日自動生成決策儀表盤，支援技術面+輿情+基本面多維分析，11 種內建策略，GitHub Actions 零成本運行。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（自動化分析是 Agent 化工作流的一環）
- 📊 **生成式 AI** → [[generative-AI]]（LLM 驅動的金融分析）
- 🔌 **MCP** → [[MCP]]（可透過 MCP 擴充數據源）

## 是什麼

Daily Stock Analysis 是一個 LLM 驅動的股市分析系統，支援 A股、港股、美股、美股指數及常見 ETF。每日自動生成決策儀表盤，整合技術面、實時行情、籌碼分佈、新聞輿情、公告、資金流與基本面等多維度分析，內建 11 種策略，透過 GitHub Actions 零成本運行。

## 核心特色

### AI Decision Dashboard

一句話核心結論 + 評分 + 買賣點位 + 風險警報 + 操作檢查清單。多維度分析：技術面、實時行情、籌碼分佈、新聞輿情、公告、資金流與基本面。

### 11 種內建策略

A股復盤、美股 Regime、均線、纏論、波浪、情緒週期等。Agent 問股：多輪策略對話，支持均線金叉/纏論/波浪等策略。

### 多渠道推送

企業微信、飛書、Telegram、Discord、Slack、郵件。

### 零成本運行

GitHub Actions 定時運行，無需伺服器。

## 怎麼用

```bash
# 複製專案
git clone https://github.com/ZhuLinsen/daily_stock_analysis.git
cd daily_stock_analysis

# 安裝依賴
pip install -r requirements.txt

# 設定環境變數
cp .env.example .env
# 編輯 .env 填入 API keys

# 執行分析
python main.py --stock 000001.SZ

# GitHub Actions 零成本運行
# 設定 GitHub Secrets 後，每日自動執行
```

## 跟其他方案的關係

Daily Stock Analysis 是 [[AI-Agent]] 工作流在金融分析領域的具體應用。跟傳統量化平台（如聚寬、米筐）的差異：傳統平台需要寫策略程式碼，Daily Stock Analysis 用自然語言驅動 LLM 分析，降低使用門檻。

跟 [[MCP]] 的關係：可透過 MCP 擴充數據源（TickFlow、AkShare、Tushare 等），讓 Agent 更靈活地取得市場數據。

## 相關概念

← [[AI-Agent]] · [[generative-AI]] · [[MCP]]

## 來源

- GitHub: https://github.com/ZhuLinsen/daily_stock_analysis

---

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/ZhuLinsen/daily_stock_analysis |
| Stars | ⭐36,543 |
| Language | Python |
| 建立日期 | 2026-01-10 |
| 授權 | MIT |
| 收錄日期 | 2026-05-03 |