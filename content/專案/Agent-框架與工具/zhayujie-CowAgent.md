---
title: CowAgent
slug: zhayujie-CowAgent
created: 2026-06-28
updated: 2026-06-28
stars: 45643
language: Python
topics:
  - ai-agent
  - llm
  - mcp
  - harness
  - skills
  - multi-agent
  - claude-code
  - deepseek
  - openclaw
---

# CowAgent

> ⭐45643 · 開源超級 AI 助理，Agent Harness 工程參考實作 — 規劃、記憶、知識庫、自演化一站搞定

## 快速導航

- 🧠 **Harness Engineering** → [[harness-engineering|Harness Engineering]]
- 🤖 **AI Agent** → [[AI-Agent]]
- 🔌 **MCP** → [[MCP]]

## 是什麼

CowAgent（前身為 chatgpt-on-wechat）是一個開源的超級 AI 助理，定位為 Agent Harness 工程的參考實作。它能主動規劃任務、控制電腦和外部服務、建立和運行 Skills、建構個人知識庫和長期記憶，並透過自演化機制隨日常使用不斷成長。

CowAgent 的架構是一個完整的 Agent Harness：訊息從 Channels（通道）流入，Agent Core（代理核心）基於記憶、知識和可用工具/技能進行規劃和推理，Models（模型）生成回應，再透過原通道送回。每一層都是解耦的、可獨立擴展的。這種設計讓你可以只替換某一層（例如換 LLM 供應商）而不影響其他部分。

CowAgent 支援多種 LLM（Claude、GPT、Gemini、DeepSeek、Qwen、GLM、Kimi、MiniMax、Doubao 等），可透過 Web 控制台一鍵切換。部署方面提供一鍵安裝腳本、Docker 和伺服器三種模式，能在個人電腦或伺服器上 24/7 運行，並整合 Web、微信、飛書、釘釘、企業微信、QQ、公眾號、Telegram、Slack 等通道。

## 核心特色

- **主動規劃**：分解複雜任務，逐步執行，在工具間循環直到目標達成
- **三層記憶架構**：context → daily → core 三層記憶，自動 Deep Dream 蒸餾，混合關鍵詞 + 向量檢索
- **知識庫自建**：自動將結構化知識整理成 Markdown wiki，建構可視化瀏覽的知識圖譜
- **自演化**：自動回顧對話以改進技能、追蹤未完成任務、鞏固記憶和知識，透過日常使用持續成長
- **Skill Hub**：一鍵從 Skill Hub、GitHub、ClawHub 安裝技能，或透過自然語言對話建立自訂技能
- **10+ 內建工具**：檔案 I/O、終端機、瀏覽器、排程器、記憶檢索、網頁搜尋等，原生 MCP 整合
- **9+ 通道整合**：Web、微信、飛書、釘釘、企業微信、QQ、公眾號、Telegram、Slack
- **多模態**：文字、圖片、語音、檔案的一等公民支援 — 辨識、生成、傳送

## 怎麼用

```bash
# 一鍵安裝（Linux / macOS）
bash <(curl -fsSL https://cdn.link-ai.tech/code/cow/run.sh)

# Windows (PowerShell)
irm https://cdn.link-ai.tech/code/cow/run.ps1 | iex

# Docker 部署
curl -O https://cdn.link-ai.tech/code/cow/docker-compose.yml
docker compose up -d

# 安裝完成後存取 Web 控制台設定 LLM 和通道
# 文件：https://docs.cowagent.ai/
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **CowAgent** | ⭐45.6k | Agent Harness | 三層記憶 + 自演化 | 9+ 通道整合 |
| [[hermes-agent]] | ⭐142k | Agent Harness | 跨 session 記憶 | 學習閉環 |
| [[harness-engineering\|Harness Engineering]] | — | 方法論 | 認知框架 + 工具邊界 | CowAgent 是其參考實作 |
| [[CherryHQ-cherry-studio\|Cherry Studio]] | ⭐47.3k | AI 客戶端 | 多模型 | 300+ 助手 |
| [[Mintplex-Labs-anything-llm\|AnythingLLM]] | ⭐62k | 本地 AI 應用 | RAG + Agent | 多用戶 |

← [[harness-engineering|Harness Engineering]] · [[AI-Agent]] · [[MCP]] · [[AI-Skills]]


## 相關概念


← [[harness-engineering]] · [[AI-Agent]] · [[MCP]]

## 來源

- GitHub: <https://github.com/zhayujie/CowAgent>
- 原始 README: `raw/2026-06-28-zhayujie-CowAgent.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/zhayujie/CowAgent |
| Stars | ⭐45643|
| License | MIT |
| 收錄日期 | 2026-06-28 |
