---
title: NautilusTrader
slug: nautechsystems-nautilus_trader
created: 2026-08-20
updated: 2026-08-20
stars: 26444
language: zh-TW
topics: [量化交易, 回測, 金融交易, Rust, Python, 事件驅動]
---

# NautilusTrader

> ⭐26.4k · Rust 原生的生產級多資產交易引擎，讓研究、確定性回測與實盤執行共用同一套事件驅動語意。

## 快速導航

- 📈 [[backtesting]] — 用確定性模擬驗證交易策略
- 🤖 [[agent-trading]] — 可作為 AI 交易 Agent 的執行與訓練環境
- 🔮 [[financial-forecasting]] — 將預測訊號接入策略與訂單執行

## 是什麼

NautilusTrader 是一套開源、Rust 原生的多資產與多交易場所交易系統引擎。它把研究、歷史模擬與實盤執行放在同一個確定性事件驅動架構中，Python 則作為策略邏輯、設定與編排的控制平面。

傳統量化流程常在 Python 內做向量化研究，再用另一套編譯語言系統重寫實盤交易。NautilusTrader 的重點是消除這段落差：研究與上線使用相同時間模型、訂單語意與策略實作，降低因重寫程式造成的部署風險。

它不綁定特定資產類別，透過 adapter 接入 REST API 或 WebSocket feed，可涵蓋加密貨幣、外匯、股票、期貨、選擇權與預測市場。對高可靠需求，也可以完全用 Rust 撰寫交易系統。

## 核心特色

- **研究與實盤一致**：同一個事件驅動 runtime 與策略程式可從回測直接移至 live execution。
- **Rust 效能與安全性**：核心使用 Rust、Tokio 與型別安全設計，兼顧低延遲、執行效率與可靠性。
- **高精度確定性回測**：支援奈秒解析度的 quote、trade、bar、order book 與自訂資料，可同時模擬多市場、多商品及多策略。
- **多資產與多場所**：adapter 架構已涵蓋 Binance、Coinbase、Interactive Brokers、Betfair、Polymarket 等交易或資料來源。
- **進階訂單模型**：支援 IOC、FOK、GTC、GTD、post-only、reduce-only、iceberg，以及 OCO、OUO、OTO 等條件訂單。
- **Python／Rust 雙介面**：可用 Python 快速研究與編排，也可使用 PyO3 bindings 或純 Rust 建立關鍵工作負載。
- **AI 訓練用途**：模擬引擎速度足以支援強化學習或演化策略等 AI trading agent 訓練。

## 怎麼用

建議在虛擬環境內安裝穩定版 Python wheel；預編譯套件不需要本機 Rust toolchain：

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -U nautilus_trader
```

如要測試 v2 release candidate，可明確加入預發行版本參數：

```bash
pip install -U nautilus_trader --pre
```

安裝後應先依官方文件建立資料 catalog、交易場所 adapter 與策略類別，從回測驗證交易成本、滑價與事件順序，再接到 sandbox 或 paper account。實盤會控制真實資金，README 也明確不建議直接把 release candidate 用於 production。

## 跟其他方案的關係

NautilusTrader 的定位不是單純研究 notebook，而是貫穿研究到實盤的交易 runtime：

| 方案 | 主要定位 | 研究到實盤一致性 | 適合情境 |
|------|----------|------------------|----------|
| NautilusTrader | Rust 原生事件驅動交易引擎 | 高，同一策略與時間模型 | 多市場、低延遲、嚴謹回測與實盤 |
| [[HKUDS-Vibe-Trading\|Vibe Trading]] | AI Agent 驅動的量化研究平台 | 側重 Agent 研究工作流 | 自動生成、評估與管理策略 |
| [[ZhuLinsen-alphaevo\|AlphaEvo]] | 策略自演化與回測 | 側重策略搜尋閉環 | 以 AI 自動改進金融策略 |
| [[TauricResearch-TradingAgents\|TradingAgents]] | 多 Agent 金融分析 | 主要聚焦決策模擬 | 角色分工式投資研究 |

NautilusTrader 可成為 Agent 產生交易決策後的模擬與執行底座；Vibe Trading、AlphaEvo 或 TradingAgents 則更偏向策略發想、研究協作及決策層。

## 相關概念

← [[backtesting]] · [[agent-trading]] · [[financial-forecasting]]

## 來源

- GitHub：https://github.com/nautechsystems/nautilus_trader
- Raw 檔案：raw/2026-08-20-nautechsystems-nautilus_trader.md
- 官方文件：https://nautilustrader.io/docs/

---

| 項目 | 值 |
|------|----|
| **GitHub** | https://github.com/nautechsystems/nautilus_trader |
| **Stars** | ⭐26,444 |
| **License** | GNU LGPLv3 |
| **Language** | Rust（提供 Python bindings） |
| **收錄日期** | 2026-08-20 |
