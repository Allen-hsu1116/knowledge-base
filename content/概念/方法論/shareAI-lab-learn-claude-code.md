---
title: Learn Claude Code - Harness Engineering
slug: shareAI-lab-learn-claude-code
created: 2025-06-29
updated: 2026-06-16
stars: 66678
language: Python
topics: [agent, agent-development, ai-agent, claude, claude-code, educational, llm, python, teaching, tutorial]
---

# Learn Claude Code - Harness Engineering

> ⭐66.7k · Bash is all you need——從零打造類似 Claude Code 的 Agent Harness，理解 Agent 的本質

快速導航：[[affaan-m-ECC|ECC]] · [[agent-skills-ecosystem|Agent Skills 生態系]] · [[claude-code-boris-cherny-advanced-techniques|Claude Code 進階技巧]]

## 是什麼

Learn Claude Code 是一個教育性專案，核心論點是：「Agency 來自模型訓練，而非外部程式碼。」這句話是整個專案的哲學基礎。專案指出，市面上的 drag-and-drop 工作流建構器和 no-code「AI Agent」平台犯了一個根本錯誤——它們以為把 LLM API 呼叫串接起來就是「建構 Agent」。

但事實是：Agent 的能力（感知、推理、行動）來自模型的訓練，不是來自外部的 if-else 分支或 node graph。真正的 Agent 產品 = Model + Harness。Model 是駕駛，Harness 是車輛。這個專案教你建構車輛。

專案用 Python 從零實作一個類似 Claude Code 的 Agent Harness，一步步展示 Agent Loop、工具定義、上下文管理、子 Agent 生成、任務系統等核心元件。每個元件都是可執行的，不是抽象理論。最終你會得到一個完整但極簡的 Agent Harness，理解為什麼 Claude Code 的設計是「給模型工具和上下文，然後閃開」。

## 核心特色

- **從零到一的教學**：不是用框架，而是用純 Python 一行行建構 Agent Loop
- **Agency 哲學**：確立「Agency = 訓練產物，不是程式碼產物」的核心認知
- **Agent Pattern 圖解**：用簡潔的流程圖解釋 Agent Loop（User → LLM → tool_use → execute → loop）
- **Harness 五大元件**：Tools（手）、Knowledge（知識）、Observation（觀察）、Action（行動）、Permissions（邊界）
- **Claude Code 解構**：拆解 Claude Code 的架構，理解每個設計決策背後的邏輯
- **子 Agent 與任務系統**：展示 subagent spawning、context compaction、task dependency graphs 的實作
- **實戰導向**：每個概念都附帶可執行的程式碼，不是 PPT 理論

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/shareAI-lab/learn-claude-code.git
cd learn-claude-code

# 安裝依賴（Python 3.10+）
pip install -r requirements.txt

# 設定 API Key
export ANTHROPIC_API_KEY="your-key-here"

# 執行基礎 Agent Loop
python agent_loop.py

# 執行帶工具的 Agent
python agent_with_tools.py

# 執行完整 Harness（含子 Agent 和任務系統）
python full_harness.py
```

## 跟其他方案的關係

| 方案 | 類型 | 重點 | 適用場景 |
|------|------|------|----------|
| [[shareAI-lab-learn-claude-code\|Learn Claude Code]] | 教學專案 | Harness Engineering 從零到一 | 學習 Agent 架構 |
| [[affaan-m-ECC|ECC]] | Agent Harness | 生產級 Skills + 記憶 + 安全 | 生產環境 Agent |
| [[CherryHQ-cherry-studio|Cherry Studio]] | AI 客戶端 | 300+ 助手多模型 | AI 對話生產力 |
| [[promptfoo-promptfoo|Promptfoo]] | 評測工具 | LLM 紅隊測試 | PE 品質保證 |
| [[anthropics-claude-code|Claude Code]] | 官方 Harness | Anthropic 官方設計 | Claude 開發 |

← [[affaan-m-ECC|ECC]] · [[agent-skills-ecosystem|Agent Skills 生態系]]

## 來源

- GitHub：https://github.com/shareAI-lab/learn-claude-code
- Raw 檔案：`knowledge-base/raw/2026-06-16-shareAI-lab-learn-claude-code.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [shareAI-lab/learn-claude-code](https://github.com/shareAI-lab/learn-claude-code) |
| Stars | ⭐66,678 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-06-16 |