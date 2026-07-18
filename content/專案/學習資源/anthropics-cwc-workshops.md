---
title: Code with Claude Workshops
slug: anthropics-cwc-workshops
created: 2026-07-18
updated: 2026-07-18
stars: 1585
language: TypeScript
topics: claude, managed-agents, skills, mcp, evals, workshops
---

# Code with Claude Workshops

> ⭐1.6k · Anthropic 官方「Code with Claude」工作坊教材，9 個實戰 workshop 涵蓋 Skills、MCP、Managed Agents、Evals

## 快速導航

- 🛠 **AI Skills** → [[AI-Skills]]
- 🔌 **MCP** → [[MCP]]
- 🤖 **AI Agent** → [[AI-Agent]]
- 🧪 **Coding Agent CLI** → [[Coding-Agent-CLI]]

## 是什麼

Code with Claude Workshops 是 Anthropic 官方舉辦的「Code with Claude」工作坊的完整教材集合。包含 9 個實戰 workshop，每個都圍繞 Claude Managed Agents API、Skills、MCP 的具體應用場景，從模型選擇到生產級多 Agent 系統，涵蓋了現代 AI Agent 開發的完整光譜。

這些 workshop 不是理論講座，而是 hands-on 實作：你會實際寫 agent.py 的七個函數讓 SRE Agent 能 grep 70k 行日誌找出壞 commit、配置 Managed Agent 的 system prompt + skills + MCP servers 來驅動遊戲 bot、用 eval-driven 方式迭代 PPTX 生成 Agent 通過六個變體的評分。

Anthropic 標註此 repo 為「不維護、不接受貢獻」，但它是最直接了解 Anthropic 官方如何設計和建構 Claude Agent 系統的第一手資料。

## 核心特色

- **9 個完整 workshop** — 從模型選擇到生產級多 Agent 系統，每個都是可運作的實作專案
- **Claude Managed Agents API** — 多個 workshop 直接使用 Anthropic 的 Managed Agents 平台，包含 versioned update、sub-agent dispatch
- **Eval-Driven Development** — eval-driven-agent-development workshop 展示用 10-task suite + 雙層 grader（程式化 XML metrics + LLM-as-judge）評分每次 prompt 變更
- **Agent Memory** — agents-that-remember workshop 從「金魚記憶」Agent 逐步加入 memory store 和 Dreaming Service，45 分鐘內完成「goldfish to colleague」
- **MCP 整合** — 多個 workshop 使用 MCP servers 連接外部工具（Linear、遊戲 bot、本地工具）
- **Skills 分解** — agent-decomposition workshop 示範將 400 行 prompt 拆解成 Skills + code execution + callable_agents

## 怎麼用

### 取得教材

```bash
git clone https://github.com/anthropics/cwc-workshops.git
cd cwc-workshops
```

### 各 workshop 獨立目錄

每個 workshop 是獨立子目錄，內含完整的程式碼、說明和步驟：

```
cwc-workshops/
├── rightmodel/              # 模型選擇 + 參數調優
├── agent-decomposition/     # 多 Agent 系統分解
├── how-we-claude-code/      # AI 輔助產品工作流
├── ship-your-first-managed-agent/  # 首個 Managed Agent
├── agent-battle/            # 45 分鐘 Agent 競賽
├── agents-that-remember/    # Agent 記憶
├── eval-driven-agent-development/  # Eval 驅動開發
├── production-ready-agent/  # 生產級多 Agent（M&A 研究）
└── research-desk/           # SEC filings 研究台
```

### 各 workshop 重點

- **rightmodel** — 用 Claude Code SKILL 審計 LLM eval suite，跨模型和推論參數（extended thinking、effort）掃描，找最佳 quality-per-dollar
- **agent-decomposition** — 將 400 行 prompt 的 inventory agent 拆成 Skills + code execution + callable_agents
- **ship-your-first-managed-agent** — 實作 agent.py 的 7 個函數，讓 SRE Agent grep 70k 行日誌找壞 commit
- **agent-battle** — 45 分鐘競賽：配置 Managed Agent 驅動遊戲 bot，最多鑽石獲勝、最少 token 平手
- **eval-driven-agent-development** — PPTX 生成 Agent 迭代 6 變體，10-task suite + 雙層 grader 評分

## 跟其他方案的關係

| 資源 | 來源 | 形式 | 涵蓋範圍 |
|------|------|------|----------|
| **CWC Workshops** | Anthropic 官方 | 9 個實作 workshop | Managed Agents、Skills、MCP、Evals、Memory |
| [[anthropics-claude-code\|Claude Code]] | Anthropic | Coding Agent CLI | Agent 工具 |
| [[anthropics-skills\|Anthropic Skills]] | Anthropic | Skill 庫 | 結構化操作手冊 |
| [[microsoft-AI-For-Beginners\|AI for Beginners]] | Microsoft | 12 週課程 | LLM 基礎概念 |
| [[mlabonne-llm-course\|LLM Course]] | 社群 | 系統化課程 | LLM 全鏈路 |

CWC Workshops 的獨特價值在於它是 Anthropic 官方的第一手實戰教材——展示他們內部如何設計 Agent 系統、用 eval 驅動開發、以及 Managed Agents API 的實際用法。與一般教學課程不同，這些 workshop 直接使用 Anthropic 的生產級 API 和平台。

## 相關概念

← [[AI-Skills]] · [[MCP]] · [[AI-Agent]] · [[Coding-Agent-CLI]]

## 來源

- GitHub: https://github.com/anthropics/cwc-workshops
- raw/2026-07-18-anthropics-cwc-workshops.md

---

- **GitHub**: https://github.com/anthropics/cwc-workshops
- **Stars**: ⭐1,585
- **License**: Apache-2.0
- **Language**: TypeScript
- **收錄日期**: 2026-07-18