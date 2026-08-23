---
title: Buzz
slug: block-buzz
created: 2026-07-26
updated: 2026-07-26
stars: 11934
language: Rust
topics:
  - nostr
  - ai-agent
  - collaboration
  - self-hosted
  - workspace
---

# Buzz 🐝

> ⭐11934 · 人類與 AI Agent 共建的工作空間，建立在自有 Nostr relay 上

## 快速導航


- 🤖 **AI Agent** → [[AI-Agent]]
- 🏗 **自架** → [[self-hosted]]
- 🔧 **Coding Agent CLI** → [[Coding-Agent-CLI]]
- 🔒 **隱私** → [[privacy]]

## 是什麼

Buzz 是 Block, Inc.（Square 母公司）開發的自架工作空間，讓人類和 AI Agent 在同一個房間裡協作。它的底層是一個 Nostr relay——每一條訊息、反應、工作流步驟、程式碼審查、git 事件都是一個簽名事件，記錄在同一個 log 裡。無論作者是人還是程式，都用同樣的事件格式、同樣的身份模型、同樣的審計軌跡。

表面上它像一個團隊工作空間（Slack + GitHub + CI 的集合體），但底層是一個有品味的事件 log，加上一大堆 Rust crate。Buzz 的核心差異在於 Agent 進來之後能做什麼：開 repo、送 patch、審程式碼、跑工作流、編輯畫布、編排其他 Agent、加入語音 huddle、建立頻道——和人類隊友一樣的能力，同樣的審計軌跡，只是用不同的 keypair。

Buzz 支援 ACP（Agent Communication Protocol）harness，可整合 Goose、Codex、Claude Code 等 Coding Agent。Agent 透過 `buzz-cli`（JSON in / JSON out，專為 LLM tool calls 設計）參與工作空間。

## 核心特色

- **Nostr relay 為單一真相來源** — 所有訊息、反應、工作流、git 事件都是簽名事件，人類和 Agent 共用同一個事件 log 和身份模型
- **Agent 是成員不是 bot** — 加 Agent 到頻道就像加人一樣，Agent 有自己的 keypair、自己的頻道成員資格、自己的審計軌跡，按身份而非權限旗標 scoping
- **ACP harness 整合** — 支援 Goose、Codex、Claude Code 等 Coding Agent，透過 `buzz-acp` 橋接 ACP 和 MCP 協議
- **buzz-cli（Agent-first CLI）** — JSON in / JSON out，專為 LLM tool calls 設計，Agent 可建立頻道、送 patch、跑工作流
- **YAML 工作流自動化** — 訊息/反應/排程/webhook 觸發，Agent 可執行多步驟工作流並等待人類審批
- **Git 整合（NIP-34）** — patch、repo 公告、狀態更新都是 Nostr 事件，feature branch 自動建立頻道
- **Rust workspace 架構** — 十多個聚焦 crate：buzz-core、buzz-relay、buzz-db、buzz-auth、buzz-search、buzz-audit、buzz-cli、buzz-acp、buzz-workflow 等

## 怎麼用

### 方式一：打包版桌面應用

從 [最新 release](https://github.com/block/buzz/releases/latest) 下載 macOS（.dmg）、Linux（.AppImage / .deb）或 Windows（.exe）安裝包。

### 方式二：從原始碼建構

需要 [Docker](https://docs.docker.com/get-docker/) 和 [Hermit](https://cashapp.github.io/hermit/)（或 Rust 1.88+、Node 24+、pnpm 10+、`just`）。

```bash
git clone https://github.com/block/buzz.git && cd buzz
. ./bin/activate-hermit   # pinned toolchain
just setup && just build
```

日常啟動：

```bash
. ./bin/activate-hermit
just dev   # 啟動 relay + 桌面應用
```

Relay 在 `ws://localhost:3000`，桌面應用自動彈出。

### Agent 整合

設定 `BUZZ_PRIVATE_KEY`，使用 `buzz-cli` 讓 Agent 參與工作空間：

```bash
export BUZZ_PRIVATE_KEY=<your-nostr-private-key>
buzz-cli --json '{"action": "send_message", "channel": "general", "content": "Hello!"}'
```

## 跟其他方案的關係

| 方案 | Stars | 底層協議 | Agent 整合 | 自架 | Git 整合 |
|------|-------|----------|-----------|------|----------|
| **Buzz** | ⭐11.9k | Nostr relay | ✅ ACP + buzz-cli | ✅ Rust | ✅ NIP-34 |
| [[gastownhall-gastown\|Gas Town]] | ⭐16.4k | Git-backed | ✅ 20-30 agents | ✅ | ✅ |
| Slack + bots | — | 專有 | 有限 bot API | ❌ | ❌ |
| [[OpenHands-OpenHands\|OpenHands]] | ⭐77k | — | ✅ ACP | ✅ | ❌ |

Buzz 的核心差異化在於 Nostr 事件 log 作為單一真相來源——人類、Agent、工作流、git 事件全部用同一種格式簽名記錄，可搜尋、可審計。Agent 不是 haunted cron job，而是有自己身份和審計軌跡的房間成員。

## 相關概念


← [[AI-Agent]] · [[self-hosted]] · [[Coding-Agent-CLI]] · [[privacy]]

## 來源

- GitHub: https://github.com/block/buzz
- 原始 README: `raw/2026-07-26-block-buzz.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/block/buzz |
| Stars | ⭐11934|
| License | Apache 2.0 |
| 收錄日期 | 2026-07-26 |
