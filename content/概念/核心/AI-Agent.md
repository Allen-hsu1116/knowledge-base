---
title: AI Agent
slug: AI-Agent
created: 2026-06-01
updated: 2026-08-18
language: zh-TW
---

# AI Agent

> AI Agent 是能自主執行任務的 AI 系統，通常具備工具使用、記憶、規劃等能力。近年從單一 chatbot 走向多 agent 協作、長期運行的個人助理。

## 核心內容

AI Agent = LLM + 工具 + 記憶 + 規劃。不同於單純的聊天機器人，Agent 能夠自主規劃、使用工具、維持記憶、自我修正。Agent 架構從一問一答的 Chatbot，進化到能呼叫工具的 Tool-using 階段，再到具備規劃+工具+記憶的 Agent，如今更走向多 Agent 協作的模式。

Agent 的四大核心能力環環相扣：自主規劃讓 Agent 能拆解任務為多個步驟並按序或並行執行；工具使用讓 Agent 透過 MCP 等標準介面呼叫 API、執行程式碼、操作瀏覽器；記憶系統讓 Agent 跨 session 記住使用者偏好和長期知識；自我修正讓 Agent 偵測錯誤並調整策略。

AI 正在從「被問才回答」進化成「有身分、有流程、有記憶」的持續運作系統。Persona-first 設計讓 AI 有立場和一致性，Skill 標準化讓能力可跨框架共享，知識管理自動化讓人負責方向而 AI 負責整理，持久記憶讓跨 session 的長期記憶成為標配。Agent 自演化更讓技能自動結晶，越用越強。

## 關鍵要素

- **自主規劃**：拆解任務為多個步驟，按序或並行執行，不需要人工逐步指示
- **工具使用**：透過 MCP 等標準介面呼叫 API、執行程式碼、讀寫檔案、操作瀏覽器，從「只能說」變成「能做事」
- **記憶維持**：三層記憶——工作記憶（當前對話）、短期記憶（近期 session 摘要）、長期記憶（知識庫與偏好）
- **自我修正**：偵測錯誤、調整策略、重新嘗試，實現可靠的長期任務執行
- **技能系統**：透過結構化的 SKILL.md 格式定義在特定情境下該怎麼做，讓能力可版本控制和分享

## 各框架的做法

- **LangChain** → LLM 應用開發框架，100+ 整合，最廣泛使用的 Agent 開發工具鏈
  👉 詳見 [[LangChain]]
- **CrewAI** → 多 Agent 角色扮演協作框架，擅長多 Agent 團隊分工
  👉 詳見 [[CrewAI]]
- **AutoGen** → 微軟多 Agent 框架，AgentChat + MCP 整合
  👉 詳見 [[microsoft-autogen|AutoGen]]
- **OpenHands** → Coding Agent 控制中心，ACP 協議，多後端自動化工作流
  👉 詳見 [[OpenHands-OpenHands|OpenHands]]
- **Goose** → 通用 AI Agent，MCP + ACP，Rust 實現
  👉 詳見 [[aaif-goose-goose|Goose]]
- **hermes-agent** → 自我改進 Agent，學習閉環 + 跨 session 記憶
  👉 詳見 [[hermes-agent]]
- **GenericAgent** → 自演化 Agent，技能自動結晶，越用越強
  👉 詳見 [[lsdefine-GenericAgent]]
- **ai-memory** → 為多種 Coding Agent harness 提供 lifecycle capture、持久 wiki 與跨 session handoff
  👉 詳見 [[akitaonrails-ai-memory|ai-memory]]

## 相關概念

- [[MCP]] — Agent 使用工具的標準介面
- [[AI-Skills]] — Agent 的結構化操作手冊
- [[Context-Database]] — Agent 的記憶基礎設施
- [[LLM]] — Agent 的大腦，基礎推理引擎
- [[agent-persona]] — 用 Persona 定義 AI 是誰
- [[harness-engineering]] — 系統化駕馭 Agent 的方法論
- [[self-correction]] — Agent 自我修正的三條路徑
- [[llm-knowledge-base]] — 如何管理 Agent 的知識
- [[cloudflare-computer]] — 給 Agent 一台虛擬電腦，Durable Object 虛擬 FS + 可插拔執行層
- [[huangruiteng-loopx]] — Agent 迴圈工程控制平面，長時間運行的狀態管理
- [[PrimeIntellect-ai-prime-agent]] — 自我進化 RLM Agent，持久 IPython + Continual Harness + 內建子 Agent
- [[akitaonrails-ai-memory|ai-memory]] — 將 Agent 的短期 session 觀察固化成可查詢的長期專案記憶

## 來源
- 知識庫內 Agent 相關原始資料與專案頁面