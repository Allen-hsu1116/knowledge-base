---
title: Paperless-ngx
slug: paperless-ngx-paperless-ngx
created: 2022-02-12
updated: 2026-05-26
stars: 41336
language: Python
---

# Paperless-ngx

> ⭐41.3k · 開源文件管理系統，掃描、OCR、索引、歸檔一把罩

快速導航：[[document-parsing|文件解析]] · [[ocr-memory|文字辨識]] · [[self-hosted-AI-platform|自架 AI 平台]] · [[self-hosted|自架服務]]

## 是什麼

Paperless-ngx 是開源的文件管理系統，把實體文件數位化後建立可搜尋的線上檔案庫。是原版 Paperless 和 Paperless-ng 的官方繼任專案。掃描文件後自動 OCR 建立全文索引，機器學習自動幫文件分類、加標籤。透過 Docker 一鍵部署，提供完整的 Web 管理介面。

## 核心特色

- 🔍 **OCR + 全文搜尋**：掃描文件後自動 OCR 並建立全文索引
- 🏷️ **自動分類與標記**：機器學習自動幫文件分類、加標籤
- 🐳 **Docker 一鍵部署**：`docker compose` 即可跑起來
- 🖥️ **Web UI**：完整的管理介面，支援小卡片/列表等多種檢視
- 🌐 **多語言**：透過 Crowdin 社群翻譯支援多種語言
- ⚠️ **安全提醒**：文件以明文儲存，建議只在本地自架主機上運行
- 🔄 **自動消費**：監控資料夾，新文件自動處理歸檔

## 怎麼用

```bash
# Docker Compose 部署（推薦）
git clone https://github.com/paperless-ngx/paperless-ngx
cd paperless-ngx

# 複製設定檔
cp docker-compose.env.example docker-compose.env
cp .env.example .env

# 啟動服務
docker compose up -d

# 建立超級使用者
docker compose exec webserver createsuperuser

# 開啟 http://localhost:8000
```

支援 PAPERLESS_OCR_LANGUAGE 設定 OCR 語言，PAPERLESS_CONSUMPTION_DIR 設定自動監控資料夾。

## 跟其他方案的關係

| 方案 | Stars | 類型 | OCR | 自架 | Docker | 開源 |
|------|-------|------|-----|------|--------|------|
| **Paperless-ngx** | ⭐41.3k | 文件管理 | ✅ | ✅ | ✅ | ✅ |
| Paperless (原版) | ⭐7k+ | 文件管理 | ✅ | ✅ | ✅ | ✅ |
| Mayan EDMS | ⭐3k+ | 文件管理 | ✅ | ✅ | ✅ | ✅ |
| [[jellyfin-jellyfin\|Jellyfin]] | ⭐52.4k | 媒體管理 | ❌ | ✅ | ✅ | ✅ |

← [[document-parsing|文件解析]] · [[ocr-memory|文字辨識]] · [[self-hosted-AI-platform|自架 AI 平台]] · [[self-hosted|自架服務]]

## 來源

- GitHub: <https://github.com/paperless-ngx/paperless-ngx>
- 文件: <https://docs.paperless-ngx.com/>
- 原始 README: `raw/2026-05-26-paperless-ngx-paperless-ngx.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [paperless-ngx/paperless-ngx](https://github.com/paperless-ngx/paperless-ngx) |
| Stars | ⭐41,336 |
| License | GPL-3.0 |
| Language | Python |
| 收錄日期 | 2026-05-26 |