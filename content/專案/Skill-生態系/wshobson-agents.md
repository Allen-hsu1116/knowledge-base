---
title: wshobson/agents
slug: wshobson-agents
created: 2026-06-27
updated: 2026-06-27
stars: 37227
language: Python
topics:
  - agent-skills
  - ai-agents
  - claude-code
  - mcp
  - prompt-engineering
  - multi-agent
---

# wshobson/agents

> ⭐37.2k · 多 Harness Agent 插件市場，88 插件 + 194 Agent + 158 Skill，一套原始碼支援五大平台

## 快速導航
- 🔧 **Claude Code** → [[anthropics-claude-code|Claude Code]]
- 🧠 **AI Skills** → [[AI-Skills]]
- 🔌 **MCP** → [[MCP]]

## 是什麼

wshobson/agents 是一個生產就緒的 Agent 插件市場，為 Claude Code 原生構建，同時被 OpenAI Codex CLI、Cursor、OpenCode、Gemini CLI 和 GitHub Copilot 消費。它的核心設計是「一個真相來源（plugins/），五個 Harness」，每個 Harness 獲得的是符合自身規範的原生產物，而非最低標準的翻譯。

市場包含 88 個插件、194 個 Agent、158 個 Skill 和 106 個命令。每個插件是隔離且可組合的——安裝一個插件只載入該插件的組件到上下文中，而非整個市場。Agent 涵蓋架構、語言、基礎設施、安全、數據、ML、文檔、業務、SEO 等領域。

框架還包含 PluginEval 三層評估框架：靜態分析（結構化檢查，<2 秒）、LLM Judge（語意評估，4 個維度）、Monte Carlo（50-100 次模擬運行的統計可靠性）。這確保了插件和技能的品質可被量化和認證。

## 核心特色

- **88 插件 + 194 Agent + 158 Skill**：涵蓋 Python 開發、安全、基礎設施、ML、文檔、SEO 等多領域
- **五大 Harness 支援**：Claude Code（原生）、Codex CLI、Cursor、OpenCode、Gemini CLI、Copilot，一套原始碼生成各平台原生產物
- **隔離且可組合**：安裝插件只載入該插件組件，不污染上下文
- **分層模型策略**：5 層模型分配（Fable 5 → Opus → inherit → Sonnet → Haiku），根據任務複雜度自動選擇
- **PluginEval 評估框架**：靜態分析 + LLM Judge + Monte Carlo 三層品質認證
- **16 個編排器**：多 Agent 協調工作流（全端、安全、ML、事件響應）
- **漸進式揭露 Skill**：模組化知識包，按需載入
- **外部記憶整合**：Pensyve 記憶系統整合，支援所有五個 Harness

## 怎麼用

```bash
# Claude Code（原生）
/plugin marketplace add wshobson/agents
/plugin install python-development

# Codex CLI
npx codex-marketplace add wshobson/agents

# Gemini CLI
gh repo clone wshobson/agents ~/agents && cd ~/agents
make generate HARNESS=gemini
gemini extensions install .

# OpenCode
make install-opencode

# 生成所有 Harness 產物
make generate-all
make validate     # 結構檢查
make garden       # 漂移/死鏈/上限檢測
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **wshobson/agents** | ⭐37.2k | 插件市場 | 5 大 Harness 原生支援 | 88 插件 + PluginEval |
| [[ComposioHQ-awesome-claude-skills|Awesome Claude Skills]] | ⭐64.6k | Skill 策展 | 1000+ Skills | Claude Code/Codex/Cursor |
| [[anthropics-claude-code|Claude Code]] | ⭐128k | Coding Agent CLI | 原生插件市場 | wshobson/agents 的主要目標 |
| [[obra-superpowers|Superpowers]] | ⭐189.5k | AI Skills | 方法論 | AI Agent |
| [[github-spec-kit|Spec Kit]] | ⭐98.4k | AI Skills | Spec-Driven | Coding Agent CLI |

← [[anthropics-claude-code|Claude Code]] · [[AI-Skills]] · [[MCP]] · [[AI-Skills]] · [[Coding-Agent-CLI]]


## 相關概念

← [[anthropics-claude-code]] · [[AI-Skills]] · [[MCP]]

## 來源

- GitHub: <https://github.com/wshobson/agents>
- 原始 README: `raw/2026-06-27-wshobson-agents.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [wshobson/agents](https://github.com/wshobson/agents) |
| Stars | ⭐37,227 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-06-27 |