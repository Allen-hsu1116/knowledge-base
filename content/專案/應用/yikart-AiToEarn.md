---
title: AiToEarn 用 AI 賺錢
slug: yikart-AiToEarn
date: 2026-05-13
---

# AiToEarn：用 AI 賺錢的一站式內容變現平台

> 透過 AI 自動化，幫助創作者、OPC（一人公司）與品牌在全球主流社群平台上構建、分發並變現內容。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [yikart/AiToEarn](https://github.com/yikart/AiToEarn) |
| Stars | ⭐ 11,864 |
| Language | TypeScript |
| 建立日期 | 2025-02-24 |
| 收錄日期 | 2026-05-13 |

## 快速導航

- [[AI-Agent]] — AI 智能體概覽
- [[MCP]] — Model Context Protocol
- [[sandbox]] — 沙箱環境

## 詳細簡介

AiToEarn 是一個圍繞內容創作者完整變現鏈路設計的一站式平台，核心理念是「讓每一位創作者都能用 AI 賺錢」。平台提供四大 Agent 能力：Monetize（變現）、Publish（發布）、Engage（互動）、Create（創作），覆蓋從內容產生到收益獲取的全流程。

支援的社群平台涵蓋抖音、小紅書、快手、B 站、TikTok、YouTube、Facebook、Instagram、Threads、Twitter(X)、Pinterest、LinkedIn 等超過 10 個全球主流平台。創作者可以在平台上出售內容完成商家的推廣任務，結算模式支援 CPS（按成交額）、CPE（按互動量）、CPM（按播放量）三種。

專案也支援 MCP 協議，可在 Claude、Cursor、OpenClaw 等任何支援 MCP 的 Agent 中直接使用。

## 核心特色

### 四大 Agent 能力

- **Monetize（變現）**：創作者在平台接任務，完成商家的推廣需求，以結果為導向結算（CPS/CPE/CPM）
- **Publish（發布）**：一鍵將內容分發到全球 10+ 平台，支援日曆排期規劃
- **Engage（互動）**：透過瀏覽器插件實現自動化互動運營——自動按讚收藏關注、AI 智慧回覆、評論挖掘（識別「求連結」「怎麼買」等高轉換信號）、品牌監測
- **Create（創作）**：用 Agent 重構內容製作流程，支援影片生成（Grok/Veo/Seedance）、影片翻譯、影片剪輯、圖文生成、批量生成

### MCP 協議支援

透過 MCP 協議整合到 Claude Desktop、Cursor、OpenClaw 等主流 AI 工具中，只需配置 MCP 地址和 API Key 即可使用。也支援 SSE 長連接方式。

### OpenClaw 原生支援

安裝 OpenClaw 插件後可直接在龍蝦中接收並執行 AiToEarn 的賺錢任務，一條指令搞定：

```bash
npx -y @aitoearn/openclaw-plugin-cli
```

### Docker 一鍵私有化部署

3 條指令即可完成私有化部署，適合團隊自建：

```bash
git clone https://github.com/yikart/AiToEarn.git
cd AiToEarn
docker compose up -d
```

啟動後訪問 `http://localhost:8080` 即可使用。

## 技術棧

- **TypeScript** + **Node.js** — 後端服務
- **React** — 前端介面
- **Electron** — 桌面客戶端
- **MongoDB** + **Redis** — 資料儲存與快取
- **MCP Protocol** — AI 工具整合協議

## 授權

開源專案（請參考 GitHub 上的 LICENSE 檔案）

## 相關連結

- [官網（國際版）](https://aitoearn.ai/)
- [官網（中國版）](https://aitoearn.cn/)
- [Docker 部署指南](https://github.com/yikart/AiToEarn/blob/main/DOCKER_DEPLOYMENT_CN.md)
- [貢獻指南](https://github.com/yikart/AiToEarn/blob/main/CONTRIBUTING.md)