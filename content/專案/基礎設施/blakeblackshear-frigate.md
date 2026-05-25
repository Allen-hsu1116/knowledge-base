---
title: Frigate NVR
date: 2026-05-25
stars: 32846
repo: blakeblackshear/frigate
url: https://github.com/blakeblackshear/frigate
language: TypeScript
topics:
  - embedded-AI
  - computer-vision
  - self-hosted-AI-platform
---

# Frigate NVR

⭐ 33k · 本地即時物件偵測 NVR——為 Home Assistant 設計的 AI 攝影機監控系統。

## 一句話

Frigate 是整合 Home Assistant 的完整本地 NVR，用 OpenCV 和 TensorFlow 在本地即時偵測 IP 攝影機畫面中的物件，最低資源佔用、最高效能，支援 GPU/AI 加速器、MQTT 整合、24/7 錄影和低延遲即時觀看。

## 快速導航

- 🖥 **邊緣 AI** → [[embedded-AI]]（在資源受限裝置上部署 AI 模型）
- 👁 **電腦視覺** → [[computer-vision]]（物件偵測、影像分類等視覺 AI）
- 🏠 **自架 AI 平台** → [[self-hosted-AI-platform]]（自架、隱私優先的 AI 服務）

## 為什麼重要

智慧家居的 AI 監控一直有隱私問題——把攝影機影像送到雲端等於放棄隱私。Frigate 的核心賣點是「本地即時物件偵測」：用低開銷的動態偵測先篩選需要跑 AI 的區域，再用 TensorFlow 在獨立進程跑物件偵測，搭配 GPU/AI 加速器幾乎零延遲。3 萬顆星證明這是智慧家居 AI 最成熟的自架方案。

## 核心概念

- **本地即時偵測** — OpenCV + TensorFlow 在本地跑物件偵測，不用送雲端
- **動態偵測先行** — 用低開銷 motion detection 決定哪裡需要跑物件偵測
- **多進程架構** — 物件偵測在獨立進程，最大化 FPS 不影響主流程
- **Home Assistant 整合** — 官方自訂元件，MQTT 通信，即時觸發自動化
- **GPU/AI 加速** — 支援多種 AI 加速器（Coral、Jetson 等），超低開銷
- **WebRTC & MSE** — 低延遲即時觀看，RTSP 重串流減少攝影機連線數

## 跟我們的關聯

- [[embedded-AI]] — Frigate 是邊緣 AI 部署的成熟範例：本地推論、GPU 加速、資源最佳化
- [[computer-vision]] — 物件偵測 + 動態偵測的雙層架構是電腦視覺在物聯網場景的最佳實踐
- [[self-hosted-AI-platform]] — 與 Open-WebUI 同為自架 AI 的重要方案，但聚焦在視覺 AI
- [[blakeblackshear-frigate|Frigate NVR]] — 新概念：本地即時 AI 物件偵測的 NVR 系統

## 來源

- raw/2026-05-25-blakeblackshear-frigate.md