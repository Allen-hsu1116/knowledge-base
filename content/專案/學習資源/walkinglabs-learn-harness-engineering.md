---
title: Learn Harness Engineering
slug: walkinglabs-learn-harness-engineering
created: 2026-05-24
updated: 2026-05-24
stars: 1k+
language: Multiple (13 語言)
---

# Learn Harness Engineering

> ⭐1k+ · 專案式課程：學習打造讓 AI coding agent 可靠運作的環境、狀態管理、驗證和控制機制

## 快速導航

- 🧠 **Harness 核心概念** → [[harness-engineering]]（概念頁，已存在）
- 🤖 **AI Agent 架構** → [[AI-Agent]]（Harness 是 Agent 可靠性的關鍵）
- 📋 **Context Engineering** → [[context-engineering-basics]]（Harness 是 Context Engineering 的工程實踐）
- 🛠 **Coding Agent** → [[Coding-Agent-CLI]]（Claude Code / Codex 是主要目標工具）
- 🧑‍💼 **Agent 人格** → [[agent-persona]]（AGENTS.md 定義了 Agent 的認知框架）
- ⚡ **Agent Skills** → [[agent-skills-ecosystem]]（Skills 是 Harness 的一部分）

## 是什麼

Learn Harness Engineering 是一個**專案式課程**，教你如何為 AI coding agent 建構可靠的工作環境。

核心命題：**最強的模型，沒有好的 Harness，仍然會在真實工程任務上失敗。** Anthropic 做過對照實驗——同一個模型（Opus 4.5）、同一個提示詞（「建一個 2D retro game editor」），沒有 Harness 時花了 $9、20 分鐘做出了不能用的東西；有完整 Harness 時花了 $200、6 小時做出了真正可用的遊戲。模型沒變，Harness 改變了一切。

## 核心特色

### Harness 的五個子系統

1. **Instructions（指令）** — AGENTS.md / CLAUDE.md、feature_list、docs/。告訴 Agent 做什麼、按什麼順序。重點是**漸進揭露**（progressive disclosure），不是一個巨大檔案，而是讓 Agent 按需導航的結構。
2. **State（狀態）** — progress.md、feature_list.json、git log。追蹤做了什麼、正在做什麼、下一步是什麼。持久化到磁碟，下次 session 可以接續。
3. **Verification（驗證）** — 只有通過的測試才算證據。Agent 不能「宣稱完成」，必須跑過 tests、lint、type-check、smoke runs。
4. **Scope（範圍）** — 一次一個 feature。不能越界，不能半完成三件事，不能改 feature list 來隱藏未完成的工作。
5. **Session Lifecycle（回合生命週期）** — 初始化 → 工作 → 驗證 → 清理 → 留下 handoff note。每次 session 都要留下乾淨的可重啟狀態。

### 課程結構

- **12 堂講座**：每堂回答一個核心問題
  - L01：為什麼強模型仍然會在真實任務上失敗？
  - L02：Harness 到底是什麼？
  - L03：為什麼 repo 必須是唯一真相來源？
  - L04：為什麼一個巨大指令檔會失敗？
  - L05：為什麼長時間任務會失去連續性？
  - L06：為什麼初始化需要自己的一個階段？
  - L07：為什麼 Agent 會過度擴張和過早完成？
  - L08：為什麼 Feature List 是 Harness 的基本單元？
  - L09：為什麼 Agent 會太早宣稱勝利？
  - L10：為什麼端對端測試會改變結果？
  - L11：為什麼可觀測性屬於 Harness 內部？
  - L12：為什麼每個 session 都要留下乾淨狀態？

- **6 個專案**：在同一個 Electron 知識庫桌面 App 上迭代
  - P01：Prompt-only vs. rules-first 對照
  - P02：Agent-readable workspace 重構
  - P03：Multi-session continuity
  - P04：Runtime feedback & scope control
  - P05：Self-verification
  - P06：完整 Harness（capstone）

### 快速上手模板

```
YOUR PROJECT ROOT
├── AGENTS.md              ← Agent 的操作手冊
├── init.sh                ← 安裝 + 驗證 + 啟動
├── feature_list.json      ← 功能清單，哪些完成、哪些下一步
├── claude-progress.md     ← 每次 session 發生了什麼
└── src/                   ← 你的程式碼
```

課程還提供 `skills/harness-creator/` 技能，可以幾分鐘內為你的專案生成 production-grade Harness。

## 怎麼用

1. Clone repo：`git clone https://github.com/walkinglabs/learn-harness-engineering.git`
2. 本地預覽文件網站：`npm install && npm run docs:dev`
3. 閱讀講座，照著專案步驟實作
4. 需要 Claude Code 或 Codex 等 coding agent 來實際操作專案
5. 用 `skills/harness-creator/` 為自己的專案生成 Harness 模板

## 跟其他方案的關係

| 特性 | Learn Harness Engineering | OpenAI Harness Guide | Anthropic Harness Guide | Claude Code (內建) | Codex (內建) |
|------|--------------------------|---------------------|------------------------|-------------------|-------------|
| 完整課程 | ✅ 12 講 + 6 專案 | ❌ 指南文章 | ❌ 指南文章 | ❌ | ❌ |
| 實作專案 | ✅ 漸進式 capstone | ❌ | ❌ | ❌ | ❌ |
| 模板工具 | ✅ harness-creator skill | ❌ | ❌ | AGENTS.md | AGENTS.md |
| 多語言 | ✅ 13 語言 | 英文 | 英文 | — | — |
| 驗證框架 | ✅ 端對端測試 | 部分 | 部分 | 部分 | 部分 |
| Session 管理 | ✅ 完整生命週期 | ❌ | ✅ | 部分 | 部分 |

## 相關概念
← [[harness-engineering]] · [[AI-Agent]] · [[context-engineering-basics]] · [[Coding-Agent-CLI]] · [[agent-persona]] · [[agent-skills-ecosystem]]

## 來源

- 原始 README：`raw/2026-05-24-walkinglabs-learn-harness-engineering.md`
- GitHub：https://github.com/walkinglabs/learn-harness-engineering
- 文件網站：https://walkinglabs.github.io/learn-harness-engineering/

---

| 項目 | 資訊 |
|------|------|
| GitHub | <https://github.com/walkinglabs/learn-harness-engineering> |
| Stars | 1k+ |
| License | MIT |
| Language | Multiple（13 語言） |
| 收錄日期 | 2026-05-24 |