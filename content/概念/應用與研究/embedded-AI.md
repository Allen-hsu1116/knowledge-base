---
title: 邊緣裝置 AI
slug: embedded-AI
language: zh-TW
---

# 邊緣裝置 AI

> 在資源受限的邊緣裝置上部署 AI 模型——低延遲、隱私保護、離線運行，不依賴雲端。

## 核心內容

邊緣裝置 AI（Embedded AI / On-device AI）是指在資源受限的邊緣裝置（手機、嵌入式裝置、IoT 設備、瀏覽器等）上部署和運行 AI 模型的技術與方法。相較於雲端 AI，邊緣裝置 AI 強調低延遲（裝置內 <10ms vs 雲端 50-200ms）、隱私保護（資料不出裝置）和離線運作能力。

核心理念是「不是所有 AI 推理都需要送到雲端」。在裝置端直接運行模型，可以實現零延遲回應、零隱私風險、零網路依賴。這對於語音辨識、AR 體驗、安全監控等即時場景至關重要，也滿足 GDPR 等法規對資料隱私的要求。

邊緣裝置 AI 的關鍵技術包括模型壓縮（量化將 FP32 壓縮到 INT8/INT4，體積縮小 4-8 倍）、高效推論框架（ONNX Runtime、TensorRT、Core ML）、專用硬體加速（NPU、Edge TPU）和聯邦學習（多裝置協作訓練，資料不出本地）。這些技術讓邊緣裝置上的 AI 推理不再需要 CPU/GPU 的巨大功耗。

## 關鍵要素

- **模型壓縮技術**：量化（FP32→INT8/INT4）、剪枝（移除不重要的權重）、知識蒸餾（大模型教小模型）
- **高效推論框架**：ONNX Runtime 跨平台加速、TensorRT 針對 NVIDIA GPU 優化、Core ML 為 Apple 生態系打造
- **專用硬體加速**：NPU 已成為現代手機標配，Edge TPU 為物聯網裝置提供低功耗 AI 推理
- **零延遲即時回應**：裝置端推理消除網路往返延遲，適合即時場景
- **隱私保護**：資料不出裝置，滿足 GDPR 等法規要求和企業資安政策
- **聯邦學習整合**：在保護隱私的前提下，讓多個邊緣裝置協作訓練模型

## 各框架的做法

- **Supertonic** → 裝置端 TTS，ONNX Runtime 推論，31 語言 CPU 即時合成
  👉 詳見 [[supertone-inc-supertonic|Supertonic]]
- **Ollama** → 本地 LLM 部署，讓大模型在消費級硬體上運行
  👉 詳見 [[Ollama]]
- **llama.cpp** → 4-bit 量化推論，讓 70B 模型在筆電上可運行
  👉 詳見 [[llama-cpp|llama.cpp]]
- **RuView** → ESP32-S3 上的電腦視覺 AI，微控制器也能做物體偵測
  👉 詳見 [[ruvnet-RuView|RuView]]
- **Mano-P** → VLA GUI-Agent，邊緣裝置上的 Computer-Use 能力
  👉 詳見 [[Mininglamp-AI-Mano-P|Mano-P]]
- **Frigate NVR** → 邊緣 AI 監控，本地 NVR 搭配電腦視覺
  👉 詳見 [[blakeblackshear-frigate|Frigate NVR]]
- **FluidVoice** → macOS 聽寫應用，完全本地 on-device STT + AI 增強
  👉 詳見 [[altic-dev-FluidVoice|FluidVoice]]

## 相關概念

- [[模型推論與部署]] — 推論優化是邊緣部署的核心技術
- [[LLM|大語言模型]] — LLM 量化後可在邊緣裝置運行
- [[computer-vision|電腦視覺]] — 電腦視覺是邊緣 AI 的重要應用場景
- [[self-hosted|自架 AI 平台]] — 自架是伺服器端，嵌入式是裝置端，兩者互補
- [[diffusion-model|擴散模型]] — 擴散模型量化後可在邊緣裝置生成圖像

## 來源

- Supertonic、Ollama、llama.cpp、RuView、Mano-P 等邊緣 AI 專案文件
- 知識庫內模型推論與部署相關專案頁面