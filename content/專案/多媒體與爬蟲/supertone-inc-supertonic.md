---
title: Supertonic
date: 2026-05-16
---

# Supertonic

> 閃電般快速的裝置端多語言 TTS 系統——基於 ONNX Runtime，完全在本機推論，無需雲端、無 API 呼叫、無隱私疑慮。支援 31 種語言，可部署於瀏覽器、桌面與邊緣裝置。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [supertone-inc/supertonic](https://github.com/supertone-inc/supertonic) |
| Stars | ⭐6.0k |
| Language | Swift (主要) + 多語言 SDK |
| 建立日期 | 2025-11-18 |
| 收錄日期 | 2026-05-16 |
| 授權 | 開源（詳見 LICENSE） |

## 快速導航

- [[語音辨識]] — 語音相關技術
- [[模型推論與部署]] — 模型部署策略
- [[LLM]] — 大語言模型
- [[embedded-AI]] — 邊緣裝置 AI

## 是什麼

Supertonic 是 Supertone Inc. 開發的開源文字轉語音（TTS）系統，專為裝置端本地推論設計。基於 ONNX Runtime，所有語音合成都在使用者裝置上完成，不需要雲端服務、不需要 API 呼叫、沒有隱私外洩風險。Supertonic 3 支援 31 種語言，模型遠小於同級開源 TTS 系統，但在 CPU 上就能達到接近 A100 GPU 上大型基線模型的推論速度。

## 核心特色

- **完全本地推論**：所有語音合成都在使用者裝置上完成，零雲端依賴、零 API 呼叫、零隱私風險
- **31 種語言支援**：Supertonic 3 涵蓋中文、英文、日文、韓文等 31 種語言
- **極致輕量**：模型遠小於同級開源 TTS 系統，適合嵌入式裝置和行動端
- **CPU 上接近 GPU 效能**：在 CPU 推論速度接近 A100 GPU 上大型基線模型的水準
- **多平台 SDK**：Python、Node.js、瀏覽器三端支援，ONNX Runtime 統一推論引擎

## 怎麼用

**Python SDK（最快上手）：**
```bash
pip install supertonic
```

```python
from supertonic import TTS

tts = TTS(auto_download=True)
style = tts.get_voice_style(voice_name="M1")
text = "Hello, this is a test."
wav, duration = tts.synthesize(text, voice_style=style, lang="en")
tts.save_audio(wav, "output.wav")
```

**從原始碼建構：**
```bash
git clone https://github.com/supertone-inc/supertonic.git
cd supertonic
git lfs install
git clone https://huggingface.co/Supertone/supertonic-3 assets
cd py
uv sync
uv run example_onnx.py
```

**Node.js：**
```bash
cd nodejs && npm install && npm start
```

**瀏覽器：**
```bash
cd web && npm install && npm run dev
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[Ollama]] | 本地 LLM 部署 | 互補：Ollama 跑語言模型，Supertonic 跑語音合成 |
| ElevenLabs | 雲端 TTS | 對比：ElevenLabs 需要雲端，Supertonic 全本地推論 |
| Whisper | 語音辨識（STT） | 互補：Whisper 做 STT，Supertonic 做 TTS，組成完整語音管線 |
| [[vLLM]] | 推論引擎 | 不同領域：vLLM 做 LLM 推論，Supertonic 做 TTS 推論 |

## 相關概念

← [[語音辨識]] · [[模型推論與部署]] · [[LLM]] · [[embedded-AI]]

## 來源

- [原始資料](../raw/2026-05-16-supertone-inc-supertonic.md)

---

GitHub: [supertone-inc/supertonic](https://github.com/supertone-inc/supertonic) · Stars: ⭐6.0k · License: 開源 · 收錄日期: 2026-05-16