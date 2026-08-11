---
title: LifeOS
slug: danielmiessler-LifeOS
created: 2026-08-11
updated: 2026-08-11
stars: 17911
language: TypeScript
topics: [AI Harness, Life OS, Intent Engineering, Personal AI, Productivity]
---

# LifeOS

> ⭐17.9k · 通用 AI 駕馭框架——從 Current State 到 Ideal State 的 hill-climbing 系統，涵蓋生活與工作的完整 AI 作業系統

## 快速導航

- 🧠 **Harness Engineering** → [[harness-engineering]]
- 🛠 **AI Agent** → [[AI-Agent]]
- 📐 **Context Engineering** → [[context-engineering-basics]]
- 🔗 **Personal AI** → [[danielmiessler-Personal_AI_Infrastructure]]

## 是什麼

LifeOS 是 Daniel Miessler（也是 fabric 專案的作者）打造的 General Purpose AI Harness。它的核心概念是「從 Current State 移動到 Ideal State」——系統捕捉你是誰、你在乎什麼、你想去哪裡，然後用了解你的 AI 幫你到達目標。

LifeOS 不是另一個 Agent 框架，而是建構在 Agent harness 之上的層。你的 harness（Claude Code、Cursor、Codex、Hermes）提供原始能力，LifeOS 提供讓它變成「你的」系統的記憶、技能、路由和上下文。Daniel 明確指出：「Your harness is the engine. LifeOS is everything else that makes it your car.」

系統圍繞一個中心概念運作：moving from your Current State to your Ideal State — in pursuit of Euphoric Surprise。它有完整的元件生態：TELOS（身份系統）、The Algorithm（七階段迴圈）、Arbol（知識樹）、Bunker（安全儲存）、ISA System（Ideal State Artifact）、Cortex（認知層）、Synapse（連接層）、Atlas（地圖層）、Ledger（帳本）、Skill System、Hook System、Pulse（生命儀表板）、Voice（語音）、Learning（學習）、Security（安全）等。

## 核心特色

- **General Hill-Climbing**：從 Current State 持續向 Ideal State 移動的演算法，不是線性執行而是持續優化
- **Intent Engineering**：不只回答「怎麼做」，還要理解「為什麼做」和「完成了長什麼樣」
- **Euphoric Surprise**：系統目標不只是完成任務，而是創造超預期的驚喜體驗
- **Harness-Agnostic**：不限定特定 Agent harness，用 universal primitives（hooks、skills、context files、agentic routing）建構，任何 capable agent 都能跑
- **持久記憶**：DA（Digital Assistant）記住過去的 session、決策和學習，不用每次重新解釋
- **自改進系統**：系統根據學到的東西修改自己，USER/ 目錄安全不受升級影響
- **完整 Skill 生態**：一個自包含 skill 打包整個 library——研究、安全、寫作、藝術等
- **Built with Claude**：主要在 Claude Code 上建構和測試，但也設計為可在任何 capable agent 上運行

## 怎麼用

```bash
# AI 安裝（推薦）——把這行貼進你的 AI coding harness
# Read https://ourlifeos.ai/install and install LifeOS for me.

# 終端機一鍵安裝（macOS/Linux）
curl -fsSL https://ourlifeos.ai/install.sh | bash

# 需求：
# - 一個 capable AI coding harness（Claude Code、Cursor、Codex、Hermes）
# - Bun (https://bun.sh)
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心概念 | 特殊設計 |
|------|-------|------|----------|----------|
| **LifeOS** | ⭐17.9k | General AI Harness | Current→Ideal State, Hill-Climbing | TELOS、Algorithm、Euphoric Surprise |
| [[danielmiessler-Personal_AI_Infrastructure\|PAI]] | ⭐15.4k | Life OS (前身) | Ideal State, ISA/ISC | 文字優先、無 RAG、Algorithm v6.3 |
| [[harness-engineering\|Harness Engineering]] | — | 方法論 | 認知框架+工具+工作流程 | Meta Harness、Ralph Loop |
| [[hermes-agent\|Hermes Agent]] | ⭐154k | AI Agent 框架 | 學習閉環、跨 session 記憶 | Cron 排程 |
| [[affaan-m-ECC\|ECC]] | ⭐189k | Agent Harness | Token 優化 | 龐大社群 |

LifeOS 是 PAI（Personal AI Infrastructure）的進化版。PAI 是 Daniel Miessler 之前的專案，專注於 Ideal State 和 Context Scaffolding。LifeOS 在此基礎上擴展為更通用的 AI Harness，加入了 Intent Engineering、Euphoric Surprise、TELOS 等新概念，並從「個人生活 OS」升級為「通用 AI 駕馭框架」。Fabric 是 Daniel 的另一個專案——收集 AI prompts（patterns），LifeOS 則是 DA 運作的基礎設施，兩者互補。

## 相關概念

← [[harness-engineering]] · [[AI-Agent]] · [[context-engineering-basics]] · [[danielmiessler-Personal_AI_Infrastructure]]

## 來源

- GitHub: <https://github.com/danielmiessler/LifeOS>
- 原始 README: `raw/2026-08-11-danielmiessler-LifeOS.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [danielmiessler/LifeOS](https://github.com/danielmiessler/LifeOS) |
| Stars | ⭐17,911 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-08-11 |