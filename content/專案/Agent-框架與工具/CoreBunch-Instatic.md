---
title: Instatic
slug: CoreBunch-Instatic
created: 2026-07-26
updated: 2026-07-26
stars: 5082
language: TypeScript
topics:
  - cms
  - css
  - css-framework
  - page-builder
  - static
  - website
---

# Instatic

> ⭐5082 · 自架視覺化 CMS，一個 Bun 伺服器搞定編輯器、內容引擎、AI Agent 和靜態頁面發布

## 快速導航


- 🤖 **AI Agent** → [[AI-Agent]]
- 🏗 **自架** → [[self-hosted]]
- 🎨 **前端設計** → [[frontend-design]]
- 🔌 **沙箱** → [[sandbox]]

## 是什麼

Instatic 是一個自架的視覺化 CMS，由 CoreBunch 團隊開發。它的核心理念是用一個 Bun 伺服器取代原本需要組合的一整堆工具——無頭 CMS、前端框架、表單服務、圖片 CDN、分析工具——每個都有自己的帳單和儀表板。Instatic 把視覺編輯器、內容引擎、媒體管理、認證、表單、插件和發布器全部包進一個伺服器，背後接 SQLite 或 Postgres。

最特別的是它的輸出：發布後的頁面是純語意 HTML 和精簡 CSS，沒有框架 runtime、沒有編輯器的 div soup。網站載入速度像靜態檔案一樣快，因為它大部分時候就是靜態檔案。訪客拿到的是乾淨的 HTML，不是一個需要 hydrate 的 React app。

Instatic 還內建一個 AI Agent，可以直接在畫布上編輯頁面——不是給你截圖或一堆程式碼，而是產生真正可編輯的節點。它支援 Claude、OpenAI、OpenRouter 和本地 Ollama，帶你自己的 key 和模型。

## 核心特色

- **一個 Bun 伺服器搞定一切** — 視覺編輯器、內容引擎、媒體、認證、表單、插件、發布器全在一個伺服器裡，背後 SQLite 或 Postgres
- **AI Agent 直接編輯頁面** — 用自然語言描述需求，AI 在畫布上產生真實可編輯的節點，35 個 Site scope 工具建頁面、15 個 Content scope 工具編內容，BYO 模型（Claude/OpenAI/OpenRouter/Ollama）
- **Core Framework 設計系統** — 內建色彩 token 自動生成色階、流體字級、數學化間距系統、utility class 產生器，整個設計系統以資料形式存在
- **純靜態輸出** — 發布時直接烘焙到磁碟，原子替換，訪客拿到的是檔案不是 render 結果，動態部分自動偵測並 lazy-load（runtime 僅 1.1 kB）
- **QuickJS-WASM 插件沙箱** — 插件後端在 per-plugin worker 中運行，無檔案系統、無環境變數、無網路（除非站主授權），安全隔離
- **完整內容模型** — 頁面、文章、元件、自訂集合全部存在同一個 `data_tables` 和 `data_rows` 裡，沒有特殊化的 pages 表
- **38 項能力的角色權限** — TOTP 雙因素認證、帳號鎖定退避、危險操作 step-up 驗證

## 怎麼用

### 一鍵部署（Railway）

從 Railway 模板部署，約兩分鐘完成。自動產生金鑰、掛載儲存、設定健康檢查。

### 本地開發

需要 [Bun](https://bun.sh)，其他都不用。預設用 SQLite，不需要額外服務。

```sh
git clone https://github.com/corebunch/instatic.git
cd instatic
bun install
bun run dev
```

打開 `http://localhost:5173`，首次訪問會引導建立網站和管理員帳號。

### Docker 部署

```sh
INSTATIC_IMAGE=ghcr.io/corebunch/instatic:latest docker compose -f compose.prod.yml -f compose.sqlite.yml up -d
```

## 跟其他方案的關係

| 方案 | Stars | AI Agent | 自架 | 輸出 | 插件沙箱 |
|------|-------|----------|------|------|----------|
| **Instatic** | ⭐5k | ✅ BYO Model | ✅ Bun | 純靜態 HTML/CSS | ✅ QuickJS-WASM |
| [[penpot-penpot\|Penpot]] | ⭐50k | ❌ | ✅ | SVG 設計 | ❌ |
| WordPress + Gutenberg | ⭐— | ❌ | ✅ | PHP 動態 | ❌ |
| Webflow | — | ❌ | ❌ SaaS | 專有 | ❌ |

Instatic 的核心差異化在於：一個 Bun 伺服器取代整個工具鏈，AI Agent 直接在畫布上產生可編輯節點，輸出是純靜態 HTML/CSS 而非框架 runtime，插件在 WASM 沙箱中安全運行。

## 相關概念


← [[AI-Agent]] · [[self-hosted]] · [[frontend-design]] · [[sandbox]]

## 來源

- [GitHub：專案原始碼](https://github.com/corebunch/instatic)
- GitHub: https://github.com/CoreBunch/Instatic
- 官網: https://instatic.com
- 原始 README: `raw/2026-07-26-CoreBunch-Instatic.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/corebunch/instatic |
| Stars | ⭐5082|
| License | MIT |
| 收錄日期 | 2026-07-26 |
