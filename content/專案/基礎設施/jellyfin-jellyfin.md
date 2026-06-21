---
title: Jellyfin
slug: jellyfin-jellyfin
created: 2026-05-27
updated: 2026-05-27
stars: 52381
language: C#
---

# Jellyfin

> ⭐52.4k · 開源免費的媒體管理與串流系統，Plex 和 Emby 的替代方案

## 快速導航
[[self-hosted|自架服務]] · [[media-streaming|媒體串流]] · [[open-source-business|開源商業模式]] · NAS

## 是什麼

Jellyfin 是開源的媒體管理與串流系統，作為專有軟體 Emby 和 Plex 的完全免費替代方案。從 Emby 3.5.2 fork 而來，移植到 .NET 平台以支援跨平台運行。沒有付費授權、沒有隱藏議題，完全由社群驅動。從自家伺服器串流影片、音樂、照片到各種終端裝置。

## 核心特色

- 🆓 **完全免費開源**：GPL 2.0 授權，無付費牆、無高級功能限制
- 📺 **自架串流媒體**：從自家伺服器串流媒體到各種終端裝置
- 💻 **跨平台**：基於 .NET，支援 Docker、Linux、Windows、macOS
- 📱 **多端客戶端**：Web、Android、iOS、Fire TV、Roku、Kodi 等數十種客戶端
- 🔄 **Plex/Emby 替代**：功能匹敵但開放透明、無付費牆
- 🌍 **社群活躍**：Matrix 聊天、多語翻譯齊全、持續更新

## 怎麼用

```bash
# Docker 部署（推薦）
docker run -d \
  --name jellyfin \
  -p 8096:8096 \
  -v /path/to/media:/media \
  -v /path/to/config:/config \
  -v /path/to/cache:/cache \
  jellyfin/jellyfin

# 或使用 docker-compose
# 見 https://jellyfin.org/docs/general/installation/docker

# Linux 安裝（Debian/Ubuntu）
sudo apt install jellyfin

# macOS 安裝
brew install --cask jellyfin

# 安裝後開啟
# http://localhost:8096
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 開源 | 自架 | 免費 |
|------|-------|------|------|------|------|
| **Jellyfin** | ⭐52.4k | 媒體伺服器 | ✅ GPL-2.0 | ✅ | ✅ |
| Plex | — | 媒體伺服器 | ❌ 部分開源 | ✅ | 部分 |
| Emby | — | 媒體伺服器 | ❌ | ✅ | 部分 |
| [[paperless-ngx-paperless-ngx|Paperless-ngx]] | ⭐41.3k | 文件管理 | ✅ | ✅ | ✅ |

## 相關概念
← [[self-hosted|自架服務]] · [[media-streaming|媒體串流]] · [[open-source-business|開源商業模式]] · NAS

## 來源

- GitHub: <https://github.com/jellyfin/jellyfin>
- 官方網站: <https://jellyfin.org/>
- 文件: <https://jellyfin.org/docs/>
- 原始 README: `raw/2026-05-27-jellyfin-jellyfin.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [jellyfin/jellyfin](https://github.com/jellyfin/jellyfin) |
| Stars | ⭐52,381 |
| License | GPL-2.0 |
| Language | C# |
| 收錄日期 | 2026-05-27 |