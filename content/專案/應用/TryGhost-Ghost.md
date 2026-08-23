---
title: Ghost
slug: TryGhost-Ghost
created: 2026-08-22
updated: 2026-08-22
stars: 54888
language: JavaScript
topics: [cms, publishing, newsletters, memberships, self-hosted]
---

# Ghost

> ⭐54888 · 面向專業出版、會員與電子報經營的開源 Node.js CMS，可自架，也可使用官方 Ghost(Pro) 代管服務。

## 快速導航


- 🧠 [[content-automation]] — 內容建立、發佈與電子報配送的工作流
- 🏠 [[self-hosted]] — 可自行管理網站、資料與升級節奏
- 💼 [[open-source-business]] — 以 MIT 開源核心與官方代管服務支持基金會

## 是什麼

Ghost 是一套獨立出版技術，定位不只是一個部落格引擎，也涵蓋網站內容管理、會員、訂閱與 newsletter。它以 Node.js 為主要執行環境，提供管理後台、主題系統與 Content API，適合媒體、創作者與組織建立直接面向讀者的出版平台。

使用者可以在 Ubuntu 等環境自行部署，也可選擇官方 Ghost(Pro) 服務。代管版整合全球 CDN、備份、安全與維護；自架版則保留資料控制權、主題客製能力與 API 整合彈性。

Ghost 的專案治理由 Ghost Foundation 支持，官方代管收入回饋開源專案。這種模式把開源 CMS 與商業代管結合，讓使用者可在便利性與控制權之間選擇。

## 核心特色

- **出版優先** — 聚焦文章、網站與 newsletter，而不是把所有網站型態都塞進通用外掛系統。
- **會員與訂閱** — 內建會員、付費訂閱與電子報能力，支援直接經營讀者關係。
- **Headless API** — Content API 可供自訂前端、App 或其他服務讀取內容。
- **主題系統** — 可開發專屬 Ghost themes，控制版型、品牌與閱讀體驗。
- **自架或代管** — Ghost CLI 可部署本機／伺服器，Ghost(Pro) 則提供完整維運服務。
- **成熟社群** — 超過一億次下載、持續 release、論壇與完整官方文件形成穩定生態。

## 怎麼用

本機測試最簡單的方式是先安裝 Ghost CLI：

```bash
npm install ghost-cli -g
mkdir ghost-local && cd ghost-local
ghost install local
```

正式 Ubuntu 伺服器可讓 CLI 協助設定服務與 Let's Encrypt SSL：

```bash
npm install ghost-cli -g
ghost install
```

正式環境應依官方 hosting 文件準備受支援的 Node.js、MySQL、Nginx 與作業系統版本，並使用 `ghost update` 管理升級，不要直接以開發 monorepo 取代 release 安裝。

## 跟其他方案的關係

| 方案 | 核心定位 | 會員／電子報 | 維運模式 |
|------|----------|--------------|----------|
| **Ghost** | 專業出版與讀者營運 | 內建 | 自架或 Ghost(Pro) |
| WordPress | 通用 CMS 與外掛生態 | 多依賴外掛 | 大量代管與自架選項 |
| Substack | 託管 newsletter 平台 | 內建 | 完全 SaaS，平台依賴較高 |
| Strapi | Headless CMS | 需自行整合 | 自架或雲端 |
| [[paperless-ngx-paperless-ngx\|Paperless-ngx]] | 個人文件歸檔與 OCR | 不適用 | 自架文件管理 |

Ghost 與通用 CMS 的差別在於把出版、會員與 newsletter 做成核心產品；和 Substack 相比，它提供更高的品牌、主題、API 與自架控制權。

## 相關概念


← [[content-automation]] · [[self-hosted]] · [[open-source-business]]

## 來源

- GitHub：https://github.com/TryGhost/Ghost
- Raw 檔案：raw/2026-08-22-TryGhost-Ghost.md
- 官方文件：https://ghost.org/docs/

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/TryGhost/Ghost |
| Stars | ⭐54888|
| License | MIT |
| 收錄日期 | 2026-08-22 |
