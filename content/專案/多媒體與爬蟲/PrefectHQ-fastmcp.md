---
title: FastMCP
slug: PrefectHQ-fastmcp
created: 2026-07-21
updated: 2026-07-21
stars: 26530
language: Python
topics:
  - mcp
  - mcp-servers
  - mcp-clients
  - mcp-tools
  - model-context-protocol
  - llms
  - agents
  - fastmcp
  - python
---

# FastMCP

> ⭐26.5k · 最快速、最 Pythonic 的 MCP Server/Client 建構框架，由 Prefect 團隊打造

快速導航：[[MCP]] · [[AI-Skills]] · [[LLM]]

## 是什麼

FastMCP 是由 [Prefect](https://www.prefect.io/) 團隊開發的開源 Python 框架，專門用於建構 Model Context Protocol（MCP）的伺服器與客戶端。MCP 是連接 LLM 與外部工具和資料的標準協議，而 FastMCP 讓開發者能用最少的程式碼完成從原型到生產環境的全過程。它的核心理念是「用一個 Python 函式宣告一個工具」，框架自動處理 schema 生成、驗證、文檔生成等繁瑣工作。

FastMCP 1.0 的核心設計曾被納入官方 MCP Python SDK（2024 年），現在獨立維護的版本每天被下載超過百萬次。據官方統計，某些版本的 FastMCP 驅動了跨語言約 70% 的 MCP 伺服器。這使得 FastMCP 成為 MCP 生態系中最具影響力的框架之一。

FastMCP 圍繞三大支柱運作：**Servers**（將 Python 函式包裝成 MCP 工具、資源、提示）、**Clients**（連接任何本地或遠端 MCP 伺服器，完整支援協議生命週期）、以及 **Apps**（為你的工具提供直接在對話中渲染的互動式 UI）。此外，Prefect 還提供商業版企業級 MCP Gateway——Horizon，支援從 GitHub 部署、SSO 認證、RBAC、審計日誌等進階功能。

## 核心特色

- **零樣板程式碼**：用 `@mcp.tool` 裝飾器標記 Python 函式，schema、驗證、文檔全部自動生成。開發者只需關注業務邏輯
- **完整協議支援**：Servers 和 Clients 都完整實作 MCP 協議規範，包括傳輸協商、認證、協議生命週期管理
- **Apps 互動式 UI**：獨特的 Apps 功能讓工具在 LLM 對話中直接渲染互動式 UI，超越了傳統純文字工具呼叫
- **生產就緒**：FastMCP 1.0 已被納入官方 MCP Python SDK，每天百萬次下載量驗證了其穩定性與社群信任
- **Horizon 企業版**：配套的 Prefect Horizon 提供 Git 部署、分支預覽、即時回滾、私有 Registry、SSO + RBAC、審計日誌
- **llms.txt 支援**：完整文檔以 llms.txt 格式提供，LLM 可以直接消費，適合 AI Agent 自動查閱

## 怎麼用

安裝 FastMCP（推薦使用 uv）：

```bash
uv pip install fastmcp
```

快速建立一個 MCP Server：

```python
from fastmcp import FastMCP

mcp = FastMCP("Demo 🚀")

@mcp.tool
def add(a: int, b: int) -> int:
    """Add two numbers"""
    return a + b

if __name__ == "__main__":
    mcp.run()
```

連接 MCP Server（Client 端）：

```python
from fastmcp import Client

async with Client("http://localhost:8000") as client:
    result = await client.call_tool("add", {"a": 1, "b": 2})
    print(result)
```

從 MCP Python SDK 升級：

```bash
pip install --force-reinstall fastmcp
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **FastMCP** | ⭐26.5k | MCP 框架 | 零樣板 Python API | Apps 互動式 UI |
| [[punkpeye-awesome-mcp-servers\|Awesome MCP Servers]] | ⭐89.2k | MCP 策展列表 | 30+ 分類目錄 | 社群策展 |
| [[DeusData-codebase-memory-mcp\|Codebase Memory MCP]] | ⭐8.2k | MCP Server | 程式碼知識圖譜 | 158 語言 |
| [[ChromeDevTools-chrome-devtools-mcp\|Chrome DevTools MCP]] | ⭐46.7k | MCP Server | 瀏覽器自動化 | DevTools 整合 |

← [[MCP]] · [[LLM]] · [[AI-Skills]]

## 來源

- GitHub: <https://github.com/PrefectHQ/fastmcp>
- 官方文檔: <https://gofastmcp.com>
- 原始 README: `raw/2026-07-21-PrefectHQ-fastmcp.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [PrefectHQ/fastmcp](https://github.com/PrefectHQ/fastmcp) |
| Stars | ⭐26,530 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-07-21 |