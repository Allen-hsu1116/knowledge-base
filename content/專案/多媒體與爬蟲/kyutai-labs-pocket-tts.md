---
title: Pocket TTS
slug: kyutai-labs-pocket-tts
created: 2026-07-08
updated: 2026-07-08
stars: 6168
language: Python
topics:
  - tts
  - text-to-speech
  - cpu
  - voice-cloning
  - speech-synthesis
---

# Pocket TTS

> ⭐6.2k · 裝得進口袋的 CPU 級 TTS——100M 參數、6 倍即時速度、200ms 首段延遲，MacBook Air M4 上只用 2 核心

## 快速導航
- [[語音辨識]]
- [[embedded-AI]]
- [[模型推論與部署]]
- [[jamiepine-voicebox]]
- [[OpenBMB-VoxCPM]]


快速導航：[[語音辨識]] · [[embedded-AI]] · [[模型推論與部署]]

## 是什麼

Pocket TTS 是由 Kyutai Labs 開發的輕量級文字轉語音（TTS）模型，專門設計在 CPU 上高效運行。它只有 100M 參數，不需要 GPU，不需要 Web API——只需要 `pip install pocket-tts` 和一次函數呼叫就能生成語音。在 MacBook Air M4 的 CPU 上，它能達到約 6 倍即時速度，且只使用 2 個 CPU 核心。

模型支援串流輸出，從呼叫到第一個音訊片段只需約 200ms。它支援語音克隆——你可以提供任意 WAV 音檔作為聲音參考，模型就能模仿那個聲音來生成語音。目前支援 6 種語言：英語、法語、德語、葡萄牙語、義大利語、西班牙語，且能處理無限長的文字輸入。

Pocket TTS 也小到能直接在瀏覽器中通過 WebAssembly/JavaScript 運行。社群已經有多個瀏覽器端實作，包括 Rust+WASM、ONNX Runtime Web、JAX-JS 等版本。還有 MLX（Apple Silicon 優化）、C++ 單檔運行時、C# TorchSharp 等替代實作。

## 核心特色

- **CPU 原生運行**：100M 參數的小模型，完全在 CPU 上運行，不需要 GPU。在 MacBook Air M4 上達到約 6 倍即時速度，只使用 2 個 CPU 核心
- **低延遲串流**：約 200ms 即可取得第一個音訊片段，支援串流輸出，適合即時語音應用
- **語音克隆**：提供任意 WAV 音檔作為聲音參考，模型就能模仿該聲音生成語音。支援匯出 voice state 為 safetensors 加速後續載入
- **多語言支援**：英語、法語、德語、葡萄牙語、義大利語、西班牙語。部分語言提供 24 層高品質變體
- **Python API + CLI**：提供簡潔的 Python API 和命令列工具，支援 `generate`、`serve`（本地 HTTP 伺服器）、`export-voice` 等命令
- **無限長文字**：能處理任意長度的文字輸入，不需要手動分段
- **瀏覽器端運行**：模型小到能透過 WebAssembly 在瀏覽器中直接運行，社群已有 Rust+WASM、ONNX、JAX-JS 等實作

## 怎麼用

### 安裝

```bash
pip install pocket-tts
# 或
uv add pocket-tts
```

### CLI 使用

```bash
# 基本生成（使用預設語音和文字）
uvx pocket-tts generate

# 指定語音和文字
pocket-tts generate --voice alba --text "Hello world, this is a test."

# 啟動本地伺服器（Web 介面）
pocket-tts serve
# → http://localhost:8000

# 匯出語音狀態（加速後續載入）
pocket-tts export-voice --voice some_audio.wav --output voice.safetensors
```

### Python API

```python
from pocket_tts import TTSModel
import scipy.io.wavfile

tts_model = TTSModel.load_model()
voice_state = tts_model.get_state_for_audio_prompt("alba")
audio = tts_model.generate_audio(voice_state, "Hello world, this is a test.")
scipy.io.wavfile.write("output.wav", tts_model.sample_rate, audio.numpy())
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | CPU 運行 | 模型大小 | 語音克隆 | 瀏覽器端 |
|------|-------|------|---------|---------|---------|---------|
| **Pocket TTS** | ⭐6.2k | TTS | ✅ 原生 | 100M | ✅ | ✅ WASm |
| [[jamiepine-voicebox\|Voicebox]] | ⭐31k | TTS 工作室 | 部分 | 多引擎 | ✅ | ❌ |
| [[OpenBMB-VoxCPM\|VoxCPM]] | ⭐31k | TTS | 部分 | 較大 | ✅ | ❌ |
| [[microsoft-VibeVoice\|VibeVoice]] | ⭐48.5k | ASR/TTS | 部分 | 較大 | 部分 | ❌ |
| [[OpenMOSS-MOSS-TTS\|MOSS-TTS]] | ⭐2.2k | TTS | 部分 | 較大 | ✅ | ❌ |

← [[語音辨識]] · [[embedded-AI]] · [[模型推論與部署]]

## 相關概念

← [[語音辨識] · [[embedded-AI] · [[模型推論與部署] · [[jamiepine-voicebox] · [[OpenBMB-VoxCPM]

## 來源

- GitHub: <https://github.com/kyutai-labs/pocket-tts>
- Demo: <https://kyutai.org/pocket-tts>
- 技術報告: <https://kyutai.org/blog/2026-01-13-pocket-tts>
- 論文: <https://arxiv.org/abs/2509.06926>
- 原始 README: `raw/2026-07-08-kyutai-labs-pocket-tts.md`
- 授權: MIT

---

| 項目 | 值 |
|------|-----|
| GitHub | [kyutai-labs/pocket-tts](https://github.com/kyutai-labs/pocket-tts) |
| Stars | ⭐6,168 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-07-08 |