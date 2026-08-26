---
title: Hister
slug: asciimoo-hister
created: 2026-08-26
updated: 2026-08-26
stars: 2780
language: Go
topics: [personal-search, browser-history, full-text-search, semantic-search, mcp, privacy, self-hosted]
---

# Hister

> ⭐2.8k · 本地優先的個人搜尋引擎，完整索引瀏覽過的網頁與本機檔案，並透過 Web、TUI、CLI 或 MCP 重新找回資訊。

## 快速導航

- 🔎 [[rag]] — 關鍵字與語義檢索如何替 LLM 提供可找回的外部知識
- 🔐 [[privacy]] — 瀏覽歷史與文件索引需要資料主權和明確外連邊界
- 🏠 [[self-hosted]] — 將全文索引與搜尋服務部署在自己的裝置或伺服器
- 🔌 [[MCP]] — 讓 AI 助理直接查詢個人搜尋索引的標準工具介面

## 是什麼

Hister 是一套為個人資料設計的私有搜尋引擎。它不只記住瀏覽器歷史中的標題和 URL，還會索引實際看過的網頁全文與指定的本機檔案，讓使用者能以欄位、片語、萬用字元、否定條件或優先權重新找到內容。

瀏覽器擴充功能可自動把新造訪的頁面送到使用者設定的 Hister server，也能匯入既有瀏覽歷史或爬取網站。搜尋端則同時提供 Web UI、終端 TUI、CLI 與 MCP server，因此同一份個人索引既能給人使用，也能成為 AI Agent 的檢索工具。

專案預設沒有遙測與強制雲端同步，可在本機或自行管理的基礎設施運作。語義搜尋是選配功能：啟用後會把文字交給使用者指定的 embeddings endpoint，所以是否使用遠端服務與相應隱私風險仍由部署者決定。

## 核心特色

- **全文個人索引** — 搜尋網頁與檔案的實際內容，而不是只查標題、網址或檔名。
- **瀏覽器自動收集** — Firefox 與 Chrome 擴充功能可保存新造訪頁面，也支援既有 history import。
- **進階查詢語法** — 支援欄位 filter、片語、wildcard、negation、alias 與結果優先權。
- **選配語義搜尋** — 可連接自選 embeddings endpoint，依內容含義尋找相關文件。
- **多種使用介面** — Web、TUI、CLI 與 MCP 共用同一搜尋服務，方便人與 Agent 使用。
- **隱私與資料主權** — 預設無遙測、無必要雲端服務，索引保存在自有 Hister server。
- **多使用者隔離** — 共用伺服器時仍能分離不同使用者的文件與搜尋結果。

## 怎麼用

最簡單的方式是從 Releases 下載對應平台 binary，改名後直接啟動：

```bash
chmod +x hister
./hister listen
```

接著開啟 `http://127.0.0.1:4433`，安裝 Firefox 或 Chrome 擴充功能，並依 quickstart 選擇要匯入的瀏覽歷史與索引範圍。預設本機個人設定不需要額外配置。

若要從原始碼建置，需要 Go 1.26、npm 與可供 CGO 使用的 C compiler：

```bash
git clone https://github.com/asciimoo/hister.git
cd hister
./manage.sh build
npm run serve:app
```

若啟用語義搜尋，先確認 embeddings endpoint 的資料保存與隱私政策；若對外提供服務，也應另外配置認證、HTTPS、更新與備份。

## 跟其他方案的關係

| 方案 | 核心定位 | 索引內容 | Agent 整合 | 資料位置 |
|------|----------|----------|------------|----------|
| **Hister** | 個人瀏覽與檔案搜尋引擎 | 網頁全文、瀏覽歷史、本機檔案 | MCP、CLI | 本機或自架 server |
| [[qmd\|QMD]] | Markdown／知識庫混合搜尋 CLI | 文件 collection | MCP、CLI | 本機 |
| [[karakeep-app-karakeep\|Karakeep]] | AI 輔助書籤與內容收藏 | 主動收藏的連結、筆記、圖片、PDF | CLI、Agent Skills | 自架 |
| [[ragflow\|RAGFlow]] | 端到端 RAG 引擎 | 上傳文件與解析結果 | API、Agent/RAG | 自架或服務端 |
| [[AgriciDaniel-claude-obsidian\|claude-obsidian]] | 來源可追溯的 Markdown 第二大腦 | 經 ingest 整理的來源與 wiki | Agent Skills | 本機 vault |

Hister 的獨特位置在於「被動瀏覽記錄＋全文索引＋個人搜尋」：它比書籤工具更自動，比一般 RAG 平台更聚焦個人資訊找回，也比純 Markdown 搜尋涵蓋更多 Web 行為資料。它可作為 Agent 的 retrieval layer，但本身不是負責生成回答的 LLM 應用框架。

## 相關概念

← [[rag]] · [[privacy]] · [[self-hosted]] · [[MCP]]

## 來源

- GitHub：https://github.com/asciimoo/hister
- 官方文件：https://hister.org/docs
- Raw 檔案：raw/2026-08-26-asciimoo-hister.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/asciimoo/hister |
| Stars | ⭐2780 |
| License | AGPL-3.0 |
| Language | Go |
| 收錄日期 | 2026-08-26 |
