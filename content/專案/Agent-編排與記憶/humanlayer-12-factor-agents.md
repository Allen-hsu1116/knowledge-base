# 12-Factor Agents

> Principles for building reliable LLM-powered software — the agent equivalent of 12 Factor Apps

**Repo:** <https://github.com/humanlayer/12-factor-agents>
**Stars:** ⭐ 20,278
**Language:** TypeScript
**Created:** 2025-03-30

## 一句話

借鏡 12 Factor Apps 的精神，提出 12 條打造可靠 LLM Agent 的工程原則——核心主張是好的 Agent 大部分是軟體，LLM 只在關鍵點 sprinkled in。

## 12 條原則

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

## 核心洞見

作者 Dex Horthy 從與 100+ SaaS founders 的對話中總結出：多數框架帶你到 80% 品質，但要超越 80% 就得反向工程框架。最快的路是把 Agent 的模組化概念**融入既有產品**，而不是從零用框架重建。

關鍵轉念：好的 Agent 不是「給 prompt + tool bag 然後 loop」；而是**大部分是軟體、LLM 只 sprinkled 在對的位置**。

## 相關概念

- [[AI-Agent]] — 12-factor 是 Agent 工程化的基礎原則
- [[context-engineering-basics]] — Factor 3「Own Your Context Window」直接相關
- [[self-correction]] — Factor 9 compact errors 呼應自我修正機制
- [[Prompt-Engineering]] — Factor 2「Own Your Prompts」
- [[MCP]] — 作者刻意不提但 tool calling 生態系相關
- [[Coding-Agent-CLI]] — Agent 系統的 CLI 介面模式