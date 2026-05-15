---
title: RuView
date: 2026-05-15
stars: 56007
language: Rust
repo: ruvnet/RuView
---

# RuView — 用 WiFi 訊號實現空間感知與生命體徵監測的無攝影機方案

RuView 把普通 WiFi 訊號變成即時空間智慧系統，能偵測人員存在、測量呼吸和心率、追蹤活動，甚至穿牆監測——完全不需要攝影機或穿戴裝置，只需物理學。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [ruvnet/RuView](https://github.com/ruvnet/RuView) |
| Stars | ⭐56,007 |
| Language | Rust |
| 建立日期 | 2025-06-07 |
| 收錄日期 | 2026-05-15 |
| 授權 | MIT |

## 快速導航

- [[AI-Agent]] — 邊緣智慧模組在 ESP32 上獨立執行 AI 推論
- [[MCP]] — 支援 MCP proxy 整合
- [[嵌入式AI]] — 在 ESP32-S3 邊緣裝置上執行 AI 推論
- [[ruvnet-ruflo]] — 同一作者的 RuFlo 專案

## 詳細簡介

每台 WiFi 路由器都在你的空間裡充滿了無線電波。當人移動、呼吸甚至靜坐時，他們會以可測量的方式干擾這些波。RuView 使用低成本 ESP32 感測器擷取 Channel State Information（CSI），把這些干擾轉化為可操作的資料：誰在那裡、他們在做什麼、他們是否安好。

這個專案源自卡內基美隆大學的 DensePose From WiFi 研究，但 RuView 把整個系統做到了邊緣裝置上——一個 ESP32 mesh（每節點低至 $9）搭配 Cognitum Seed（$140 總 BOM）就能實現持久記憶、密碼學證明和 AI 整合。不需要雲端、不需要攝影機、不需要網路。

## 核心特色

### 無攝影機姿態估計

RuView 使用 WiFlow 架構從 10 個感測器信號中估計 17 個 COCO 關鍵點，完全不需要攝影機進行訓練。這項技術源自 CMU 的 DensePose From WiFi 研究，但 RuView 的 Self-Learning 系統（ADR-024）可以直接從原始 WiFi 資料自舉，不需要任何標註。MERIDIAN（ADR-027）確保模型在任何房間都能運作，不限於訓練環境。

### 生命體徵監測

- **呼吸偵測**：帶通濾波 0.1-0.5 Hz → 零交叉 BPM，範圍 6-30 BPM
- **心率監測**：帶通濾波 0.8-2.0 Hz → 零交叉 BPM，範圍 40-120 BPM
- **睡眠品質**：整夜監測，含睡眠分期分類和呼吸暫停篩檢

### 穿牆感知

利用 Fresnel 區域幾何和多路徑建模，RuView 可以穿透牆壁、層架和碎片進行偵測，深度可達 5 公尺。這讓它非常適合攝影機無法觸及的場景：停車場樓梯間、倉儲區、隔間辦公室。

### 邊緣智慧模組

Edge modules 是直接在 ESP32 感測器上執行的小程式，不需要網路也不需要雲端費用，即時回應。已經實作醫療（呼吸暫停篩檢、步態分析）、零售（客流追蹤、佇列長度）、建築（會議室佔用、HVAC 聯動）、安全（滯留偵測、入侵警報）等模組。

### 多頻率 Mesh 掃描

跨 6 個 WiFi 通道跳頻掃描，把鄰居的路由器當作免費的雷達發射源，讓感測頻寬增加 3 倍。多靜態融合使用 N×(N-1) 個鏈路的注意力加權跨視角嵌入，實現多角度覆蓋。

### 密碼學證明鏈

每個測量都透過 Ed25519 見證鏈進行密碼學證明，確保資料從感測器到結果的完整性和可驗證性。這在醫療和合規場景中特別重要。

## 安裝方式

```bash
# 方式一：Docker（模擬資料，不需硬體）
docker pull ruvnet/wifi-densepose:latest
docker run -p 3000:3000 ruvnet/wifi-densepose:latest
# 開啟 http://localhost:3000

# 方式二：ESP32-S3 實體感測（$9/node）
python -m esptool --chip esp32s3 --port COM9 --baud 460800 \
  write_flash 0x0 bootloader.bin 0x8000 partition-table.bin \
  0xf000 ota_data_initial.bin 0x20000 esp32-csi-node.bin
python firmware/esp32-csi-node/provision.py --port COM9 \
  --ssid "YourWiFi" --password "secret" --target-ip 192.168.1.20

# 方式三：完整系統含 Cognitum Seed（$140）
node scripts/rf-scan.js --port 5006       # 即時 RF 房間掃描
node scripts/snn-csi-processor.js --port 5006  # SNN 即時學習
node scripts/mincut-person-counter.js --port 5006  # 正確人數計算
```

## 技術棧

- **Rust** — 主要語言，訊號處理管線
- **ESP32-S3** — 邊緣感測硬體
- **Cognitum Seed** — 持久記憶與密碼學證明
- **WiFi CSI** — Channel State Information 感測
- **Spiking Neural Networks** — 邊緣自適應學習（30 秒內適應新環境）
- **Docker** — 模擬環境快速啟動

## 相關連結

- [GitHub Repo](https://github.com/ruvnet/RuView)
- [線上 Observatory Demo](https://ruvnet.github.io/RuView/)
- [Cognitum Seed](https://cognitum.one)
- [RuVector](https://github.com/ruvnet/ruvector/)