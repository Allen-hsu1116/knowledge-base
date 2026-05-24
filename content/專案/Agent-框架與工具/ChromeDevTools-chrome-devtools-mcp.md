# chrome-devtools-mcp

- **Repo**: [ChromeDevTools/chrome-devtools-mcp](https://github.com/ChromeDevTools/chrome-devtools-mcp)
- **Stars**: 40k ⭐
- **Language**: TypeScript
- **Added**: 2026-05-22

## 一句話

Chrome DevTools 的 MCP server——讓 coding agent 直接控制活瀏覽器，做效能分析、网络调试和可靠自動化。

## 摘要

40k star，Google 官方出品。將 Chrome DevTools 能力暴露為 MCP server，讓 Claude Code、Cursor、Copilot、Codex、Antigravity 等 AI coding agent 可以：錄製 trace 取得效能洞察、分析網路請求、截圖、檢查 console（含 source-mapped stack trace）、用 puppeteer 做可靠自動化。支援 `--slim` 模式精簡工具集，也提供 CLI 模式。預設收集匿名使用統計，可 `--no-usage-statistics` 關閉。

## 為什麼值得關注

- Google 官方 DevTools MCP，穩定度與維護承諾最高
- 直接打通 agent → 瀏覽器調試通路，debug 不再靠猜
- 支援 Claude Code plugin 安裝（含 skills），是目前 MCP 生態的重要基礎設施

## 相關概念

- [[MCP]] — 作為 MCP server 的標準封裝與跨 client 配置
- [[Coding-Agent-CLI]] — agent 透過 DevTools 對瀏覽器做 CLI 級調試
- [[AI-Agent]] — agent + 瀏覽器的整合模式

_此頁由 daily-llm-trending 自動維護_