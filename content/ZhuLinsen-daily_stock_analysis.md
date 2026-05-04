# 股票智能分析系統 (daily_stock_analysis)

> 🤖 基於 AI 大模型的 A股/港股/美股自選股智能分析系統，每日自動分析並推送「決策儀表盤」

LLM-powered stock analysis system for A-share, HK, and US markets. Generates daily AI-powered decision dashboards with buy/sell signals, risk alerts, and multi-dimensional analysis.

## 核心特色

- **AI 決策儀表盤** — 一句話核心結論 + 評分 + 買賣點位 + 風險警報 + 操作檢查清單
- **多維度分析** — 技術面、即時行情、籌碼分布、新聞輿情、公告、資金流與基本面聚合
- **全球市場** — A股、港股、美股、美股指數及常見 ETF
- **策略系統** — 內置 A股復盤、美股 Regime、均線、纏論、波浪、情緒週期等策略能力
- **Agent 問股** — 多輪策略對話，支援均線金叉/纏論/波浪等 11 種內建策略
- **AI 回測驗證** — 歷史分析事後驗證，方向準確率和模擬收益
- **多渠道推送** — 企業微信、飛書、Telegram、Discord、Slack、郵件
- **零成本定時運行** — GitHub Actions 自動執行，無需伺服器
- **Web 工作台** — 配置管理、手動分析、歷史報告、回測、持倉管理
- **智慧導入** — 圖片、CSV/Excel、剪貼簿導入，代碼/名稱/拼音補全

## 快速開始

```bash
git clone https://github.com/ZhuLinsen/daily_stock_analysis.git && cd daily_stock_analysis
pip install -r requirements.txt
cp .env.example .env && vim .env
python main.py
```

## 所屬概念

- [[AI Agent]] — AI 驅動的自動化分析 agent
- [[LLM]] — 使用大語言模型進行分析決策

---

- **GitHub**: https://github.com/ZhuLinsen/daily_stock_analysis
- **Stars**: ⭐33,706
- **License**: MIT
- **收錄日期**: 2026-05-03

_此頁由 daily-llm-trending 自動維護_