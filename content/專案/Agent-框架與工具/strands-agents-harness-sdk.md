---
title: Strands Harness SDK
slug: strands-agents-harness-sdk
created: 2026-09-24
updated: 2026-09-24
stars: 7843
language: zh-TW
topics: ["agent-framework", "agentic", "agentic-ai", "agents", "ai", "ai-agents", "anthropic", "autonomous-agents", "bedrock", "generative-ai", "harness", "llm", "llm-agent", "mcp", "multi-agent-systems", "openai", "python", "sdk", "strands-agents", "typescript"]
---

# Strands Harness SDK

> ⭐7.84k · 在自己的程序中建構、控制與觀測 Python／TypeScript Agent Harness。

## 快速導航

- 🧠 [[AI-Agent]] — 主要技術脈絡
- 🛠 [[harness-engineering]] — 設計或部署背景

## 是什麼

Strands Agents 是開源 Agent SDK；此 monorepo 同時收納預組裝 Harness、Python 與 TypeScript SDK、CLI 及文件網站。它針對原本需要自行撰寫 Agent loop 的開發者，提供從工具呼叫到生命週期控制的一套元件。

它在應用程序內執行，不要求使用託管控制平面。開發者可以先用 create_harness() 取得模型、工具、記憶、session 與上下文管理的預設組合，再下探 SDK 自行組裝；這是函式庫與執行環境，不是保證自主完成任務的服務。

## 核心特色

- **雙層入口**：預組裝 Harness 適合起步；SDK 允許自行控制 loop、provider、工具與 hooks。

- **模型可攜**：README 列出 Bedrock、Anthropic、OpenAI、Gemini 及自訂提供者。

- **生命週期控制**：涵蓋回合上限、token 預算、取消與停止原因。

- **攔截與觀測**：透過 hooks 攔截步驟，並提供 tracing、guardrails 與評估入口。

- **應用整合**：支援 MCP、串流、結構化輸出、多 Agent 模式、記憶與 sessions。

## 怎麼用

### 安裝入口

以下為文件整理，未在本次收錄中安裝或執行候選軟體。

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install strands-harness
```

### 基本操作

```python
from strands_harness import create_harness

agent = create_harness()
agent("Find the slowest test in this repo and explain why it is slow")
```

### 限制與注意

- 先依官方 quickstart 設定模型提供者與憑證；安裝套件本身不等於模型服務可用。
- 需要掌握底層迴圈時，改裝 strands-agents 與 strands-agents-tools，使用 strands.Agent。
- TypeScript Harness 的安裝指令為 npm install @strands-agents/harness；底層 TypeScript SDK 文件要求 Node.js 22+。
- 正式環境仍需自行配置權限、工具核准、預算及失敗處理，不能把 guardrails 當成安全保證。

## 跟其他方案的關係

下表依官方 README 的定位整理，不是效能評測。

| 方案 | 定位差異 | 適合情境 |
| --- | --- | --- |
| Strands Harness | 預組裝 Agent 與可覆寫預設 | 先快速建立可操作的 Agent |
| Strands SDK | 自行接線的 Agent loop／工具／provider | 需要客製執行與生命週期 |
| 自行撰寫 loop | 所有控制與整合均由應用負責 | 需求極小或需要完全自訂 |

## 相關概念

← [[AI-Agent]] · [[harness-engineering]]

## 來源

- [GitHub：strands-agents/harness-sdk](https://github.com/strands-agents/harness-sdk)
- README 快照：`raw/2026-09-24-strands-agents-harness-sdk.md`
- GitHub metadata：`raw/2026-09-24-strands-agents-harness-sdk.metadata.json`
- 資料查閱日：2026-09-24；功能敘述依當日 README，非本站實測。

---

| 欄位 | 內容 |
| --- | --- |
| GitHub | [strands-agents/harness-sdk](https://github.com/strands-agents/harness-sdk) |
| Stars | 7,843（2026-09-24 快照） |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-09-24 |
