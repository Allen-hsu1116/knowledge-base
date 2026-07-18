---
title: Bonsai Demo
slug: PrismML-Eng-Bonsai-demo
created: 2026-07-18
updated: 2026-07-18
stars: 1710
language: Shell
topics: bonsai, llamacpp, llm, mlx, prism-ml, small-models
---

# Bonsai Demo

> ⭐1.7k · Prism ML 的 1-bit 和 Ternary LLM 本地運行工具，27B 模型壓到 iPhone 可跑

## 快速導航

- 🧠 **模型推論與部署** → [[模型推論與部署]]
- 🧠 **LLM** → [[LLM]]
- 🧠 **自架** → [[self-hosted]]

## 是什麼

Bonsai Demo 是 Prism ML 提供的開源工具庫，讓你能在本地（Mac Metal、Linux/Windows CUDA/Vulkan/ROCm、CPU）運行 Bonsai 系列超低精度語言模型。Bonsai 有兩個家族：1-bit Bonsai（每權重約 1.125 bits）和 Ternary-Bonsai（每權重約 1.7 bits，打包成 2-bit），各有 27B、8B、4B、1.7B 四種大小。

27B 模型是首代視覺語言模型（vision-language），支援圖片、截圖、PDF 輸入，並具備 agentic tool calling（OpenAI 風格 tool_calls + MCP servers）、thinking 推理模式、256k+ token 長上下文。1-bit Bonsai-27B 壓縮到約 1.125 bits/weight——可以塞進現代 iPhone 而不需要記憶體 offloading。

此 demo 提供一鍵 setup 腳本，自動安裝依賴、下載模型和預編譯二進位檔。Q1_0（1-bit）已完全併入 mainline llama.cpp，Q2_0（ternary）的 CPU 和 Metal 後端也已合併。

## 核心特色

- **超低精度量化** — 1-bit（~1.125 bpw）和 Ternary（~1.7 bpw），27B 模型壓到 4GB 級別，可在 iPhone 上運行
- **多後端支援** — CPU（ARM NEON + x86）、Metal、CUDA、Vulkan、ROCm，透過 llama.cpp 和 MLX
- **視覺語言模型** — 27B 模型支援圖片、截圖、PDF 輸入，可用於多模態問答
- **Agentic Tool Calling** — 原生 OpenAI 風格 tool_calls 完整 round-trip，兩個 demo UI 都支援 MCP servers
- **Thinking 推理模式** — 推理模型，可按聊天調整 reasoning effort
- **長上下文** — 256k+ token 對話
- **一鍵部署** — `./setup.sh` 自動安裝一切，切換家族和大小只需環境變數

## 怎麼用

### macOS / Linux

```bash
git clone https://github.com/PrismML-Eng/Bonsai-demo.git
cd Bonsai-demo

# 選模型大小（預設 27B）
export BONSAI_MODEL=27B

# 設 HuggingFace token（27B repo 私有時需要）
export BONSAI_TOKEN="hf_your_token_here"

# 一鍵安裝：依賴 + 模型 + 二進位
./setup.sh
```

### 啟動伺服器

```bash
./scripts/start_llama_server.sh
# → http://localhost:8080 提供 chat、vision、tools
```

### 切換家族和大小

```bash
# Ternary-Bonsai 4B
BONSAI_FAMILY=ternary BONSAI_MODEL=4B ./scripts/download_models.sh
BONSAI_FAMILY=ternary BONSAI_MODEL=4B ./scripts/run_llama.sh -p "Hello!"

# 1-bit Bonsai 27B
BONSAI_FAMILY=bonsai ./setup.sh

# 全矩陣（8 個下載）
BONSAI_FAMILY=all BONSAI_MODEL=all ./setup.sh
```

### Windows (PowerShell)

```powershell
git clone https://github.com/PrismML-Eng/Bonsai-demo.git
cd Bonsai-demo
$env:BONSAI_MODEL = "27B"
$env:BONSAI_TOKEN = "hf_your_token_here"
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\setup.ps1
```

## 跟其他方案的關係

| 方案 | 精度 | 最小模型 | 視覺 | Tool Calling | 運行環境 |
|------|------|----------|------|-------------|----------|
| **Bonsai** | 1-bit / Ternary | 1.7B | ✅ (27B) | ✅ | llama.cpp / MLX |
| [[llama-cpp\|llama.cpp]] | 2-8 bit | 任意 | 依模型 | 依模型 | 多後端 |
| [[Ollama]] | 4-bit 預設 | 任意 | 依模型 | 依模型 | 本地一鍵 |
| [[vLLM]] | FP16/INT8 | 7B+ | 依模型 | ✅ | GPU 伺服器 |
| [[lyogavin-airllm\|AirLLM]] | 原始精度 | 任意 | ❌ | ❌ | 低 VRAM 分層 |

Bonsai 的核心差異化在於「極致壓縮」——1-bit 和 Ternary 量化讓 27B 級模型可以在手機和消費級硬體上運行，這是傳統 4-bit 量化做不到的。它不是通用推論引擎，而是專注於超低精度模型家族的運行工具。Q1_0 已併入 mainline llama.cpp，意味著 1-bit Bonsai 模型也可以直接用 stock llama.cpp 運行。

## 相關概念

← [[模型推論與部署]] · [[LLM]] · [[self-hosted]]

## 來源

- GitHub: https://github.com/PrismML-Eng/Bonsai-demo
- HF Collections: Bonsai 27B / Bonsai (1-bit) / Ternary-Bonsai
- raw/2026-07-18-PrismML-Eng-Bonsai-demo.md

---

- **GitHub**: https://github.com/PrismML-Eng/Bonsai-demo
- **Stars**: ⭐1,710
- **License**: Apache-2.0
- **Language**: Shell
- **收錄日期**: 2026-07-18