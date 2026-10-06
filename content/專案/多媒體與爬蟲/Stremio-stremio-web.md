---
title: Stremio Web
slug: Stremio-stremio-web
created: 2026-10-06
updated: 2026-10-06
stars: 14297
language: zh-TW
topics: ["media-streaming", "self-hosted"]
---

# Stremio Web

> ⭐14.3k · 官方 Stremio 網頁介面，以 React UI 搭配 Rust/WASM 核心整理與播放影音。

## 快速導航

- [[media-streaming]] — 影音探索、播放與字幕。
- [[self-hosted]] — 自行建置前端，但不等於所有服務都離線。

## 是什麼

Stremio Web 是 Stremio 的官方網頁 UI，透過 addon 提供的目錄探索電影、影集與頻道。使用者可以在瀏覽器內使用，也能以 PWA 安裝成獨立視窗；它不是 LLM 或 AI Agent 專案。

這個 repository 負責 React 介面，狀態計算由 stremio-core 承擔。後者以 Rust 撰寫、編譯成 WebAssembly，在 Web Worker 執行；UI 顯示狀態，core 與 Stremio API 及 addons 溝通，播放則交給 stremio-video 選擇對應環境的播放器實作。

自行架設的是前端，不代表 Stremio 帳號同步、addon 或影音來源也在本機。是否能播放特定內容，要由來源、播放器環境與使用權限共同決定，不能將專案開源視為影音內容授權。

## 核心特色

### 1. Addon 目錄

- 透過 addons 提供的目錄探索媒體，而非把影音內容包在此 repository。

### 2. 跨裝置同步

- 個人媒體庫與 Continue Watching 跟隨 Stremio 帳號同步。

### 3. 播放與字幕

- 支援 Chromecast、addon／本機字幕與字幕樣式調整。
- 鍵盤操作可控制播放器，不必每次使用滑鼠。

### 4. 可安裝與多語系

- 提供 PWA 體驗，README 列出超過 50 種社群翻譯語言。

### 5. 介面與核心分工

- React、Rust/WASM core 與 video abstraction 分工，方便理解跨平台播放器架構。

## 怎麼用

依官方 README，開發環境需要 Node.js 22+ 與 pnpm 11+。以下是文件指令，收錄過程未安裝或執行此專案。

```bash
git clone --branch development https://github.com/Stremio/stremio-web.git
cd stremio-web
pnpm install
pnpm start
```

- 開發站預設位於 `http://localhost:8080`。
- 正式建置使用 `pnpm run build`；測試使用 `pnpm test`。
- 不想建置可直接使用官方 [Web App](https://web.stremio.com)。

也可依 README 以 Docker 建置前端：

```bash
docker build -t stremio-web .
docker run -p 8080:8080 stremio-web
```

對外部署前另行檢查 HTTPS、來源與 addon 信任邊界。

## 跟其他方案的關係

以下依官方 README 的生態系分工比較，不代表跨產品效能評測。

| 方案 | 負責部分 | 與本專案的關係 |
|---|---|---|
| Stremio Web | React 網頁 UI | 使用者互動與顯示入口 |
| stremio-core | 狀態、addon 協議、library 與 sync | Rust/WASM 核心依賴 |
| stremio-video | 播放器抽象 | 選擇適合環境的播放實作 |
| stremio-addon-sdk | Node.js addon 開發 | 擴充目錄與內容介面的另一層 |

## 相關概念

← [[media-streaming]] · [[self-hosted]]

## 來源

- [GitHub](https://github.com/Stremio/stremio-web)
- [官方 README](https://github.com/Stremio/stremio-web/blob/development/README.md)
- README 原始快照：`raw/2026-10-06-Stremio-stremio-web.md`
- GitHub metadata：`raw/2026-10-06-Stremio-stremio-web.metadata.json`

---

| 欄位 | 值 |
|---|---|
| GitHub | [Stremio/stremio-web](https://github.com/Stremio/stremio-web) |
| Stars | 14,297（2026-10-06 快照） |
| License | GPL-2.0 |
| Language | JavaScript（原始碼）；zh-TW（本頁） |
| 收錄日期 | 2026-10-06 |
