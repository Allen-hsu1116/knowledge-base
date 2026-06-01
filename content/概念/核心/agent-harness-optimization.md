---
title: Agent Harness 優化
aliases:
  - Agent Harness Optimization
  - Harness Engineering
---

# Agent Harness 優化

> 系統化提升 AI coding agent 的效能：token 效率、記憶管理、安全驗證、持續學習。

## 快速導航

- ⚡ [[AI-Agent]] · [[AI-Skills]] · [[agent-persona]] · [[Prompt-Engineering]]
- 🏇 **Harness Engineering** → [[harness-engineering]]（駕馭工程的全面介紹）
- 🔧 **ECC** → [[affaan-m-ECC|ECC]]（跨 7+ Agent harness 的效能優化系統）
- 🎓 **Learn Harness** → [[walkinglabs-learn-harness-engineering]]（Harness 課程）

## 是什麼

Agent Harness 優化是研究如何系統化提升 AI Agent 執行效能的工程方法。Harness 是 Agent 中除語言模型以外的所有支撐框架——包括認知框架（agents.md）、工具連接（MCP）、操作手冊（Skills）、記憶系統等。Harness 優化關注的是：同樣的模型，透過更好的 Harness 設計，可以產生截然不同的執行效果。

### ECC 實驗的核心發現

ECC 專案（187K+ Stars）證實了 Harness 優化的威力：
- **60+ Agents、232+ Skills** 跨 7+ AI coding 工具的完整優化系統
- **Token 優化**：壓縮、快取、摘要策略減少不必要的 context 消耗
- **記憶持久化**：跨 session 保持上下文，避免重複詢問
- **安全掃描**：AgentShield 掃描和清理安全風險
- **持續學習**：從經驗中改進 Agent 行為

## 核心特色

- **跨 Harness 統一優化**：在 Claude Code、Codex、Cursor 等 7+ 工具間共用優化策略
- **Token 效率最大化**：壓縮、快取、摘要三管齊下減少 context 消耗
- **記憶持久化與檢索**：跨 session 保持上下文，支援增量記憶更新
- **安全掃描與防護**：AgentShield 掃描 prompt 注入、資料外洩等風險
- **驗證迴圈**：生成→回饋→修正的 Ralph Loop，確保輸出品質
- **Meta Harness**：強模型幫弱模型設計 Harness（Opus 幫 Haiku，分數從 13.5 → 85）

## 怎麼用

### 安裝 ECC

```bash
# ECC 支援多種 AI coding 工具
git clone https://github.com/affaan-m/ECC.git
cd ECC
# 依照你的工具選擇對應的安裝方式
# Claude Code / Cursor / Codex / OpenCode 等
```

### 優化維度

| 維度 | 策略 | 效果 |
|------|------|------|
| Token 優化 | 壓縮、快取、摘要 | 減少 30-50% context 消耗 |
| 記憶管理 | 持久化、索引、增量更新 | 跨 session 上下文保持 |
| 安全驗證 | AgentShield 掃描、權限控制 | 防止 prompt 注入和資料外洩 |
| 持續學習 | verbalized feedback、skill 累積 | 從經驗中自動改進 |

### 四大優化原則

1. **地圖原則**：agents.md 是地圖，不是百科全書——告訴 Agent「去哪找資訊」而非「所有資訊」
2. **Agent-first 設計**：工具介面設計給 AI 用，JSON structure > flag
3. **最小權限**：只給 Agent 必要的工具和權限
4. **Ralph Loop**：生成→回饋→修正的反覆循環，搭配摘要避免 context 爆滿

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[harness-engineering]] | 理論基礎 | Harness Engineering 是理論，Harness 優化是實踐 |
| [[AI-Agent]] | 包含 | Harness 優化是提升 Agent 效能的系統方法 |
| [[AI-Skills]] | 組成 | SKILL.md 是 Harness 中的結構化操作手冊 |
| [[agent-persona]] | 認知層 | Persona 是 Harness 中的角色定義 |
| [[MCP]] | 工具層 | MCP 是 Harness 的工具連接標準 |
| [[self-correction]] | 流程層 | 自我修正機制是 Harness 優化的核心策略 |
| [[prompt-security]] | 安全層 | 安全限制是 Harness 的防禦邊界 |

## 相關專案

- [[affaan-m-ECC|ECC]] — 跨 7+ Agent harness 的效能優化系統（187K+ Stars）
- [[walkinglabs-learn-harness-engineering|Learn Harness Engineering]] — Harness 課程
- [[harness-engineering|Harness Engineering]] — 李宏毅教學影片

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[agent-persona]] · [[harness-engineering]] · [[Prompt-Engineering]] · [[MCP]]

## 來源

- [ECC 專案文件](../raw/2026-05-20-affaan-m-ECC.md)
- [Harness Engineering 課程筆記](../raw/2026-05-03-harness-engineering.md)
- ECC 專案 GitHub: https://github.com/affaan-m/ECC

---

_此頁由 daily-llm-trending 自動維護_