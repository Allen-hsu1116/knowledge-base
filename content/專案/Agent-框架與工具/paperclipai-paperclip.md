---
title: Paperclip
slug: paperclipai-paperclip
created: 2026-08-11
updated: 2026-08-11
stars: 76485
language: TypeScript
topics: [AI Agent, Agent Orchestration, Multi-Agent, Governance, Budget Control]
---

# Paperclip

> ⭐76.5k · 開源 AI Agent 編排平台——把多個 AI Agent 組織成一家公司，有組織架構、預算、治理和目標對齊

## 快速導航

- 🧠 **AI Agent** → [[AI-Agent]]
- 🛠 **Agent 編排** → [[block-buzz]]
- 📐 **Harness Engineering** → [[harness-engineering]]
- 🔗 **MCP** → [[MCP]]

## 是什麼

Paperclip 是一個開源的 AI Agent 編排平台，核心定位是「管理 Agent 的公司」而非「Agent 框架」。它不告訴你怎麼建構 Agent，而是告訴你怎麼經營一家由 Agent 組成的公司——有組織架構、預算控制、治理審批和目標對齊。

如果你同時開了 20 個 Claude Code 終端機而搞不清楚誰在做什麼，Paperclip 就是為這個場景設計的。它把任務變成 ticket 系統，對話變成執行緒，session 跨重啟保留。Agent 帶自己的 prompt、模型和 runtime 來，Paperclip 管理它們工作的組織。

核心概念是「If it can receive a heartbeat, it's hired」——任何能接收心跳的 Agent（Claude Code、Codex、Cursor、Bash、HTTP webhook bot）都能被編入組織架構。

## 核心特色

- **四大支柱**：Agentic Task Manager（任務管理）、Org Chart for Agents（組織架構）、Agent Employee Training（員工培訓）、Agentic OS（基礎設施）——完整覆蓋 Agent 公司的運作需求
- **Bring Your Own Agent**：不限定特定 Agent 框架，Claude Code、Codex、Cursor、Bash、HTTP bot 都能接入，只要能接收 heartbeat 就能入職
- **Heartbeat 排程系統**：DB-backed 喚醒佇列，Agent 按排程自動醒來工作，支援 cron、webhook、API 觸發，含併發和 catch-up 策略
- **預算與成本控制**：按公司/Agent/專案/目標/Issue 追蹤 token 和成本，預算硬上限會自動暫停 Agent 並取消排隊工作
- **治理與審批**：Board approval workflow、執行策略含審查/批准階段、Agent 暫停/恢復/終止、完整稽核日誌
- **多公司隔離**：一個部署跑多個公司，完全資料隔離，可匯出/匯入整個組織（含 secret scrubbing）
- **持久 Agent 狀態**：Agent 跨 heartbeat 恢復同一任務上下文，不從頭開始

## 怎麼用

```bash
# 一鍵安裝（推薦）
curl -fsSLO https://paperclip.ing/install.sh
bash install.sh

# 非互動模式
curl -fsSL https://paperclip.ing/install.sh | bash -s -- --no-prompt --no-onboard
paperclipai onboard --yes

# 手動安裝
git clone https://github.com/paperclipai/paperclip.git
cd paperclip
pnpm install
pnpm dev  # 啟動 API server at http://localhost:3100

# 需求：Node.js 20+, pnpm 9.15+
# 內建嵌入式 PostgreSQL，無需額外設定
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心概念 | 特殊設計 |
|------|-------|------|----------|----------|
| **Paperclip** | ⭐76.5k | Agent 編排 | 多 Agent 公司管理 | 組織架構、預算、治理、多公司隔離 |
| [[block-buzz\|Buzz]] | ⭐11.9k | Agent 工作空間 | 人類+AI 共建 | Nostr relay、ACP harness |
| [[gastownhall-gastown\|Gas Town]] | ⭐16.4k | 多 Agent 工作空間 | The Mayor 協調 | Git-backed hooks、Beads tracking |
| [[different-ai-openwork\|OpenWork]] | ⭐17.9k | Agent 協作 | 跨 Agent 共享 Skills | 桌面 App、Marketplace |
| [[revfactory-harness\|Harness 工廠]] | ⭐3.9k | Agent 團隊 | Harness Engineering | Agent 團隊架構工廠 |

Paperclip 與其他 Agent 編排工具最大的不同是它的「公司」定位：不侷限於程式開發，而是用組織架構、預算和治理來管理 Agent 團隊。它不是 chatbot、不是 workflow builder、不是 prompt manager——它是 Agent 的作業系統。

## 相關概念

← [[AI-Agent]] · [[harness-engineering]] · [[block-buzz]] · [[MCP]]

## 來源

- GitHub: <https://github.com/paperclipai/paperclip>
- 原始 README: `raw/2026-08-11-paperclipai-paperclip.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [paperclipai/paperclip](https://github.com/paperclipai/paperclip) |
| Stars | ⭐76,485 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-08-11 |