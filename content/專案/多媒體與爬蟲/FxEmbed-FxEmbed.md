---
title: "FxEmbed"
slug: FxEmbed-FxEmbed
created: 2026-09-25
updated: 2026-09-25
stars: 5365
language: zh-TW
topics: ["網頁爬蟲", "self-hosted"]
---

# FxEmbed

> ⭐5.4k · 修復 X／Twitter 與 Bluesky 在 Discord、Telegram 的媒體預覽；非 LLM 工具。

## 快速導航

- [[網頁爬蟲]] — 技術與使用情境。
- [[self-hosted]] — 延伸閱讀與實務取捨。

## 是什麼

FxEmbed 是 FxTwitter、FixupX 與 FxBluesky 的開源實作，針對聊天平台的連結嵌入顯示提供服務。它讓影片、多圖、投票、引述及翻譯等內容以較合適的預覽呈現。

一般使用者可以替換分享連結的網域，不必安裝模型或 Agent。開發者則可使用官方 API 或自行部署；專案實際是 Cloudflare Worker，而非單純的 Node.js HTTP 應用。

此專案來自一般 GitHub Trending 候選，收錄為多媒體與社群連結工具，不將翻譯功能推論成 LLM 能力。它與 X／Twitter 並無官方隸屬關係，也不是可任意抓取私人貼文的授權工具。

## 核心特色

- **多站台預覽**
  服務範圍包括 X／Twitter 與 Bluesky。

- **豐富媒體**
  README 列出影片、投票、引述、翻譯與多圖嵌入。

- **直接改寫連結**
  twitter.com 前加 fx、x.com 前加 fixup、bsky.app 前加 fx。

- **API 與自架文件**
  提供 API reference 與部署指南，適合整合或自行運維。

- **Worker 本地運行**
  Docker 透過 Wrangler 啟動 Workers runtime，並依 Host header 路由不同 realm。

## 怎麼用

### 安裝與準備

```bash
git clone https://github.com/FxEmbed/FxEmbed.git
cd FxEmbed
cp .env.example .env
cp wrangler.example.toml wrangler.toml
cp branding.example.json branding.json
# 先審查並調整上述本地設定
docker compose up -d --build
```

1. 僅分享連結時，直接換成 fxtwitter.com、fixupx.com 或 fxbsky.app 即可，不需要自架。
2. 自架需 Docker 與 Compose；本機服務預設在 localhost:8787，可由首頁查看 realm prefixes。
3. 修改建置期網域或其他 .env 設定後需重新 build；不要把 credentials 或 webhook 寫進公開版本庫。

### 最小操作入口

```bash
curl -H "Host: fxtwitter.com" -H "User-Agent: Discordbot/2.0" \
  "http://localhost:8787/user/status/123"
```

### 限制與驗證

上方 status/123 是官方佔位範例，應換成有效公開貼文。預覽仍受上游網站與聊天平台政策影響；私人資料不要提交給不信任的公共中介服務。

上述指令整理自官方文件，作為讀者操作入口；本次收錄只驗證文件與知識庫建置，未安裝候選專案。

## 跟其他方案的關係

以下是用途定位比較，不是效能排行榜。

| 方案 | 主要角色 | 適用情境 |
|---|---|---|
| FxEmbed | 社群連結預覽與嵌入 | 改善聊天中的媒體分享 |
| 原站連結 | 依平台提供的預覽 | 不需要額外中介服務 |
| 通用網頁爬蟲 | 擷取與處理網站內容 | 批次資料收集而非預覽呈現 |

## 相關概念

← [[網頁爬蟲]] · [[self-hosted]]

## 來源

- [GitHub](https://github.com/FxEmbed/FxEmbed)
- [README](https://github.com/FxEmbed/FxEmbed/blob/main/README.md)
- 原始快照：`raw/2026-09-25-FxEmbed-FxEmbed.md`
- Metadata：`outputs/2026-09-25-FxEmbed-FxEmbed-metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | [FxEmbed/FxEmbed](https://github.com/FxEmbed/FxEmbed) |
| Stars | 5,365（2026-09-25 快照） |
| License | MIT |
| Language | TypeScript（GitHub 主語言；本文為繁體中文） |
| 收錄日期 | 2026-09-25 |
