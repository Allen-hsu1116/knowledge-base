---
title: 邊緣裝置 AI（Embedded AI）
slug: embedded-AI
created: 2026-05-17
updated: 2026-05-17
language: zh-TW
---

# 邊緣裝置 AI（Embedded AI）

> 在資源受限的邊緣裝置上部署 AI 模型——讓 AI 不再依賴雲端，直接在裝置端運行。

## 快速導航

- ⚡ [[模型推論與部署]] · [[LLM]] · [[self-hosted-AI-platform]] · [[computer-vision]]
- 🔊 **Supertonic** → [[supertone-inc-supertonic|Supertonic]]（裝置端 TTS，ONNX Runtime 推論）
- 🦙 **Ollama** → [[Ollama]]（本地 LLM 部署）
- 👁️ **RuView** → [[ruvnet-RuView|RuView]]（ESP32-S3 邊緣視覺 AI）

## 是什麼

邊緣裝置 AI（Embedded AI / On-device AI）是指在資源受限的邊緣裝置（手機、嵌入式裝置、IoT 設備、瀏覽器等）上部署和運行 AI 模型的技術與方法。相較於雲端 AI，邊緣裝置 AI 強調低延遲、隱私保護和離線運作能力。

核心理念：不是所有 AI 推理都需要送到雲端。在裝置端直接運行模型，可以實現零延遲回應、零隱私風險、零網路依賴。

### 雲端 AI vs 邊緣 AI

| 維度 | 雲端 AI | 邊緣裝置 AI |
|------|---------|-------------|
| 延遲 | 網路往返 50-200ms | 裝置內 <10ms |
| 隱私 | 資料需傳輸到雲端 | 資料不出裝置 |
| 網路 | 依賴網路連線 | 完全離線運作 |
| 成本 | API 按量計費 | 一次性硬體成本 |
| 模型大小 | 無限制 | 需壓縮量化 |

## 核心特色

- **模型壓縮技術**：量化（Quantization）將模型從 FP32 壓縮到 INT8/INT4，體積縮小 4-8 倍，推論加速 2-4 倍；剪枝（Pruning）移除不重要的權重；知識蒸餾（Knowledge Distillation）用大模型教小模型
- **高效推論框架**：ONNX Runtime 提供跨平台推論加速；TensorRT 針對 NVIDIA GPU 優化；Core ML 為 Apple 生態系量身打造——這些框架讓邊緣裝置上的推論速度提升數倍
- **專用硬體加速**：NPU（神經處理單元）已成為現代手機標配；Edge TPU 為物聯網裝置提供低功耗 AI 推理；這些硬體讓邊緣 AI 推理不再需要 CPU/GPU 的巨大功耗
- **零延遲即時回應**：裝置端推理消除網路往返延遲，適合語音辨識、AR 體驗、安全監控等即時場景
- **隱私保護**：資料不出裝置，滿足 GDPR 等法規要求和企業資安政策
- **聯邦學習整合**：在保護隱私的前提下，讓多個邊緣裝置協作訓練模型，資料不出本地

## 怎麼用

### 使用 Supertonic（裝置端 TTS）

```python
from supertonic import TTS

tts = TTS(auto_download=True)
style = tts.get_voice_style(voice_name="M1")
text = "Hello, this is on-device text-to-speech."
wav, duration = tts.synthesize(text, voice_style=style, lang="en")
tts.save_audio(wav, "output.wav")
```

### 使用 Ollama 運行本地 LLM

```bash
# 安裝 Ollama
curl -fsSL https://ollama.com/install.sh | sh

# 運行小型模型（適合筆電）
ollama run gemma2:2b

# 運行較大的模型（需要 GPU）
ollama run llama3:8b
```

### 邊緣裝置部署策略

| 策略 | 說明 | 適用場景 |
|------|------|----------|
| 模型量化 | FP32 → INT8/INT4，體積縮 4-8 倍 | 手機、嵌入式裝置 |
| 知識蒸餾 | 大模型教小模型 | 需要特定能力的小模型 |
| 聯邦學習 | 多裝置協作訓練，資料不出本地 | 隱私敏感場景 |
| 模型拆分 | 部分在邊緣、部分在雲端 | 複雜模型的平衡方案 |

### 實際案例

- **Supertonic**：31 語言裝置端 TTS，ONNX Runtime 推論，CPU 即可即時合成
- **RuView**：ESP32-S3 上的電腦視覺 AI，微控制器也能做物體偵測
- **llama.cpp**：讓 LLaMA 等大模型在消費級硬體上運行，4-bit 量化後可在筆電跑 70B 模型

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[模型推論與部署]] | 基礎 | 推論優化是邊緣部署的核心技術 |
| [[self-hosted-AI-platform]] | 互補 | 自架是伺服器端，嵌入式是裝置端 |
| [[computer-vision]] | 應用 | 電腦視覺是邊緣 AI 的重要應用場景 |
| [[LLM]] | 模型 | LLM 量化後可在邊緣裝置運行 |
| [[diffusion-model]] | 邊緣 | 擴散模型量化後可在邊緣裝置生成圖像 |
| [[world-model]] | 邊緣 | 世界模型邊緣部署支援機器人實時決策 |

## 相關專案

| 專案 | 定位 | 關係 |
|------|------|------|
| [[supertone-inc-supertonic\|Supertonic]] | 裝置端 TTS | 典型的邊緣裝置 AI 應用——ONNX Runtime 本機推論 |
| [[Ollama]] | 本地 LLM 部署 | 邊緣裝置 AI 在 LLM 領域的實踐 |
| [[llama-cpp\|llama.cpp]] | 消費級硬體 LLM 推論 | 讓大型模型在邊緣裝置上可運行的關鍵技術 |
| [[NVIDIA-TensorRT-LLM]] | GPU 推論加速 | 推論框架層的加速技術 |
| [[ruvnet-RuView\|RuView]] | 邊緣裝置電腦視覺 | ESP32-S3 上的 AI 推理應用 |

## 相關概念

← [[模型推論與部署]] · [[LLM]] · [[supertone-inc-supertonic]] · [[self-hosted-AI-platform]] · [[computer-vision]]

## 來源

- [Supertonic 專案文件](../raw/2026-05-16-supertone-inc-supertonic.md)
- [Mano-P 邊緣 AI](../raw/2026-05-20-Mininglamp-AI-Mano-P.md)
- 相關 GitHub / 文章資料

---

_此頁由 daily-llm-trending 自動維護_