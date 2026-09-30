---
title: DBX
slug: t8y2-dbx
created: '2026-09-30'
updated: '2026-09-30'
stars: 22014
language: zh-TW
topics:
- data-analysis
- MCP
---

# DBX

> ⭐22.0k · 結合多資料庫管理、AI SQL 助手與獨立 MCP Server 的輕量工具。

## 快速導航

- [[data-analysis]] — 延伸閱讀
- [[MCP]] — 延伸閱讀

## 是什麼

DBX 是以 Rust 為主要語言的跨平台資料庫客戶端。README 宣稱約 25 MB 並支援 100 多種資料庫，實際支援方式包含原生驅動、agent-driven drivers 與可選 JDBC，不能解讀成所有後端都沒有額外依賴。

它提供桌面、Web／Docker 與 CLI 工作方式，包含 SQL 編輯器、資料格、schema 工具及 AI SQL 助手。AI 可以使用 Claude、OpenAI、Ollama 或相容端點，但是否外傳資料取決於模型設定。

MCP Server 與桌面程式分開發佈，能沿用 DBX 已建立的連線。對 Agent 開放資料庫前，應先設定連線 allowlist 與唯讀模式，而不是把所有資料庫寫入能力直接交出去。

## 核心特色

### 1. 查詢工作台

SQL 補完、語法檢查、歷史與儲存片段。

### 2. AI SQL

自然語言轉 SQL、解釋、最佳化與安全檢查。

### 3. 獨立 MCP

列連線、看資料表、執行 SQL，桌面安裝不包含 MCP executable。

### 4. 資料操作

資料格編輯、儲存前 SQL 預覽與多格式匯出。

### 5. 權限模式

MCP 支援 read_only、safe_write、high_risk_write 與連線範圍限制。

## 怎麼用

### 安裝

```bash
brew install --cask dbx
# 需要 Agent 連線時另外啟動 MCP Server
npx @dbx-app/mcp-server
```

### 建議流程

1. 先在桌面程式新增測試資料庫連線。
2. 在 Settings → MCP 設定連線 allowlist，預設採 Read only。
3. 再將獨立 MCP Server 加入 Agent 的 MCP 設定。
4. 對 AI 生成 SQL 先檢查查詢計畫與資料範圍，再決定是否執行。

### 限制與注意

- 約 25 MB 與資料庫數量是 README 的產品描述，並非本次實測。
- Web／Docker 預設金鑰與資料位於同一 data volume，整個 volume 外洩時不能靠此加密保護。
- 生產環境應另用 secret manager；備份資料庫也要保留可解密金鑰。

## 跟其他方案的關係

以下是用途對照，不是本次實測的效能排名。

| 方案 | 主要定位 | 選用考量 |
|---|---|---|
| DBX | 資料庫管理＋AI SQL＋MCP | 偏重統一操作介面 |
| [[OtterMind-Chat2DB\|Chat2DB]] | 另一個 AI 資料庫工具 | 比較實際驅動、模型與權限需求 |
| 資料庫原生 CLI | 直接執行原生查詢 | 適合腳本；沒有同等圖形工作台 |

## 相關概念

← [[data-analysis]] · [[MCP]]

## 來源

- [GitHub：t8y2/dbx](https://github.com/t8y2/dbx)
- README 快照：`raw/2026-09-30-t8y2-dbx.md`
- Metadata 快照：`raw/2026-09-30-t8y2-dbx.metadata.json`
- 文件與星數擷取日期：2026-09-30；上游功能與套件版本可能持續變動。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | [t8y2/dbx](https://github.com/t8y2/dbx) |
| Stars | 22,014 |
| License | Apache-2.0 |
| Language | Rust |
| 收錄日期 | 2026-09-30 |
