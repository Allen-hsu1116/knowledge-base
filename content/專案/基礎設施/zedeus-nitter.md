---
title: Nitter
slug: zedeus-nitter
created: 2026-08-28
updated: 2026-08-28
stars: 13878
language: Nim
topics: [privacy, self-hosted, Twitter, X, Nim, RSS]
---

# Nitter

> ⭐13.9k · 隱私與效能優先的 Twitter／X 替代前端，後端代理請求、無 JavaScript、支援 RSS 與自架

## 快速導航

- 🔒 **隱私與反追蹤** → [[privacy]]
- 🏠 **自有環境部署** → [[self-hosted]]
- 🕸️ **網頁資料取得** → [[網頁爬蟲]]

## 是什麼

Nitter 是以 Nim 開發的自由軟體 Twitter／X 替代前端，受到 Invidious 啟發。瀏覽器只與 Nitter 後端溝通，不直接連線 Twitter，因此可減少 IP、JavaScript fingerprint、廣告與追蹤腳本暴露。

它不要求 JavaScript，提供響應式行動版介面、主題與 RSS feeds，頁面傳輸量也明顯小於官方網站。服務可在自己的 VPS 上搭配 Valkey／Redis 與反向代理部署，將閱讀介面與資料來源解耦。

但這個專案目前已封存。README 記載 X Corp. 於 2026-08-24 發出 cease-and-desist，要求永久下架 Nitter instances 與 repository；因此本頁應視為隱私前端設計與自架實作的歷史參考，而不是保證仍可運作的推薦服務。

## 核心特色

- **無 JavaScript 與廣告**：前端維持輕量，避免官方頁面的分析與追蹤程式
- **後端代理請求**：用戶端不直接接觸 Twitter，降低 IP 與瀏覽器指紋暴露
- **免開發者帳號**：原設計透過非官方 API 讀取內容
- **RSS feeds**：可把帳號更新接入標準閱讀器與個人資訊流程
- **自架部署**：支援原生編譯、Docker、docker-compose 與 systemd
- **AGPL 授權**：網路服務修改版須提供對應原始碼，不允許封閉專有 instance
- **狀態風險明確**：repository 已封存，並存在平台政策與法律阻斷風險

## 怎麼用

以下為 README 留存的原生建置方式；因 repository 已封存且上游介面可能失效，部署前要先驗證現況與法律風險。

```bash
git clone https://github.com/zedeus/nitter
cd nitter
nimble -l build -d:danger --mm:refc
nimble -l scss
nimble -l md
cp nitter.example.conf nitter.conf
./nitter
```

Docker 路徑需先準備 `nitter.conf`，並讓 Nitter 能連到 Redis 或 Valkey：

```bash
cp nitter.example.conf nitter.conf
docker-compose up -d
```

正式公開服務應放在 Nginx 或 Apache 後方，設定 HTTPS、主機名稱、HMAC key 與快取服務；不要把 README 的歷史指令誤當作目前仍受支援的服務保證。

## 跟其他方案的關係

Nitter 與 Invidious、Piped 的共同模式是用替代前端降低官方平台追蹤並提供較輕介面；不同點在於 Nitter 聚焦 Twitter／X，而 Invidious 與 Piped 聚焦 YouTube。RSS bridge 類工具更偏資料轉換，不一定提供完整瀏覽介面。

| 方案 | 目標平台 | 主要定位 | 目前風險 |
|------|----------|----------|----------|
| Nitter | Twitter／X | 無 JS 隱私替代前端 | 已封存、上游與法律風險高 |
| Invidious | YouTube | 隱私影片前端 | instance 與上游相容性風險 |
| Piped | YouTube | 輕量影片前端/API | 依賴上游行為與 instance 維護 |
| RSS bridge | 多平台 | 將網站內容轉成 feeds | 功能較窄、來源變動會失效 |

## 相關概念

← [[privacy]] · [[self-hosted]] · [[網頁爬蟲]] · [[media-streaming]]

## 來源

- GitHub: <https://github.com/zedeus/nitter>
- 專案首頁: <https://nitter.net>
- 原始 README 與 metadata: `raw/2026-08-28-zedeus-nitter.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/zedeus/nitter |
| Stars | ⭐13,878 |
| License | AGPL-3.0 |
| Language | Nim |
| 收錄日期 | 2026-08-28 |
