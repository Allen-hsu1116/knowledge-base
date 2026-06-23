---
title: Agent Harness 優化
slug: agent-harness-optimization
language: zh-TW
---

# Agent Harness 優化

> 系統化提升 AI coding agent 的效能：token 效率、記憶管理、安全驗證、持續學習。同樣的模型，透過更好的 Harness 設計可以產生截然不同的執行效果。

## 核心內容

Agent Harness 優化是研究如何系統化提升 AI Agent 執行效能的工程方法。Harness 是 Agent 中除語言模型以外的所有支撐框架——包括認知框架（agents.md）、工具連接（MCP）、操作手冊（Skills）、記憶系統等。核心命題是：同樣的模型，透過更好的 Harness 設計，可以產生截然不同的執行效果。

ECC 專案證實了 Harness 優化的威力：跨 7+ AI coding 工具的完整優化系統，涵蓋 60+ Agents 和 232+ Skills。Token 優化透過壓縮、快取、摘要策略減少不必要的 context 消耗；記憶持久化跨 session 保持上下文避免重複詢問；安全掃描偵測 prompt 注入和資料外洩風險；持續學習從經驗中改進 Agent 行為。

四大優化原則指引實踐：地圖原則（agents.md 是地圖不是百科全書，告訴 Agent 去哪找資訊而非塞入所有資訊）、Agent-first 設計（工具介面設計給 AI 用，JSON structure 優於 flag）、最小權限（只給 Agent 必要的工具和權限）、Ralph Loop（生成→回饋→修正的反覆循環，搭配摘要避免 context 爆滿）。

Meta Harness 是更前沿的方向：讓強模型幫弱模型設計 Harness。實驗顯示 Opus 幫 Haiku 設計 Harness 後，分數從 13.5 提升到 85，展示了 Harness 設計本身可以被自動化的可能性。

## 關鍵要素

- **跨 Harness 統一優化**：在 Claude Code、Codex、Cursor 等 7+ 工具間共用優化策略
- **Token 效率最大化**：壓縮、快取、摘要三管齊下，減少 30-50% context 消耗
- **記憶持久化與檢索**：跨 session 保持上下文，支援增量記憶更新
- **安全掃描與防護**：AgentShield 掃描 prompt 注入、資料外洩等風險
- **驗證迴圈**：生成→回饋→修正的 Ralph Loop，確保輸出品質
- **Meta Harness**：強模型幫弱模型設計 Harness，分數從 13.5 → 85

## 各框架的做法

- **ECC** → 跨 7+ Agent harness 的完整效能優化系統，含 60+ Agents 和 232+ Skills
  👉 詳見 [[affaan-m-ECC]]
- **Learn Harness Engineering** → Harness Engineering 系統課程，從理論到實作
  👉 詳見 [[walkinglabs-learn-harness-engineering]]
- **Harness Engineering 理論** → 李宏毅教學影片，認知框架、工具邊界、工作流程三維駕馭
  👉 詳見 [[harness-engineering]]
- **Harness 團隊架構工廠** → 用 Harness Engineering 方法建構 Agent 團隊架構
  👉 詳見 [[revfactory-harness]]

## 相關概念

- [[AI-Agent]] — Harness 優化是提升 Agent 效能的系統方法
- [[AI-Skills]] — SKILL.md 是 Harness 中的結構化操作手冊
- [[agent-persona]] — Persona 是 Harness 中的角色定義
- [[MCP]] — MCP 是 Harness 的工具連接標準
- [[self-correction]] — 自我修正機制是 Harness 優化的核心策略
- [[prompt-security]] — 安全限制是 Harness 的防禦邊界

## 來源

- ECC 專案文件
- Harness Engineering 課程筆記（李宏毅，2026-04-12）