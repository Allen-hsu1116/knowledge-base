---
title: Ruflo
created: 2026-05-09
---

# Ruflo

> 多 Agent AI 編排平台，為 Claude Code 加入神經系統——Agent 自組織成 Swarm、自我學習、跨機器聯邦通訊。⭐47k

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
- **Plugin 市場**：32 個原生 + 21 個 npm 插件
- **Multi-Provider**：Claude, GPT, Gemini, Cohere, Ollama 智慧路由

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

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[bytedance-deer-flow|DeerFlow]] | Agent 編排 | 同為多 Agent 編排，DeerFlow 側重子 Agent 沙箱 |
| [[CrewAI]] | 多 Agent 協作 | CrewAI 側重角色扮演，Ruflo 側重 Swarm 自組織 |
| [[agent-skills-ecosystem|Agent Skills 生態系]] | Skill 生態 | Ruflo 的 Plugin Marketplace 是 Agent Skills 的實作之一 |

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[bytedance-deer-flow|DeerFlow]]

## 來源

- GitHub: https://github.com/ruvnet/ruflo
- Stars: ⭐47,000
- License: MIT
- 收錄日期: 2026-05-09