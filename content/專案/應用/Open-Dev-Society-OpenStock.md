---
title: OpenStock
slug: Open-Dev-Society-OpenStock
created: 2026-05-27
updated: 2026-05-27
stars: 12114
language: TypeScript
---

# OpenStock

> ⭐12.1k · 開源股市追蹤平台，Bloomberg Terminal 的免費替代方案

## 快速導航
[[financial-forecasting|金融預測]] · [[open-source-business|開源商業模式]] · [[stock-tracking|股票追蹤]] · [[ZhuLinsen-daily_stock_analysis|Daily Stock Analysis]]

## 是什麼

OpenStock 是一個開源的股市追蹤平台，作為昂貴市場工具（如 Bloomberg Terminal）的免費替代方案。整合 Finnhub 和 TradingView 的即時數據，支援即時股價追蹤、個人化警報設定，以及詳細的公司資訊檢視。由 Open Dev Society 社群建構，強調開源透明和社群優先。

## 核心特色

- 📈 **免費市場平台**：開源替代 Bloomberg Terminal 等昂貴工具
- 🔴 **即時股價**：整合 Finnhub 和 TradingView 即時數據
- 🔔 **個人化警報**：設定價格警報，不漏接市場動態
- 🔧 **現代技術棧**：Next.js + TypeScript + Tailwind + shadcn/ui
- 📊 **公司洞察**：詳細的公司資訊與財務數據
- ⚖️ **AGPL-3.0 授權**：商用需開源，社群優先

## 怎麼用

```bash
# Clone 專案
git clone https://github.com/Open-Dev-Society/OpenStock
cd OpenStock

# 安裝依賴
npm install

# 設定環境變數
cp .env.example .env.local
# 編輯 .env.local 填入 Finnhub API Key 等

# 啟動開發伺服器
npm run dev
# 開啟 http://localhost:3000
```

技術棧：Next.js、TypeScript、Tailwind CSS、shadcn/ui、Radix UI、Better Auth、MongoDB、Inngest。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 即時數據 | 開源 | 警報系統 |
|------|-------|------|---------|------|---------|
| **OpenStock** | ⭐12.1k | 股市平台 | ✅ | ✅ | ✅ |
| [[ZhuLinsen-daily_stock_analysis|Daily Stock Analysis]] | ⭐38.1k | AI 股市分析 | ✅ | ✅ | ✅ |
| Bloomberg Terminal | — | 金融終端 | ✅ | ❌ | ✅ |
| TradingView | — | 圖表平台 | ✅ | ❌ | ✅ |

## 相關概念
← [[financial-forecasting|金融預測]] · [[open-source-business|開源商業模式]] · [[stock-tracking|股票追蹤]] · [[ZhuLinsen-daily_stock_analysis|Daily Stock Analysis]]

## 來源

- GitHub: <https://github.com/Open-Dev-Society/OpenStock>
- 原始 README: `raw/2026-05-27-Open-Dev-Society-OpenStock.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [Open-Dev-Society/OpenStock](https://github.com/Open-Dev-Society/OpenStock) |
| Stars | ⭐12,114 |
| License | AGPL-3.0 |
| Language | TypeScript |
| 收錄日期 | 2026-05-27 |