---
title: Google Timeline Visualizer
slug: mahlernim-google-timeline-visualizer
created: 2026-08-21
updated: 2026-08-21
stars: 1562
language: Kotlin
topics:
  - visualization
  - privacy
  - android
  - travel
  - video
---

# Google Timeline Visualizer

> ⭐1.6k · 在手機或桌面本地讀取 Google Maps Timeline JSON，將一段時間的旅行軌跡轉成動畫地圖 MP4。

## 快速導航

- 📊 **資料視覺化** → [[visualization]]
- 🔐 **隱私** → [[privacy]]
- 🎬 **內容自動化** → [[content-automation]]

## 是什麼

Google Timeline Visualizer 是把 Google Location History／Timeline 匯出資料轉成旅行動畫的工具。主要 Android App 可選月份或精確日期、預覽旅程、設定相機運動與輸出比例，最後在裝置上建立可播放或分享的 MP4。

專案另提供 iPhone Safari Web App 與原始 Python 桌面版。它支援新舊 Timeline JSON 結構、活動與造訪資料、多種座標格式、跨國際換日線路線，以及稀疏長程飛行的大圓插值。

隱私設計是重要定位：Timeline JSON 不上傳、不需 Google 登入，也不要求位置權限。需要注意的是底圖由 CARTO／OpenStreetMap 提供，檢視區域仍會透過網路請求地圖 tiles。

## 核心特色

- **本地影片生成**：Android 與 iPhone Web App 都在裝置端解析軌跡並輸出 MP4。
- **精確時間範圍**：可選月份、跨年區間或特定旅行日期。
- **多種相機模式**：固定、穩定或動態跟隨，並可壓縮長途旅程的動畫時間。
- **GPS 清理**：保守過濾孤立且不合理的跳點，不改寫原始 JSON。
- **多格式輸出**：支援方形、直式與橫式影片，以及 1080×1080 Journey overview。
- **廣泛匯出相容**：支援 direct-array、semanticSegments、raw location fallback 與 E7 座標。

## 怎麼用

Android 使用者可從 GitHub Releases 下載 APK；桌面版需要 Python 3.9+ 與 FFmpeg：

```bash
git clone https://github.com/mahlernim/google-timeline-visualizer.git
cd google-timeline-visualizer
python -m pip install -r requirements.txt
python visualizer.py --input Timeline.json --year 2025 --output my_trip_2025.mp4
```

Android 開發與測試流程：

```bash
./gradlew test lint assembleGithubDebug assemblePlayDebug
python -m pip install -r requirements-dev.txt
python -m pytest
```

匯入前應先從 Google Maps 或手機系統設定匯出 `Timeline.json`，並只從專案官方 Release 下載 APK。

## 跟其他方案的關係

| 方案 | 輸入 | 輸出 | 隱私模式 |
|------|------|------|----------|
| Google Timeline Visualizer | Timeline JSON | 動畫 MP4、旅程總覽 | JSON 本地處理 |
| Google Maps Timeline | Google 帳號內位置歷史 | App 內時間軸 | 由 Google 管理資料 |
| 通用 GIS 工具 | GPX、GeoJSON、CSV 等 | 地圖、分析、圖層 | 依工具與部署而定 |
| [[marceloprates-prettymaps\|prettymaps]] | OpenStreetMap 幾何資料 | 藝術化靜態地圖 | 地圖資料抓取後本地渲染 |

它不是完整 GIS 分析平台，而是針對個人年度或旅程回顧的專用生成器。與 prettymaps 相比，它重視時間序列動畫與手機端體驗，prettymaps 則重視可程式化圖層風格和靜態地圖藝術。

## 相關概念

← [[visualization]] · [[privacy]] · [[content-automation]]

## 來源

- [GitHub：mahlernim/google-timeline-visualizer](https://github.com/mahlernim/google-timeline-visualizer)
- 原始 README 與 metadata：`raw/2026-08-21-mahlernim-google-timeline-visualizer.md`
- [iPhone Web App](https://ahn-lab.org/google-timeline-visualizer/)

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/mahlernim/google-timeline-visualizer |
| Stars | ⭐1,562 |
| License | MIT |
| Language | Kotlin |
| 收錄日期 | 2026-08-21 |
