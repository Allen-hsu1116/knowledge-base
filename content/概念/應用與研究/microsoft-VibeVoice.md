---
title: VibeVoice
slug: microsoft-VibeVoice
created: 2026-06-07
updated: 2026-06-07
stars: 48476
language: Python
topics:
  - tts
  - asr
  - voice-ai
  - speech-recognition
  - text-to-speech
  - multilingual
  - microsoft
---

# VibeVoice

> ⭐48.5k · 微軟開源前沿語音 AI 家族——60 分鐘長語音辨識 + 90 分鐘多語者 TTS + 即時串流語音合成

快速導航：[[Whisper]] · [[OpenBMB-VoxCPM|VoxCPM]] · [[OpenMOSS-MOSS-TTS]] · [[語音辨識]]

## 是什麼

VibeVoice 是微軟開源的前沿語音 AI 模型家族，涵蓋語音辨識（ASR）和文字轉語音（TTS）兩大方向。與傳統語音模型最大的不同在於，VibeVoice 採用了連續語音 tokenizer（聲學與語義雙編碼器），以超低幀率 7.5 Hz 運作，兼顧音質保真與長序列處理效率。核心框架基於 next-token diffusion 架構——用 LLM 理解文字上下文與對話流，再用擴散解碼頭生成高音質聲學細節。

家族目前包含三個主要模型：VibeVoice-ASR（7B 參數，支援 60 分鐘單次辨識，輸出結構化轉錄含說話者、時間戳與內容）、VibeVoice-TTS（1.5B 參數，單次最長 90 分鐘、最多 4 位語者）、VibeVoice-Realtime（0.5B 參數，即時串流 TTS，首音延遲約 300ms）。所有模型均以 MIT 授權開源，可自由商用。

VibeVoice-ASR 已整合進 HuggingFace Transformers 生態系，支援 50+ 語言原生多語辨識、使用者自訂熱詞（Customized Hotwords）和 vLLM 加速推理；VibeVoice-TTS 的論文被 ICLR 2026 接收為 Oral 報告，是語音合成領域的重要里程碑。

## 核心特色

- **60 分鐘單次語音辨識**：VibeVoice-ASR 可在單次推理中處理最長 60 分鐘的連續音訊，無需分段切割，保持全局說話者追蹤和語意一致性，同步輸出說話者（Who）、時間戳（When）、轉錄內容（What）
- **使用者自訂熱詞**：ASR 支援提供自訂熱詞清單（人名、術語、背景資訊），大幅提升特定領域辨識準確率
- **90 分鐘多語者語音合成**：VibeVoice-TTS 單次可生成最長 90 分鐘語音，支援至多 4 位語者自然交替對話，保持音色一致性
- **即時串流 TTS**：VibeVoice-Realtime 僅 0.5B 參數，首音延遲約 300ms，支援串流文字輸入生成約 10 分鐘語音，適合部署於裝置端或低延遲場景
- **7.5 Hz 超低幀率連續 Tokenizer**：聲學與語義雙通道連續編碼器，相較傳統離散 token 方案保留更多音訊細節，同時大幅降低序列長度提升推理效率
- **50+ 語言原生多語辨識**：ASR 模型原生支援超過 50 種語言，無需語言切換標記；TTS 支援英文、中文等多語言輸出

## 怎麼用

安裝 VibeVoice（以 ASR 為例）：

```bash
pip install transformers
```

VibeVoice-ASR 推理（透過 HuggingFace Transformers）：

```python
from transformers import AutoModelForCausalLM, AutoProcessor

model = AutoModelForCausalLM.from_pretrained("microsoft/VibeVoice-ASR-HF")
processor = AutoProcessor.from_pretrained("microsoft/VibeVoice-ASR-HF")

# 處理長音訊（最長 60 分鐘）
result = processor.decode(
    model.generate(processor(audio_path, return_tensors="pt").input_ids, max_new_tokens=4096)
)
print(result)  # 輸出結構化轉錄： Who | When | What
```

VibeVoice-Realtime 串流 TTS（Colab 一鍵試玩）：
[Google Colab 示範](https://colab.research.google.com/github/microsoft/VibeVoice/blob/main/demo/vibevoice_realtime_colab.ipynb)

ASR Playground 線上試玩：<https://aka.ms/vibevoice-asr>

## 跟其他方案的關係

| 方案 | Stars | 方向 | 最大長度 | 多語者 | 語言數 | 熱詞 | 即時串流 | 開源授權 |
|------|-------|------|----------|--------|--------|------|----------|----------|
| **VibeVoice-ASR** | ⭐48.5k | ASR | 60 分鐘 | — | 50+ | ✅ | — | MIT |
| **VibeVoice-TTS** | — | TTS | 90 分鐘 | ✅ 4人 | 多語言 | — | — | MIT |
| **VibeVoice-Realtime** | — | 串流 TTS | 10 分鐘 | ❌ | 9+ | — | ✅ 300ms | MIT |
| [[Whisper]] | ⭐99.2k | ASR | ~30 秒 | ❌ | 99 | ❌ | ❌ | MIT |
| [[OpenBMB-VoxCPM|VoxCPM]] | ⭐22.8k | TTS | 可變 | ✅ | 30 | — | ✅ | Apache-2.0 |
| [[OpenMOSS-MOSS-TTS|MOSS-TTS]] | ⭐2.2k | TTS | 可變 | ❌ | 1+ | — | — | Apache-2.0 |

← [[Whisper]] · [[OpenBMB-VoxCPM]] · [[語音辨識]] · [[OpenMOSS-MOSS-TTS]]

## 來源

- GitHub: <https://github.com/microsoft/VibeVoice>
- Project Page: <https://microsoft.github.io/VibeVoice/>
- 原始 README: `raw/2026-06-07-microsoft-VibeVoice.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [microsoft/VibeVoice](https://github.com/microsoft/VibeVoice) |
| Stars | ⭐48,476 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-06-07 |