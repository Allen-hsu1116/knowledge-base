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

## 詳細簡介

Supertonic 是 Supertone Inc. 開發的開源文字轉語音（TTS）系統，專為裝置端本地推論設計。基於 ONNX Runtime，它完全在使用者裝置上執行——不需要雲端服務、不需要 API 呼叫、沒有隱私外洩風險。這使得它特別適合隱私敏感場景和低延遲需求的應用。

Supertonic 3 是最新版本，支援 31 種語言（v2 僅支援 5 種），改善了朗讀準確度，減少了重複和跳過失敗，同時保持與 v2 相容的公共 ONNX 介面，讓現有整合可以無縫升級。模型大小遠小於同級開源 TTS 系統，但在 CPU 上就能達到接近 A100 GPU 上大型基線模型的推論速度。

專案提供完整的跨平台 SDK：Python、Node.js、瀏覽器（onnxruntime-web）、Java、C++、C#、Go、Swift、Rust 和 iOS，幾乎涵蓋所有主流開發環境。

## 核心特色

### 裝置端 ONNX 推論

基於 ONNX Runtime 執行，支援 CPU 和 GPU 推論。所有語音合成都在本機完成，不依賴任何雲端服務。這是 Supertonic 最根本的設計原則——隱私和低延遲的基礎。

### 31 種語言支援

Supertonic 3 從 v2 的 5 種語言大幅擴展到 31 種，涵蓋主要的全球語言。在 WER/CER 指標上，即使與 VoxCPM2 等大型 TTS 模型相比也保持在競爭力範圍內，同時維持輕量的裝置端部署路徑。

### Voice Builder 語音克隆

[Voice Builder](https://supertonic.supertone.ai/voice_builder) 讓使用者可以將自己的聲音轉換為可部署的邊緣原生 TTS 語音，並保有永久所有權。這使得客製化語音應用成為可能。

### 跨平台 SDK

提供 10 種語言/平台的 SDK：Python（pip install supertonic）、Node.js、瀏覽器、Java、C++、C#（.NET 9+）、Go、Swift、Rust、iOS。每個 SDK 都有完整的範例和建構指引。瀏覽器版本使用 onnxruntime-web 實現純客戶端推論。

### 輕量高效

模型大小遠小於同級開源 TTS 系統。在 CPU 上的推論速度甚至可與 A100 GPU 上運行的大型基線模型競爭，記憶體使用量大幅降低。支援 batch inference 提升吞吐量，輸出 16-bit WAV 格式。

## 安裝方式

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

## 技術棧

- **Inference**: ONNX Runtime
- **Model Format**: ONNX
- **Audio Output**: 16-bit WAV
- **Languages**: Swift, Python, TypeScript, Java, C++, C#, Go, Rust
- **Model Hosting**: Hugging Face (Git LFS)
- **Browser**: onnxruntime-web

## 授權

開源授權（詳見 LICENSE 檔案）

## 相關連結

- [GitHub](https://github.com/supertone-inc/supertonic)
- [HuggingFace Demo (v3)](https://huggingface.co/spaces/Supertone/supertonic-3)
- [HuggingFace Models (v3)](https://huggingface.co/Supertone/supertonic-3)
- [Voice Builder](https://supertonic.supertone.ai/voice_builder)
- [Python SDK Docs](https://supertone-inc.github.io/supertonic-py)