# nanobot

> 超輕量開源 AI Agent — 精神繼承 OpenClaw / Claude Code / Codex。保持核心 agent loop 小而可讀，支援多頻道、記憶系統、MCP、實用部署路徑。Python ≥3.11，最低開銷。

| 項目 | 資訊 |
|------|------|
| **GitHub** | [HKUDS/nanobot](https://github.com/HKUDS/nanobot) |
| **Stars** | ⭐41,527 |
| **Language** | Python 3.11+ |
| **版本** | v0.1.5.post3 |
| **建立日期** | 2026-02-01 |
| **收錄日期** | 2026-05-03 |
| **授權** | MIT |

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（nanobot 是輕量 Agent 實作）
- 🔌 **MCP** → [[MCP]]（nanobot 支援 MCP server）
- 🦞 **OpenClaw** → [[openclaw]]（nanobot 精神繼承 OpenClaw）

## 簡介

nanobot 由港大數據科學實驗室（HKUDS）開發，是一個超輕量的 AI Agent 框架。核心理念是**保持 agent loop 小而可讀** — 你可以真正讀懂整個核心迴圈，同時支援完整的功能：聊天頻道、記憶系統、MCP、WebUI。

與 OpenClaw 的關係：nanobot 是 OpenClaw 的精神繼承（spiritual successor），同樣追求簡潔可讀的核心，但用 Python 實作、更輕量。

## 核心特色

### 多頻道支援

一個 Agent 同時連接多個通訊平台：

| 平台 | 支援 |
|------|------|
| Discord | ✅ Thread sessions |
| Slack | ✅ |
| Microsoft Teams | ✅ |
| Telegram | ✅ Inline buttons |
| WeChat | ✅ |
| Feishu（飛書） | ✅ Smart threads |
| WebUI | ✅ i18n、dark mode |

### Dream 記憶系統

- **Two-stage memory**：短期對話 + 長期記憶
- **自動摘要**：session 結束後自動提取重點
- **跨 session 持久化**：記住使用者偏好和歷史決策

### MCP Server 支援

透過 Model Context Protocol 連接外部工具和資料源。

### 其他功能

- **OpenAI-compatible API**：SSE streaming、多模型支援
- **Langfuse Observability**：追蹤每次呼叫
- **自然語言 cron**：用自然語言設定提醒
- **WebUI**：Web 介面聊天、i18n、dark mode

## 安裝

```bash
pip install nanobot-ai

# 或從原始碼
git clone https://github.com/HKUDS/nanobot.git
cd nanobot
pip install -e .
```

## 快速開始

```bash
# 設定精靈
nanobot setup

# 啟動 Discord bot
nanobot run --channel discord

# 啟動 WebUI
nanobot run --channel webui

# OpenAI-compatible API
nanobot serve --port 8000
```

## 技術棧

- **Python 3.11+**：核心語言
- **Dream Memory**：兩階段記憶系統
- **MCP**：Model Context Protocol 工具整合
- **Langfuse**：觀測性
- **支援模型**：DeepSeek-V4、Kimi K2.6、Hugging Face、Ollama 等

## 與 OpenClaw 對比

| 特色 | nanobot | OpenClaw |
|------|---------|-----------|
| 語言 | Python | Node.js |
| 核心 | 小而可讀 | 完整功能 |
| 記憶 | Dream two-stage | MEMORY.md + memory/ |
| Skills | 基本 | SKILL.md 格式 |
| 頻道 | 6+ | 多頻道 |
| 部署 | 簡單 | 完整 |

## 相關概念

- [[AI-Agent]] — 輕量 Agent 實作
- [[MCP]] — 工具整合協議
- [[openclaw]] — 精神前身
- [[Context-Database]] — 記憶系統方法論

---

- **GitHub**: https://github.com/HKUDS/nanobot
- **Stars**: ⭐41,527
- **License**: MIT
- **收錄日期**: 2026-05-03