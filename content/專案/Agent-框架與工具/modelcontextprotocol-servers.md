---
title: Model Context Protocol Servers
slug: modelcontextprotocol-servers
created: 2026-10-01
updated: 2026-10-01
stars: 90816
language: zh-TW
topics: [MCP, AI-Agent, Knowledge-Graph]
---

# Model Context Protocol Servers

> ⭐90.8k · MCP steering group 維護的協議參考伺服器，供學習 SDK 與工具整合。

## 快速導航

- [[MCP]] — 工具、資源與提示的通訊標準。
- [[AI-Agent]] — 由客戶端決定如何呼叫外部能力。
- [[Knowledge-Graph]] — Memory server 的持久記憶形式。

## 是什麼

這是 Model Context Protocol 的參考實作集合，展示 MCP SDK 如何把工具與資料來源連接到 LLM 應用。其定位不是單一聊天產品，也不是完整 Agent 執行框架；各 server 提供特定能力，實際使用仍需搭配支援 MCP 的客戶端。

目前 README 明確把 repository 的範圍限縮為 steering group 維護的少量參考伺服器。若目的是尋找可用的第三方整合，官方指向 MCP Registry，而非要求使用者從此 repo 找齊所有服務。

官方特別警告：這些是教育與示範用途的 reference implementations，不能直接視為 production-ready。部署者仍須依威脅模型安排權限、隔離、資料保護與工具呼叫審批；MCP 協議本身不是安全沙箱。

## 核心特色

- **Everything**：同時示範 prompts、resources、tools，適合協議測試。
- **Fetch 與 Filesystem**：分別展示網頁取得／轉換及帶可配置存取控制的檔案操作。
- **Git**：提供 Git repository 的讀取、搜尋與操作工具。
- **Memory**：使用知識圖譜保存持久記憶。
- **Sequential Thinking 與 Time**：示範思考序列工具及時區換算。
- **分語言啟動方式**：TypeScript server 可用 npx；Python server 可用 uvx 或 pip。
- **封存邊界清楚**：舊 GitHub、PostgreSQL 等參考 server 已列為 archived，不能因舊範例仍在 README 就當成活躍維護。

## 怎麼用

### 安裝並啟動參考 server

先準備 Node.js/npm，或依 Python server 選用 uv；以下是 README 的啟動方式：

```bash
# npx 取得套件並啟動 Memory server
npx -y @modelcontextprotocol/server-memory

# 或由 uvx 取得並啟動 Git server
uvx mcp-server-git
```

單獨開啟程序不等於完成 LLM 整合。應把命令交由 MCP client 啟動；例如 Memory 設定：

```json
{
  "mcpServers": {
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"]
    }
  }
}
```

### 使用前檢查

- Windows 的 npx 範例需依 README 使用 `cmd /c` 包裝。
- Filesystem 只授予必要路徑；Git 操作先用測試 repository 驗證。
- 正式部署應審查套件版本與各子目錄說明，避免讓即時下載命令自動採用未審核更新。
- 本頁僅收錄官方用法，未在收錄環境安裝或運行這些 server。

## 跟其他方案的關係

| 方案 | 主要定位 | 選擇時機 |
| --- | --- | --- |
| 本專案 | 官方參考實作與 SDK 使用示範 | 學習 MCP 或測試 client |
| [[punkpeye-awesome-mcp-servers\|Awesome MCP Servers]] | 社群 server 策展列表 | 依領域探索整合 |
| MCP Registry | 官方 README 推薦的已發布 server 目錄 | 尋找已發布服務 |
| [[PrefectHQ-fastmcp\|FastMCP]] | MCP server／client 建構框架 | 開發自己的服務 |

上述是用途比較，不代表速度、安全性或品質排名。

## 相關概念

← [[MCP]] · [[AI-Agent]] · [[Knowledge-Graph]]

## 來源

- [GitHub](https://github.com/modelcontextprotocol/servers)
- [README](https://github.com/modelcontextprotocol/servers/blob/main/README.md)
- [LICENSE：授權過渡說明](https://github.com/modelcontextprotocol/servers/blob/main/LICENSE)
- 原始快照：`raw/2026-10-01-modelcontextprotocol-servers.md`
- Metadata：`raw/2026-10-01-modelcontextprotocol-servers.metadata.json`

---

| 欄位 | 資料 |
| --- | --- |
| GitHub | https://github.com/modelcontextprotocol/servers |
| Stars | 90,816（2026-10-01 快照） |
| License | 新程式貢獻 Apache-2.0；未完成再授權的既有貢獻保留 MIT；非規範文件貢獻 CC-BY-4.0 |
| Language | TypeScript（GitHub 主要語言；包含其他語言 server） |
| 收錄日期 | 2026-10-01 |
