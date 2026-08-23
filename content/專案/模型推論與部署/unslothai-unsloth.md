---
title: Unsloth
slug: unslothai-unsloth
created: 2026-08-14
updated: 2026-08-14
stars: 71060
language: Python
topics: [fine-tuning, llm, self-hosted, reinforcement-learning, qwen, deepseek, gemma, stable-diffusion, tts, mcp]
---

# Unsloth

> ⭐71060 · 本地桌面應用，一鍵跑和訓練 LLM、Diffusion、TTS、Embedding 模型——2x 更快、70% 更少 VRAM，支援 Claude Code/Codex/Hermes Agent 連接本地模型

## 快速導航


- 🧠 **LLM 本地部署** → [[Ollama]] · [[llama-cpp]]
- 🎯 **模型推論與部署** → [[模型推論與部署]]
- 🤖 **Agent 整合** → [[anthropics-claude-code]] · [[MCP]]
- 🏠 **自架平台** → [[self-hosted]] · [[open-webui-open-webui]]

## 是什麼

Unsloth 是一個本地桌面應用，讓你在自己的機器上跑和訓練 AI 模型——不需要雲端、不需要 API key。它支援 LLM（Qwen3.8、Kimi K3、DeepSeek-V4、Gemma 4 等）、Diffusion 模型（FLUX）、TTS 語音模型和 Embedding 模型，覆蓋 CPU、NVIDIA、AMD、Intel、macOS 和多 GPU 設定。

核心賣點是速度和記憶體效率。透過自研的 Triton Kernel（RoPE、MLP）和 Padding Free + Packing 技術，Unsloth 達到 2-3x 更快的訓練速度和 30-70% 更少的 VRAM 使用量。這意味著你可以在一張消費級顯卡上微調 20B 參數的模型，甚至跑 500K 上下文的 RL 訓練。

Unsloth 還提供 Unsloth Start 功能，一條指令就能把本地模型接到 Claude Code、Codex、Hermes Agent、OpenClaw、OpenCode 等 coding agent，讓 agent 用你的本地模型而不是付費 API。它暴露 OpenAI 和 Anthropic 相容的 API 端點，也支援 MCP 協議讓外部工具連接。

## 核心特色

- **三種使用模式**：Unsloth Desktop（桌面 App，零設定）、Unsloth Studio（Web UI，瀏覽器操作）、Unsloth Core（Python pip，程式碼控制）
- **全方位訓練**：支援 SFT、LoRA、QLoRA、Full Fine-tuning、Pretraining、RL（GRPO、DPO）、FP8，MoE 模型 12x 更快
- **Unsloth Start**：一條指令 `unsloth start claude` 把本地模型接到 coding agent，支援 Claude Code、Codex、Hermes、OpenClaw、OpenCode，也可做為 subagent
- **OpenAI 相容 API**：本地模型透過 OpenAI 相容 API 提供服務，也能混搭雲端供應商（OpenAI、Anthropic）和外部伺服器（vLLM、Ollama）
- **硬體覆蓋廣**：CPU、NVIDIA（含 Blackwell RTX 50）、AMD（ROCm/Vulkan）、Intel（Vulkan）、macOS（Metal/MLX）、多 GPU、Apple Silicon
- **安全遠端存取**：透過 Cloudflare HTTPS tunnel 安全暴露本地模型，`--secure` 模式只走 tunnel 不暴露原始埠
- **資料 Recipes**：從 PDF、CSV、DOCX 等檔案建構訓練資料集，內建資料清洗和格式化
- **MCP 整合**：MCP control endpoint 讓相容的客戶端管理模型、訓練、recipes、checkpoints 和 exports

## 怎麼用

```bash
# macOS / Linux / WSL — 一鍵安裝
curl -fsSL https://unsloth.ai/install.sh | sh

# Windows — 一鍵安裝
irm https://unsloth.ai/install.ps1 | iex

# 啟動 Web UI
unsloth studio -p 8888

# 安全遠端存取（Cloudflare HTTPS tunnel）
unsloth studio --secure -p 8888

# 把本地模型接到 coding agent
unsloth start claude
unsloth start codex
unsloth start hermes

# 作為 subagent 使用
unsloth start claude --as-subagent --model unsloth/model-GGUF:quant
```

```bash
# Python pip 安裝（Unsloth Core）
uv venv unsloth_env --python 3.13
source unsloth_env/bin/activate
uv pip install unsloth --torch-backend=auto

# Docker
docker run -d -e JUPYTER_PASSWORD="mypassword" \
  -p 8888:8888 -p 8000:8000 -p 2222:22 \
  -v $(pwd)/work:/workspace/work \
  --gpus all unsloth/unsloth
```

## 跟其他方案的關係


- **Ollama**：專注本地推論，不提供訓練功能。Unsloth 可以匯出 GGUF 格式給 Ollama 跑
- **llama.cpp**：C++ 推論引擎，Unsloth 底層使用它做 GGUF 推論
- **LlamaFactory**：另一個微調工具，提供 Web UI，但不提供桌面 App 和 agent 整合
- **vLLM**：高效能推論伺服器，Unsloth 可透過 Connections 功能混搭使用
- **LMCache**：KV Cache 加速，與 Unsloth 互補（推論加速 vs 訓練加速）

Unsloth 的定位是「本地 AI 的瑞士刀」——從訓練到推論到 agent 整合一條龍，目標是讓任何人都能在自己的機器上跑和訓練模型，不需要雲端帳號或 API key。

| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[Ollama]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[llama-cpp]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念


← [[Ollama]] · [[llama-cpp]] · [[模型推論與部署]] · [[self-hosted]] · [[anthropics-claude-code]] · [[MCP]]

## 來源

- GitHub: <https://github.com/unslothai/unsloth>
- 官方文件: <https://unsloth.ai/docs>
- 原始 README: `raw/2026-08-14-unslothai-unsloth.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/unslothai/unsloth |
| Stars | ⭐71060|
| License | Apache-2.0 / AGPL-3.0 |
| 收錄日期 | 2026-08-14 |
