---
title: Pi Agent Harness
date: 2026-05-25
stars: 53931
repo: earendil-works/pi
url: https://github.com/earendil-works/pi
language: TypeScript
topics:
  - Coding-Agent-CLI
  - agent-skills-ecosystem
  - coding-agent-toolkit
---

# Pi Agent Harness

⭐ 54k · AI agent 工具包：coding agent CLI、統一 LLM API、TUI 和 Web UI 元件庫、Slack bot、vLLM pods 一次到位。

## 一句話

Pi 是一個 monorepo 形式的 AI agent harness，包含互動式 coding agent CLI、統一多供應商 LLM API、Agent runtime（工具呼叫 + 狀態管理）、TUI 渲染庫，還提供 Slack bot 和 vLLM pods——一整套讓 AI coding agent 從 prototype 到 production 的基礎建設。

## 快速導航

- 🛠 **Coding Agent CLI** → [[Coding-Agent-CLI]]（終端機 AI 程式開發助手）
- 🔗 **Agent Skills 生態** → [[agent-skills-ecosystem]]（AI coding agent 的 skill 標準與生態系）
- 🧰 **Coding Agent 工具包** → [[Coding-Agent-CLI|Coding Agent CLI]]（AI coding agent 的基礎建設）

## 為什麼重要

Pi 不只是一個 coding agent——它把 agent 開發的每層都做成了獨立套件：pi-ai（統一 LLM API）、pi-agent-core（agent runtime + tool calling + state）、pi-coding-agent（互動式 CLI）、pi-tui（終端 UI 元件庫）。供應鏈安全方面也做到極致：npm 依賴鎖版本、minimum release age 2 天、shrinkwrap 白名單。這是「認真做產品」的 coding agent 架構範例。

## 核心概念

- **@earendil-works/pi-ai** — 統一多供應商 LLM API（OpenAI、Anthropic、Google 等）
- **@earendil-works/pi-agent-core** — Agent runtime，處理 tool calling 和狀態管理
- **@earendil-works/pi-coding-agent** — 互動式 coding agent CLI
- **@earendil-works/pi-tui** — 終端 UI 元件庫，差異渲染
- **供應鏈加固** — 鎖版本、最低发布天齡、shrinkwrap 白名單、release 冒煙測試

## 跟我們的關聯

- [[Coding-Agent-CLI]] — Pi 是 coding agent CLI 的新競爭者，架構最完整
- [[agent-skills-ecosystem]] — Pi 的 AGENTS.md 展現了 agent 技能標準化的方向
- [[Coding-Agent-CLI|Coding Agent CLI]] — 從統一 API 到 agent runtime 到 TUI，完整的 agent 工具包範例
- [[earendil-works-pi|Pi Agent Harness]] — 新概念：monorepo 式的完整 AI agent 基礎建設

## 來源

- raw/2026-05-25-earendil-works-pi.md