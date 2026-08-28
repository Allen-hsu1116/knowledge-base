---
title: God's Eye View
slug: bilawalsidhu-gods-eye-view
created: 2026-08-28
updated: 2026-08-28
stars: 8085
language: JavaScript
topics: [OSINT, GEOINT, 3D globe, CesiumJS, OpenAI Realtime, visualization]
---

# God's Eye View

> ⭐8.1k · 把公開航班、船舶、衛星、地震、交通與攝影機訊號融合到寫實 3D 地球，並用即時語音 Agent 操控

## 快速導航

- 📊 **互動式資料呈現** → [[visualization]]
- 🤖 **以 Agent 操作介面** → [[computer-use-agent]]
- 🔒 **公開資料與責任邊界** → [[privacy]]

## 是什麼

God's Eye View 是在瀏覽器執行的開源空間情報介面，把分散在不同網站與 API 的公開訊號融合到 CesiumJS 寫實 3D 地球。它能呈現航班、軍機、船舶、衛星、地震、交通、公共攝影機、火災、廣播、單車站與太空任務等圖層。

專案不只顯示 marker，也處理航向、地形高度、軌跡插值、衛星 SGP4 傳播、camera viewshed、sensor shader 與電影式鏡頭。資料圖層會揭露來源、新鮮度及 live／delayed／modeled／unavailable 狀態，避免把推估畫面冒充即時觀測。

OpenAI Realtime API 提供語音 Agent，可依目前視角與選取實體回答問題、切換圖層、追蹤目標、繪製路線和控制鏡頭。README 同時劃出責任界線：專案用於事件、資產、基礎設施與系統，不加入 named-person search、臉部辨識或個人追蹤功能。

## 核心特色

- **多源即時融合**：統一航班、船舶、衛星、地震、交通、CCTV 與火災資料
- **寫實 3D 地球**：CesiumJS 搭配 Google Photorealistic 3D Tiles、Bing 與 OSM
- **誠實狀態標示**：明確區分即時、延遲、重建估計、模擬與不可用資料
- **語音 Agent**：28 個工具操作鏡頭、圖層、選取、標註、路線與查詢
- **視覺分析介面**：HUD、detection overlays、NVG、FLIR、CRT 與追蹤 trail
- **Local-first keys**：高風險 provider credentials 留在 server-side proxy
- **可擴充資料層**：每種公開訊號都能依同一模式加入 globe

## 怎麼用

需要 Node.js 24.14.x 或 26.x，並至少申請啟用 billing 的 Google Maps API key：

```bash
git clone https://github.com/bilawalsidhu/gods-eye-view
cd gods-eye-view
cp .env.example .env
# 在 .env 設定 GOOGLE_MAPS_API_KEY
npm install
npm run dev -- --host localhost --port 4173
```

開啟 `http://localhost:4173` 即可。語音與 AI HUD 另需 `OPENAI_API_KEY`；船舶、火災及真實交通等圖層可選配 AISStream、NASA FIRMS 與 TomTom keys。

```bash
OPENAI_API_KEY="…" AISSTREAM_API_KEY="…" npm run dev -- --host localhost --port 4173
```

公開到 LAN 前要設定 per-IP rate limits、供應商 budget caps 與 key restrictions，因為 server 會替可連入者代理付費 API。

## 跟其他方案的關係

它和 [[koala73-worldmonitor\|WorldMonitor]] 都把全球訊號集中成情勢儀表板，但 God's Eye View 更聚焦寫實 3D 空間、追蹤鏡頭與聲控操作；WorldMonitor 更偏新聞、地緣政治與多來源 dashboard。Google Earth 提供成熟地理瀏覽體驗，但不是同樣可檢視與擴充的即時 OSINT 融合 client。

| 方案 | 介面 | 資料重心 | Agent／擴充方式 |
|------|------|----------|-----------------|
| God's Eye View | 寫實 3D globe | 公開即時空間訊號 | OpenAI Realtime 語音工具＋開源 layer modules |
| [[koala73-worldmonitor\|WorldMonitor]] | 全球情報 dashboard | 新聞與地緣政治監控 | AI 摘要與多來源聚合 |
| Google Earth | 3D 地理瀏覽器 | 衛星影像與地理內容 | 成熟產品生態、核心非此類開源 client |
| CesiumJS | 3D geospatial SDK | 底層 rendering primitives | God's Eye View 的主要呈現基礎 |

## 相關概念

← [[visualization]] · [[computer-use-agent]] · [[privacy]] · [[world-model]]

## 來源

- GitHub: <https://github.com/bilawalsidhu/gods-eye-view>
- 線上專案: <https://maptheworld.ai/>
- 原始 README 與 metadata: `raw/2026-08-28-bilawalsidhu-gods-eye-view.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/bilawalsidhu/gods-eye-view |
| Stars | ⭐8,085 |
| License | MIT |
| Language | JavaScript |
| 收錄日期 | 2026-08-28 |
