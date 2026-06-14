---
title: nanobot
slug: HKUDS-nanobot
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# nanobot

> 超輕量開源 AI Agent — 精神繼承 OpenClaw / Claude Code / Codex。保持核心 agent loop 小而可讀，支援多頻道、記憶系統、MCP、實用部署路徑。Python ≥3.11，最低開銷。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]
- 🔌 **MCP** → [[MCP]]
- 🦞 **OpenClaw** → [[openclaw]]

## 是什麼

nanobot 由港大數據科學實驗室（HKUDS）開發，是一個超輕量的 AI Agent 框架。核心理念是**保持 agent loop 小而可讀** — 你可以真正讀懂整個核心迴圈，同時支援完整功能：聊天頻道、記憶系統、MCP、WebUI。它是 OpenClaw 的精神繼承，同樣追求簡潔可讀的核心，但用 Python 實作、更輕量。

## 核心特色

- **多頻道支援** — 一個 Agent 同時連接 Discord、Slack、Teams、Telegram、WeChat、飛書、WebUI
- **Dream 記憶系統** — 兩階段記憶（短期對話 + 長期記憶），session 結束自動摘要，跨 session 持久化
- **MCP Server 支援** — 透過 Model Context Protocol 連接外部工具和資料源
- **OpenAI-compatible API** — SSE streaming、多模型支援（DeepSeek-V4、Kimi K2.6、Hugging Face、Ollama 等）
- **Langfuse Observability** — 追蹤每次呼叫

### 多頻道支援

| 平台 | 支援 |
|------|------|
| Discord | ✅ Thread sessions |
| Slack | ✅ |
| Microsoft Teams | ✅ |
| Telegram | ✅ Inline buttons |
| WeChat | ✅ |
| Feishu（飛書） | ✅ Smart threads |
| WebUI | ✅ i18n、dark mode |

## 怎麼用

```bash
pip install nanobot-ai

# 設定精靈
nanobot setup

# 啟動 Discord bot
nanobot run --channel discord

# 啟動 WebUI
nanobot run --channel webui

# OpenAI-compatible API
nanobot serve --port 8000
```

## 跟其他方案的關係

nanobot 是 [[openclaw]] 的精神繼承，同樣追求簡潔可讀的核心：

| 特色 | nanobot | [[openclaw]] |
|------|---------|-----------|
| 語言 | Python | Node.js |
| 核心 | 小而可讀 | 完整功能 |
| 記憶 | Dream two-stage | MEMORY.md + memory/ |
| Skills | 基本 | SKILL.md 格式 |
| 頻道 | 6+ | 多頻道 |
| 部署 | 簡單 | 完整 |

nanobot 支援 [[MCP]] 工具整合，記憶系統可參考 [[Context-Database]] 方法論。

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[openclaw]] · [[Context-Database]]

## 來源

- raw/HKUDS-nanobot.md

---

- **GitHub**: https://github.com/HKUDS/nanobot
- **Stars**: ⭐41,527
- **License**: MIT
- **收錄日期**: 2026-05-03