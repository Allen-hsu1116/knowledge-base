# BigBodyCobain Shadowbroker

> 開源即時地理空間情報平台，整合 60+ 情報源到單一互動地圖，支援 AI Agent 共同分析

## 快速導航
- 🛠 **沙盒環境** → [[sandbox]]（開放式安全研究環境）
- 🕸 **網頁爬蟲** → [[web-scraping]]（大規模公開資料收集技術）
- 🤖 **AI Agent** → [[AI-Agent]]（Agent 指令通道整合）

## 是什麼

Shadowbroker 是一個分散式情報平台，將 60+ 個公開情報源（飛機 ADS-B、船舶 AIS、衛星、地震、CCTV、GPS 干擾、警用頻道等）匯聚到單一互動地圖介面。支援 Docker 一鍵部署，內建 AI Agent 指令通道，讓 AI Agent 可以作為共同分析師操作所有圖層。

## 核心特色

- **35+ 可切換情報圖層**：軍機追蹤、衛星監控、CCTV 網路、GPS 干擾區、地震、野火等
- **AI Agent 指令通道**：HMAC 簽章的 agentic 命令通道，支援 OpenClaw 和其他 Agent 協議
- **InfoNet 去中心化通訊**：內建去中心化情報通訊層，Gate Persona 身份系統，Ed25519 簽章
- **SAR 地表變化偵測**：透過 NASA OPERA 和 Copernicus EGMS 偵測毫米級地表變形
- **多視覺模式**：DEFAULT / SATELLITE / FLIR 熱成像 / NVG 夜視 / CRT 復古終端
- **右鍵情報報告**：點擊地圖任意位置取得國家檔案、元首資料、最新衛星照片

## 怎麼用

```bash
# Docker 一鍵部署
git clone https://github.com/bigbodycobain/Shadowbroker.git
cd Shadowbroker
docker compose pull
docker compose up -d
# 開啟 http://localhost:3000

# 後端 port 衝突時，建立 .env 設定
echo "BACKEND_PORT=8001" > .env
docker compose up -d

# 更新
docker compose pull && docker compose up -d
```

## 跟其他方案的關係

- 與 [[opensandbox]] 不同：OpenSandbox 是程式碼安全沙盒，Shadowbroker 是情報分析沙盒
- 與 [[web-scraping]] 相關：本質上是對 60+ 公開 API 的大規模資料收集與視覺化
- AI Agent 整合是獨特賣點：大多 OSINT 工具不原生支援 Agent 操控

## 相關概念
← [[sandbox]] · [[web-scraping]] · [[AI-Agent]]

## 來源
- raw/2026-05-19-BigBodyCobain-Shadowbroker.md

---

- **GitHub**: https://github.com/BigBodyCobain/Shadowbroker
- **Stars**: ⭐7555
- **License**: MIT
- **收錄日期**: 2026-05-19