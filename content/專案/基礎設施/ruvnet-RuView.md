---



title: RuView
slug: ruvnet-RuView
created: 2026-05-15
stars: '⭐56007'



updated: 2026-05-15
language: zh-TW
topics: []
---

# RuView

> 用 WiFi 訊號實現空間感知與生命體徵監測的無攝影機方案。CSI 感測 + 邊緣智慧 + 密碼學證明鏈，完全不需要攝影機或穿戴裝置。⭐56,007

## 快速導航
- 🤖 **AI Agent** → [[AI-Agent]]（邊緣智慧模組在 ESP32 上獨立執行 AI 推論）
- 🔌 **MCP** → [[MCP]]（支援 MCP proxy 整合）
- 🔄 **RuFlo** → [[ruvnet-ruflo]]（同一作者的 RuFlo 專案）

## 是什麼

RuView 把普通 WiFi 訊號變成即時空間智慧系統，能偵測人員存在、測量呼吸和心率、追蹤活動，甚至穿牆監測——完全不需要攝影機或穿戴裝置，只需物理學。

這個專案源自卡內基美隆大學的 DensePose From WiFi 研究，但 RuView 把整個系統做到了邊緣裝置上——一個 ESP32 mesh（每節點低至 $9）搭配 Cognitum Seed（$140 總 BOM）就能實現持久記憶、密碼學證明和 AI 整合。不需要雲端、不需要攝影機、不需要網路。

## 核心特色

- **無攝影機姿態估計**：使用 WiFlow 架構從 10 個感測器信號估計 17 個 COCO 關鍵點，Self-Learning 系統可直接從原始 WiFi 資料自舉
- **生命體徵監測**：呼吸偵測（6-30 BPM）、心率監測（40-120 BPM）、睡眠品質監測含呼吸暫停篩檢
- **穿牆感知**：利用 Fresnel 區域幾何和多路徑建模，穿透牆壁偵測深度可達 5 公尺
- **邊緣智慧模組**：直接在 ESP32 上執行，不需要網路也不需要雲端費用，即時回應
- **多頻率 Mesh 掃描**：跨 6 個 WiFi 通道跳頻掃描，感測頻寬增加 3 倍
- **密碼學證明鏈**：Ed25519 見證鏈確保資料完整性和可驗證性
- **脈衝神經網路**：適應速度快，30 秒內完成學習調整

### 應用場景

- 醫療照護：呼吸暫停篩檢、跌倒偵測、長者照護
- 零售：人流分析、熱區圖
- 辦公空間：佔用率監測、節能自動化
- 飯店：隱私保護的存在偵測

## 怎麼用

```bash
# Docker（模擬資料，不需硬體）
docker pull ruvnet/wifi-densepose:latest
docker run -p 3000:3000 ruvnet/wifi-densepose:latest

# ESP32-S3 實體感測（$9/node）
python -m esptool --chip esp32s3 --port COM9 --baud 460800 \
  write_flash 0x0 bootloader.bin 0x8000 partition-table.bin \
  0xf000 ota_data_initial.bin 0x20000 esp32-csi-node.bin
```

無硬體也能體驗：Docker 容器可用模擬資料跑整個 pipeline。

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[ruvnet-ruflo]] | 多 Agent 編排 | 同一作者的另一個專案 |
| [[AI-Agent]] | AI Agent | RuView 的邊緣智慧模組是 Agent 在 ESP32 上的實作 |
| WiFi CSI 研究 | 學術研究 | RuView 源自 CMU DensePose From WiFi 研究 |
| 雷達感測器 | 感測硬體 | 雷達需要專用硬體，RuView 只需 WiFi |

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[ruvnet-ruflo]]

## 來源

- raw/2026-05-15-ruvnet-RuView.md

---

- **GitHub**: https://github.com/ruvnet/RuView
- **Stars**: ⭐56,007
- **License**: MIT
- **收錄日期**: 2026-05-15