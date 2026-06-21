---
title: Awesome MCP Servers
slug: punkpeye-awesome-mcp-servers
created: 2024-11-30
updated: 2026-06-15
stars: 89151
language: Curated List
topics: [ai, mcp, awesome-list, mcp-servers]
---

# Awesome MCP Servers

> ⭐89.2k · MCP (Model Context Protocol) 伺服器策展列表，按類別收錄生產級和實驗性 MCP Server 實作。

## 快速導航
[[MCP|MCP 協議]] · [[browser-use-browser-use|Browser Use]] · [[agent-skills-ecosystem|Agent Skills 生態系]]

## 是什麼

Awesome MCP Servers 是由 punkpeye 維護的開源策展列表，專門收錄各種 Model Context Protocol (MCP) 伺服器實作。MCP 是 Anthropic 提出的開放協議，讓 AI 模型能透過標準化介面安全地連接本地和遠端資源。這個列表按功能類別分類，涵蓋資料庫、瀏覽器自動化、安全、開發工具、金融、知識管理等數十個領域。

列表與 Glama.ai 線上目錄同步，提供互動式搜尋和篩選。每個 MCP Server 標示了程式語言（Python、TypeScript、Go、Rust 等）、部署模式（本地、雲端、嵌入式）和支援平台（macOS、Windows、Linux）。這是 MCP 生態系最重要的參考資源之一，也是開發者探索可用工具的起點。

## 核心特色

- **分類完整**：涵蓋 30+ 大類，包括 Aggregators、Browser Automation、Databases、Developer Tools、Knowledge & Memory、Search & Data Extraction、Security 等
- **語言標示**：每個 Server 清楚標示程式語言（🐍 Python、📇 TypeScript、🏎️ Go、🦀 Rust 等）
- **部署模式**：區分本地服務（🏠）和雲端服務（☁️），讓開發者快速判斷適用場景
- **官方認證**：🎖️ 標記官方實作，方便辨識品質
- **線上目錄**：Glama.ai 提供互動式 Web 介面，支援搜尋、篩選和評分
- **社群活躍**：附 Discord 和 Reddit 社群連結，持續更新
- **多語支援**：README 提供繁體中文、簡體中文、日文、韓文等 6 種語言版本

## 怎麼用

```bash
# 瀏覽線上目錄（推薦）
# https://glama.ai/mcp/servers

# 克隆列表到本地
git clone https://github.com/punkpeye/awesome-mcp-servers.git

# 在 Claude Desktop 或其他 MCP Client 中配置 MCP Server
# 編輯 claude_desktop_config.json：
```

```json
{
  "mcpServers": {
    "example-server": {
      "command": "npx",
      "args": ["-y", "example-mcp-server"]
    }
  }
}
```

## 跟其他方案的關係

| 方案 | 類型 | 特色 | 適用場景 |
|------|------|------|----------|
| [[punkpeye-awesome-mcp-servers|Awesome MCP Servers]] | 策展列表 | 30+ 分類、語言標示、互動目錄 | 找 MCP Server |
| [[x1xhlol-system-prompts-and-models-of-ai-tools|System Prompts Collection]] | 策展列表 | 30+ AI 工具 system prompts | 研究 Prompt |
| [[ComposioHQ-awesome-claude-skills|Awesome Claude Skills]] | 策展列表 | 1000+ Claude Skills | 找 Agent Skill |
| [[mvanhorn-last30days-skill|last30days]] | 搜尋引擎 | 14 平台平行搜尋 | 找最新趨勢 |
| MCP 官方文件 | 規範 | 協議定義、SDK | 開發 MCP Server |

## 相關概念
← [[MCP|MCP 協議]] · [[agent-skills-ecosystem|Agent Skills 生態系]]

## 來源

- GitHub：https://github.com/punkpeye/awesome-mcp-servers
- 線上目錄：https://glama.ai/mcp/servers
- Raw 檔案：`knowledge-base/raw/2026-06-15-punkpeye-awesome-mcp-servers.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [punkpeye/awesome-mcp-servers](https://github.com/punkpeye/awesome-mcp-servers) |
| Stars | ⭐89,151 |
| License | MIT |
| Language | Curated List |
| 收錄日期 | 2026-06-15 |