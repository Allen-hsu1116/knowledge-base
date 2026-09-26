---
title: "StarNet"
slug: "androoAGI-starnet"
created: "2026-09-26"
updated: "2026-09-26"
stars: 478
language: "zh-TW"
topics: ["AI-Agent", "harness-engineering", "MCP", "agent-persona"]
---

# StarNet

> ⭐0.5k · 將真實 Agent 工作、權限與交接映射為像素太空站的本地優先 Harness。

## 快速導航

- [[AI-Agent]]
- [[harness-engineering]]
- [[MCP]]
- [[agent-persona]]

## 是什麼

StarNet 是 local-first 桌面 Agent harness。它以像素太空站呈現工作狀態：房間代表有能力範圍的團隊，走廊代表允許的交接通道，擺設物件則對應 capability grant；官方強調畫面應反映 runtime 可證明的狀態，而不是裝飾性的模擬。

多個 Agent 具有自己的工作區、紀錄與有界權限，Node sidecar 負責模型、工具、持久化、預算與同意檢查，Tauri 提供桌面殼。它會產生真實模型呼叫和費用；local-first 指本地狀態管理，不等於雲端模型請求不離開裝置。

## 核心特色

### 空間化權限模型

以房間、走廊與物件表達團隊、交接與工具能力。

### 有界並行 Agent

各自保有 workspace、transcript、memory 與權限邊界。

### 多模型與本地選項

可使用 OpenRouter、支援的 OAuth provider，亦可連接 Ollama。

### 可追蹤交付

OUTBOX 保存實際檔案，成本、預算與執行紀錄落地磁碟。

### MCP 與排程

透過連接器、skills、recipes、cron 與有約束的 Night Shift 擴充工作。

### 既有 Agent 匯入

可讀取 OpenClaw 或 Hermes 的人格、指示、記憶與模型資訊；API keys 不隨匯入搬移。

## 怎麼用

以下是依官方文件整理的安裝／起步方式；本次收錄未安裝或執行此專案。

```bash
git clone https://github.com/androoAGI/starnet.git
cd starnet
node sidecar/index.js
# 開啟 http://localhost:8787
# 桌面開發另需 npm ci、Rust 與 Tauri prerequisites
```

1. 準備 Node.js 18+；README 說明 Node.js 22 與 CI 相符，純 sidecar 使用 Node 核心模組。
2. 在本機介面設定 provider，從一個低權限 Agent 與小預算任務開始。
3. 確認工具授權、交付檔案與帳本一致，再增加並行 Agent、MCP 或排程。

### 限制與注意事項

目前屬早期版本，官方表示 Windows 測試較多、macOS 實際覆蓋较少；Linux 不是公開支援的 release target。README 位於 feat/harness-backend 分支，本文為當日來源快照，不把官方能力描述當作本次實測保證。

## 跟其他方案的關係

以下依用途與架構比較，並非效能實測或安全評比。

| 方案 | 定位 | 關係與差異 |
|---|---|---|
| StarNet | 空間視覺化 Agent Harness | 以 runtime 狀態驅動畫面與能力邊界。 |
| 一般聊天介面 | 對話與回答 | 未必包含獨立工作區、交付檔案與可稽核成本帳本。 |
| 純視覺化模擬 | 角色與場景展示 | StarNet 宣稱執行真實模型及工具；仍需自行驗證具体版本。 |

## 相關概念

← [[AI-Agent]] · [[harness-engineering]] · [[MCP]] · [[agent-persona]]

## 來源

- [GitHub](https://github.com/androoAGI/starnet)
- [官方 README](https://github.com/androoAGI/starnet/blob/feat/harness-backend/README.md)
- 原始快照：`raw/2026-09-26-androoAGI-starnet.md`
- Metadata 快照：`raw/2026-09-26-androoAGI-starnet.metadata.json`

---

| 欄位 | 資料 |
|---|---|
| GitHub | [androoAGI/starnet](https://github.com/androoAGI/starnet) |
| Stars | 478（2026-09-26 快照） |
| License | MIT（程式碼）；名稱、logo、美術與品牌不包含在內 |
| Language | JavaScript |
| 收錄日期 | 2026-09-26 |
