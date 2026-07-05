---
title: Meetily
slug: Zackriya-Solutions-meetily
created: 2026-07-05
updated: 2026-07-05
stars: 15.3k
language: Rust
topics: ai-meeting-assistant, local-ai, ollama, whisper, privacy-focused, transcription
---

# Meetily

> ⭐15.3k · 隱私優先的 AI 會議助手，100% 本地處理，Rust 打造

## 快速導航

- 🧠 **語音辨識** → [[語音辨識\|語音辨識 (ASR/TTS)]]
- 🛠 **自架平台** → [[self-hosted\|自架]]
- 🔧 **Ollama** → [[Ollama\|Ollama]]
- 🔒 **隱私** → [[privacy\|隱私]]

## 是什麼

Meetily 是一個隱私優先的 AI 會議助手，完全在本地機器上運行。它捕捉會議音訊、即時轉錄、生成 AI 摘要——所有資料都不離開你的設備。由 Zackriya Solutions 開發，用 Rust 打造，支援 macOS 和 Windows。

定位是解決企業會議 AI 的隱私問題。雲端會議工具（Otter、Fireflies 等）將敏感討論存到第三方伺服器，造成合規風險（GDDR 罰款、非法錄音訴訟）。Meetily 用本地 AI 模型（Whisper/Parakeet 轉錄 + Ollama 摘要）確保完全資料主權。

支援多種 AI 提供者做摘要生成：Ollama（本地）、Claude、Groq、OpenRouter、或任何 OpenAI-compatible 端點。GPU 加速自動啟用（Apple Silicon Metal/CoreML、NVIDIA CUDA、Vulkan）。

## 核心特色

- **100% 本地處理** — 轉錄和摘要都在設備上完成，零雲端依賴
- **4x 更快轉錄** — Parakeet 和 Whisper 模型，即時逐字稿
- **語者分離** — SortFormer 自動辨識不同說話者
- **多 AI 摘要提供者** — Ollama 本地 / Claude / Groq / OpenRouter / OpenAI-compatible
- **GPU 加速** — Apple Silicon Metal + CoreML / NVIDIA CUDA / AMD-Intel Vulkan
- **音訊混合** — 麥克風 + 系統音訊同時擷取，智能 ducking 防爆音
- **匯入既有音訊** — 用不同模型/語言重新轉錄已有錄音
- **自定義 OpenAI 端點** — 整合企業內部 AI 基礎設施
- **離線優先** — 不需網路連線即可運作

## 怎麼用

### macOS

```bash
# 下載 .dmg
# https://github.com/Zackriya-Solutions/meeting-minutes/releases/latest
# 下載 meetily_0.4.0_aarch64.dmg
# 打開 .dmg → 拖入 Applications → 啟動
```

### Windows

```bash
# 下載 x64-setup.exe
# https://github.com/Zackriya-Solutions/meeting-minutes/releases/latest
# 執行安裝程式
```

### Linux（從原始碼編譯）

```bash
git clone https://github.com/Zackriya-Solutions/meeting-minutes
cd meeting-minutes/frontend
pnpm install
./build-gpu.sh
```

## 跟其他方案的關係

| 方案 | 隱私 | 轉錄引擎 | 摘要 AI | 平台 | 開源 |
|------|------|----------|---------|------|------|
| **Meetily** | ✅ 本地 | Whisper/Parakeet | Ollama/多選 | Mac/Win/Linux | ✅ |
| Otter.ai | ❌ 雲端 | 專有 | 專有 | Web/Mobile | ❌ |
| Fireflies.ai | ❌ 雲端 | 專有 | 專有 | Web/Mobile | ❌ |
| Whisper (OpenAI) | 可本地 | Whisper | — | 多平台 | ✅ |
| [[microsoft-VibeVoice\|VibeVoice]] | 可本地 | VibeVoice | — | 多平台 | ✅ |

← [[語音辨識|語音辨識]] · [[self-hosted|自架]]

## 來源

- GitHub: https://github.com/Zackriya-Solutions/meetily
- 官網: https://meetily.ai
- raw/2026-07-05-Zackriya-Solutions-meetily.md

---

| 欄位 | 值 |
|------|-----|
| **GitHub** | https://github.com/Zackriya-Solutions/meetily |
| **Stars** | ⭐ 15,283 |
| **License** | MIT |
| **Language** | Rust |
| **收錄日期** | 2026-07-05 |