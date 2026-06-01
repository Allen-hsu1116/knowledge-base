---
title: Free Claude Code
slug: Alishahryar1-free-claude-code
date: 2026-05-20
stars: 26376
repo: https://github.com/Alishahryar1/free-claude-code
language: Python
topics:
  - Coding-Agent-CLI
  - LLM
  - 模型推論與部署
---

# Free Claude Code — 免費使用 Claude Code 的代理伺服器

> Use Claude Code for free in the terminal, VSCode extension or Discord, with voice support.

Free Claude Code 是一個 Anthropic API 流量代理，將 Claude Code 的請求路由到 NVIDIA NIM、Kimi、Wafer、OpenRouter、DeepSeek、LM Studio、llama.cpp、Ollama 等替代 provider，讓你可以選擇免費、付費或本地模型。

## 快速導航

- ⚡ [[Coding-Agent-CLI]] · [[LLM]] · [[模型推論與部署]]

## 是什麼

Free Claude Code 是一個 Anthropic API 流量代理伺服器，將 Claude Code 的請求路由到 NVIDIA NIM、Kimi、Wafer、OpenRouter、DeepSeek、LM Studio、llama.cpp、Ollama 等替代 provider。它保持 Claude Code 的客戶端協議不變，讓你可以自由選擇免費、付費或本地模型。支援 per-model 路由（Opus/Sonnet/Haiku 各自導向不同後端）、原生 `/model picker`、串流與工具使用，以及 Discord/Telegram bot 封裝用於遠端 coding session。

## 核心特色

- **10 個 provider 後端** — NVIDIA NIM, Kimi, Wafer, OpenRouter, DeepSeek, LM Studio, llama.cpp, Ollama, OpenCode Zen, Z.ai
- **Per-model 路由** — Opus/Sonnet/Haiku 可以分別導向不同 provider
- **原生 /model picker 支援** — 透過 /v1/models 端點
- **串流、工具使用、推理區塊處理**
- **Discord/Telegram bot 封裝** — 遠端 coding session
- **語音筆記轉錄** — 本地 Whisper 或 NVIDIA NIM
- **本地 Admin UI** — 管理代理設定

## 怎麼用

```bash
# 1. 安裝 Claude Code（先決條件）
# 2. 安裝 uv + Python 3.14

# 3. 安裝 Free Claude Code
uv tool install --force git+https://github.com/Alishahryar1/free-claude-code.git

# 4. 取得 NVIDIA NIM API key（或其他 provider key）
# 設定環境變數或使用 Admin UI

# 5. 啟動代理伺服器
fcc-server

# 6. 啟動 Claude Code（透過代理）
fcc-claude

# 進階：設定 Discord/Telegram bot
# 進階：語音筆記功能（本地 Whisper 或 NVIDIA NIM）
```

## 跟其他方案的關係

| 方案 | 定位 | 支援 harness | 路由方式 | 免費選項 | 特殊功能 |
|------|------|-------------|---------|---------|---------|
| **Free Claude Code** | API 代理 | Claude Code | per-model | ✅ NIM/Kimi 等 | 語音轉錄、Discord bot |
| OpenRouter | 模型路由平臺 | 通用 API | 按模型 | ⚠️ 部分免費 | 統一 API 格式 |
| llm-proxy | LLM proxy | 通用 | 按規則 | 取決於後端 | 負載均衡 |
| litellm | 多 provider 統一 API | 通用 | per-model | 取決於後端 | 100+ provider |

- Free Claude Code 是 [[Coding-Agent-CLI]] 生態中讓 Claude Code 免費使用的關鍵工具
- 核心價值在 [[LLM]] 多 provider 路由——不綁定單一模型供應商
- 屬於 [[模型推論與部署]] 領域的輕量級代理方案
- 與 ECC、Agency Agents 等技能方案互補：提供免費模型接入，技能方案提供 prompt/人格優化

## 相關概念

- [[Coding-Agent-CLI]] — 終端 coding agent 工具
- [[LLM]] — 大語言模型
- [[模型推論與部署]] — 模型推論與部署方案

## 來源

- [原始資料](../raw/2026-05-20-Alishahryar1-free-claude-code.md)