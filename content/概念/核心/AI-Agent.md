---
title: AI Agent
slug: AI-Agent
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

## 多 Agent 框架與角色協作

多 Agent 框架的核心是**角色分工**——讓多個 Agent 各司其職、協作完成複雜任務。[[MetaGPT]] 模擬軟體公司：Product Manager Agent 寫需求、Architect Agent 設計架構、Engineer Agent 寫程式碼、QA Agent 測試，完整重現公司的工作流。[[CrewAI]] 提供角色協作框架：定義多個 Agent 角色、各自目標和工具，透過任務編排實現團隊分工。這從「一個 Agent 做所有事」走向「AI 團隊各做專長事」，提升複雜任務的品質和可靠性。

## 多 Agent 社會模擬

多 Agent 系統不只是工程工具，也是**社會模擬**的研究方法。透過設定多個 Agent 的角色、目標和互動規則，可以模擬社會演化過程，預測未來事件的發展方向——如市場趨勢、輿論走向、政策影響等。Agent 之間的互動（合作、競爭、協商）產生群體層面的湧現行為，為決策提供參考。

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

## 相關概念

- [[MCP]] — Agent 使用工具的標準介面
- [[AI-Skills]] — Agent 的結構化操作手冊
- [[Context-Database]] — Agent 的記憶基礎設施
- [[LLM]] — Agent 的大腦，基礎推理引擎
- [[agent-persona]] — 用 Persona 定義 AI 是誰
- [[harness-engineering]] — 系統化駕馭 Agent 的方法論
- [[self-correction]] — Agent 自我修正的三條路徑
- [[llm-knowledge-base]] — 如何管理 Agent 的知識

## 來源
- 知識庫內 Agent 相關原始資料與專案頁面