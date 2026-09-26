---
title: "TSP（tick-stock-panel）"
slug: "shy3130-tick-stock-panel"
created: "2026-09-26"
updated: "2026-09-26"
stars: 5129
language: "zh-TW"
topics: ["backtesting", "stock-tracking", "financial-forecasting", "self-hosted"]
---

# TSP（tick-stock-panel）

> ⭐5.1k · 結合 A 股選股、監控、回測與可選 LLM 助手的自架研究工作台。

## 快速導航

- [[backtesting]]
- [[stock-tracking]]
- [[financial-forecasting]]
- [[self-hosted]]

## 是什麼

TSP 將資料擷取、指標、選股、回測、監控與復盤整理成一套本地量化研究流程。計算使用 Polars、查詢使用 DuckDB、資料落地 Parquet，並透過能力路由讓不同來源供應不同類型資料。

LLM 是可選層，可協助生成策略、解讀個股及產生復盤，對話助手則用只讀工具查詢本地資料並展示取數足跡。README 明確定位為學習研究方案，不是 AI 薦股或漲停預測產品；市場規則以 A 股為主，不能直接當作台股交易系統。

## 核心特色

### 資料能力路由

依資料集與來源能力分流，選股、回測和監控共用 enriched 資料口徑。

### 策略與因子研究

包含內建策略、自訂 DSL 因子、策略生成及因子檢驗。

### 回測與樣本外

提供日線／分鐘研究、T+1、費用、滑點與滾動樣本外驗證。

### 異動監控

涵蓋競價、盤中及偏移異動，搭配彈窗、語音和飛書通知。

### 可查核的 AI 助手

README 列出 18 個只讀工具，介面展示參數、耗時與資料口徑提示。

### 研究發布邊界

挖掘候選需要顯式確認後才發布，不宣稱自動上線交易。

## 怎麼用

以下是依官方文件整理的安裝／起步方式；本次收錄未安裝或執行此專案。

```bash
# 需先有 Docker；此範例改為只綁定本機，避免預設對外開放
docker run -d --name tsp -p 127.0.0.1:3018:3018 \
  -v "${PWD}/data:/app/data" ghcr.io/shy3130/tick-stock-panel:latest
# 開啟 http://localhost:3018
```

1. 在設定頁檢測資料來源能力與路由；先確認自己實際可取得的歷史與分鐘資料。
2. 執行盤後管道建立 enriched 表，再設定自選與策略並做樣本外回測。
3. 只有需要 AI 功能時才配置相容介面；對話助手還要求模型具工具呼叫能力。

### 限制與注意事項

『零運維』是專案宣傳定位，不免除資料授權、備份、安全更新或偏誤檢查。回測不保證未來收益；Compose 的 Codex 選項可能掛載本機登入憑證，只應在受信任環境啟用。

## 跟其他方案的關係

以下依用途與架構比較，並非效能實測或安全評比。

| 方案 | 定位 | 關係與差異 |
|---|---|---|
| TSP | 整合式 A 股研究工作台 | 串接資料、策略、回測與監控，AI 為可選輔助。 |
| 單獨回測腳本 | 策略驗證 | 自行掌控邏輯，但仍需另外整合資料與監控。 |
| 一般 LLM 聊天 | 文字分析 | 缺少本地取數驗證時不能替代可重現的量化流程。 |

## 相關概念

← [[backtesting]] · [[stock-tracking]] · [[financial-forecasting]] · [[self-hosted]]

## 來源

- [GitHub](https://github.com/shy3130/tick-stock-panel)
- [官方 README](https://github.com/shy3130/tick-stock-panel/blob/main/README.md)
- 原始快照：`raw/2026-09-26-shy3130-tick-stock-panel.md`
- Metadata 快照：`raw/2026-09-26-shy3130-tick-stock-panel.metadata.json`

---

| 欄位 | 資料 |
|---|---|
| GitHub | [shy3130/tick-stock-panel](https://github.com/shy3130/tick-stock-panel) |
| Stars | 5,129（2026-09-26 快照） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-09-26 |
