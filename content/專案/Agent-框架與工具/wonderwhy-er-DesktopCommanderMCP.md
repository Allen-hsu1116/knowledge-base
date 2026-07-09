---
title: Desktop Commander MCP
slug: wonderwhy-er-DesktopCommanderMCP
created: 2026-07-09
updated: 2026-07-09
stars: 6375
language: TypeScript
topics: [agent, ai, code-analysis, code-generation, gemini-cli-extension, mcp, terminal-ai, terminal-automation, vibe-coding]
---

# Desktop Commander MCP

> ⭐6.4k · MCP Server，讓 AI 擁有終端機控制、檔案系統搜尋、diff 編輯能力，支援 Claude、ChatGPT、Gemini 等多種 AI 客戶端

## 快速導航

- 🔧 **MCP 協議** → [[MCP]]（Model Context Protocol 標準）
- 🤖 **AI Agent** → [[AI-Agent]]（Agent 連接外部工具的核心概念）
- 🖥️ **沙箱** → [[sandbox]]（Docker 隔離執行環境）
- 🔍 **程式碼智慧** → [[code-intelligence]]（ripgrep 搜尋、AST 分析）

## 是什麼

Desktop Commander MCP 是一個 Model Context Protocol (MCP) 伺服器，讓 AI 助手（如 Claude Desktop、ChatGPT、Gemini）獲得終端機控制、檔案系統操作和 diff 編輯能力。它建立在 MCP Filesystem Server 之上，額外提供搜尋取代檔案編輯功能。

它把所有開發工具放進一個聊天視窗：執行終端指令、管理行程、讀寫檔案（含 Excel/PDF/DOCX）、記憶體內執行 Python/Node.js/R 程式碼、搜尋檔案內容、以及對程式碼做精確的搜尋取代。還提供遠端 MCP 支援，讓 ChatGPT 等網頁 AI 也能透過遠端連接使用。

## 核心特色

- **終端機控制與行程管理** — 執行終端指令含輸出串流、指令逾時和背景執行、列出與終結行程、長指令 session 管理、行程輸出分頁（offset/length 控制）
- **完整檔案系統操作** — 讀寫文字/Excel/PDF/DOCX、遞迴目錄列表、負偏移檔案讀取（類 Unix tail）、移動檔案目錄、檔案內容搜尋
- **記憶體內執行程式碼** — Python、Node.js、R 直接在記憶體中執行，不需存檔。即時分析 CSV/JSON/Excel 檔案
- **Native Excel/PDF/DOCX 支援** — 讀寫編輯 .xlsx/.xls/.xlsm、PDF 文字提取與生成、DOCX 外科式 XML 編輯與 Markdown 轉 DOCX
- **遠端 AI 控制** — 透過 Remote MCP 協議，ChatGPT、Claude 網頁版等 AI 服務也能使用
- **安全加固** — Symlink 遍歷防護、指令黑名單含繞過保護、Docker 隔離全沙箱、完整稽核日誌（10MB 輪替）

## 怎麼用

**安裝（npx，自動更新）：**

```bash
npx @wonderwhy-er/desktop-commander@latest setup
```

**安裝（bash 腳本，macOS）：**

```bash
curl -fsSL https://raw.githubusercontent.com/wonderwhy-er/DesktopCommanderMCP/refs/heads/main/install.sh | bash
```

**手動配置（加入 claude_desktop_config.json）：**

```json
{
  "mcpServers": {
    "desktop-commander": {
      "command": "npx",
      "args": ["-y", "@wonderwhy-er/desktop-commander@latest"]
    }
  }
}
```

**解除安裝：**

```bash
npx @wonderwhy-er/desktop-commander@latest remove
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 終端控制 | 檔案操作 | 多格式支援 | 安全 |
|------|-------|------|---------|---------|-----------|------|
| **Desktop Commander MCP** | ⭐6.4k | MCP Server | ✅ 互動式 | ✅ 完整 | ✅ Excel/PDF/DOCX | ✅ Docker 沙箱 |
| [[ChromeDevTools-chrome-devtools-mcp\|Chrome DevTools MCP]] | ⭐40k | MCP Server | 瀏覽器 | ❌ | ❌ | — |
| [[basicmachines-co-basic-memory\|Basic Memory]] | ⭐3.2k | MCP Server | ❌ | Markdown | ❌ | — |
| [[DeusData-codebase-memory-mcp\|Codebase Memory MCP]] | ⭐8.2k | MCP Server | ❌ | tree-sitter | ❌ | — |

Desktop Commander MCP 是目前功能最全面的本地 MCP Server 之一，同時涵蓋終端控制、檔案系統、多格式文件讀寫和程式碼搜尋取代。其他 MCP Server 通常只專注單一領域（瀏覽器、記憶、程式碼分析），Desktop Commander 把開發者日常所需的工具全部整合到一個 MCP 通道中。

## 相關概念

← [[MCP]] · [[AI-Agent]] · [[sandbox]] · [[code-intelligence]] · [[Coding-Agent-CLI]]

## 來源

- GitHub: <https://github.com/wonderwhy-er/DesktopCommanderMCP>
- 原始 README: `raw/2026-07-09-desktop-commander-mcp.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [wonderwhy-er/DesktopCommanderMCP](https://github.com/wonderwhy-er/DesktopCommanderMCP) |
| Stars | ⭐6,375 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-07-09 |