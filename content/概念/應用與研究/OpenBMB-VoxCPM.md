---
title: VoxCPM
slug: OpenBMB-VoxCPM
created: 2026-05-31
updated: 2026-05-31
stars: 22759
language: Python
---

# VoxCPM

> ⭐22.8k · 無 tokenizer 的多語言 TTS 系統，支援語音設計、可控克隆與 48kHz 高品質音訊輸出

快速導航：[[語音辨識]] · [[OpenMOSS-MOSS-TTS]] · [[supertone-inc-supertonic|Supertonic]] · [[diffusion-model|擴散模型]]

## 是什麼

VoxCPM 是由 OpenBMB 團隊開發的開源文字轉語音（TTS）系統，最大特色是完全拋棄了離散 tokenizer——直接以擴散式自回歸架構從文字生成連續語音表徵，不需要先把語音切成離散 token 再合成。這種設計讓合成結果更自然、更具表現力，避免了離散量化帶來的資訊損失。

VoxCPM2 是目前的主推版本，2B 參數模型在超過 200 萬小時的多語言語音資料上訓練，支援 30 種語言（含中文方言），提供語音設計（Voice Design）、可控克隆（Controllable Cloning）和終極克隆（Ultimate Cloning）三種模式。它基於 MiniCPM-4 骨幹網路，內建 AudioVAE V2 實現 16kHz→48kHz 的超解析度音訊輸出，無需額外上取樣器。

VoxCPM 系列從 2025 年 9 月首次開源以來快速迭代：0.5B 版本獲得 HuggingFace Trending 第一名，1.5 版本獲得 GitHub Trending 第一名，2.0 版本更將語言數從 5 種擴展到 30 種，並加入語音設計等全新能力，全面開源且可商用（Apache-2.0）。

## 核心特色

- **無 Tokenizer 架構**：不依賴離散語音 token，直接用擴散自回歸生成連續語音表徵，保留更多語音細節，合成更自然
- **語音設計（Voice Design）**：用自然語言描述聲音特徵（性別、年齡、語調、情緒、語速），即可創造全新語音，無需任何參考音訊
- **可控語音克隆**：只需一段短參考音訊即可克隆音色，還可用自然語言指令控制情緒、語速和風格，同時保持原始音色不變
- **30 種語言 + 中文方言**：輸入任何支援語言的文字即可直接合成，不需要語言標記；額外支援四川話、粵語、吳語等 9 種中文方言
- **48kHz 高品質即時串流**：RTF 可低至 0.3（RTX 4090），搭配 Nano-vLLM/vLLM-Omni 加速更低至 0.13，支援即時串流輸出
- **完全開源商用**：權重和程式碼以 Apache-2.0 釋出，可自由商用

## 怎麼用

安裝 VoxCPM：

```bash
pip install voxcpm
```

基本 TTS 使用（Python）：

```python
from voxcpm import VoxCPM
import soundfile as sf

model = VoxCPM.from_pretrained("openbmb/VoxCPM2", load_denoiser=False)

wav = model.generate(
    text="VoxCPM2 is the current recommended release.",
    cfg_value=2.0,
    inference_timesteps=10,
)
sf.write("demo.wav", wav, model.tts_model.sample_rate)
```

語音設計模式——用文字描述想要的聲音：

```python
wav = model.generate(
    text="(A young woman, gentle and sweet voice)Hello, welcome!",
    cfg_value=2.0,
    inference_timesteps=10,
)
```

克隆語音：

```python
wav = model.generate(
    text="This is a cloned voice.",
    reference_wav_path="path/to/voice.wav",
)
```

生產部署可搭配 Nano-vLLM 或 vLLM-Omni（PagedAttention + OpenAI 相容 API）。

## 跟其他方案的關係

| 方案 | Stars | 語言數 | 語音設計 | 克隆 | 音質 | 開源授權 |
|------|-------|--------|----------|------|------|----------|
| **VoxCPM2** | ⭐22.8k | 30 | ✅ 自然語言描述 | ✅ 可控 + 終極 | 48kHz | Apache-2.0 |
| [[OpenMOSS-MOSS-TTS\|MOSS-TTS]] | ⭐2.2k | 1+ | ✅ | ✅ | 多種 | Apache-2.0 |
| [[supertone-inc-supertonic\|Supertonic]] | ⭐6k | 多語言 | ❌ | ❌ | 可變 | 商用 |
| XTTS (Coqui) | ⭐13k+ | 17 | ❌ | ✅ | 24kHz | MPL-2.0 |
| Bark (Suno) | ⭐38k+ | 多語言 | ✅ | ❌ | 24kHz | MIT |

← [[語音辨識]] · [[diffusion-model|擴散模型]] · [[OpenMOSS-MOSS-TTS]]

## 來源

- GitHub: <https://github.com/OpenBMB/VoxCPM>
- 原始 README: `raw/2026-05-31-OpenBMB-VoxCPM.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [OpenBMB/VoxCPM](https://github.com/OpenBMB/VoxCPM) |
| Stars | ⭐22,759 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-05-31 |