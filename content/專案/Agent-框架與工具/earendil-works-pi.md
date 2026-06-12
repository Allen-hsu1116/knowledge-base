---


title: Pi Agent Harness
slug: earendil-works-pi
date: 2026-05-25
stars: 53931
repo: earendil-works/pi
url: https://github.com/earendil-works/pi
language: TypeScript
topics:
  - Coding-Agent-CLI
  - agent-skills-ecosystem
  - coding-agent-toolkit


updated: TODO
---

# Pi Agent Harness

⭐ 54k · AI agent 工具包：coding agent CLI、統一 LLM API、TUI 和 Web UI 元件庫、Slack bot、vLLM pods 一次到位。

## 一句話

Pi 是一個 monorepo 形式的 AI agent harness，包含互動式 coding agent CLI、統一多供應商 LLM API、Agent runtime（工具呼叫 + 狀態管理）、TUI 渲染庫，還提供 Slack bot 和 vLLM pods——一整套讓 AI coding agent 從 prototype 到 production 的基礎建設。

## 快速導航

- ⚡ [[Coding-Agent-CLI]] · [[agent-skills-ecosystem]] · [[AI-Agent]]

## 是什麼

Pi Agent Harness 是一個 monorepo 形式的 AI agent 完整工具包。它不只是單一工具，而是一整套從 LLM API 到 agent runtime 到終端 UI 的基礎建設，讓開發者可以從 prototype一路到 production。

四大核心套件：
1. **@earendil-works/pi-ai** — 統一多供應商 LLM API（支援 OpenAI、Anthropic、Google 等）
2. **@earendil-works/pi-agent-core** — Agent runtime，處理 tool calling、狀態管理、生命週期控制
3. **@earendil-works/pi-coding-agent** — 互動式 coding agent CLI，終端機 AI 程式開發助手
4. **@earendil-works/pi-tui** — 終端 UI 元件庫，差異渲染引擎

額外提供 Slack bot（pi-chat）和 vLLM pods 部署方案。供應鏈安全做到極致：npm 依賴鎖版本、minimum release age 2 天、shrinkwrap 白名單、release 冒煙測試。

## 核心特色

- **@earendil-works/pi-ai** — 統一多供應商 LLM API，一個介面存取 OpenAI、Anthropic、Google 等
- **@earendil-works/pi-agent-core** — Agent runtime，處理 tool calling、狀態管理、Launch/Pause/Resume 生命週期
- **@earendil-works/pi-coding-agent** — 互動式 coding agent CLI，跟 Claude Code、Cursor 等同級的終端助手
- **@earendil-works/pi-tui** — 終端 UI 元件庫，差異渲染引擎，打造專業終端介面
- **供應鏈加固** — 依賴鎖版本、最低發布天齡 2 天、shrinkwrap 白名單、release 冒煙測試
- **Slack bot 整合** — pi-chat 提供聊天自動化工作流程
- **vLLM pods** — 自建模型部署方案
- **AGENTS.md** — 展示 Agent 技能標準化的方向

## 怎麼用

### 安裝

```bash
# 從源碼建構
git clone https://github.com/earendil-works/pi.git
npm install --ignore-scripts
npm run build
npm run check    # Lint + format + type check
./test.sh        # 執行測試

# 或直接使用 pi-coding-agent
npx @earendil-works/pi-coding-agent
```

### 開發

```bash
npm run dev       # 啟動開發模式
./pi-test.sh      # 從源碼執行 pi
```

### 分享工作階段

Pi 支援將開源工作階段發布到 Hugging Face，幫助改善 coding agent：
```bash
# 使用 pi-share-hf 發布工作階段
```

### 核心套件使用

| 套件 | 用途 |
|------|------|
| pi-ai | 統一 LLM API，切換供應商只需改一行 |
| pi-agent-core | Agent runtime，tool calling + 狀態 |
| pi-coding-agent | 終端 AI coding 助手 |
| pi-tui | 終端 UI 元件庫 |

## 跟其他方案的關係

| 特性 | Pi Agent Harness | Claude Code | Cursor | Aider |
|------|-----------------|-------------|--------|-------|
| 架構 | Monorepo 全棧 | 單一 CLI | IDE 整合 | 單一 CLI |
| LLM API | 統一多供應商 | Anthropic 優先 | 多供應商 | 多供應商 |
| Agent Runtime | ✅ pi-agent-core | 內建 | 內建 | 內建 |
| TUI 元件庫 | ✅ pi-tui | ❌ | ❌ | ❌ |
| 供應鏈安全 | ✅ 極致 | 一般 | 一般 | 一般 |
| 開源 | ✅ MIT | ❌ | ❌ | ✅ Apache |
| Slack bot | ✅ pi-chat | ❌ | ❌ | ❌ |

## 相關概念

← [[Coding-Agent-CLI]] · [[agent-skills-ecosystem]] · [[AI-Agent]]

## 為什麼重要

Pi 不只是一個 coding agent——它把 agent 開發的每層都做成了獨立套件：pi-ai（統一 LLM API）、pi-agent-core（agent runtime + tool calling + state）、pi-coding-agent（互動式 CLI）、pi-tui（終端 UI 元件庫）。供應鏈安全方面也做到極致：npm 依賴鎖版本、minimum release age 2 天、shrinkwrap 白名單。這是「認真做產品」的 coding agent 架構範例。

## 來源

- [原始資料](../raw/2026-05-25-earendil-works-pi.md)