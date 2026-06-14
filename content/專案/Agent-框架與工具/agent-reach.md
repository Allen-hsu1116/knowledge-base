---
title: Agent Reach
slug: agent-reach
aliases:
  - Agent Reach
stars: —
updated: 2026-06-14
language: zh-TW
---

# Agent Reach

> 詳見 [[Panniantong-Agent-Reach]]

## 快速導航

- ⚡ [[AI-Agent]] · [[agent-skills-ecosystem]] · [[MCP]]

## 是什麼

Agent Reach 是一個腳手架（scaffolding）工具，讓 AI Agent 一鍵裝上互聯網能力。它不是框架，而是安裝配置工具——負責安裝和配置上游工具（twitter-cli、rdt-cli、yt-dlp、mcporter、gh CLI 等），讓 Agent 可以用一句指令讀取 Twitter、Reddit、YouTube、小紅書、Bilibili 等 15+ 平台的內容。

核心理念是**腳手架式設計**：Agent Reach 只負責檢查和安裝上游工具，實際的讀取和搜尋由 Agent 直接呼叫上游工具完成，不增加中間層。

## 核心特色

- **一鍵安裝** — AI Agent（Claude Code、OpenClaw、Cursor 等）一句指令完成所有設定
- **15+ 平台覆蓋** — Web/Jina、YouTube、RSS、GitHub、Twitter/X、Bilibili、Reddit、小紅書、抖音、LinkedIn、微信公眾號、微博、V2EX、雪球、Podcast/小宇宙
- **可插拔架構** — 每個頻道是獨立模組，可自由替換上游工具
- **SKILL.md 自動註冊** — 安裝後 Agent 自動獲知可用工具
- **安全設計** — Cookie 認證本地存儲（chmod 600）、Safe mode、Dry-run 模式
- **診斷工具** — `agent-reach doctor` 檢查安裝狀態

## 怎麼用

### 安裝

```bash
# 方式一：告訴 AI Agent
幫我安裝 Agent Reach：https://raw.githubusercontent.com/Panniantong/agent-reach/main/docs/install.md

# 方式二：pip 安裝
pip install agent-reach
agent-reach install --env=auto

# 安全模式
agent-reach install --safe

# 預覽模式（不實際安裝）
agent-reach install --dry-run
```

### 使用範例

安裝完成後，Agent 可以直接呼叫各平台工具：
- 讀取 Twitter 時間線
- 搜尋 Reddit 討論
- 下載 YouTube 影片資訊
- 抓取小紅書內容
- 查詢 GitHub 倉庫

## 跟其他方案的關係

| 特性 | Agent Reach | Browser Use | MCP Servers | CLI-Anything |
|------|-----------|-------------|-------------|-------------|
| 定位 | 腳手架/安裝工具 | 瀏覽器自動化 | 工具協議 | CLI 生成框架 |
| 目標 | 給 Agent 互聯網能力 | 給 Agent 瀏覽器能力 | 標準化工具介面 | 把 GUI 軟體包成 CLI |
| 平台數 | 15+ | 瀏覽器 | 視 server 而定 | 18+ |
| 安裝方式 | 一鍵 pip | 需要 browser | 各自安裝 | 一鍵生成 |
| 代理人 | ❌ 不做代理 | ✅ | ✅ | ❌ |
| SKILL.md | ✅ | ❌ | ❌ | ✅ |

## 相關概念

← [[AI-Agent]] · [[agent-skills-ecosystem]] · [[MCP]] · [[Panniantong-Agent-Reach]]

## 來源

- [原始資料](../raw/2026-05-05-agent-reach.md)
- GitHub: https://github.com/Panniantong/Agent-Reach