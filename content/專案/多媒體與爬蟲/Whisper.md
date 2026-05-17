# Whisper

> OpenAI 開源的語音辨識模型，支援多語言辨識、翻譯和語言偵測。99.2K ⭐。

## 快速導航
- 🧠 **多模態 AI** → [[LLM]]（Whisper 是語音→文字的多模態橋樑）
- 🤖 **AI Agent** → [[AI-Agent]]（語音辨識是 Agent 的感知能力之一）

## 是什麼

Whisper 是 OpenAI 於 2022 年開源的語音辨識模型，使用 68 萬小時多語言資料訓練，支援語音辨識、語音翻譯、語言偵測和語音活動偵測。它是語音 AI 的里程碑，幾乎所有語音相關 AI 應用的基礎。

## 核心特色

- **多語言語音辨識**：100+ 語言
- **語音翻譯**：任意語言→英文
- **語言偵測**：自動辨識語言
- **Voice Activity Detection**：偵測語音片段
- **5 種模型大小**：tiny（39M）、base（74M）、small（244M）、medium（769M）、large（1550M）
- **Transformer seq2seq 架構**：統一處理多種語音任務

## 怎麼用

```bash
pip install -U openai-whisper
```

```python
import whisper

model = whisper.load_model("base")
result = model.transcribe("audio.mp3")
print(result["text"])  # 辨識結果
print(result["language"])  # 偵測語言
```

CLI 也能用：
```bash
whisper audio.mp3 --model base --language zh
```

## 跟其他方案的關係

Whisper 是語音辨識的基準模型，很多專案基於它做改進：
- **Faster Whisper**：用 CTranslate2 加速 4 倍
- **WhisperX**：加上強制對齊和說話人辨識
- **各種蒸餾模型**：Hugging Face 上有大量 Whisper 微調版本

## 相關概念
← [[LLM]] · [[AI-Agent]]

## 來源
- raw/2026-05-10-whisper.md

---

- **GitHub**: https://github.com/openai/whisper
- **Stars**: ⭐99,208
- **License**: MIT
- **收錄日期**: 2026-05-10