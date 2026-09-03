---
title: Sequoia-X
slug: sngyai-Sequoia-X
created: 2026-09-03
updated: 2026-09-03
stars: 6052
language: Python
topics: [a-shares, stock-screening, quantitative-trading, baostock, sqlite, python]
---

# Sequoia-X

> ⭐6.1k · 面向 A 股的自動量化選股系統，以增量行情、六種技術策略與飛書推送完成每日掃描。

## 快速導航

- 📈 **市場監控** → [[stock-tracking]]（日 K 更新、技術形態掃描與結果通知）
- 🧪 **策略驗證** → [[backtesting]]（歷史行情與策略規則是回測的基礎）
- 🤖 **自動執行** → [[workflow-automation]]（收盤後排程更新、選股與推送）

## 是什麼

Sequoia-X V2 是針對中國 A 股市場的 Python 量化選股系統。它在每日收盤後更新全市場日 K 資料、執行多種技術形態策略，最後把候選清單推送到飛書群。

資料層使用免費且免註冊的 baostock，採後復權資料並保存到本地 SQLite。首次 backfill 建立全市場歷史資料，之後以 8 個 process 做增量更新，README 宣稱日常流程約 2–3 分鐘。

這套工具的定位是規則式市場掃描器，不是 LLM 交易 Agent，也不等於自動下單系統。它產生的是技術條件候選，需要使用者自行研究、驗證與管理風險，不應把輸出視為投資建議。

## 核心特色

- **六種內建策略**：海龜突破、均線放量、高窄旗形、漲停洗盤、上升跌停反包與 RPS 突破。
- **全市場增量資料**：baostock 拉取 A 股後復權日 K，SQLite 本地保存。
- **兩種運行模式**：`--backfill` 建立歷史資料，日常模式只補新資料並執行策略。
- **平行更新**：日常資料同步以 8 process 加速，適合收盤後批次執行。
- **通知整合**：透過環境變數設定飛書 Webhook，自動推送掃描結果。
- **現代 Python 工程**：pyproject、Pydantic Settings、Rich logging、Ruff、pytest 與 Hypothesis。
- **策略抽象層**：每種選股邏輯位於獨立 strategy module，方便擴充與測試。

## 怎麼用

需要 Python 3.10 以上。建議使用 uv 建立環境並安裝依賴：

```bash
git clone https://github.com/sngyai/Sequoia-X.git
cd Sequoia-X
uv sync
cp .env.example .env
# 編輯 .env，填入飛書 Webhook URL
python main.py --backfill
python main.py
```

可在交易日收盤後排程：

```cron
15 19 * * 1-5 cd /root/Sequoia-X && .venv/bin/python main.py >> log.txt 2>&1
```

正式使用前應檢查資料完整性、交易日曆、復權方法、look-ahead bias、手續費與滑價；README 的掃描速度不代表策略績效。

## 跟其他方案的關係

| 方案 | 市場 | 核心定位 | LLM / Agent | 是否下單 |
|------|------|----------|-------------|----------|
| Sequoia-X | A 股 | 規則式技術選股 | 否 | 否 |
| [[Open-Dev-Society-OpenStock\|OpenStock]] | 多市場 | 行情與公司資訊平台 | 非核心 | 否 |
| [[daily-stock-analysis\|Daily Stock Analysis]] | 多市場 | LLM 每日分析報告 | 是 | 否 |
| [[TauricResearch-TradingAgents\|TradingAgents]] | 研究／多市場 | 多 Agent 投資研究 | 是 | 以研究為主 |
| [[nautechsystems-nautilus_trader\|NautilusTrader]] | 多資產 | 回測與實盤交易引擎 | 可外接 | 是 |

Sequoia-X 比通用交易引擎更輕量，重點是 A 股技術形態篩選與通知。若需要可重現回測、訂單模型、風控與實盤執行，應搭配或改用專業交易引擎；若要解讀新聞與基本面，則可在輸出後再接 LLM 分析層。

## 相關概念

← [[stock-tracking]] · [[backtesting]] · [[workflow-automation]]

## 來源

- [GitHub：sngyai/Sequoia-X](https://github.com/sngyai/Sequoia-X)
- [baostock](http://baostock.com)
- [Raw README + metadata](../raw/2026-09-03-sngyai-Sequoia-X.md)

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/sngyai/Sequoia-X |
| Stars | ⭐6,052 |
| License | Repository metadata 未標示；README 聲明 MIT |
| Language | Python |
| 收錄日期 | 2026-09-03 |
