---
title: Personal AI Infrastructure
slug: danielmiessler-Personal_AI_Infrastructure
created: 2026-06-09
updated: 2026-06-09
stars: 15425
language: TypeScript
topics: [Life OS, Ideal State, Context Scaffolding, 記憶]
---

# Personal AI Infrastructure (PAI)

> ⭐15k · 個人 Life Operating System，用 AI 放大人的能力——技能、記憶、理想狀態追蹤一體整合

## 快速導航
[[AI-Agent]] · [[context-engineering-basics]] · [[rohitg00-agentmemory]]

## 是什麼

Personal AI Infrastructure（簡稱 PAI）是 Daniel Miessler 打造的「生活作業系統」。PAI 不是一個 Agent Harness 或 AI 工具集合，而是一個將你這個人——你的目標、關心的事、身份和理想狀態——全部數位化後，讓 AI 幫你往理想狀態前進的系統。

PAI 的核心概念是「Ideal State」（理想狀態）：系統透過 ISA（Ideal State Artifact）捕捉「完成長什麼樣子」，再分解成離散的 ISC（Ideal State Criteria），然後用 Algorithm（七階段迴圈）逐漸逼近。三層架構堆疊在一起：PAI 本身（OS）、Pulse（Life Dashboard 在 localhost:31337）、DA（Digital Assistant 你的語音助手人格）。

v5.0.0 是 PAI 歷史上最大的更新，包含 45 個 skills、171 個 workflows、37 個 hooks、結構化隱私（containment zones）和全新的 Algorithm v6.3.0。

## 核心特色

- **Life Operating System**：不只是 AI 工具，而是涵蓋工作、關係、健康、財務的完整生活 OS
- **Ideal State 驅動**：ISA（Ideal State Artifact）+ ISC（Ideal State Criteria）定義「完成」的樣子，系統持續 hill-climbing 逼近目標
- **文字優先、無 RAG**：所有資料都是 Markdown 純文字，用 ripgrep 快搜取代 RAG embedding，透明且可解析
- **Context Scaffolding > Model**：餵對上下文比用更強的模型更重要，系統圍繞「讓最聰明的模型拿到正確上下文」設計
- **記憶三層架構**：WORK / KNOWLEDGE / LEARNING 三層記憶，加上跨人物、公司、想法的有型圖譜
- **Pulse 生命儀表板**：localhost:31337 即時顯示你的狀態、目標和工作進度
- **數位助手 DA**：可自訂名稱、語音、人格的 Digital Assistant，是你和 AI 的介面

## 怎麼用

```bash
# 一鍵安裝（推薦）
curl -sSL https://ourpai.ai/install.sh | bash

# 手動安裝
git clone https://github.com/danielmiessler/Personal_AI_Infrastructure.git
cd Personal_AI_Infrastructure/Releases/v5.0.0
cp -R .claude ~/
cd ~/.claude && ./install.sh

# 安裝後會：
# - 驗證 Bun、Git、Claude Code 是否已安裝
# - 提示輸入 ElevenLabs API key（可跳過，語音會降級為桌面通知）
# - 啟動 DA 身份設定精靈
# - 設定 Pulse 為 launchd 服務
# - 執行驗證
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心概念 | 特殊設計 |
|------|-------|------|----------|----------|
| **PAI** | ⭐15k | Life OS | Ideal State → Current State | 文字優先、無 RAG、Algorithm |
| [[earendil-works-pi|Pi Agent Harness]] | ⭐54k | Agent Harness | Agent Skills 生態 | Agent Runtime |
| [[rohitg00-agentmemory|agentmemory]] | ⭐15k | 記憶引擎 | AI Agent MCP 記憶 | 三層記憶 |
| [[hermes-agent]] | ⭐142k | AI Agent 框架 | 學習閉環、跨 session 記憶 | Cron 排程 |
| [[affaan-m-ECC|ECC]] | ⭐189k | AI Agent Harness | Token 優化 | 龐大社群 |

PAI 與其他 Agent 框架最大的不同是它的「生活 OS」定位：不侷限於程式開發，而是涵蓋生活的各個層面。它的「Ideal State」概念是獨特的——其他框架大多只回答「怎麼做」，PAI 還要回答「完成了長什麼樣」。

PAI 後來進化為 [[danielmiessler-LifeOS|LifeOS]]，加入了 Intent Engineering、Euphoric Surprise、TELOS 等新概念，從「個人生活 OS」升級為「通用 AI 駕馭框架」。

## 相關概念
← [[AI-Agent]] · [[context-engineering-basics]] · [[rohitg00-agentmemory]]

## 來源

- GitHub: <https://github.com/danielmiessler/Personal_AI_Infrastructure>
- 原始 README: `raw/2026-06-09-danielmiessler-Personal-AI-Infrastructure.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [danielmiessler/Personal_AI_Infrastructure](https://github.com/danielmiessler/Personal_AI_Infrastructure) |
| Stars | ⭐15,425 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-06-09 |