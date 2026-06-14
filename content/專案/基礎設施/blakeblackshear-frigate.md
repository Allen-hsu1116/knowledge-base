---
title: Frigate NVR
slug: blakeblackshear-frigate
date: 2026-05-25
stars: 32846
repo: blakeblackshear/frigate
url: https://github.com/blakeblackshear/frigate
language: TypeScript
updated: 2026-06-14
---

# Frigate NVR

⭐ 33k · 本地即時物件偵測 NVR——為 Home Assistant 設計的 AI 攝影機監控系統。

## 一句話

Frigate 是整合 Home Assistant 的完整本地 NVR，用 OpenCV 和 TensorFlow 在本地即時偵測 IP 攝影機畫面中的物件，最低資源佔用、最高效能，支援 GPU/AI 加速器、MQTT 整合、24/7 錄影和低延遲即時觀看。

## 快速導航

- ⚡ [[embedded-AI]] · [[computer-vision]] · [[self-hosted-AI-platform]]

## 是什麼

Frigate 是一款開源（MIT License）的本地 NVR（Network Video Recorder）系統，專為 Home Assistant 智慧家居平台設計。核心功能是用 OpenCV 和 TensorFlow 在本地即時偵測 IP 攝影機畫面中的物件。

它採用雙層篩選架構：先用低開銷的動態偵測（motion detection）決定畫面中哪些區域需要跑 AI，再用 TensorFlow 在獨立進程中進行物件偵測。這種設計最大化 FPS 同時不影響主流程，支援 GPU 和 AI 加速器（如 Google Coral、NVIDIA Jetson）幾乎零延遲。

Frigate 透過 MQTT 與 Home Assistant 緊密整合，可以即時觸發智慧家居自動化。同時支援 24/7 錄影、WebRTC/MSE 低延遲即時觀看、RTSP 重串流減少攝影機連線數。

## 核心特色

- **本地即時偵測** — OpenCV + TensorFlow 在本地跑物件偵測，影像不送雲端
- **動態偵測先行** — 用低開銷 motion detection 篩選需要跑 AI 的區域，節省資源
- **多進程架構** — 物件偵測在獨立進程，最大化 FPS 不影響主流程
- **Home Assistant 整合** — 官方自訂元件，MQTT 通信，即時觸發自動化
- **GPU/AI 加速** — 支援 Google Coral、NVIDIA Jetson 等多種 AI 加速器，超低開銷
- **24/7 錄影** — 支援持續錄影和事件錄影，根據偵測物件設定保留策略
- **低延遲即時觀看** — WebRTC & MSE 支援，RTSP 重串流減少攝影機連線數
- **遮罩與區域編輯器** — 內建 mask 和 zone 編輯器，精確定義偵測區域
- **多用戶審查工作流** — 多攝影機時間軸 scrubbing，快速回放

## 怎麼用

### Docker 部署（推薦）

```yaml
# docker-compose.yml
services:
  frigate:
    container_name: frigate
    image: ghcr.io/blakeblackshear/frigate:stable
    ports:
      - "5000:5000"      # Web UI
      - "8554:8554"      # RTSP restreams
      - "8555:8555/tcp"  # WebRTC
      - "8555:8555/udp"  # WebRTC
    volumes:
      - /path/to/config:/config
      - /path/to/storage:/media/frigate
      - /etc/localtime:/etc/localtime:ro
    devices:
      - /dev/bus/usb:/dev/bus/usb  # Coral USB
    environment:
      - FRIGATE_RTSP_PASSWORD=password
```

### 基本配置

```yaml
# config.yml
cameras:
  front_door:
    enabled: true
    ffmpeg:
      inputs:
        - path: rtsp://camera:554/stream
          roles:
            - detect
            - rtmp
    detect:
      enabled: true
```

### Home Assistant 整合

1. 安裝 Frigate 自訂元件（HACS 或手動）
2. 在 Home Assistant 中新增 Frigate 整合
3. 攝影機、binary sensor、sensor 自動出現在 HA 中
4. 設定自動化：偵測到人 → 開燈、送通知等

## 跟其他方案的關係

| 特性 | Frigate | ZoneMinder | Shinobi | Blue Iris |
|------|---------|-----------|---------|-----------|
| 開源 | ✅ MIT | ✅ GPL | ✅ AGPL | ❌ 商業 |
| AI 偵測 | ✅ TensorFlow | 需外掛 | 需外掛 | 需外掛 |
| Home Assistant | ✅ 官方整合 | 社群整合 | 社群整合 | 社群整合 |
| 本地偵測 | ✅ | ✅ | ✅ | ✅ |
| GPU 加速 | ✅ Coral/Jetson | 有限 | 有限 | ✅ NVIDIA |
| 低延遲觀看 | ✅ WebRTC | ❌ | ❌ | ✅ |
| 24/7 錄影 | ✅ | ✅ | ✅ | ✅ |
| 隱私 | ✅ 完全本地 | ✅ | ✅ | ⚠️ 部分 |
| 成本 | 免費 | 免費 | 免費 | 需授權 |

## 相關概念

← [[embedded-AI]] · [[computer-vision]] · [[self-hosted-AI-platform]]

## 為什麼重要

智慧家居的 AI 監控一直有隱私問題——把攝影機影像送到雲端等於放棄隱私。Frigate 的核心賣點是「本地即時物件偵測」：用低開銷的動態偵測先篩選需要跑 AI 的區域，再用 TensorFlow 在獨立進程跑物件偵測，搭配 GPU/AI 加速器幾乎零延遲。3 萬顆星證明這是智慧家居 AI 最成熟的自架方案。

## 來源

- [原始資料](../raw/2026-05-25-blakeblackshear-frigate.md)