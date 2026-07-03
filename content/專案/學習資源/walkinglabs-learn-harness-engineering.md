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
- ⚡ **Agent Skills** → [[AI-Skills]]（Skills 是 Harness 的一部分）

## 是什麼

Learn Harness Engineering 是一個**專案式課程**，教你如何為 AI coding agent 建構可靠的工作環境。

核心命題：**最強的模型，沒有好的 Harness，仍然會在真實工程任務上失敗。** Anthropic 做過對照實驗——同一個模型（Opus 4.5）、同一個提示詞（「建一個 2D retro game editor」），沒有 Harness 時花了 $9、20 分鐘做出了不能用的東西；有完整 Harness 時花了 $200、6 小時做出了真正可用的遊戲。模型沒變，Harness 改變了一切。

## 核心特色

- **Harness 五個子系統** — Instructions（AGENTS.md、feature_list、docs/）、State（progress.md、feature_list.json、git log）、Verification（只有通過的測試才算證據）、Scope（一次一個 feature，不越界）、Session Lifecycle（初始化→工作→驗證→清理→handoff note）
- **12 堂講座 + 6 個專案** — 每堂講座回答一個核心問題（為什麼強模型會失敗、Harness 是什麼、為什麼要漸進揭露等），6 個專案在同一個 Electron 知識庫桌面 App 上迭代，從 Prompt-only 到完整 Harness
- **快速上手模板** — 提供 AGENTS.md、init.sh、feature_list.json、claude-progress.md 等模板結構，開箱即用
- **harness-creator 技能** — 課程附帶 `skills/harness-creator/` 技能，可幾分鐘內為你的專案生成 production-grade Harness
- **13 語言支援** — 課程內容支援 13 種語言，適合全球開發者學習

## 怎麼用

### 安裝與本地預覽

```bash
git clone https://github.com/walkinglabs/learn-harness-engineering.git
cd learn-harness-engineering
npm install
npm run docs:dev
# 打開文件網站
```

### 使用步驟

1. 閱讀講座，照著專案步驟實作
2. 需要 Claude Code 或 Codex 等 coding agent 來實際操作專案
3. 用 `skills/harness-creator/` 為自己的專案生成 Harness 模板

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
← [[harness-engineering]] · [[AI-Agent]] · [[context-engineering-basics]] · [[Coding-Agent-CLI]] · [[agent-persona]] · [[AI-Skills]]

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