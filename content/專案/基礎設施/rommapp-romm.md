---
title: RomM
slug: rommapp-romm
created: 2026-07-05
updated: 2026-07-05
stars: 10.2k
language: Python
topics: self-hosted, emulation, retrogaming, rom-manager, open-source
---

# RomM (ROM Manager)

> ⭐10.2k · 美觀強大的自架 ROM 管理器與播放器，支援 400+ 平台

## 快速導航

- 🛠 **自架平台** → [[self-hosted\|自架]]
- 🎮 **媒體串流** → [[media-streaming\|媒體串流]]
- 📦 **開源商業模式** → [[open-source-business\|開源商業模式]]

## 是什麼

RomM（ROM Manager）是一個自架的遊戲 ROM 管理器和播放器，讓你掃描、充實、瀏覽和遊玩遊戲收藏。它提供乾淨響應式的 Web 介面，支援多平台、各種命名方案和自定義標籤，是模擬器愛好者管理遊戲庫的必備工具。

由 RomM 團隊開發，AGPL-3.0 授權，透過 Docker 部署。整合 IGDB、Screenscraper、MobyGames 取得遊戲中繼資料，SteamGridDB 取得自定義封面，Retroachievements 顯示成就。瀏覽器內直接透過 EmulatorJS 和 RuffleRS 遊玩遊戲。

擁有活躍的社群生態：官方 App（Playnite 插件、Android Argosy、CFW Grout）和大量社群維護的客戶端（iOS、Electron、RetroArch Sync、SteamOS 同步、Switch Homebrew 等）。

## 核心特色

- **400+ 平台中繼資料** — 從 IGDB / Screenscraper / MobyGames 自動取得遊戲資訊
- **自定義封面** — 從 SteamGridDB 取得遊戲封面美術
- **Retroachievements 整合** — 直接在介面顯示成就
- **瀏覽器直接遊玩** — EmulatorJS + RuffleRS，不需額外安裝
- **權限共享** — 與朋友共享遊戲庫，支援有限存取和權限控制
- **多碟/DLC/Mod/Hack/Patch/Manual** — 完整支援複雜遊戲結構
- **檔名標籤解析** — 自動從檔名提取標籤並篩選
- **官方多平台 App** — Playnite (Desktop), Argosy (Android), Grout (CFW)
- **Web 介面管理** — 任何現代瀏覽器都能查看、上傳、更新、刪除遊戲

## 怎麼用

### Docker 部署

```bash
# 詳見 Quick Start Guide
# https://docs.romm.app/latest/Getting-Started/Quick-Start-Guide/

# 基本 docker-compose 範例
docker run -d \
  --name romm \
  -v /path/to/roms:/romm/library \
  -v /path/to/resources:/romm/resources \
  -p 8080:8080 \
  rommapp/romm:latest
```

### 配置

1. 設定 IGDB / Screenscraper / MobyGames API key（取得中繼資料）
2. 組織 ROM 資料夾結構
3. 掃描遊戲庫，自動取得中繼資料和封面
4. 瀏覽器中直接遊玩

## 跟其他方案的關係

| 方案 | 類型 | 瀏覽器遊玩 | 中繼資料 | 多平台 App | 自架 |
|------|------|-----------|----------|------------|------|
| **RomM** | ROM 管理 | ✅ EmulatorJS | ✅ 3 來源 | ✅ | ✅ |
| EmulatorJS | 模擬器 | ✅ | ❌ | ❌ | ✅ |
| RetroDECK | 前端 | ❌ | ✅ | SteamOS/Linux | 本地 |
| ES-DE | 前端 | ❌ | ✅ | 多平台 | 本地 |
| Gaseous | ROM 管理 | ✅ | 有限 | ❌ | ✅ |

← [[self-hosted|自架]] · [[media-streaming|媒體串流]]


## 相關概念

← [[self-hosted]] · [[media-streaming]] · [[open-source-business]]

## 來源

- GitHub: https://github.com/rommapp/romm
- 官網: https://romm.app
- 文件: https://docs.romm.app
- raw/2026-07-05-rommapp-romm.md

---

| 欄位 | 值 |
|------|-----|
| **GitHub** | https://github.com/rommapp/romm |
| **Stars** | ⭐ 10,208 |
| **License** | AGPL-3.0 |
| **Language** | Python |
| **收錄日期** | 2026-07-05 |