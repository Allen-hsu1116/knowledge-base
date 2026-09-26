---
title: "Kubernetes The Hard Way"
slug: "kelseyhightower-kubernetes-the-hard-way"
created: "2026-09-26"
updated: "2026-09-26"
stars: 50123
language: "zh-TW"
topics: ["self-hosted", "self-education"]
---

# Kubernetes The Hard Way

> ⭐50.1k · 手動組裝 Kubernetes 叢集的實作教材，重點是理解元件，不是生產部署。

## 快速導航

- [[self-hosted]]
- [[self-education]]

## 是什麼

Kubernetes The Hard Way 是逐步建置 Kubernetes 的教學專案。它刻意不提供全自動的一鍵部署，讓學習者親自理解憑證、認證設定、etcd、控制平面與 worker 如何連接。

教材使用單一控制平面節點與兩個 worker，另外需要 jumpbox；README 要求同一網路上的四台 ARM64 或 AMD64 虛擬或實體機器。它不是 LLM 工具，而是自架 AI 服務可能用到的基礎設施學習資源；官方明確指出成果不應視為 production ready。

## 核心特色

### 手動組裝

以操作步驟理解 Kubernetes 元件責任，不把部署細節藏在自動化腳本後。

### 憑證與認證

涵蓋 CA、TLS、kubeconfig 與資料加密設定。

### 完整節點路徑

從 etcd、控制平面到 worker、kubectl 遠端存取與 Pod 路由。

### 驗證與清理

提供 smoke test 與 cleanup 章節，讓實驗有可檢查的終點。

### 版本快照

README 列出 Kubernetes 1.32.x、containerd 2.1.x、CNI 1.6.x 與 etcd 3.6.x；這是教材版本，不代表最新版本。

## 怎麼用

以下是依官方文件整理的安裝／起步方式；本次收錄未安裝或執行此專案。

```bash
git clone https://github.com/kelseyhightower/kubernetes-the-hard-way.git
cd kubernetes-the-hard-way
# 先閱讀 docs/01-prerequisites.md，再依 Labs 順序實作
```

1. 先準備四台同網段機器，核對 prerequisites 與 jumpbox 說明。
2. 逐章配置憑證、etcd、控制平面和 worker，不要跳過加密與認證章節。
3. 完成 kubectl 與 Pod 路由後執行官方 smoke test，再依 cleanup 清除自己的實驗資源。

### 限制與注意事項

收錄時僅查核文件，未替使用者建立叢集。LICENSE 檔與 GitHub 標示 Apache-2.0，但 README 教材版权段落宣告 CC BY-NC-SA 4.0；重製教材應保留此差異並核對授權範圍。

## 跟其他方案的關係

以下依用途與架構比較，並非效能實測或安全評比。

| 方案 | 定位 | 關係與差異 |
|---|---|---|
| 本專案 | Kubernetes 基礎學習 | 偏向理解手動 bootstrap，不追求快速上線。 |
| 自動化叢集安裝方案 | 減少重複部署操作 | 與教材目標不同，不代表手動方式更適合生產。 |
| LLM 應用框架 | 模型與工具協作 | 本教材不提供模型 API、Agent 或 RAG 功能。 |

## 相關概念

← [[self-hosted]] · [[self-education]]

## 來源

- [GitHub](https://github.com/kelseyhightower/kubernetes-the-hard-way)
- [官方 README](https://github.com/kelseyhightower/kubernetes-the-hard-way/blob/master/README.md)
- 原始快照：`raw/2026-09-26-kelseyhightower-kubernetes-the-hard-way.md`
- Metadata 快照：`raw/2026-09-26-kelseyhightower-kubernetes-the-hard-way.metadata.json`

---

| 欄位 | 資料 |
|---|---|
| GitHub | [kelseyhightower/kubernetes-the-hard-way](https://github.com/kelseyhightower/kubernetes-the-hard-way) |
| Stars | 50,123（2026-09-26 快照） |
| License | Apache-2.0（LICENSE）；README 教材另標 CC BY-NC-SA 4.0 |
| Language | 未標示（文件教材） |
| 收錄日期 | 2026-09-26 |
