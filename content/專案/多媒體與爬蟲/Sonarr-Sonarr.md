---
title: Sonarr
slug: Sonarr-Sonarr
created: '2026-09-12'
updated: '2026-09-12'
stars: 15736
language: C#
topics:
- media-automation
---

# Sonarr

> ⭐15.7k · C# · 以 RSS 監控劇集、交由下載器取得並整理媒體庫的自架 PVR；不是 LLM 專案。

## 快速導航

- [[media-streaming]]
- [[self-hosted]]
- [[workflow-automation]]

## 是什麼

Sonarr 是面向 Usenet 與 BitTorrent 使用者的 PVR。它持續監控多個 RSS 來源，偵測新集數，再將取得的檔案排序、重新命名，減少手動維護劇集媒體庫的工作。

它也能掃描既有媒體庫的缺集，並在出現較高畫質版本時依設定升級檔案。Sonarr 的角色是媒體取得與整理流程的控制端，不是影片播放器，也不是用語言模型推理的 Agent。

本次來源為 GitHub Trending 的一般軟體候選，作為非 LLM 的工作流自動化參考收錄。實際下載須限於有合法取得權利的內容；工具提供自動化能力不代表內容授權。

## 核心特色

- RSS 與新集數偵測：監控多個 feed，依追蹤條件安排後續處理。

- 缺集補齊：掃描現有 library，辨識缺漏的集數。

- 品質升級：找到符合較高品質設定的版本後，可自動替換既有下載。

- 失敗處理：下載失敗時改試其他 release，亦提供手動搜尋。

- 媒體整合：支援 SABnzbd、NZBGet，以及 Kodi／Plex 的通知、資料庫更新與 metadata。

## 怎麼用

下列為官方 Linux 安裝路徑；不是 macOS 指令。先備份既有設定、閱讀下載的腳本，再決定是否授權 sudo。此頁僅記錄用法，未在本機安裝服務。

```bash
curl -o install-sonarr.sh https://raw.githubusercontent.com/Sonarr/Sonarr/develop/distribution/debian/install.sh
# 先閱讀 install-sonarr.sh，確認服務帳號與路徑
sudo bash install-sonarr.sh
```

1. 安裝時選擇服務使用者與群組，確保能讀写下載與媒體目錄。
2. 開啟 http://localhost:8989，配置 indexer、下載器與媒體庫。
3. 先用有授權的小型測試資料驗證命名、搬移與品質條件。
4. 容器部署時，Sonarr 和下載器須使用一致的共享路徑，避免 hard link 與搬移失效。

### 使用限制與驗證

- 不要把服務直接裸露在公網；須另行設定存取控制。

- 品質規則可能造成重複下載與磁碟占用，應先設定容量和保留策略。

- 官方提醒服務帳號權限和容器路徑是常見失敗原因，不能只驗證 UI 能開啟。

## 跟其他方案的關係

下表為依本次來源整理的定位比較，不是實測效能排名。

| 方案 | 主要定位 | 關係與邊界 |
|---|---|---|
| Sonarr | 媒體取得與 library 整理 | 依規則安排下載與品質升級 |
| SABnzbd／NZBGet | 下載執行端 | 與 Sonarr 整合，不是同一職責 |
| Kodi／Plex | 媒體消費與 library 整合端 | 可接收 Sonarr 更新與通知 |

## 相關概念

← [[media-streaming]] · [[self-hosted]] · [[workflow-automation]]

## 來源

- GitHub：https://github.com/Sonarr/Sonarr
- README 原始快照：`raw/2026-09-12-Sonarr-Sonarr.md`
- https://sonarr.tv/
- https://wiki.servarr.com/sonarr

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/Sonarr/Sonarr |
| Stars | 15,736（2026-09-12 快照） |
| License | GPL-3.0 |
| Language | C# |
| 收錄日期 | 2026-09-12 |
