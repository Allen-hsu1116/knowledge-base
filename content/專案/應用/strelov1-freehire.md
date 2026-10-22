---
title: freehire
slug: strelov1-freehire
created: 2026-10-22
updated: 2026-10-22
stars: 2388
language: Go
topics: [job-search, AI-Agent, self-hosted, llm, meilisearch]
---

# freehire

> ⭐2.4k · Go · MIT · 整合職缺搜尋、履歷與求職追蹤的開源平台，搭配可選的 LLM 助理。

## 快速導航

- [[AI-Agent]]：領域內助理的工具使用與權限邊界。
- [[self-hosted]]：自架服務、資料與模型供應商管理。
- [[projects]]：專案索引中的「應用」分類。

## 是什麼

freehire 是面向求職者的開源搜尋與工作空間：蒐集企業 ATS、職缺平台及其他來源，將職缺正規化、去重後提供搜尋，再串接履歷編輯、投遞追蹤與通知。它不是通用 LLM 框架，而是把傳統資料管線、搜尋引擎與 AI 功能組合成可自架的垂直應用。

後端採 Go／Fiber，PostgreSQL 保存資料，Meilisearch 提供全文與分面搜尋，pgvector 支援語意向量；前端為 SvelteKit。LLM 透過 langchaingo 連接 OpenAI-compatible endpoint，另搭配 Bifrost 與 Langfuse 管理模型存取及觀測。未設定 LLM 憑證時，對應功能保持停用，而不是所有搜尋都必須呼叫模型。

README 宣稱服務收錄超過 330 萬筆有效職缺，並提供 2026-10-20 的來源快照；這是上游服務統計，並非本次獨立驗證。雖以企業直接來源為主打，文件也明列聚合平台與 Telegram 來源，因此不能把整個資料集都描述成只有企業原始職缺。

## 核心特色

- **正規化與去重**：將多來源職缺整理為共同 schema，透過穩定鍵合併重複刊登。
- **確定性搜尋欄位**：地區、工作模式、資歷、技能等分面以整理過的字典推導，避免把模型猜測直接當搜尋事實。
- **完整求職流程**：履歷產生器、ATS-safe PDF、履歷與職缺評分、投遞看板、信箱關聯及事件紀錄。
- **可選 AI 功能**：履歷適配分析、履歷調整、職缺資訊增補與面試練習；部分功能涉及模型額度。
- **領域內 Agent**：README 描述 chat、browse、profile、CV tailoring、interview rehearsal 五種預設；不提供 shell，也不自行產生憑證。
- **可擴充資料入口**：已有 ATS 通常只需新增 board catalog 記錄；新 ATS 才需要實作 adapter。
- **獨立 worker**：爬取、增補、向量化、索引與通知以單次執行程序運作，適合排程管理。
- **API 與整合**：公開職缺 API 不需 key；CLI、MCP server 是 README 連到的獨立專案，瀏覽器擴充原始碼則位於本 repo。

## 怎麼用

先準備 Git、Docker Compose 與 make；以下整理自官方 README，僅作安裝指引，本次沒有執行部署或爬取職缺。

```bash
git clone https://github.com/strelov1/freehire.git
cd freehire
cp .env.example .env
# 編輯 .env：必須設定 JWT_SECRET；按需設定 OAuth、LLM 與其他服務參數。
make up
curl localhost:8080/health
curl localhost:8080/api/v1/jobs
```

`make up` 會建置及啟動 API、Web、PostgreSQL、Meilisearch、Redis 與 S3 相容服務。若 8080 已占用，可用 `HIRE_HOST_PORT=8090 make up`；檢查指令的連接埠也需跟著調整。

首次初始化 PostgreSQL volume 會套用 migrations；既有 volume 不會因檔案變更自動重跑，應依文件使用 `make migrate` 處理待套用遷移，不要為了更新 schema 任意刪除資料卷。

資料 worker 與 API 分開，啟動服務不代表已取得線上站的完整資料集。所有 worker 都需要 `DATABASE_URL`，模型增補還需 `LLM_*` 設定；安排抓取前應確認來源條款與請求頻率。

```bash
# 在完成資料庫與來源設定後，按需求手動執行：
go run ./cmd/ingest greenhouse
go run ./cmd/enrich
go run ./cmd/embed
go run ./cmd/search-drain
```

履歷、個資與招募信件具有敏感性；自架不等於模型呼叫留在本機，啟用外部 LLM 前仍須檢查資料傳送、保存政策與存取權限。

## 跟其他方案的關係

以下是依 README 所述責任邊界整理的比較，不是效能或搜尋品質實測。

| 方案 | 主要責任 | 與 freehire 的關係 |
| --- | --- | --- |
| Meilisearch | 全文檢索與分面搜尋 | freehire 使用的搜尋元件，不處理完整求職流程 |
| PostgreSQL／pgvector | 結構化資料與向量儲存 | freehire 的持久化與語意資料底層，不是獨立求職產品 |
| 通用 Agent 框架 | 工具迴圈與應用建構 | freehire 已整合求職領域資料及 UI，並非任意任務執行環境 |
| freehire-mcp | 將職缺能力提供給 MCP 客戶端 | 同作者的獨立整合 repo，不等於本 repo 內建通用 MCP 平台 |

← [[AI-Agent]] · [[self-hosted]]

## 來源

- [GitHub：strelov1/freehire](https://github.com/strelov1/freehire)
- [官方 README](https://github.com/strelov1/freehire/blob/main/README.md)：架構、功能、啟動指令與 worker 行為依據。
- 原始 README 快照：`raw/2026-10-22-strelov1-freehire.md`。
- GitHub metadata：`raw/2026-10-22-strelov1-freehire.metadata.json`。
- 本頁為文件整理，沒有驗證線上職缺數、AI 履歷品質或實際安裝成功率。

---

| Metadata | 值 |
| --- | --- |
| GitHub | https://github.com/strelov1/freehire |
| Stars | 2,388（2026-10-22 快照） |
| License | MIT |
| Language | Go |
| 收錄日期 | 2026-10-22 |
