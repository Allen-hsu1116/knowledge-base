---
title: Topcoat — Rust 全端 Web 框架
slug: tokio-rs-topcoat
created: 2026-11-11
updated: 2026-11-11
stars: 6817
language: Rust
topics: [rust, web-framework, infrastructure]
---

# Topcoat

> ⭐6.8k · 以 Rust 整合伺服器渲染、瀏覽器互動與 UI 工具的全端 Web 框架。

## 快速導航

- [[self-hosted]] — 自架 Web 應用的相關部署觀念。
- [[rust-lang-rust]] — 此框架依賴的語言與工具鏈。

## 是什麼

Topcoat 是 tokio-rs 組織下的模組化 Rust 全端應用框架，將路由、HTML 元件、資源打包、瀏覽器反應式更新與 UI 元件工具整合在一起。目標是減少開發者為前後端分離介面撰寫的樣板程式。

它先在伺服器渲染標記；特定 `$(...)` Rust 表達式同時會轉成 JavaScript，在瀏覽器即時運算。需要重新取得伺服器資料時，則可使用 shard 重新渲染局部 HTML，而非將所有互動都轉成完整頁面刷新。

本專案由通用 GitHub Trending 來源發現，**不是 LLM、Agent 或推論框架**，收錄於開發基礎設施。官方明確標示 early-stage、experimental 與可能破壞相容性的變更，不能直接視為成熟的生產方案。

## 核心特色

- **伺服器元件**：async component 可以在伺服器取得資料並產生 HTML。
- **雙端表達式**：`$(...)` 結合初始伺服器求值與瀏覽器 JavaScript 更新。
- **局部更新**：shard 在參數變動時由伺服器重新產生 HTML。
- **模組路由**：依 Rust 模組結構推導頁面、layout 與 API 路由。
- **可編輯 UI 元件**：Topcoat UI 將元件複製進專案，便於自行修改。
- **資源整合**：支援 asset、字型、圖示、Tailwind 與內容雜湊 URL。

## 怎麼用

先安裝 Rust 與 Cargo，確保 Cargo binary 目錄位於 PATH。

以下依官方 getting started 文件建立推薦範本；本次未實際安裝框架。

```bash
cargo install topcoat-cli
topcoat new hello-world --recommended
cd hello-world
cargo run -- toasty migration generate
cargo run -- toasty migration apply
topcoat dev
```

開啟 `http://127.0.0.1:3000`，頁面與 layout 位於 `src/app.rs` 及 `src/app/`。

推薦範本包含 Toasty／SQLite todo 範例，因此需要產生並套用 migration。

- 不需要資料庫時可選 `--minimal`；無模型的專案可跳過 migration。
- 開發伺服器會因原始碼變更重新建置與刷新頁面。
- 正式部署、驗證與背景工作等能力應逐項確認，不能把 roadmap 當成已完成。

## 跟其他方案的關係

| 方案或模式 | 工作方式 | 與 Topcoat 的關係 |
| --- | --- | --- |
| 獨立前端加 API | 前後端分開維護資料介面 | Topcoat 元件可直接於伺服器取資料，減少部分介面樣板 |
| WebAssembly 前端 | 把前端邏輯編譯成 wasm | Topcoat 的上述反應式模式使用 JavaScript，不需要 wasm bundle |
| htmx／Alpine AJAX | 以伺服器 HTML 局部更新驅動互動 | Topcoat 提供相應整合，而非只允許自己的 runtime |
| shadcn/ui | 將 UI 元件放入使用者專案編輯 | Topcoat UI 借鏡這種可修改元件的分發方式 |

這是架構差異整理，不是經過 benchmark 的速度或開發成本排名。

## 相關概念

← [[self-hosted]] · [[rust-lang-rust]]

## 來源

- [GitHub — tokio-rs/topcoat](https://github.com/tokio-rs/topcoat)
- [官方 getting started](https://github.com/tokio-rs/topcoat/blob/main/docs/getting_started.md)
- 原始 README：`raw/2026-11-11-tokio-rs-topcoat.md`
- Metadata：`outputs/2026-11-11-tokio-rs-topcoat-metadata.json`

---

| 欄位 | 內容 |
| --- | --- |
| GitHub | https://github.com/tokio-rs/topcoat |
| Stars | 6,817（2026-11-11 擷取） |
| License | MIT |
| Language | Rust |
| 收錄日期 | 2026-11-11 |
