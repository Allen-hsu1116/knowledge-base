---
title: 12-Factor Agents
slug: humanlayer-12-factor-agents
created: 2025-03-30
updated: 2025-03-30
stars: —
language: zh-TW
---

# 12-Factor Agents

> Principles for building reliable LLM-powered software — the agent equivalent of 12 Factor Apps

**Repo:** <https://github.com/humanlayer/12-factor-agents>
**Stars:** ⭐ 20,278
**Language:** TypeScript
**Created:** 2025-03-30

## 一句話

借鏡 12 Factor Apps 的精神，提出 12 條打造可靠 LLM Agent 的工程原則——核心主張是好的 Agent 大部分是軟體，LLM 只在關鍵點 sprinkled in。

## 快速導航

- ⚡ [[AI-Agent]] · [[context-engineering-basics]] · [[Prompt-Engineering]]

## 是什麼

12-Factor Agents 是一組由 Dex Horthy（HumanLayer 創辦人）提出的 12 條設計原則，指導如何打造可靠的 LLM Agent 軟體。靈感來自經典的 12 Factor Apps 方法論，核心洞見是：**好的 Agent 不是「給 prompt + tool bag 然後 loop」；而是大部分是軟體、LLM 只 sprinkled 在對的位置**。

作者從與 100+ SaaS founders 的對話中總結出：多數框架帶你到 80% 品質，但要超越 80% 就得反向工程框架。最快的路是把 Agent 的模組化概念**融入既有產品**，而不是從零用框架重建。

### 12 條原則

1. **Natural Language → Tool Calls** — 用結構化 JSON tool calling 取代自由文字解析
2. **Own Your Prompts** — 提示詞是你產品的一部分，不要交給框架黑盒
3. **Own Your Context Window** — 主動控制送進 LLM 的上下文（Context Engineering）
4. **Tools Are Just Structured Outputs** — 工具呼叫 = 結構化輸出，簡化心理模型
5. **Unify Execution State & Business State** — 執行狀態和業務狀態統一管理
6. **Launch / Pause / Resume** — 用簡單 API 控制 Agent 生命週期
7. **Contact Humans with Tool Calls** — 人類介入也是一種 tool call
8. **Own Your Control Flow** — 掌控流程邏輯，不要全交給 LLM 決策
9. **Compact Errors into Context** — 錯誤要精簡後放進 context window
10. **Small, Focused Agents** — 小而專注的 Agent 勝過大一統 Agent
11. **Trigger from Anywhere** — Agent 可以從任何地方被觸發
12. **Stateless Reducer** — Agent 本身無狀態，像 reducer 一樣純粹

## 核心特色

- **框架中立** — 不綁定任何特定框架，原則適用於所有 LLM Agent 開發
- **反框架偏見** — 主張融入既有產品而非從零重建
- **軟體優先** — Agent 大部分是軟體，LLM 只在關鍵節點介入
- **Tool Calling 為核心** — 結構化 JSON 輸出取代自由文字解析
- **Context Engineering** — 主動管理 context window，而非被動堆疊
- **生命週期管理** — Launch/Pause/Resume 簡單 API 控制 Agent 狀態
- **人類介入即 Tool Call** — 把人類審核視為另一種工具呼叫
- **Stateless 架構** — Agent 如同 reducer，狀態外部管理
- **實戰導向** — 來自 100+ SaaS founders 的實際經驗總結

## 怎麼用

### 閱讀原則

1. 進入 [GitHub repo](https://github.com/humanlayer/12-factor-agents)
2. 每條原則有獨立的 markdown 文件詳細解釋
3. 從 Factor 1 開始按順序閱讀

### 應用原則

- **新專案**：按 12 條原則設計 Agent 架構，特別是 Factor 1（Tool Calls）、Factor 3（Context Engineering）、Factor 12（Stateless Reducer）
- **既有專案**：選擇性採用，將模組化概念融入既有程式碼
- **框架選擇**：用原則評估框架是否符合你的需求

### 相關資源

- [AI Engineer World's Fair 演講](https://www.youtube.com/watch?v=8kMaTybvDUw)
- [Deep Dive 影片](https://www.youtube.com/watch?v=yxJDyQ8v6P0)
- [Tool Use Podcast](https://youtu.be/8bIHcttkOTE)

## 跟其他方案的關係

| 特性 | 12-Factor Agents | LangGraph | CrewAI | Anthropic Agent Pattern |
|------|-----------------|-----------|--------|-------------------------|
| 定位 | 設計原則/方法論 | 框架 | 框架 | 設計指南 |
| 核心主張 | 軟體優先，LLM sprinkled | 圖狀工作流 | 多 Agent 協作 | 工具使用 + 迴圈 |
| 框架依賴 | 無 | LangChain | CrewAI | 無 |
| 人類介入 | Tool Call | 節點 | 節點 | Tool Use |
| 狀態管理 | Stateless Reducer | 圖狀態 | 內建 | Agent 狀態 |
| 可融入既有產品 | ✅ 推薦 | 困難 | 部分 | ✅ |
| 學習曲線 | 低 | 中高 | 中 | 低 |

## 相關概念

← [[AI-Agent]] · [[context-engineering-basics]] · [[self-correction]] · [[Prompt-Engineering]] · [[MCP]]

## 核心洞見

作者 Dex Horthy 從與 100+ SaaS founders 的對話中總結出：多數框架帶你到 80% 品質，但要超越 80% 就得反向工程框架。最快的路是把 Agent 的模組化概念**融入既有產品**，而不是從零用框架重建。

關鍵轉念：好的 Agent 不是「給 prompt + tool bag 然後 loop」；而是**大部分是軟體、LLM 只 sprinkled 在對的位置**。

## 來源

- [原始資料](../raw/2026-05-18-humanlayer-12-factor-agents.md)