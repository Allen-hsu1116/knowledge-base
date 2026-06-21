---
title: Voicebox
slug: jamiepine-voicebox
created: 2026-06-21
updated: 2026-06-21
stars: 31021
language: TypeScript
topics: [ai, cuda, whisper, mlx, voice-ai, voice-clone, qwen3-tts]
---

# Voicebox

> ⭐31k · 開源 AI 語音工作室——語音克隆、TTS、聽寫、MCP Agent 語音輸出，本地優先一站式搞定。

快速導航：[[OpenBMB-VoxCPM|VoxCPM]] · [[microsoft-VibeVoice|VibeVoice]] · [[MCP]] · [[Open-LLM-VTuber-Open-LLM-VTuber|Open-LLM-VTuber]]

## 是什麼

Voicebox 是一個本地優先的 AI 語音工作室，定位為 ElevenLabs 和 WisprFlow 的開源替代品，把語音輸入和輸出整合到一個應用裡。它能從幾秒鐘的音訊克隆任何聲音，用 7 種 TTS 引擎生成 23 種語言的語音，透過全域快捷鍵在任何文字框聽寫，還能讓任何支援 MCP 的 AI Agent 用你克隆的聲音跟你說話。

ElevenLabs 和 WisprFlow 分別占據語音 I/O 迴圈的兩端——ElevenLabs 做輸出（TTS），WisprFlow 做輸入（聽寫）。Voicebox 兩端都做，用一個內建本地 LLM（Qwen3）橋接輸入和輸出，支援 per-profile 人格設定，整個流程在你的機器上完成，資料不外傳。

Voicebox 用 Tauri（Rust）而非 Electron 建構，原生效能。支援 macOS（MLX/Metal）、Windows（CUDA）、Linux（ROCm）、Intel Arc、Docker 全平台。它同時提供 REST API 和內建 MCP Server，讓你可以把語音 I/O 整合到自己的應用和 Agent 裡。

## 核心特色

- **7 種 TTS 引擎**：Qwen3-TTS（0.6B/1.7B）、Qwen CustomVoice（9 種預設語音）、LuxTTS（輕量 1GB VRAM）、Chatterbox Multilingual（23 語言）、Chatterbox Turbo（350M 快速模型 + 情緒標籤）、HumeAI TADA（1B/3B 語音語言模型）、Kokoro（82M 超小模型 + 50 預設語音）
- **語音克隆與預設語音**：零樣本克隆只需參考音訊，或從 50+ 策展預設語音中選擇
- **23 語言支援**：從英文到阿拉伯文、日文、印地文、斯瓦希里文等
- **全域聽寫**：按住快捷鍵說話、放開即貼上（macOS 輔助功能驗證），每個文字框都有內建麥克風按鈕，Whisper STT 轉錄
- **MCP Agent 語音輸出**：一個 `voicebox.speak` 工具呼叫，任何 MCP-aware Agent（Claude Code、Cursor、Cline）就能用你克隆的聲音跟你說話
- **語音人格**：為每個語音設定自由形式人格描述，內建 Qwen3 LLM 可 Compose（生成角色台詞）、Rewrite（改寫為角色語氣）、Respond（回應）
- **後處理效果**：8 種音訊效果（Pitch Shift、Reverb、Delay、Chorus、Compressor、Gain、High-Pass、Low-Pass），4 種內建預設
- **Stories 編輯器**：多軌時間軸編輯器，用於對話、Podcast 和敘事
- **無限長度生成**：自動分段 + 交叉淡入淡出，最大 50,000 字元
- **API-first**：REST API + 內建 MCP Server（Streamable HTTP + stdio），四個工具：speak、transcribe、list_captures、list_profiles

## 怎麼用

```bash
# macOS（Apple Silicon）
# 從 voicebox.sh 下載 DMG

# Docker
docker compose up

# MCP 整合 — Claude Code
claude mcp add voicebox \
  --transport http \
  --url http://127.0.0.1:17493/mcp \
  --header "X-Voicebox-Client-Id: claude-code"

# REST API — 生成語音
curl -X POST http://127.0.0.1:17493/generate \
  -H "Content-Type: application/json" \
  -d '{"text": "Hello world", "profile_id": "abc123", "language": "en"}'

# REST API — Agent 語音輸出
curl -X POST http://127.0.0.1:17493/speak \
  -H "Content-Type: application/json" \
  -H "X-Voicebox-Client-Id: my-script" \
  -d '{"text": "Deploy complete.", "profile": "Morgan"}'

# REST API — 轉錄音訊
curl -X POST http://127.0.0.1:17493/transcribe \
  -F "audio=@recording.wav" \
  -F "model=whisper-turbo"
```

## 跟其他方案的關係

| 方案 | 核心定位 | 語音克隆 | 聽寫 | MCP | 本地優先 | TTS 引擎數 |
|------|----------|----------|------|-----|----------|-----------|
| [[jamiepine-voicebox\|Voicebox]] | AI 語音工作室 | ✅ | ✅ | ✅ | ✅ | 7 |
| [[OpenBMB-VoxCPM\|VoxCPM]] | 多語言 TTS | ✅ | — | — | ✅ | 1 |
| [[microsoft-VibeVoice\|VibeVoice]] | 語音 AI 家族 | — | ✅ | — | — | 多 |
| [[Open-LLM-VTuber-Open-LLM-VTuber\|Open-LLM-VTuber]] | AI 陪伴 VTuber | — | ✅ | — | ✅ | — |

與 [[OpenBMB-VoxCPM|VoxCPM]] 互補：VoxCPM 聚焦無 tokenizer 的多語言 TTS 模型，Voicebox 則是完整的語音 I/O 工作室，把 TTS、STT、聽寫、Agent 語音輸出整合在一起。與 [[microsoft-VibeVoice|VibeVoice]] 的關係在於兩者都涵蓋 ASR + TTS，但 Voicebox 是本地優先的桌面應用，VibeVoice 是微軟的語音 AI 模型家族。與 [[Open-LLM-VTuber-Open-LLM-VTuber|Open-LLM-VTuber]] 類似在於都是本地語音互動，但 Voicebox 聚焦語音 I/O 工作流，VTuber 聚焦虛擬角色陪伴。

## 相關概念

← [[OpenBMB-VoxCPM|VoxCPM]] · [[microsoft-VibeVoice|VibeVoice]] · [[MCP]] · [[Open-LLM-VTuber-Open-LLM-VTuber|Open-LLM-VTuber]]

## 來源

- GitHub：https://github.com/jamiepine/voicebox
- 官網：https://voicebox.sh
- 文件：https://voicebox.sh/docs
- MCP 指南：https://voicebox.sh/mcp
- Raw 檔案：`knowledge-base/raw/2026-06-21-jamiepine-voicebox.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [jamiepine/voicebox](https://github.com/jamiepine/voicebox) |
| Stars | ⭐31,021 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-06-21 |