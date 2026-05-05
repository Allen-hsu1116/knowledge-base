# 股票智能分析系統 (daily_stock_analysis)

> 基於 AI 大模型的 A股/港股/美股自選股智能分析系統，每日自動分析並推送「決策儀表盤」

## 快速導航

- 🧠 **LLM** → [[LLM]]
- 🤖 **AI Agent** → [[AI-Agent]]
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]

## 是什麼

daily_stock_analysis 是一個 LLM 驅動的股票分析系統，覆蓋 A股、港股、美股。每日自動生成 AI 決策儀表盤，包含買賣訊號、風險警報和多維度分析，並透過多渠道推送結果。

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

## 怎麼用

```bash
git clone https://github.com/ZhuLinsen/daily_stock_analysis.git && cd daily_stock_analysis
pip install -r requirements.txt
cp .env.example .env && vim .env
python main.py
```

## 跟其他方案的關係

daily_stock_analysis 是 [[AI-Agent]] 在金融分析領域的實作，使用 [[LLM]] 進行分析決策，其 11 種策略是 [[Prompt-Engineering]] 結構化 prompt 的實踐。

## 相關概念

← [[AI-Agent]] · [[LLM]] · [[Prompt-Engineering]]

## 來源

- raw/ZhuLinsen-daily_stock_analysis.md

---

- **GitHub**: https://github.com/ZhuLinsen/daily_stock_analysis
- **Stars**: ⭐33,706
- **License**: MIT
- **收錄日期**: 2026-05-03