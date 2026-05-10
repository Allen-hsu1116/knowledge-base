---
source: https://github.com/ruvnet/ruflo
date: 2026-05-09
---

# Ruflo — 多 Agent AI 編排平台

> Ruflo（前身 Claude Flow）：多 Agent AI 編排平台，為 Claude Code 加入神經系統——Agent 自組織成群、自我學習、跨機器聯邦通訊。

**GitHub**: https://github.com/ruvnet/ruflo
**Stars**: ~47k | **License**: MIT

## 什麼是 Ruflo

一個 `npx ruflo init` 就給 Claude Code 一套神經系統：Agent 自組織成 swarm、從每個任務中學習、跨 session 記憶，並透過聯邦通訊安全地與其他機器上的 Agent 交換工作。

## 核心能力

| 能力 | 說明 |
|------|------|
| 🤖 100+ Agents | 專業 Agent：coding, testing, security, docs, architecture |
| 📡 Comms Layer | 零信任聯邦——跨機器/組織發現、認證、交換 |
| 🐝 Swarm Coordination | 階層式、mesh、自適應拓撲 + 共識機制 |
| 🧠 Self-Learning | SONA 神經模式、ReasoningBank、軌跡學習 |
| 💾 Vector Memory | HNSW 索引 AgentDB，搜尋快 150x-12,500x |
| ⚡ Background Workers | 12 個自動觸發 worker（audit, optimize, testgaps 等） |
| 🧩 Plugin Marketplace | 32 個原生 Claude Code 插件 + 21 個 npm 插件 |
| 🔌 Multi-Provider | Claude, GPT, Gemini, Cohere, Ollama 智慧路由 |
| 🛡️ Security | AIDefence、輸入驗證、CVE 修復、路徑遍歷防護 |

## 安裝

### Path A — Claude Code Plugin（輕量）
```bash
/plugin marketplace add ruvnet/ruflo
/plugin install ruflo-core@ruflo
```

### Path B — 完整 CLI 安裝
```bash
npx ruflo@latest init wizard
```

### MCP Server
```bash
claude mcp add ruflo -- npx ruflo@latest mcp start
```

## 插件分類

- **Core & Orchestration**: swarm, autopilot, workflows, federation, loop-workers
- **Memory & Knowledge**: agentdb, rag-memory, rvf, ruvector, knowledge-graph
- **Intelligence & Learning**: intelligence, daa, ruvllm, goals
- **Code Quality**: testgen, browser, jujutsu, docs
- **Security**: security-audit, aidefence
- **Architecture**: adr, ddd, sparc
- **DevOps**: migrations, observability, cost-tracker

## 相關主題

- [[AI-Agent|AI Agent]]
- [[agent-skills-ecosystem|Agent Skills 生態系]]
- [[bytedance-deer-flow|DeerFlow]]

## 參考資料

- [GitHub - ruvnet/ruflo](https://github.com/ruvnet/ruflo)