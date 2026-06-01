# Whisper

> OpenAI 開源的語音辨識模型，支援多語言辨識、翻譯和語言偵測。99.2K ⭐。

## 快速導航
- 🧠 **多模態 AI** → [[LLM]]（Whisper 是語音→文字的多模態橋樑）
- 🤖 **AI Agent** → [[AI-Agent]]（語音辨識是 Agent 的感知能力之一）

## 是什麼

Whisper 是 OpenAI 於 2022 年開源的語音辨識模型，使用 68 萬小時多語言資料訓練，支援語音辨識、語音翻譯、語言偵測和語音活動偵測。它是語音 AI 的里程碑，幾乎所有語音相關 AI 應用的基礎。99K+ stars，是語音辨識領域最具影響力的開源專案。

## 核心特色

- **多語言語音辨識**：100+ 語言，包含低資源語言
- **語音翻譯**：任意語言→英文，直接跨語言語音翻譯
- **語言偵測**：自動辨識語言，不需要事先指定
- **Voice Activity Detection**：偵測語音片段，過濾靜音
- **5 種模型大小**：tiny（39M）、base（74M）、small（244M）、medium（769M）、large（1550M），按需選擇精度和速度
- **Transformer seq2seq 架構**：統一處理多種語音任務（辨識、翻譯、偵測、VAD）
- **68 萬小時訓練資料**：涵蓋多語言、多場景、多品質的語音資料
- **魯棒性強**：對口音、背景噪音、技術術語有良好適應性

## 怎麼用

```bash
pip install -U openai-whisper
```

```python
import whisper

# 載入模型（可選：tiny, base, small, medium, large）
model = whisper.load_model("base")

# 語音辨識
result = model.transcribe("audio.mp3")
print(result["text"])       # 辨識結果
print(result["language"])   # 偵測語言

# 語音翻譯（任意語言→英文）
result = model.transcribe("audio.mp3", task="translate")

# 語言偵測
audio = whisper.load_audio("audio.mp3")
audio = whisper.pad_or_trim(audio)
mel = whisper.log_mel_spectrogram(audio).to(model.device)
_, probs = model.detect_language(mel)
print(f"Detected language: {max(probs, key=probs.get)}")
```

CLI 使用：
```bash
whisper audio.mp3 --model base --language zh
whisper audio.mp3 --model large --task translate
```

## 跟其他方案的關係

Whisper 是語音辨識的基準模型，很多專案基於它做改進：

| 專案 | 定位 | 速度 | 特色 |
|------|------|------|------|
| Whisper（原始） | 基準模型 | 1x | OpenAI 原始實作 |
| Faster Whisper | 加速版 | 4x | 用 CTranslate2 加速 |
| WhisperX | 增強版 | 4x+ | 加上強制對齊和說話人辨識 |
| Whisper.cpp | 本地推論 | — | C/C++ 實作，消費級硬體可用 |
| 蒸餾模型 | 輕量版 | — | HuggingFace 上大量微調版本 |

- **Faster Whisper**：用 CTranslate2 加速 4 倍，記憶體占用更低
- **WhisperX**：加上強制對齊（word-level timestamps）和說話人辨識（diarization）
- **Whisper.cpp**：C/C++ 實作，讓消費級硬體也能跑 Whisper
- **各種蒸餾模型**：Hugging Face 上有大量 Whisper 微調版本，針對特定語言或場景優化

## 相關概念
← [[LLM]] · [[AI-Agent]]

## 來源
- raw/2026-05-10-whisper.md

---

- **GitHub**: https://github.com/openai/whisper
- **Stars**: ⭐99,208
- **License**: MIT
- **收錄日期**: 2026-05-10