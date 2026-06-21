---
title: OpenClaw
slug: openclaw
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# OpenClaw

> ⭐— · 個人 AI 助手框架，在任何 OS、任何通訊軟體上跑你的 AI Agent。🦞 我們正在用它！（詳細參考頁）

## 快速導航
- ⚡ [[agent-persona]] · [[agent-skills-ecosystem]] · [[llm-knowledge-base]] · [[AI-Agent]]

## 是什麼

OpenClaw 是一個開源個人 AI 助手框架，核心設計原則是**本地優先、單用戶、多頻道**。Gateway 只是控制面板，真正的產品是助手本身——你不需要學新介面，OpenClaw 直接回答你在已經使用的通訊軟體上。支援 25+ 頻道（WhatsApp、Telegram、Slack、Discord、Signal、iMessage、LINE 等等），可以在 macOS、Linux、Windows WSL2 上跑。Node.js 驅動，MIT 開源，Discord 和 GitHub Issues 社群活躍。

## 核心特色

- **25+ 頻道支援** — WhatsApp、Telegram、Slack、Discord、Google Chat、Signal、iMessage、BlueBubbles、IRC、Microsoft Teams、Matrix、Feishu、LINE、Mattermost、Nostr、WeChat、QQ、WebChat 等，不需要學新介面
- **SKILL.md 技能系統** — 用 Markdown 定義 Agent 技能，ClawHub 社群技能市場，漸進式揭露讓 Agent 快速定位技能
- **Subagents 子 Agent** — 隔離的子 Agent 執行特定任務，避免上下文污染
- **Cron 排程** — 定時執行任務（股票分析、知識庫 lint 等）
- **Canvas 即時 UI** — 即時渲染的互動控制面板
- **MEMORY.md + memory/ 記憶系統** — 檔案系統範式的長期記憶，跟 [[llm-knowledge-base]] 方法論一致
- **MCP 支援** — 透過 Model Context Protocol 整合外部工具
- **多模型支援** — OpenAI、Anthropic、Ollama、LM Studio、Gemini 等隨切隨用
- **本地優先 MIT 開源** — 資料留在你的機器上，不鎖定任何平台
- **SOUL.md 人格系統** — 用 Markdown 定義助手人格和行為模式

## 怎麼用

```bash
npm install -g openclaw
openclaw onboard
```

安裝後透過 `openclaw onboard` 引導設定模型、頻道和技能。主要使用方式：
1. 在通訊軟體上直接跟助手對話
2. 用 SKILL.md 定義技能流程（如知識庫操作、股票分析）
3. 用 SOUL.md 定義助手人格
4. 用 MEMORY.md + memory/ 做長期記憶
5. 用 Cron 排程定期任務

我們的使用方式：老綸的「霸王鮮果汁」就是跑在 OpenClaw 上的個人助手，使用 SOUL.md 定義人格、MEMORY.md 做長期記憶、SKILL.md 定義知識庫操作流程、Cron 排程股票分析與知識庫 lint、Quartz 網站部署知識庫。

## 跟其他方案的關係

| 特色 | OpenClaw | [[project-golem]] | [[hermes-agent]] |
|------|----------|-------------------|-----------------|
| 語言 | Node.js | Node.js | Python |
| 定位 | 個人助手 | 自主 Agent | 自我改進 Agent |
| 頻道數 | 25+ | 2（TG/DC） | 5+ |
| Skills | SKILL.md + ClawHub | 自有系統 | agentskills.io |
| 記憶 | MEMORY.md + memory/ | lancedb-pro | Honcho + FTS5 |
| 子 Agent | ✅ Subagents | ❌ | ✅ |
| 排程 | ✅ Cron | ✅ 自省排程 | ✅ |
| MCP | ✅ | ✅ | ✅ |
| 人格 | SOUL.md | — | — |

OpenClaw 是 [[agent-persona]] + [[agent-skills-ecosystem]] 的實際載體——我們的 SOUL.md、SKILL.md 就是 OpenClaw 的 Persona + Skill 實作。記憶系統對應 [[llm-knowledge-base]] 方法論，MCP 支援跟 [[project-golem]] 和 [[mempalace]] 的整合概念一致。

## OpenClaw vs OpenClaw Gateway

OpenClaw 的架構分為兩部分：
- **OpenClaw（助手本身）**：你的個人 AI 助手，在通訊軟體上跟你對話
- **OpenClaw Gateway**：Web 管理面板，管理連線、模型、頻道設定

Gateway 只是控制面板，產品是助手本身。

## 相關概念
← [[agent-persona]] · [[agent-skills-ecosystem]] · [[AI-Agent]] · [[llm-knowledge-base]]

## 來源

- GitHub：https://github.com/openclaw/openclaw
- 文件：https://docs.openclaw.ai
- Discord：https://discord.gg/clawd
- Raw 檔案：`raw/2026-05-03-openclaw.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [openclaw/openclaw](https://github.com/openclaw/openclaw) |
| Stars | —（無公開 stars） |
| License | MIT |
| Language | Node.js |
| 收錄日期 | 2026-05-03 |
