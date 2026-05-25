---
title: 邊緣裝置 AI（Embedded AI）
created: 2026-05-17
---

# 邊緣裝置 AI（Embedded AI）

> 在資源受限的邊緣裝置上部署 AI 模型——讓 AI 不再依賴雲端，直接在裝置端運行。

## 是什麼

邊緣裝置 AI（Embedded AI / On-device AI）是指在資源受限的邊緣裝置（手機、嵌入式裝置、IoT 設備、瀏覽器等）上部署和運行 AI 模型的技術與方法。相較於雲端 AI，邊緣裝置 AI 強調低延遲、隱私保護和離線運作能力。

核心理念：不是所有 AI 推理都需要送到雲端。在裝置端直接運行模型，可以實現零延遲回應、零隱私風險、零網路依賴。

## 核心技術

- **模型壓縮**：量化（Quantization）、剪枝（Pruning）、知識蒸餾（Knowledge Distillation）——將大型模型縮小到邊緣裝置可承載的規模
- **高效推論框架**：ONNX Runtime、TensorRT、Core ML——在邊緣裝置上實現高效推論
- **專用硬體**：NPU（神經處理單元）、Edge TPU——邊緣裝置上的 AI 加速晶片
- **聯邦學習**：在保護隱私的前提下，讓多個邊緣裝置協作訓練模型

## 相關專案

| 專案 | 定位 | 關係 |
|------|------|------|
| [[supertone-inc-supertonic\|Supertonic]] | 裝置端 TTS | 典型的邊緣裝置 AI 應用——ONNX Runtime 本機推論 |
| [[Ollama]] | 本地 LLM 部署 | 邊緣裝置 AI 在 LLM 領域的實踐 |
| [[llama-cpp\|llama.cpp]] | 消費級硬體 LLM 推論 | 讓大型模型在邊緣裝置上可運行的關鍵技術 |
| [[NVIDIA-TensorRT-LLM]] | GPU 推論加速 | 推論框架層的加速技術 |
| [[ruvnet-RuView\|RuView]] | 邊緣裝置電腦視覺 | ESP32-S3 上的 AI 推理應用 |

## 相關概念

← [[模型推論與部署]] · [[LLM]] · [[supertone-inc-supertonic]]

## 來源
- 相關 GitHub/文章資料