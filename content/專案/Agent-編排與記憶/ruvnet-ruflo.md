---
title: Ruflo
slug: ruvnet-ruflo
created: 2026-05-09
stars: '⭐47k'
updated: 2026-05-09
language: zh-TW
---

# Ruflo

> ⭐47k · 多 Agent AI 編排平台，為 Claude Code 加入神經系統——Agent 自組織成 Swarm、自我學習、跨機器聯邦通訊。⭐47k

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（Ruflo 是多 Agent 編排平台）
- 🔌 **MCP** → [[MCP]]（Ruflo 提供 MCP Server 整合）
- 🔄 **DeerFlow** → [[bytedance-deer-flow|DeerFlow]]（另一個 Agent 編排方案）

## 是什麼

Ruflo（前身 Claude Flow）是一個多 Agent AI 編排平台。一個 `npx ruflo init` 就給 Claude Code 一套神經系統：Agent 自組織成 swarm、從每個任務中學習、跨 session 記憶，並透過聯邦通訊安全地與其他機器上的 Agent 交換工作。

## 核心特色

- **100+ 專業 Agent**：coding, testing, security, docs, architecture 等角色
- **Swarm 編排**：階層式、mesh、自適應拓撲 + 共識機制
- **自我學習**：SONA 神經模式、ReasoningBank、軌跡學習
- **向量記憶**：HNSW 索引 AgentDB，搜尋快 150x-12,500x
- **聯邦通訊**：零信任跨機器/組織發現、認證、交換
- **Plugin 市場**：32 個原生 + 21 個 npm 插件，涵蓋編排、記憶、安全、架構、DevOps 等類別
- **Multi-Provider**：Claude, GPT, Gemini, Cohere, Ollama 智慧路由
- **背景 Worker**：12 個自動觸發的 Worker（審計、最佳化、測試缺口分析等）
- **安全防護**：AIDefence、輸入驗證、CVE 修復、路徑穿越防護

### Plugin 類別

- **核心與編排**：swarm, autopilot, workflows, federation, loop-workers
- **記憶與知識**：agentdb, rag-memory, rvf, ruvector, knowledge-graph
- **智慧與學習**：intelligence, daa, ruvllm, goals
- **程式碼品質**：testgen, browser, jujutsu, docs
- **安全**：security-audit, aidefence
- **架構**：adr, ddd, sparc
- **DevOps**：migrations, observability, cost-tracker
- **領域特定**：iot-cognitum, neural-trader, market-data

## 怎麼用

```bash
# Claude Code Plugin（輕量）
/plugin marketplace add ruvnet/ruflo
/plugin install ruflo-core@ruflo

# 完整 CLI 安裝
npx ruflo@latest init wizard

# MCP Server
claude mcp add ruflo -- npx ruflo@latest mcp start
```

Web UI：flo.ruv.io — 多模型聊天，平行 MCP tool calling，持久向量記憶，Swarm 編排，6 個前沿模型。

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[bytedance-deer-flow|DeerFlow]] | Agent 編排 | 同為多 Agent 編排，DeerFlow 側重子 Agent 沙箱 |
| [[CrewAI]] | 多 Agent 協作 | CrewAI 側重角色扮演，Ruflo 側重 Swarm 自組織 |
| [[agent-skills-ecosystem|Agent Skills 生態系]] | Skill 生態 | Ruflo 的 Plugin Marketplace 是 Agent Skills 的實作之一 |
| [[garrytan-gstack]] | 角色分工框架 | gstack 是 23 個專家 skill，Ruflo 是 100+ Agent swarm 編排 |

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[bytedance-deer-flow|DeerFlow]]

## 來源

- [原始資料](../raw/2026-05-09-ruvnet-ruflo.md)
- GitHub: https://github.com/ruvnet/ruflo
- Stars: ⭐47,000
- License: MIT
- 收錄日期: 2026-05-09

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/ruvnet/ruflo |
| **Stars** | ⭐'⭐47k' |
| **收錄日期** | 2026-05-09 |
