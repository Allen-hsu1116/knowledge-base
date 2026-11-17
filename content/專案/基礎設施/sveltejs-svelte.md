---
title: "Svelte"
slug: sveltejs-svelte
created: 2026-11-17
updated: 2026-11-17
stars: 88994
language: zh-TW
topics: ["compiler", "template", "ui"]
---

# Svelte

> ⭐89.0k · 編譯式 Web UI 框架，作為 AI 應用前端的開發底座，而非 LLM 框架。

## 快速導航

- [[frontend-design]]
- [[Coding-Agent-CLI]]

## 是什麼

Svelte 把以 HTML、CSS 與 JavaScript 撰寫的宣告式元件編譯成精簡 JavaScript，更新瀏覽器 DOM。它處理的是使用者介面，不提供模型推論、Agent loop 或知識檢索。

官方建議新應用從 SvelteKit 開始；SvelteKit 是搭配 Svelte 的應用框架，而不是兩者完全相同。若只需要單頁 UI，也可採用 Vite 與 Svelte 插件。此專案來自一般 GitHub Trending，收錄定位是前端基礎設施。

## 核心特色

### 1. 編譯式元件

將宣告式元件轉成執行於瀏覽器的 JavaScript，將轉換工作交給編譯器。

### 2. 網頁語言整合

元件結合 HTML、CSS、JavaScript；官方範例也展示 TypeScript。

### 3. 應用框架搭配

SvelteKit 提供建立完整應用的入口；也可只建置獨立 UI 元件。

### 4. 工具與學習資源

提供互動教學、Playground、VS Code 擴充與 CLI 檢查工具。

## 怎麼用

### 安裝與起步

以下為來源文件的操作入口，並非本次已在主機安裝或執行的紀錄。

```bash
npx sv create myapp
cd myapp
npm install
npm run dev
```

### 操作順序

1. 先安裝適用版本的 Node.js，依 CLI 提示選擇專案選項。

2. 用瀏覽器開啟開發伺服器輸出的網址，修改元件並觀察畫面。

3. 可執行 `npx sv check` 檢查程式碼；本次僅整理官方用法，未安裝框架。

### 使用邊界

- LLM API 憑證應保留於伺服器端，不能因使用前端框架就放進瀏覽器 bundle。
- 選用框架不等於取得可及性、效能或安全保證，仍需實際測試。

## 跟其他方案的關係

以下是依專案定位整理的比較，非效能測試或排名。

| 方案 | 定位 | 選用差異 |
| --- | --- | --- |
| Svelte | 元件與編譯器 | 適合實作互動 UI，本身不處理 AI 推論。 |
| SvelteKit | Svelte 的應用框架 | 建立完整應用的官方建議入口。 |
| Vite + Svelte | 較薄的前端建置組合 | 若需要路由，須另行評估路由方案。 |

## 相關概念

- [[getarcaneapp-arcane]] — 以 Web UI 管理 Docker、Compose 與遠端主機的自架管理平台。

← [[frontend-design]] · [[Coding-Agent-CLI]]

## 來源

- GitHub：https://github.com/sveltejs/svelte
- README 快照：`raw/2026-11-17-sveltejs-svelte.md`
- Metadata 快照：`raw/2026-11-17-sveltejs-svelte.metadata.json`
- https://svelte.dev/docs/svelte/overview
- https://svelte.dev/docs/svelte/getting-started

---

| 欄位 | 資料 |
| --- | --- |
| GitHub | https://github.com/sveltejs/svelte |
| Stars | 88,994（2026-11-17 擷取） |
| License | MIT |
| Language | JavaScript |
| 收錄日期 | 2026-11-17 |
