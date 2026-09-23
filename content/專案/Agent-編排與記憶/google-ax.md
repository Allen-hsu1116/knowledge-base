---
title: "AX（Google）"
slug: "google-ax"
created: "2026-09-23"
updated: "2026-09-23"
stars: 7605
language: "Go"
topics: []
---

# AX（Google）

> ⭐7.6k · Go · 基於 Agent Substrate 的宣告式 Agent 任務編排控制平面，整合工作區、網路政策與沙箱。

## 快速導航

- [[AI-Agent]]
- [[harness-engineering]]
- [[MCP]]

## 是什麼

AX 是 Google 發布的 Go 編排 runtime，以 Kubernetes 風格的 YAML 和 CLI 描述自主 Agent 任務。它把任務運算、工作區準備、出口網路限制及平台模型設定拆成 Task、Workspace、Gateway、Model 四種資源，而不是提供另一個聊天介面。

實際沙箱執行建立在 Agent Substrate 之上；AX 管理工作區接線、狀態與生命週期。README 將大規模高吞吐任務列為設計目標，但未提供可在本頁驗證的 billions 級壓測證據；目前仍會在穩定版前變更核心概念、協定及規格。

## 核心特色

- 四種宣告式資源：Task、Workspace、Gateway、Model。

- Task 隔離與資源限制：使用底層 Agent Substrate 執行沙箱工作負載。

- Workspace 預接 Git、MCP servers 與 skill packages。

- Gateway 出口 host allowlist：明確描述任務允許的網路目的地。

- Suspend／resume：暫停任務並保留可恢復的 actor 狀態。

- kubectl 式 CLI：apply、get、describe、watch，加上 ax ssh 除錯。

## 怎麼用

### 安裝

以下是供讀者參考的官方安裝方式；本次收錄不執行安裝。

```bash
go install github.com/google/ax/cmd/ax@latest
# 確認 $(go env GOPATH)/bin 位於 PATH
```

### 最小流程

```bash
# 在 AX 原始碼目錄，備妥叢集與 registry 後才部署
make deploy AX_IMAGE_REPO=<your-registry>

# 使用官方 examples/task.yaml
ax apply -f examples/task.yaml
ax get tasks
ax watch task task123
ax suspend task task123
ax resume task task123
```

### 前提與限制

- 需要 Kubernetes、ko、叢集可拉取的映像倉庫，以及可連線的 Agent Substrate Control API。

- make deploy 會部署 Redis 與控制平面，預設 namespace 是 ax-system。

- Model 憑證來自 Kubernetes Secret；範例網路及模型設定要依自身政策審閱。

- ax ssh 需任務開啟 spec.debug；安裝 CLI 不等於已部署後端。

- 本頁未部署叢集、安裝 CLI 或驗證平台吞吐量。

## 跟其他方案的關係

以下是依 README 定位整理的編輯比較，不是效能測試。

| 方案 | 主要責任 | 與本專案關係 |
|---|---|---|
| 一般 Agent SDK | 編寫推理／工具呼叫流程 | AX 著重任務的叢集執行、工作區及生命週期。 |
| Kubernetes | 通用容器編排 | AX 採相近宣告式 UX，額外建模 Agent 的 workspace、gateway。 |
| Agent Substrate | 底層沙箱執行 | AX 依賴其 Control API，不是替代實作。 |

專案處於穩定版前階段；API 為 ax.io/v1alpha1，正式導入需固定版本並預留遷移成本。

## 相關概念

← [[AI-Agent]] · [[harness-engineering]] · [[MCP]]

## 來源

- [GitHub repository](https://github.com/google/ax)
- [官方 README](https://github.com/google/ax/blob/main/README.md)
- [LICENSE](https://github.com/google/ax/blob/main/LICENSE)
- 原始快照：`raw/2026-09-23-google-ax.md`

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/google/ax |
| Stars | 7,605（2026-09-23 擷取） |
| License | Apache-2.0 |
| Language | Go |
| 收錄日期 | 2026-09-23 |
