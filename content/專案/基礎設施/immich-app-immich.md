---
title: Immich
slug: immich-app-immich
created: 2026-07-05
updated: 2026-07-05
stars: 105.6k
language: TypeScript
topics: self-hosted, photo-gallery, google-photos-alternative, flutter, nestjs
---

# Immich

> ⭐105.6k · 高效能自架照片與影片管理方案，Google Photos 的開源替代品

## 快速導航

- 🧠 **自架平台** → [[self-hosted\|自架]]
- 🛠 **媒體串流** → [[media-streaming\|媒體串流]]
- 🏗 **基礎設施** → [[paperless-ngx-paperless-ngx\|Paperless-ngx]]（同類自架文件/媒體管理）

## 是什麼

Immich 是一個高效能的自架照片和影片管理解決方案，定位為 Google Photos 的開源替代品。它提供手機自動備份、Web 介面瀏覽、多用戶支援等完整功能，讓你完全掌控自己的照片和影片資料。

專案由 Alex Tran 發起，社群活躍，支援 18 種語言翻譯。技術棧採用 NestJS（後端）+ SvelteKit（前端）+ Flutter（手機 App），以 Docker 部署為主，也有裸機安裝指南。

Immich 目前仍持續快速迭代中，但已具備生產級功能集，是人臉辨識、CLIP 語意搜尋、共享相簿等高級功能在自架方案中的最佳選擇之一。

## 核心特色

- **手機自動備份** — iOS/Android App 開啟即備份，支援選擇性相簿、背景備份
- **人臉辨識與聚类** — 自動偵測人臉並分組，按人物瀏覽照片
- **CLIP 語意搜尋** — 用自然語言搜尋照片內容（「海灘」「日落」「狗」）
- **EXIF 中繼資料 + 全球地圖** — 完整中繼資料查看，地圖模式顯示拍攝位置
- **共享相簿與夥伴共享** — 多用戶支援，相簿共享，夥伴共享功能
- **回憶功能** — X 年前的今天，自動生成回憶
- **RAW 格式支援** — 支援專業相機 RAW 檔
- **LivePhoto/MotionPhoto** — 完整備份與播放
- **360 度全景圖** — Web 介面支援
- **OAuth 支援** — 整合外部認證系統

## 怎麼用

### Docker 部署（推薦）

```bash
# 下載 docker-compose.yml 和 .env
wget https://github.com/immich-app/immich/releases/latest/download/docker-compose.yml
wget -O .env https://github.com/immich-app/immich/releases/latest/download/example.env

# 編輯 .env 設定上傳目錄等
# 啟動
docker compose up -d
```

### 手機 App

- iOS App Store 搜尋 "Immich"
- Android Google Play 或 F-Droid
- 設定 Server Endpoint URL 指向你的伺服器

### Demo

可先試用 https://demo.immich.app（demo@immich.app / demo）

## 跟其他方案的關係

| 方案 | 類型 | 人臉辨識 | CLIP 搜尋 | 手機 App | 自架 |
|------|------|----------|----------|----------|------|
| **Immich** | 照片/影片 | ✅ | ✅ | ✅ | ✅ |
| Google Photos | 照片/影片 | ✅ | ✅ | ✅ | ❌ |
| Photo Prism | 照片/影片 | ✅ | ✅ | ❌ | ✅ |
| Nextcloud Photos | 照片 | 有限 | ❌ | ✅ | ✅ |
| Paperless-ngx | 文件管理 | ❌ | ❌ | ❌ | ✅ |

Immich 與 [[paperless-ngx-paperless-ngx|Paperless-ngx]] 都屬自架媒體管理，但定位不同：Immich 管照片影片，Paperless-ngx 管文件。

← [[self-hosted|自架]] · [[media-streaming|媒體串流]]


## 相關概念

← [[self-hosted]] · [[media-streaming]] · [[paperless-ngx-paperless-ngx]]

## 來源

- GitHub: https://github.com/immich-app/immich
- 官網: https://immich.app
- 文件: https://docs.immich.app
- raw/2026-07-05-immich-app-immich.md

---

| 欄位 | 值 |
|------|-----|
| **GitHub** | https://github.com/immich-app/immich |
| **Stars** | ⭐ 105,632 |
| **License** | AGPL-3.0 |
| **Language** | TypeScript |
| **收錄日期** | 2026-07-05 |