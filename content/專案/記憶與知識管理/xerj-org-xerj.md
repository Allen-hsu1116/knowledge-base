---
title: XERJ
slug: xerj-org-xerj
created: 2026-10-16
updated: 2026-10-18
stars: 5662
language: zh-TW
topics: [RAG, MCP, Token Optimization, hybrid-search]
---

# XERJ

> ⭐5.7k · Rust 本地搜尋引擎，以自動索引與混合檢索替 Agent 找到可追溯的資料片段。

## 快速導航

- [[rag|RAG]] — 把外部資料檢索加入生成流程。
- [[MCP]] — 讓 Agent 經工具介面查詢本地索引。
- [[Token-Optimization]] — 減少不必要的檔案閱讀。

## 是什麼

XERJ 是以 Rust 實作的搜尋引擎，透過 `autoindex` 掃描資料夾，自動辨識資料格式並建立索引。它提供 Elasticsearch 相容 REST API、全文、向量與混合搜尋，也提供 MCP 介面；定位是 Agent 的資料存取層，而非另一個生成模型。

主要情境是 reference coding：先索引相關開源專案，再取回實作片段，讓 Coding Agent 在撰寫程式前參考既有解法。程式碼解析使用 tree-sitter，結果帶有符號及檔案行號；同一套引擎也處理文件、日誌及持久記憶。

README 的節省 token 數字來自作者特定測試，不是普遍保證。作者也指出，對模型已熟悉的熱門公開程式庫，檢索可能沒有幫助甚至產生負面效果；本次收錄沒有重跑效能實驗。

## 核心特色

- **自動辨識資料**：支援程式碼、CSV、JSON、SQLite、PDF 與多種 Office 格式，不必先手寫 schema。
- **混合檢索**：提供 BM25、kNN 及混合查詢；預設 embedding 是離線 lexical feature-hashing，不等同神經語意模型。
- **可選神經模式**：神經 embedding 需另外啟用並取得模型檔，不能把預設離線模式描述為神經搜尋。
- **程式碼定位**：tree-sitter 擷取符號與行號，並以內容雜湊跳過未變更檔案的重解析。
- **原生 MCP**：同一個執行檔提供 stdio server，但必須先啟動搜尋節點。
- **記憶與關係查詢**：提供命名空間記憶及 second-brain 關係介面。
- **單一執行檔**：提供 Linux、macOS、Windows 的預建版本，不依賴 JVM。

## 怎麼用

### 安裝

以下是官方安裝途徑；先下載與審閱腳本，再自行執行。本次只收錄文件，沒有安裝或索引私人檔案。

```sh
curl -fsSL https://xerj.org/get -o xerj-install.sh
# 審閱 xerj-install.sh 後，再執行：
sh xerj-install.sh
```

### 本機開發示例

```sh
xerj --insecure --data-dir ./data &
# 等 http://localhost:9200 可回應後再索引
xerj autoindex ./my-project
xerj search "how do we rotate the WAL segment"
xerj def "euler_to_rotationmatrix"
```

`--insecure` 關閉 TLS 與 API-key 驗證，任何可連線者都有讀寫及刪除索引的權限；只適用單人、loopback 隔離的開發測試，不適用公開或共用主機。預設新節點綁定 `127.0.0.1`，仍應檢查實際網路設定。

### 接入 Agent

`xerj mcp` 是代理既有節點的 stdio 介面，不會幫你啟動節點。桌面 MCP 客戶端應填執行檔絕對路徑；有驗證的節點需提供 `XERJ_AUTH`，CLI 索引則使用 `XERJ_API_KEY` 或 `--api-key`。

可選 Jev reranker 會把候選文件文字傳到外部服務；不要把所有功能都當作完全離線，啟用前需檢查資料授權及外送邊界。

## 跟其他方案的關係

以下為用途與架構比較，不代表經過同硬體的效能排名。

| 方案 | 定位 | 選擇時的差異 |
|---|---|---|
| XERJ | 自動索引與 Agent 混合檢索 | 同時提供資料匯入、搜尋、MCP；注意驗證及外送設定 |
| grep | 文字模式搜尋 | 不需要長駐索引，但找出命中後往往仍要閱讀上下文 |
| Elasticsearch | 搜尋與分析服務 | XERJ 實作相容 API，不是 Elasticsearch fork，也不保證所有行為一致 |
| [[qmd]] | 本地混合搜尋 | 同屬檢索工具，需依資料格式、整合需求及實際查詢品質挑選 |

README 特別指出 scroll 使用有上限的預先快照；超出上限時拒絕查詢，較大結果集應使用 `search_after`。不能把「API 相容」解讀成完整無差別替換。

## 相關概念

← [[rag|RAG]] · [[MCP]] · [[Token-Optimization]]

## 來源

- [GitHub：xerj-org/xerj](https://github.com/xerj-org/xerj)
- [README](https://github.com/xerj-org/xerj/blob/main/README.md) — 本頁功能、操作與限制的主要來源。
- [安全模型入口](https://github.com/xerj-org/xerj/blob/main/docs/SECURITY_MODEL.md) — 正式部署前應閱讀。
- 原始 README：`raw/2026-10-16-xerj-org-xerj.md`
- Metadata：`raw/2026-10-16-xerj-org-xerj.metadata.json`

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/xerj-org/xerj |
| Stars | 5,662（2026-10-16 快照） |
| License | Apache-2.0 |
| Language | Rust |
| 收錄日期 | 2026-10-16 |
