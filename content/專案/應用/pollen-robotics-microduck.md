---
title: Microduck
slug: pollen-robotics-microduck
created: '2026-10-25'
updated: '2026-10-25'
stars: 10997
language: zh-TW
topics:
- AI-Agent
- self-education
---

# Microduck

> ⭐11.0k · 以 Rust daemons 執行強化學習動作策略的小型雙足機器人系統，非 LLM Agent。

## 快速導航

- [[AI-Agent]]
- [[self-education]]

## 是什麼

Microduck 是約 25 公分、800 公克的小型雙足機器人；這個 repo 是機器人上的執行系統。README 描述 RK3566 上的 50 Hz 控制迴圈驅動十五個伺服馬達，並管理相機、通訊與軟體更新。

動作策略訓練在另一個 microduck_rl repo 進行，使用 MuJoCo、PPO 與 ONNX 匯出。此 repo 負責載入策略及實際運行，不應把它寫成大型語言模型或把模擬器當成真實硬體驗證。

## 核心特色

- Rust workspace：多個 daemon 分工，沒有額外通用應用框架。

- 控制迴圈：robotd 管理馬達匯流排與神經策略。

- 統一通訊：Unix sockets 上的 JSON-RPC 合約連接控制端。

- 可回復更新：updaterd 驗證簽章並在健康檢查失敗時回滾。

- 感測與通訊：相機 WebRTC、深度感測、Bluetooth 與 gamepad。

- 模擬支援：同一組 daemon 連到 MuJoCo；硬體驅動不在模擬驗證範圍。

## 怎麼用

### 安裝與準備

先準備 Rust；模擬另需 microduck_rl checkout 與其 venv。以下為取得原始碼與建置步驟，非機器人刷機流程。

```bash
git clone https://github.com/pollen-robotics/microduck.git
cd microduck
cargo build
```

### 使用入口

```bash
scripts/duck-sim
scripts/duck-sim status
scripts/duck-sim ctl health
```

### 使用界線

- 需按官方 simulation 文件準備相鄰 microduck_rl 環境與 ONNX runtime。
- 相機與多機容器模式另有系統依賴；不要把基本建置當成完整部署。
- 真機動作涉及碰撞與跌倒風險，應在隔離空間及可急停條件下驗證。

## 跟其他方案的關係

| 方案 | 定位 | 選用界線 |
|---|---|---|
| microduck | 策略執行、控制、裝置管理 | 是機器人 runtime，而非 LLM 推理服務 |
| microduck_rl | MuJoCo／PPO 訓練與 ONNX 匯出 | 與本 repo 分工，不在這裡重做訓練 |
| LLM Agent | 語言任務規劃與工具呼叫 | 與機器人低階控制不同層次 |

概念連結用於對比 Agent 與實作學習，不表示專案內建語言模型。

## 相關概念

← [[AI-Agent]] · [[self-education]]

## 來源

- [GitHub](https://github.com/pollen-robotics/microduck)
- [README](https://github.com/pollen-robotics/microduck/blob/main/README.md)
- 原始快照：`raw/2026-10-25-pollen-robotics-microduck.md`
- Metadata：`raw/2026-10-25-pollen-robotics-microduck.metadata.json`
- [官方模擬說明](https://github.com/pollen-robotics/microduck/blob/main/docs/robot/simulation.md)
- [策略訓練專案](https://github.com/pollen-robotics/microduck_rl)

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/pollen-robotics/microduck |
| Stars | 10,997（2026-10-25 快照） |
| License | Apache-2.0 |
| Language | Rust |
| 收錄日期 | 2026-10-25 |
