---
title: FFF
slug: dmtrKovalenko-fff
created: 2026-06-02
updated: 2026-06-02
stars: 7176
language: Rust
topics: [filesearch, neovim, rust, mcp, ai-agent-toolkit]
---

# FFF

> ⭐7.2k · 專為人與 AI Agent 打造的檔案搜尋工具包，比 ripgrep/fzf 更快，frecency 排序 + 模糊容錯。

快速導航：[[MCP|MCP]] · [[coding-agent-toolkit|Coding Agent 工具]] · [[ChromeDevTools-chrome-devtools-mcp|Chrome DevTools MCP]] · [[AI-Agent|AI Agent]]

## 是什麼

FFF（Fast File Find）是一個用 Rust 寫的檔案搜尋工具包，同時服務人類使用者和 AI Agent。它提供容錯的路徑和內容搜尋、frecency 排序的檔案存取、背景監控器、以及輕量的記憶體內容索引。在任何需要搜尋超過一次的長期執行流程中，比 ripgrep 和 fzf 快得多。

專案最初是 Neovim 插件，後來發現很多 AI coding agent 和程式碼編輯器都需要同樣的東西：準確、快速、能當函式庫用的檔案搜尋。於是 fff 擴展成跨平台工具包，提供 MCP server、Pi 擴充功能和 Neovim 插件三種使用模式。

fff 的核心優勢在於它記住你常開的檔案、自動偵測模糊匹配、把程式碼定義分類標記、以及 git-aware 的檔案標註。對 AI Agent 來說，這意味著更少的搜尋回數、更少的 context 浪費、更快的回答。

## 核心特色

- **Frecency 記憶**：常開的檔案排名更高，從 git touch history 自動暖啟動
- **定義優先標記**：像程式碼定義的行在 Rust 端分類，不佔 regex 開銷
- **智慧大小寫 + 模糊容錯**：`IsOffTheRecord` 能找到 snake_case 變體；零匹配時自動模糊重試
- **Git-aware 標註**：Modified、untracked、staged 檔案都會標記，Agent 優先找到你正在改的東西
- **MCP Server**：跟 Claude Code、Codex、OpenCode、Cursor、Cline 等任何 MCP 客戶端都能用
- **Neovim 原生體驗**：lazy.nvim / vim.pack 支援，100k 檔案的 Linux kernel repo 也能秒搜

## 怎麼用

### MCP Server 安裝（推薦給 AI Agent）

Linux / macOS：

```bash
curl -L https://dmtrkovalenko.dev/install-fff-mcp.sh | bash
```

Windows (PowerShell)：

```powershell
irm https://raw.githubusercontent.com/dmtrKovalenko/fff.nvim/main/install-mcp.ps1 | iex
```

安裝完會印出對應客戶端的設定指引。連接後對 Agent 說 "use fff" 即可啟用 `ffgrep`、`fffind`、`fff-multi-grep` 工具。

建議在 `CLAUDE.md` 加入：
```markdown
For any file search or grep in the current git-indexed directory, use fff tools.
```

### Pi Agent 擴充功能

```bash
pi install npm:@ff-labs/pi-fff
```

### Neovim（lazy.nvim）

```lua
{
  'dmtrKovalenko/fff.nvim',
  build = function()
    require("fff.download").download_or_build_binary()
  end,
  opts = {},
  lazy = false,
  keys = {
    { "ff", function() require('fff').find_files() end, desc = 'FFFind files' },
    { "fg", function() require('fff').live_grep() end, desc = 'LiFFFe grep' },
  },
}
```

## 跟其他方案的關係

| 方案 | 類型 | Frecency | 模糊容錯 | Git-aware | MCP | 適合場景 |
|------|------|----------|---------|-----------|-----|---------|
| **FFF** | 搜尋工具包 | ✅ | ✅ 自動回退 | ✅ | ✅ | AI Agent + 編輯器 |
| ripgrep | CLI 搜尋 | ❌ | ❌ | ❌ | ❌ | 單次命令列搜尋 |
| fzf | 互動式篩選 | ❌ | ✅ | ❌ | ❌ | 終端互動選檔 |
| Telescope | Neovim 插件 | ❌ | ✅ | ❌ | ❌ | Neovim 模糊搜尋 |
| [[qmd|QMD]] | 搜尋 + RAG | ❌ | ✅ | ❌ | ✅ | 本地知識搜尋 |

← [[MCP|MCP]] · [[coding-agent-toolkit|Coding Agent 工具]] 相關概念

## 來源

- GitHub: [dmtrKovalenko/fff](https://github.com/dmtrKovalenko/fff)
- Raw 檔案: [[raw/2026-06-02-dmtrKovalenko-fff|原始資料]]

---

| 項目 | 值 |
|------|-----|
| GitHub | [dmtrKovalenko/fff](https://github.com/dmtrKovalenko/fff) |
| Stars | ⭐7,176 |
| License | MIT |
| Language | Rust |
| 收錄日期 | 2026-06-02 |