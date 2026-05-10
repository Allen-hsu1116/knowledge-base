---
source: https://github.com/Panniantong/Agent-Reach
date: 2026-05-05
tags: [agent, internet-access, scaffolding, python, mcp, cli]
---

# Agent Reach — AI Agent 互聯網能力腳手架

> 給 AI Agent 一鍵裝上互聯網能力。腳手架式設計，安裝一句話，覆蓋 15+ 平台。

**GitHub**: https://github.com/Panniantong/Agent-Reach
**Stars**: 18.7k | **Language**: Python | **License**: MIT

## 什麼是 Agent Reach

Agent Reach 是一個腳手架工具（scaffolding），不是框架。它幫 AI Agent 安裝和配置上游工具（twitter-cli、rdt-cli、yt-dlp、mcporter、gh CLI 等），讓 Agent 可以一鍵獲得讀取 Twitter、Reddit、YouTube、小紅書、Bilibili 等平台的能力。

## 支援平台

| 平台 | 上游工具 |
|------|----------|
| Web | Jina Reader |
| YouTube | yt-dlp |
| RSS | feedparser |
| GitHub | gh CLI |
| Twitter/X | twitter-cli |
| Bilibili | yt-dlp + bili-cli |
| Reddit | rdt-cli |
| 小紅書 | xhs-cli via mcporter |
| 抖音 | douyin-mcp-server via mcporter |
| LinkedIn | linkedin-scraper-mcp |
| 微信公眾號 | Exa + Camoufox |
| 微博 | built-in |
| V2EX | built-in |
| 雪球 | built-in |
| Podcast/小宇宙 | Whisper transcription |

## 核心特色

- **一鍵安裝**：支援 Claude Code、OpenClaw、Cursor 等 Agent
- **可插拔架構**：每個 channel 只檢查上游工具是否可用，Agent 直接呼叫上游工具
- **診斷工具**：`agent-reach doctor` 檢查安裝狀態
- **Cookie 認證**：本地存儲，chmod 600 保護
- **安全模式**：`--safe` 和 `--dry-run` 選項
- **SKILL.md 自動註冊**：讓 Agent 知道有哪些能力可用

## 安裝

```bash
pip install agent-reach
agent-reach install --env=auto
```

或告訴 Agent：
```
幫我安裝 Agent Reach：https://raw.githubusercontent.com/Panniantong/agent-reach/main/docs/install.md
```

## 設計哲學

Agent Reach 是腳手架，不是框架。每個 channel 檔案只檢查上游工具是否可用（check() 方法）。實際的讀取和搜尋由 Agent 直接呼叫上游工具完成——沒有封裝層。

## 相關主題

- [[openclaw|OpenClaw]] — Agent 框架
- [[opencli|OpenCLI]]
- [[MCP|MCP 協議]]

## 參考資料

- [GitHub - Panniantong/Agent-Reach](https://github.com/Panniantong/Agent-Reach)