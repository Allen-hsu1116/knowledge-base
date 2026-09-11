---
title: "LLM Wiki（nashsu）"
slug: nashsu-llm_wiki
created: 2026-09-11
updated: 2026-09-11
stars: 18105
language: zh-TW
topics: ["llm-knowledge-base", "Knowledge-Graph"]
---

# LLM Wiki（nashsu）

> ⭐18.1k · 以 Tauri 桌面介面將文件增量編譯成持久 Wiki，整合圖譜與 Agent 查詢

## 快速導航

- [[llm-knowledge-base]] — 相關方法與技術背景
- [[Knowledge-Graph]] — 相關方法與技術背景

## 是什麼

LLM Wiki 是跨平台桌面知識管理應用，使用 Tauri v2／Rust 後端與 React／TypeScript 前端，將匯入文件轉成持續維護的 Markdown Wiki。它將 Karpathy 的 LLM Wiki 方法落實成來源管理、編譯、查詢、Lint 與人工 Review 工作流。

與每次提問才從片段重新組答案的典型 RAG 流程相比，這個專案先建立有來源欄位與 wikilinks 的持久頁面，再以關鍵字、圖譜擴展和可選的 LanceDB 向量檢索查詢。編譯式 Wiki 與檢索並不互斥：專案同時使用兩者。

purpose.md 定義知識庫的目標和範圍，schema.md 定義結構規則。應用還提供 Rust 工具型聊天 Agent、生成成果預覽、local HTTP API、MCP 與 Skills 整合；本頁介紹具體產品，不取代既有 LLM 知識庫概念頁。

## 核心特色

- **兩階段整理**：先產生結構化分析，再生成來源摘要、概念與交叉引用頁面。

- **增量與恢復**：SHA256 內容快取與持久序列佇列避免重做，支援取消、重試與來源資料夾監控。

- **四訊號關聯圖**：組合直接連結、來源重疊、Adamic-Adar 與類型相似度，並以 Louvain 找知識群集。

- **多模態來源**：可匯入 PDF、Office、電子書、圖片、影音及網頁；解析能力依本地或雲端後端而異。

- **檢索與人工審查**：可選向量搜尋、只讀原始來源模式、Lint 與 Review，保留人類判斷入口。

- **外部 Agent 介面**：本地 HTTP API 預設使用 token 且限 loopback，MCP 共用 API；聊天支援工具與串流事件。

## 怎麼用

一般使用者可從 Releases 取得 macOS、Windows、Linux 套件；原始碼開發要求 Node.js 20+、Rust 1.88+ 與 protoc。以下保留官方流程，未安裝或啟動候選應用。

```bash
git clone https://github.com/nashsu/llm_wiki.git
cd llm_wiki
npm install
npm --prefix mcp-server ci && npm run mcp:build
npm run tauri dev
```

### 建議操作順序

1. 建立專案模板，先明確填寫 purpose.md 的目標與 schema 規則。
2. 設定 LLM provider 與模型，再匯入少量文件，觀察 Activity Panel 的整理結果。
3. 用 Chat 與 Knowledge Graph 對照原始來源，Review 處理待判斷項目，定期執行 Lint。
4. 需接外部 Agent 時，再於 Settings → API + MCP 啟用並建立 token；保留本機限定與授權保護。

### 限制與注意事項

本地儲存不等於所有計算離線：模型、MinerU Cloud、網頁搜尋與 embedding endpoint 均可能外送內容。圖譜關聯分數也不是事實可信度，重要結論應回查來源。

## 跟其他方案的關係

以下是依上游功能整理的定位比較，不是同機效能或教學成效測試。

| 方案 | 重點 | 選用考量 |
|---|---|---|
| LLM Wiki 桌面應用 | 編譯、檢索、圖譜與 Review 的整合 GUI | 適合希望有完整介面及佇列管理的個人知識庫 |
| LLM Wiki 方法論 | Raw／Wiki／Schema 與維護規則 | 不是單一軟體，可由 CLI Agent 或其他工具實作 |
| 典型 RAG 管線 | 查詢時擷取片段與生成答案 | 可與持久 Wiki 共存；差異在整理成果是否成為長期文件 |

## 相關概念

← [[llm-knowledge-base]] · [[Knowledge-Graph]]

## 來源

- [GitHub：nashsu/llm_wiki](https://github.com/nashsu/llm_wiki)
- [官方 README](https://github.com/nashsu/llm_wiki/blob/main/README.md)
- 原始快照：`raw/2026-09-11-nashsu-llm_wiki.md`
- Metadata 快照：`raw/2026-09-11-nashsu-llm_wiki-metadata.json`
- [授權檔案](https://github.com/nashsu/llm_wiki/blob/main/LICENSE)

---

| 欄位 | 內容 |
|---|---|
| GitHub | [nashsu/llm_wiki](https://github.com/nashsu/llm_wiki) |
| Stars | 18,105（2026-09-11 快照） |
| License | GPL-3.0 |
| Language | TypeScript |
| 收錄日期 | 2026-09-11 |
