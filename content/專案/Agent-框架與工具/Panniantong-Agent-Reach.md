---
title: Agent Reach
slug: Panniantong-Agent-Reach
created: 2026-05-10
updated: 2026-05-10
stars: 18,700
language: zh-TW
---

# Agent Reach

> ⭐18,700 · AI Agent 的網路能力腳手架 — 一鍵裝上 15+ 平台的存取能力，不改框架，只做安裝設定。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（Agent Reach 讓 Agent 從「只能本地操作」變成「能上網」）
- 🔌 **MCP** → [[MCP]]（Agent Reach 的通道可透過 MCP 整合）
- 🛠️ **AI Skills** → [[AI-Skills]]（Agent Reach 自動註冊 SKILL.md 讓 Agent 知道自己有哪些能力）

## 是什麼

Agent Reach 不是框架，而是腳手架（scaffolding）。它不解決「Agent 怎麼思考」，而是解決「Agent 怎麼上網」— 一鍵安裝和設定 twitter-cli、yt-dlp、gh CLI 等上游工具，讓 Agent 能讀 Twitter、Reddit、YouTube、小紅書、B 站等 15+ 平台。

Agent Reach 的設計哲學是「不封裝上游工具」：每個 channel 檔案只做安裝和健康檢查（`check()` 方法），Agent 直接呼叫上游工具，沒有額外的包裝層。

## 核心特色

- **15+ 平台覆蓋**：Web（Jina Reader）、YouTube（yt-dlp）、RSS（feedparser）、GitHub（gh CLI）、Twitter/X（twitter-cli）、B 站（yt-dlp + bili-cli）、Reddit（rdt-cli）、小紅書（xhs-cli via mcporter）、抖音、LinkedIn、微信公眾號、微博、V2EX、雪球、Podcast（Whisper）
- **腳手架設計**：不封裝上游工具，只做安裝和健康檢查（`check()` 方法），Agent 直接呼叫上游工具
- **SKILL.md 自動註冊**：安裝後 Agent 自動知道有哪些網路能力
- **安全設計**：憑證本地儲存（chmod 600）、safe mode、dry-run
- **即插即用通道架構**：每個平台是獨立 channel，可以任意替換上游工具
- **診斷工具**：`agent-reach doctor` 一鍵檢查所有平台安裝狀態

## 怎麼用

```bash
# 安裝
pip install agent-reach
agent-reach install --env=auto

# 診斷
agent-reach doctor

# 安全模式
agent-reach install --safe --dry-run
```

或直接叫 Agent 安裝：
```
幫我安裝 Agent Reach：https://raw.githubusercontent.com/Panniantong/agent-reach/main/docs/install.md
```

## 跟其他方案的關係

Agent Reach 解決的是「Agent 能力邊界」問題。跟 [[jackwener-OpenCLI]] 互補：
- **Agent Reach**：裝工具，讓 Agent 能存取各平台
- **OpenCLI**：把網站變成確定性 CLI 指令

兩者都支援 MCP 和 SKILL.md，可以疊加使用。

| 專案 | 定位 | 關係 |
|------|------|------|
| [[jackwener-OpenCLI]] | CLI 框架 | 互補：Reach 裝工具，OpenCLI 做包裝 |
| [[MCP]] | 通信協議 | Agent Reach 的通道可透過 MCP 整合 |
| Browserbase | 瀏覽器自動化 | Browserbase 是雲端瀏覽器，Reach 側重本地工具安裝 |

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[AI-Skills]]

## 來源

- raw/2026-05-05-agent-reach.md

---

- **GitHub**: https://github.com/Panniantong/Agent-Reach
- **Stars**: ⭐18,700
- **License**: MIT
- **收錄日期**: 2026-05-05

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/Panniantong/Agent-Reach |
| **Stars** | ⭐18,700 |
| **收錄日期** | 2026-05-10 |
