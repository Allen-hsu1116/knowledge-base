---
title: MOSS-TTS — 語音合成模型家族
slug: OpenMOSS-MOSS-TTS
created: 2026-05-29
updated: 2026-05-29
stars: 2241
language: Python
topics: [TTS, 語音合成, 語音克隆, 多語言]
---

# MOSS-TTS — 語音合成模型家族

> ⭐2241 · OpenMOSS 團隊的開源語音與音效生成模型家族，涵蓋長語音合成、多說話者對話、語音設計、音效生成和即時串流 TTS。

## 快速導航

[[語音辨識]] · [[模型推論與部署]] · [[rag|RAG]]

## 是什麼

MOSS-TTS Family 是由 MOSI.AI 和 OpenMOSS 團隊共同開發的開源語音與音效生成模型家族。它解決了一個核心問題：當一段語音需要「聽起來像真人、每個字發音準確、能切換說話風格、在數十分鐘內保持穩定、還要支援對話和角色扮演」時，單一 TTS 模型往往不夠用。

MOSS-TTS Family 把工作流拆成五個可獨立使用或組合的生產級模型：MOSS-TTS（旗艦語音合成）、MOSS-TTSD（多說話者對話生成）、MOSS-VoiceGenerator（純文字語音設計）、MOSS-TTS-Realtime（即時串流語音代理）、MOSS-SoundEffect（音效生成）。每個模型在各指標上達到業界領先水準，MOSS-TTSD 在客觀和主觀評測上都超過了 Doubao 和 Gemini 2.5-pro 等頂級閉源模型。

技術架構方面分為 MossTTSDelay（多頭平行 RVQ 預測 + delay pattern 排程，適合長語境穩定和生產部署）、MossTTSLocal（時間同步 RVQ + depth transformer，適合輕量串流場景）、MossTTSRealtime（分層文字-音訊輸入的即時合成，TTFB 僅 180ms）。v1.5 版本進一步強化了多語言合成（支援 31 種語言）、語音克隆穩定性、標點跟隨韻律和明確的暫停控制。

## 核心特色

- **五合一模型家族**：MOSS-TTS（旗艦語音合成 + 零樣本語音克隆）、MOSS-TTSD（多說話者超長對話）、MOSS-VoiceGenerator（純文字語音設計）、MOSS-TTS-Realtime（即時串流語音代理，TTFB 180ms）、MOSS-SoundEffect（雙語音效生成），各模型可獨立或組合使用。
- **31 種語言支援**：v1.5 新增粵語、荷蘭語、芬蘭語、印地語、馬其頓語、馬來語、羅馬尼亞語、斯瓦希里語、他加祿語、泰語、越南語等 11 種語言，加上原有的 20 種語言。
- **llama.cpp PyTorch-free 推論**：支援 GGUF 量化權重 + ONNX 音訊 tokenizer，8B 模型可跑在 8GB GPU 上。也支援 SGLang 推論後端，吞吐量約 3 倍加速。
- **OpenClaw 技能整合**：提供 feishu-voice-tts（飛書語音訊息）和 moss-tts-voice（MOSS-TTS API 語音生成）兩個 ClawHub 技能，可直接在 AI agent 中呼叫。
- **精細控制能力**：支援拼音/音素/時長的 token 級控制、`[pause X.Ys]` 明確暫停標記、語言標籤切換、長語音穩定生成，以及零樣本和長參考短文本語音克隆。

## 怎麼用

### 環境安裝（Conda）

```bash
conda create -n moss-tts python=3.10
conda activate moss-tts
pip install -e .

# 可選：安裝 FlashAttention 2 加速
pip install flash-attn --no-build-isolation
```

### 環境安裝（uv）

```bash
uv venv --python 3.10
source .venv/bin/activate
uv pip install -e .
```

### 基本使用

```python
from moss_tts import MossTTS

# 載入模型
model = MossTTS.from_pretrained("OpenMOSS-Team/MOSS-TTS-v1.5")

# 合成語音
audio = model.synthesize(
    text="你好，這是 MOSS-TTS 的語音合成測試。",
    reference_audio="reference.wav",  # 零樣本語音克隆
    language="zh"
)
audio.save("output.wav")
```

### llama.cpp 推論（無需 PyTorch）

```bash
# 下載 GGUF 權重和 ONNX tokenizer
# 8B 模型可在 8GB GPU 上運行
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **MOSS-TTS** | ⭐2.2k | 開源 TTS 模型家族 | 5 個子模型涵蓋全場景 | 31 語言 + 語音克隆 |
| [[Whisper|Whisper]] | ⭐99.2k | 語音辨識 | ASR 聽寫轉文字 | 多語言辨識 |
| [[supertone-inc-supertonic|Supertonic]] | ⭐6k | 邊緣裝置 TTS | 裝置端語音合成 | 低延遲 |
| ChatTTS | ⭐30k+ | 開源 TTS | 對話語音合成 | 中英文 |
| Fish Speech | ⭐15k+ | 開源 TTS | 多語言語音克隆 | 串流推論 |

## 相關概念

← [[語音辨識]] · [[模型推論與部署]] · [[embedded-AI]]

## 來源

- GitHub: <https://github.com/OpenMOSS/MOSS-TTS>
- 原始 README: `raw/2026-05-29-OpenMOSS-MOSS-TTS.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/OpenMOSS/MOSS-TTS |
| Stars | ⭐2241|
| License | Apache-2.0 |
| 收錄日期 | 2026-05-29 |
