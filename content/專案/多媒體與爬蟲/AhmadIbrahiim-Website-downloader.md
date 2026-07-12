---
title: Website Downloader
slug: AhmadIbrahiim-Website-downloader
created: 2026-07-08
updated: 2026-07-08
stars: 3999
language: HTML
topics:
  - downloader
  - scraper
  - offline-web-pages
  - assets
---

# Website Downloader

> ⭐4k · 下載任何網站的完整原始碼（含所有資源）——JavaScript、CSS、圖片，用 wget + archiver 一鍵打包

## 快速導航
- [[網頁爬蟲]]
- [[self-hosted]]
- [[productivity]]
- [[firecrawl-firecrawl]]
- [[D4Vinci-Scrapling]]


快速導航：[[網頁爬蟲]] · [[self-hosted]] · [[productivity]]

## 是什麼

Website Downloader 是一個基於 Node.js 的網頁工具，能下載任何網站的完整原始碼及其所有資源檔案——包括 JavaScript、CSS 樣式表和圖片。它使用 `wget` 的 `--mirror` 模式進行遞迴下載，再用 `archiver` 壓縮成 ZIP 檔案，透過 socket channel 回傳給使用者。

工具背後的核心是 wget 的鏡像命令：`wget --mirror --convert-links --adjust-extension --page-requisites --no-parent`。`--mirror` 使下載遞迴進行；`--convert-links` 將所有連結（包括 CSS 中的）轉為相對路徑，適合離線瀏覽；`--adjust-extension` 根據 content-type 加入適當的副檔名；`--page-requisites` 下載正確離線顯示頁面所需的 CSS 和圖片；`--no-parent` 限制下載範圍不向上爬升到父目錄。

這個工具適合需要完整保存網站內容供離線使用的場景——例如備份自己的網站、保存參考資料、或在沒有網路的環境中查看網頁內容。它提供簡單的 Web 介面，輸入網址即可開始下載。

## 核心特色

- **完整資源下載**：下載網站的所有 JavaScript、CSS 樣式表和圖片，確保離線瀏覽時頁面完整顯示
- **wget 鏡像模式**：使用 `--mirror` 遞迴下載整個網站，`--convert-links` 轉為相對路徑，`--page-requisites` 下載頁面依賴資源
- **自動壓縮打包**：下載完成後自動用 archiver 壓縮成 ZIP，透過 socket channel 回傳給使用者
- **Web 介面**：提供簡單的網頁介面，輸入網址即可開始下載，無需命令列操作
- **一鍵雲端部署**：支援 Replit、Glitch、Railway、Cyclic、Koyeb、Render 等多個雲端平台一鍵部署
- **離線瀏覽就緒**：所有連結轉為相對路徑，下載後可直接在本地瀏覽器打開離線瀏覽

## 怎麼用

### 本地運行

```bash
git clone https://github.com/AhmadIbrahiim/Website-downloader.git
cd Website-downloader
npm install
npm start
# → http://localhost:3000/
```

### 雲端部署

支援一鍵部署到 Replit、Glitch、Railway、Cyclic、Koyeb、Render 等平台。

### 使用方式

1. 打開 `http://localhost:3000/`
2. 輸入要下載的網站網址
3. 等待下載完成
4. 取得 ZIP 檔案，解壓縮後即可離線瀏覽

## 跟其他方案的關係

| 方案 | Stars | 類型 | Web 介面 | 完整資源 | 自動壓縮 | 雲端部署 |
|------|-------|------|---------|---------|---------|---------|
| **Website Downloader** | ⭐4k | Web 工具 | ✅ | ✅ | ✅ ZIP | ✅ 6+ 平台 |
| [[firecrawl-firecrawl\|Firecrawl]] | ⭐131k | 爬蟲 API | ✅ | ✅ | ❌ | ✅ |
| [[D4Vinci-Scrapling\|Scrapling]] | ⭐56.6k | 爬蟲庫 | ❌ | ✅ | ❌ | ❌ |
| [[Crawl4AI]] | ⭐65.3k | 爬蟲框架 | 部分 | ✅ | ❌ | ✅ |
| wget (命令列) | — | CLI 工具 | ❌ | ✅ | ❌ | ❌ |

← [[網頁爬蟲]] · [[self-hosted]] · [[productivity]]

## 相關概念

← [[網頁爬蟲] · [[self-hosted] · [[productivity] · [[firecrawl-firecrawl] · [[D4Vinci-Scrapling]

## 來源

- GitHub: <https://github.com/AhmadIbrahiim/Website-downloader>
- Demo: <https://website-downloader.onrender.com>
- 原始 README: `raw/2026-07-08-AhmadIbrahiim-Website-downloader.md`
- 授權: MIT

---

| 項目 | 值 |
|------|-----|
| GitHub | [AhmadIbrahiim/Website-downloader](https://github.com/AhmadIbrahiim/Website-downloader) |
| Stars | ⭐3,999 |
| License | MIT |
| Language | HTML |
| 收錄日期 | 2026-07-08 |