---
title: WorldMonitor
slug: koala73-worldmonitor
created: 2026-06-20
updated: 2026-06-20
stars: 57245
language: TypeScript
topics: [ai, dashboard, geopolitics, monitoring, news, osint, opensource, palantir, situation]
---

# WorldMonitor

> ⭐57245 · 即時全球情報儀表板——AI 驅動的新聞聚合、地緣政治監控與基礎設施追蹤。

## 快速導航

[[sansan0-TrendRadar|TrendRadar]] · [[BigBodyCobain-Shadowbroker|Shadowbroker]] · [[模型推論與部署|Ollama]] · [[open-webui-open-webui|Open WebUI]]

## 是什麼

WorldMonitor 是一個即時全球情報儀表板，由 Elie Habib 開發。它將 500+ 個策展新聞源彙整到一個統一的情境感知介面中，涵蓋地緣政治、金融、能源、氣候、航空、網路安全、軍事、基礎設施和新聞情報等領域。透過 AI 合成技術，將原始新聞流轉化為精煉的情報簡報。

系統提供雙地圖引擎——3D 地球儀（globe.gl + Three.js）和 WebGL 平面地圖（deck.gl + MapLibre GL），支援 56 種地圖圖層類型。它還實現了跨流關聯分析，將軍事、經濟、災難和升級信號進行收斂比對。國家不穩定性指數（CII）為 31 個一線國家提供壓力評分。

WorldMonitor 支援本地 AI 推論——使用 Ollama 即可運行全部功能，不需要任何 API 金鑰。它從單一程式碼庫衍生出 6 個站點變體（世界、科技、金融、商品、快樂、能源），並提供 macOS、Windows、Linux 原生桌面應用（Tauri 2）。在 2026 年 1 月建立後迅速獲得 57k+ stars。

## 核心特色

- **500+ 策展新聞源**：15 個類別，AI 合成為情報簡報，65+ 外部資料供應商
- **雙地圖引擎**：3D 地球儀 + WebGL 平面地圖，56 種圖層類型
- **國家不穩定性指數（CII）**：CII v8 壓力評分，覆蓋 31 個一線國家
- **金融雷達**：29 個證券交易所、商品、加密貨幣，7 信號市場綜合指標
- **本地 AI**：Ollama 全端支援，零 API 金鑰需求
- **6 站點變體**：world / tech / finance / commodity / happy / energy，單一程式碼庫
- **Tauri 2 桌面應用**：macOS、Windows、Linux 原生支援
- **24 語言 + RTL**：原生語言新聞源，右至左書寫支援

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/koala73/worldmonitor.git
cd worldmonitor
npm install
npm run dev

# 開啟 http://localhost:3000 — 不需要任何環境變數

# 特定變體開發
npm run dev:tech       # tech.worldmonitor.app
npm run dev:finance    # finance.worldmonitor.app
npm run dev:commodity  # commodity.worldmonitor.app

# 使用本地 AI（Ollama）
# 確保 Ollama 運行中，系統自動偵測
```

## 跟其他方案的關係

| 方案 | 核心定位 | AI 整合 | 桌面應用 | 地圖引擎 |
|------|----------|---------|----------|----------|
| [[koala73-worldmonitor|WorldMonitor]] | 全球情報儀表板 | Ollama 本地 | Tauri 2 | globe.gl + deck.gl |
| [[sansan0-TrendRadar|TrendRadar]] | 輿情監控 | MCP | Web | — |
| [[BigBodyCobain-Shadowbroker|Shadowbroker]] | OSINT 情報平台 | AI Agent | — | — |
| [[open-webui-open-webui|Open WebUI]] | LLM 前端 | 多模型 | — | — |

WorldMonitor 與 [[sansan0-TrendRadar|TrendRadar]] 互補：TrendRadar 聚焦輿情監控和社群推送，WorldMonitor 則提供更廣泛的全球局勢感知。與 [[open-webui-open-webui|Open WebUI]] 的關係在於兩者都支援 Ollama 本地 AI。

## 相關概念


← [[sansan0-TrendRadar]] · [[BigBodyCobain-Shadowbroker]] · [[open-webui-open-webui]]

## 來源

- GitHub：https://github.com/koala73/worldmonitor
- 文件：https://www.worldmonitor.app/docs/documentation
- Raw 檔案：`knowledge-base/raw/2026-06-20-koala73-worldmonitor.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/koala73/worldmonitor |
| Stars | ⭐57245|
| License | AGPL-3.0 |
| 收錄日期 | 2026-06-20 |
