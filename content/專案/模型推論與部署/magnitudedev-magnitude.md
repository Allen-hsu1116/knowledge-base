---
title: Magnitude
slug: magnitudedev-magnitude
created: 2026-09-04
updated: 2026-09-04
stars: 1952
language: TypeScript
topics: [llm, inference-server, local-models, coding-agent, gguf, self-hosted, offline-ai]
---

# Magnitude

> ⭐2.0k · 依本機硬體自動推薦、下載、調校並服務本地模型的 Agent-first 開源推論伺服器

## 快速導航

- 🧠 **本地模型** → [[模型推論與部署]] · [[LLM]]
- 🤖 **Agent 整合** → [[Coding-Agent-CLI]] · [[harness-engineering]]
- 🏠 **隱私部署** → [[self-hosted]] · [[privacy]]

## 是什麼

Magnitude 是面向 AI Agent 的開源本地推論伺服器。它先分析電腦的晶片、記憶體與頻寬，再推薦實際放得下且具有預估生成速度的模型，接著協助下載、調校、啟動並修改 Agent harness 設定。目標是把容易出錯的模型、量化與硬體配對流程變成引導式操作。

它可連接 Pi、OpenCode、Hermes、OpenClaw、Codex、Claude Code、Oh My Pi 與 Cline，也附有內建 harness。模型會在請求抵達時載入，閒置或記憶體不足時卸載；推論設定包含 speculative decoding 與 concurrency 調整，重點不只是「能跑模型」，而是讓長時間 Agent 工作負載在本機可用。

Magnitude 支援 macOS、Linux 與 WSL。模型、Prompt 和檔案都保留在使用者裝置上，完成程式與模型下載後可離線執行；也允許匯入 catalog 之外的相容 GGUF 模型。它適合希望沿用既有 Coding Agent 介面，又想避開雲端 token 成本、API key、速率限制與資料外傳的人。

## 核心特色

- **硬體感知推薦**：分析晶片、可用記憶體與頻寬，列出適合本機的模型與預估 tokens/s
- **Agent-first onboarding**：CLI 文件可直接交給 Agent 執行，由 Agent 帶著使用者完成選模與設定
- **多 Harness 相容**：支援 Pi、OpenCode、Hermes、OpenClaw、Codex、Claude Code、Oh My Pi、Cline 與內建 harness
- **自動生命週期**：模型按需載入，閒置或記憶體吃緊時自動卸載，減少手動維運
- **本地隱私**：Prompt、檔案和模型留在裝置，安裝完成後可完全離線使用
- **推論調校**：針對硬體設定 speculative decoding、concurrency 與模型量化，服務 Agent 工作負載
- **GGUF 擴充**：除了內建 catalog，也能下載 Hugging Face 上的相容 GGUF 模型
- **開源授權**：Apache-2.0 授權，可自行檢查、修改與部署推論層

## 怎麼用

官方建議把 onboarding 指令交給已在使用的 Agent；也可以直接安裝 CLI 後進入互動式設定：

```bash
npm install -g @magnitudedev/cli
magnitude docs onboarding

# 想自行瀏覽推薦模型時
magnitude setup
```

CLI 會檢查本機硬體、顯示模型建議、下載選定模型，並協助把既有 harness 指向 Magnitude。Windows 需透過 WSL；macOS 與 Linux 可直接使用。

```text
Set up local models for me with the Magnitude CLI. Install it with
`npm i -g @magnitudedev/cli`, then run `magnitude docs onboarding`
and follow the instructions.
```

模型檔通常很大，執行前應確認磁碟空間、統一記憶體／VRAM 與網路流量；若匯入 catalog 外模型，還要自行確認 GGUF 相容性、授權與 tool-calling 能力。

## 跟其他方案的關係

Magnitude 與 Ollama 都降低本地模型門檻，但 Magnitude 把「硬體評估、模型推薦與 Agent harness 接線」放在核心；oMLX 更聚焦 Apple Silicon 的服務能力與分層 KV Cache，vLLM 則服務資料中心級高吞吐部署。它不是通用模型訓練框架，而是既有 Agent 和本地模型之間的推論服務層。

| 方案 | 硬體重點 | 主要差異 | Agent 接線 | 適合場景 |
|---|---|---|---|---|
| Magnitude | macOS、Linux、WSL | 硬體 profiling、模型推薦、自動調校 | 內建多 harness onboarding | 既有 Agent 改跑本地模型 |
| [[Ollama]] | 跨平台 CPU／GPU | 模型庫成熟、一鍵 `run` | 由客戶端自行設定 | 個人快速啟動本地模型 |
| [[jundot-omlx\|oMLX]] | Apple Silicon | continuous batching、RAM＋SSD KV Cache | OpenAI／Anthropic API | Mac 多模型與長上下文服務 |
| [[vLLM]] | 伺服器 GPU | PagedAttention、高吞吐 | OpenAI-compatible API | 生產環境與多使用者服務 |
| [[unslothai-unsloth\|Unsloth]] | GPU／Apple Silicon | 微調、訓練、量化與匯出 | 可供 Agent 使用本地 endpoint | 從模型訓練到部署的工作流 |

## 相關概念

← [[模型推論與部署]] · [[LLM]] · [[self-hosted]] · [[Coding-Agent-CLI]]

## 來源

- GitHub：<https://github.com/magnitudedev/magnitude>
- 官方文件：<https://docs.magnitude.dev>
- 原始 README 與 metadata：`raw/2026-09-04-magnitudedev-magnitude.md`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/magnitudedev/magnitude |
| Stars | ⭐1952 |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-09-04 |
