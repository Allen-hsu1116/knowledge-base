---
title: Moonshine Voice
slug: moonshine-ai-moonshine
created: 2026-07-21
updated: 2026-07-21
stars: 9840
language: C++
topics:
  - stt
  - tts
  - voice
  - voice-recognition
  - intent-recognition
  - on-device
---

# Moonshine Voice

> ⭐9840 · 開源即時語音 AI 工具包，超低延遲 STT/TTS/意圖辨識，全裝置本地運行

## 快速導航


- 🔊 **語音辨識** → [[語音辨識]]
- 🎤 **Whisper 對比** → [[Whisper]]

## 是什麼

Moonshine Voice 是由 [Moonshine AI](https://moonshine.ai) 開發的開源語音 AI 工具包，專為建構即時語音代理和應用而設計。與傳統語音辨識模型（如 Whisper）不同，Moonshine 從一開始就針對串流和即時場景最佳化——所有運算都在裝置本地進行，不需要 API key、帳號或信用卡，兼顧速度與隱私。

Moonshine 的核心優勢在於解決了 Whisper 在即時語音場景下的四個痛點：固定 30 秒輸入窗口（浪費零填充計算）、不快取前次結果（重複計算）、低資源語言支援差（82 種語言僅 33 種 WER < 20%）、以及跨平台部署碎片化。Moonshine 第二代模型提供靈活輸入窗口、串流快取、語言專屬模型、以及統一的跨平台 C++ 核心函式庫。

框架涵蓋完整的語音處理管線：麥克風採集、語音活動偵測（VAD）、語音轉文字（STT）、語者辨識（diarization）、意圖辨識（intent recognition）、文字轉語音（TTS）、語音克隆（voice cloning）。開發者只需學習一套 API，就能在 Python、iOS（Swift）、Android（Java）、macOS、Linux、Windows、Raspberry Pi、IoT 和微控制器上部署。

## 核心特色

- **超低延遲串流**：Moonshine Medium Streaming 延遲僅 107ms（MacBook Pro），比 Whisper Large v3（11,286ms）快 100 倍以上，遠低於 200ms 回應門檻
- **比 Whisper V3 Large 更準**：在 HuggingFace OpenASR 排行榜上，Moonshine Medium Streaming（245M 參數）WER 6.65%，勝過 Whisper Large v3（1.5B 參數）的 7.44%
- **全裝置本地運行**：Python、iOS、Android、macOS、Linux、Windows、Raspberry Pi、微控制器、DSP 全支援，零雲端依賴
- **串流增量快取**：支援音訊增量輸入，快取 encoder 和 decoder 狀態，避免重複計算已處理的音訊
- **語言專屬模型**：提供英文、西班牙文、中文、日文、韓文、阿拉伯文、越南文、烏克蘭文等專屬模型，同尺寸下準確度更高
- **Batteries Included**：STT、TTS、語音克隆、語者分離、意圖辨識、對話代理一個函式庫搞定

## 怎麼用

Python 安裝與即時聽寫：

```bash
pip install moonshine-voice
moonshine-voice mic --language en
```

意圖辨識（語義匹配自訂指令）：

```bash
moonshine-voice intent
```

文字轉語音：

```bash
moonshine-voice tts --language en_us --text "Hello world"
```

Raspberry Pi 部署：

```bash
sudo pip install --break-system-packages moonshine-voice
moonshine-voice mic --language en
```

iOS / Android / macOS / Windows：從 GitHub Releases 下載對應平台的範例專案，用 Xcode / Android Studio / Visual Studio 開啟即可。

Python API（建構對話代理）：

```python
from moonshine import Transcriber, TextToSpeech

transcriber = Transcriber(language="en")
tts = TextToSpeech(language="en_us")
# transcriber 透過 EventListener 回報語音事件
# tts 將回應文字合成語音
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **Moonshine Voice** | ⭐9.8k | 語音 AI 工具包 | 串流快取低延遲 | 全裝置本地 |
| [[Whisper]] | ⭐99.2k | STT 模型 | 30 秒固定窗口 | 82 語言多語模型 |
| [[microsoft-VibeVoice\|VibeVoice]] | ⭐48.5k | ASR/TTS | 長語音辨識 | 串流 TTS |
| [[jamiepine-voicebox\|Voicebox]] | ⭐31.0k | 語音工作室 | 7 TTS 引擎 | MCP 整合 |

## 相關概念


← [[語音辨識]] · [[Whisper]]

## 來源

- GitHub: <https://github.com/moonshine-ai/moonshine>
- 官網: <https://moonshine.ai>
- 研究論文: <https://arxiv.org/abs/2410.15608>
- 原始 README: `raw/2026-07-21-moonshine-ai-moonshine.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/moonshine-ai/moonshine |
| Stars | ⭐9840|
| License | MIT (NOASSERTION) |
| 收錄日期 | 2026-07-21 |
