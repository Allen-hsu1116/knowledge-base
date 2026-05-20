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

## 核心特色

- **10 個 provider 後端** — NVIDIA NIM, Kimi, Wafer, OpenRouter, DeepSeek, LM Studio, llama.cpp, Ollama, OpenCode Zen, Z.ai
- **Per-model 路由** — Opus/Sonnet/Haiku 可以分別導向不同 provider
- **原生 /model picker 支援** — 透過 /v1/models 端點
- **串流、工具使用、推理區塊處理**
- **Discord/Telegram bot 封裝** — 遠端 coding session
- **語音筆記轉錄** — 本地 Whisper 或 NVIDIA NIM
- **本地 Admin UI** — 管理代理設定

## 快速開始

1. 安裝 Claude Code
2. 安裝 uv + Python 3.14
3. 取得 NVIDIA NIM API key
4. `uv tool install --force git+https://github.com/Alishahryar1/free-claude-code.git`
5. `fcc-server` 啟動代理
6. `fcc-claude` 啟動 Claude Code

## 相關概念

- [[Coding-Agent-CLI]] — 終端 coding agent 工具
- [[LLM]] — 大語言模型
- [[模型推論與部署]] — 模型推論與部署方案