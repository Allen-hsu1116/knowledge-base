---
title: FluidVoice
slug: altic-dev-FluidVoice
created: 2026-07-02
updated: 2026-07-02
stars: 5.5k
language: Swift
topics: Voice-AI, STT, Dictation, macOS, On-Device, Edge-AI, Whisper
---

# FluidVoice

> ⭐5.5k · altic-dev · Swift · GPL-3.0

## 快速導航

- 🎙️ **語音辨識** → [[語音辨識|語音辨識]]
- 🤖 **邊緣裝置 AI** → [[embedded-AI|邊緣裝置 AI]]
- 🧠 **Whisper** → [[Whisper|Whisper]]
- 📝 **AI Skills** → [[AI-Skills|AI Skills]]

## 是什麼

FluidVoice 是一款開源的 macOS 聽寫（Dictation）應用程式，主打完全在裝置上進行語音轉文字（on-device STT），並搭配自訓練的 AI 增強模型。它定位為本地版的 Wispr Flow 替代方案，讓使用者在不需要雲端服務的情況下，享受高品質的語音聽寫體驗。

核心亮點是「Fluid Intelligence」——一個完全本地運行的 AI 增強模型，負責智慧格式化、上下文感知大小寫和後處理。所有語音和文字資料都不離開使用者的 Mac，確保隱私安全。搭配多種語音模型（Nemotron Speech 3.5、Parakeet Flash、Whisper 等），使用者可依語言和延遲需求選擇最適模型。

除了基本聽寫，FluidVoice 還提供 Command Mode（語音控制 Mac）和 Write Mode（在任何應用文字框中聽寫或重寫文字），讓語音成為 Mac 的全方位操作介面。

## 核心特色

- **Fluid Intelligence 本地 AI 增強** — 完全在裝置上運行的 AI 模型，提供智慧格式化、上下文感知大小寫和後處理，零資料外傳
- **多語音模型支援** — Nemotron Speech 3.5（40 語言）、Parakeet Flash（極低延遲英文）、Parakeet TDT v3/v2（25 語言）、Cohere Transcribe（14 語言）、Apple Speech（內建）、Whisper（99 語言）
- **Command Mode 語音控制** — 啟動應用、執行捷徑、觸發系統操作和自動化工作流，完全免手觸鍵盤
- **Write Mode 任意文字框聽寫** — 在任何應用的任何文字欄位中聽寫新內容或重寫選取的文字
- **即時預覽 + 劉海感知** — 即時轉錄覆蓋層，支援 MacBook 劉海區域的視覺適配
- **全本機優先（Local-First）** — 語音和文字永不離開機器，除非使用者主動啟用雲端 AI 提供者
- **全域快捷鍵** — 從任何地方即時啟動語音捕獲，無需切換應用

## 怎麼用

### 安裝

```bash
# Homebrew 安裝（推薦）
brew install --cask fluidvoice
```

或從 [GitHub Releases](https://github.com/altic-dev/FluidVoice/releases/latest) 下載最新版本。

### 設定流程

1. 授權麥克風和輔助使用權限（聽寫和文字輸入所需）
2. 設定全域快捷鍵
3. 選擇語音模型（依語言和延遲需求）
4. （可選）啟用 Fluid Intelligence 本地 AI 增強
5. （可選）添加 OpenAI、Groq 或自訂提供者 API 金鑰進行雲端增強

### 系統需求

- macOS 15.0（Sequoia）或更新版本
- Apple Silicon Mac（支援所有模型）
- Intel Mac（僅支援 Whisper 模型，1.5.1+）
- 約 1 GB 磁碟空間（語音模型）
- 約 3.5 GB 磁碟空間（Fluid Intelligence 模型，可選）

## 跟其他方案的關係

FluidVoice 是 [[語音辨識|語音辨識]] 和 [[embedded-AI|邊緣裝置 AI]] 領域中，專注 macOS 聽寫場景的開源方案。

| 方案 | 平台 | 本地 STT | AI 增強 | 模型數 | 授權 |
|------|------|---------|---------|--------|------|
| **FluidVoice** | macOS | ✅ 完全本地 | ✅ Fluid Intelligence | 8+ | GPL-3.0 |
| Wispr Flow | macOS | 部分本地 | 雲端 | 商用 | 商用 |
| macOS 內建聽寫 | macOS | ✅ | 無 | 1 | 系統內建 |
| [[Whisper|Whisper]] | 跨平台 | ✅ | 無 | 多種 | MIT |

與 [[Whisper|Whisper]] 相比，FluidVoice 不只是 STT 引擎，而是完整的聽寫應用——包含 UI、Command Mode、Write Mode 和 AI 後處理。Whisper 是 FluidVoice 支援的模型之一，用於廣泛語言相容性（包括 Intel Mac）。與 [[microsoft-VibeVoice|VibeVoice]] 相比，FluidVoice 專注於本地聽寫體驗，而 VibeVoice 更偏向 ASR/TTS 研究模型。

## 相關概念

← [[語音辨識|語音辨識]] · [[embedded-AI|邊緣裝置 AI]] · [[Whisper|Whisper]] · [[AI-Skills|AI Skills]]

## 來源

- **GitHub**: https://github.com/altic-dev/FluidVoice
- **Release**: https://github.com/altic-dev/FluidVoice/releases/latest
- **Trendshift**: https://trendshift.io/repositories/16601
- **Raw**: `raw/2026-07-02-altic-dev-fluidvoice.md`

---

| 項目 | 值 |
|------|-----|
| **GitHub** | https://github.com/altic-dev/FluidVoice |
| **Stars** | ⭐5,494 |
| **License** | GPL-3.0 |
| **Language** | Swift |
| **收錄日期** | 2026-07-02 |