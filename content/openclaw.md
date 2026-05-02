# OpenClaw

> 個人 AI 助手框架，在任何 OS、任何通訊軟體上跑你的 AI Agent。🦞 我們正在用它！（詳細參考頁）

## 快速導航
- 🧠 **Persona + Skill** → [[agent-persona]]（OpenClaw 用 SOUL.md + SKILL.md 實作）
- 🛠 **Skill 生態系** → [[agent-skills-ecosystem]]（OpenClaw 是 SKILL.md 格式的原生實作）
- 📚 **記憶系統** → [[llm-knowledge-base]]（MEMORY.md + memory/ 就是知識庫方法論的實作）
- 🔄 **Agent 工作流** → [[ai-workflow]]（多頻道 + 排程 + 子 Agent）

## 核心內容

### 定位
OpenClaw 是一個開源個人 AI 助手框架。核心設計原則是**本地優先、單用戶、多頻道**。

Gateway 只是控制面板，真正的產品是助手本身。你不需要學新介面，OpenClaw 回答你在已經在用的通訊軟體上。

### 支援頻道（25+）
WhatsApp、Telegram、Slack、Discord、Google Chat、Signal、iMessage、BlueBubbles、IRC、Microsoft Teams、Matrix、Feishu、LINE、Mattermost、Nextcloud Talk、Nostr、Synology Chat、Tlon、Twitch、Zalo、WeChat、QQ、WebChat...

### 核心架構

| 元件 | 說明 |
|------|------|
| Gateway | 控制面板，管理連線、模型、頻道 |
| Agent | AI 助手核心，處理對話、記憶、技能 |
| Skills | SKILL.md 定義的技能系統，ClawHub 社群技能 |
| Subagents | 隔離子 Agent，做特定任務 |
| Cron | 排程系統，定時執行 |
| Canvas | 即時渲染的 UI 控制面板 |
| Memory | 長期記憶（MEMORY.md + memory/） |

### 技術特點
- **Node.js 驅動**，跨平台（macOS、Linux、Windows WSL2）
- **多模型支援**：OpenAI、Anthropic、Ollama、LM Studio、Gemini 等
- **本地優先**：資料留在你的機器上
- **開源 MIT 授權**
- **MCP 支援**：透過 MCP 整合外部工具

### 與其他專案對比

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

### 我們的使用方式
老綸的「霸王鮮果汁」就是跑在 OpenClaw 上的個人助手，使用：
- SOUL.md 定義人格（🧃 霸王鮮果汁）
- MEMORY.md 做長期記憶
- SKILL.md 定義知識庫操作流程
- Cron 排程（股票分析、知識庫 lint）
- Quartz 網站部署知識庫

## 相關概念
← [[agent-persona]] · [[agent-skills-ecosystem]] · [[ai-workflow]] · [[llm-knowledge-base]]

## 來源
- raw/2026-05-03-openclaw.md