---
title: Open-LLM-VTuber
slug: Open-LLM-VTuber-Open-LLM-VTuber
created: 2026-06-03
updated: 2026-06-03
stars: 8356
language: Python
topics:
  - ai
  - ai-companion
  - ai-vtuber
  - live2d
  - llm
  - ollama
---

# Open-LLM-VTuber

> ⭐8.4k · 開源語音互動 AI 陪伴系統，支援實時語音對話、Live2D 虛擬形象，完全離線跨平台運行

快速導航：[[Open-LLM-VTuber-Open-LLM-VTuber]] · [[語音辨識]] · [[Ollama]] · [[self-hosted-AI-platform]]

## 是什麼

Open-LLM-VTuber 是一個開源的語音互動 AI 陪伴系統，核心特色是讓使用者能以**免持語音**（hands-free voice）與任何 LLM 進行實時對話，同時配上 **Live2D 虛擬形象**在桌面陪伴你。整個系統可以完全在本機离線運行，你的對話資料不會離開你的電腦。

它不只是語音聊天機器人——支援視覺感知（攝影機/螢幕截圖）、語音中斷（不需戴耳機 AI 就不會聽到自己的聲音）、觸控回饋、表情映射，甚至有透明桌面寵物模式讓 AI 角色浮游在你的螢幕上。你可以自訂 Live2D 模型外觀、聲音克隆、以及角色人設 Prompt，打造獨一無二的 AI 陪伴者。

後端整合了豐富的模型方案：LLM 支持 Ollama、OpenAI、Gemini、Claude、DeepSeek、vLLM 等；ASR 支持 sherpa-onnx、Faster-Whisper、Whisper 等；TTS 支持 MeloTTS、GPTSoVITS、CosyVoice、Edge TTS、Fish Audio 等，真正做到「開箱即用、隨意替換」。

## 核心特色

- **🎙️ 免持語音互動**：不需按鍵，直接語音對話，支援語音中斷，AI 不會聽到自己的回話
- **🐱 透明桌面寵物模式**：桌面客戶端可切換為透明背景、全局置頂、滑鼠穿透的寵物模式
- **👁️ 視覺感知**：支援攝影機、螢幕錄製和截圖，AI 陪伴能看到你和你的螢幕
- **🔒 完全離線運行**：所有功能在本機運行，對話不離開你的裝置，保障隱私安全
- **🧩 模組化高度可擴展**：繼承 Agent 介面可整合任何 Agent 架構（如 Mem0），簡單改配置即可切換 LLM/ASR/TTS 模組
- **🎨 角色自訂**：匯入自訂 Live2D 模型、語音克隆、人設 Prompt，打造獨一無二的 AI 陪伴者
- **💾 對話持久化**：聊天紀錄自動保存，可隨時切換到之前的對話

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/Open-LLM-VTuber/Open-LLM-VTuber.git
cd Open-LLM-VTuber

# 安裝依賴（v1.0.0+ 使用 uv）
pip install uv
uv sync

# 編輯配置檔
cp conf.yaml.example conf.yaml
# 修改 conf.yaml 設定 LLM 後端、TTS、ASR 等

# 啟動
uv run run_server.py
# 或使用 Docker
docker compose up -d
```

網頁版開啟 `http://localhost:1234`；桌面客戶端需要額外安裝 Electron 版本。詳細步驟見 [Quick Start](https://open-llm-vtuber.github.io/docs/quick-start)。

v1.0.0 有 breaking changes，建議重新部署而非原地升級。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心特色 | 離線 |
|------|-------|------|----------|------|
| **Open-LLM-VTuber** | ⭐8.4k | AI 陪伴 + Live2D | 語音互動 + 虛擬形象 | ✅ |
| [[moeru-ai-airi|AIRI]] | ⭐39.7k | AI Agent + 自架平台 | Computer-Use Agent | ✅ |
| [[Ollama|Ollama]] | ⭐171k | LLM 本地部署 | 模型管理和推論 | ✅ |
| [[open-webui-open-webui|Open WebUI]] | ⭐100k+ | LLM Web UI | RAG + 多模型管理 | ✅ |

← [[語音辨識]] · [[self-hosted-AI-platform]] · [[Ollama]]

## 來源

- GitHub: <https://github.com/Open-LLM-VTuber/Open-LLM-VTuber>
- 原始 README: `raw/2026-06-03-Open-LLM-VTuber-Open-LLM-VTuber.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [Open-LLM-VTuber/Open-LLM-VTuber](https://github.com/Open-LLM-VTuber/open-llm-vtuber) |
| Stars | ⭐8,356 |
| License | MIT (code), Live2D models under separate license |
| Language | Python |
| 收錄日期 | 2026-06-03 |