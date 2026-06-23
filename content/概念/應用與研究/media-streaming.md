---
title: 媒體串流
slug: media-streaming
language: zh-TW
---

# 媒體串流

> 透過網路即時傳輸音視訊內容，支援隨選和直播場景。

## 核心內容

媒體串流是透過網路即時傳輸音視訊內容的技術，支援隨選（VOD）和直播（Live）兩種主要場景。在自架生態系中，媒體串流伺服器讓使用者能在自有設備上運行個人 Netflix、Spotify 或 YouTube，完全掌控自己的媒體收藏和觀看體驗。

自架媒體串流的核心動機是擺脫商業串流平台的限制：訂閱費持續上漲、內容因地區不同而不同、平台隨時可能下架影片、廣告越來越多。自架媒體伺服器讓使用者擁有自己的內容庫，不受任何平台政策和地區限制，一次建置後無月費成本。

開源媒體串流伺服器的功能已相當成熟，支援轉碼（適配不同裝置和頻寬）、字幕、多使用者設定檔、家長控制、離線下載等功能。配合硬體加速（Intel QuickSync、NVIDIA NVENC），即使是低功耗設備也能即時轉碼高畫質影片。

除了傳統媒體串流，AI 時代也帶來了新的應用場景：AI 影片生成工具可以自動製作影片內容，語音合成技術可以生成播客和有聲書，而 VTuber 平台則結合了即時語音互動和虛擬形象串流。

## 關鍵要素

- **轉碼與自適應** — 即時轉碼適配不同裝置和頻寬，支援自適應位元率串流
- **多格式支援** — 支援影片、音樂、電視節目、有聲書等多種媒體類型
- **多使用者管理** — 個人設定檔、觀看進度同步、家長控制、權限分組
- **硬體加速** — Intel QuickSync、NVIDIA NVENC 加速轉碼，降低 CPU 負載
- **離線下載** — 支援將媒體下載到行動裝置離線觀看
- **AI 內容生成** — AI 影片生成、語音合成、VTuber 等新形態串流應用

## 各框架的做法

- **Jellyfin** → 開源媒體串流伺服器，自架 Netflix/Spotify 替代品
  👉 詳見 [[jellyfin-jellyfin|Jellyfin]]
- **Frigate NVR** → 自架 NVR 監控系統，邊緣 AI 物件偵測即時串流
  👉 詳見 [[blakeblackshear-frigate|Frigate NVR]]
- **Open-LLM-VTuber** → AI VTuber 陪伴平台，語音互動和 Live2D 串流
  👉 詳見 [[Open-LLM-VTuber-Open-LLM-VTuber|Open-LLM-VTuber]]
- **Open Notebook** → NotebookLM 替代品，自架 AI 知識 Podcast
  👉 詳見 [[lfnovo-open-notebook|Open Notebook]]
- **Voicebox** → AI 語音工作室，7 種 TTS 引擎、語音克隆、聽寫
  👉 詳見 [[jamiepine-voicebox|Voicebox]]

## 相關概念

- [[self-hosted|自架]] — 媒體串流是自架娛樂基礎設施的核心
- [[free-domain|免費域名]] — 媒體串流服務需要域名對外提供存取
- [[AI-video-generation|AI 影片生成]] — AI 生成影片內容可串流播放
- [[generative-AI|生成式 AI]] — AI 語音和影片生成擴展媒體串流內容來源

## 來源

- Jellyfin 專案文件
- 自架媒體串流生態系整理
- AI 媒體生成工具應用場景