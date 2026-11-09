---
title: NVIDIA Kubernetes Engine（NVKE）
slug: dsx-ai-factory-nvke
created: 2026-11-09
updated: 2026-11-09
stars: 854
language: zh-TW
topics: ["self-hosted", "模型推論與部署"]
---

# NVIDIA Kubernetes Engine（NVKE）

> ⭐0.9k · 自架 GPU Kubernetes 叢集管理平面，目前為不建議生產使用的 Preview。

## 快速導航

- [[self-hosted]] — 相關研究與應用脈絡
- [[模型推論與部署]] — 技術定位與整合邊界

## 是什麼

NVKE 是平台團隊部署在自有 NVIDIA GPU 基礎設施上的管理平面，用來替客戶建立與管理獨立 Kubernetes workload clusters。每個 workload cluster 有自己的 control plane、etcd 與 node pools，客戶透過標準 Kubernetes API 和 kubectl 使用。

它不是 Kubernetes 發行版，也不是單純的 Cluster API flavour，而是由暫時 seed cluster 引導 management cluster，再建立工作叢集的工廠。與 LLM 的關係在運算基礎設施層，而非模型推論引擎；Preview 唯一相容的基礎設施供應者是 NVIDIA Infra Controller（NICo）。

## 核心特色

- **獨立工作叢集**
  透過 API 或 nvkectl 提出叢集需求，經 NICo 配置機器與建立 control plane。

- **生命週期管理**
  支援 node pool 建立、調整、刪除及 Kubernetes 升級，但替換與升級存在手動步驟和 Preview 限制。

- **節點身分驗證**
  透過 SPIFFE／SPIRE 與 TPM 進行節點 attestation，通過後才取得加入憑證。

- **建置與部署分工**
  NVKR 產生固定輸入的節點映像與元件，NVKE 負責部署；建置證據由 NVKR 管理。

- **無 GPU 評估路線**
  本地 quickstart 可用模擬機器；Linux／VM 需至少 6 CPU、12 GiB 可用 RAM、100 GiB 可用磁碟及 virtual TPM。

## 怎麼用

### 安裝或建置起點

以下是官方文件的操作路線，並非本次收錄已完成安裝的紀錄。

```bash
git clone https://github.com/dsx-ai-factory/nvke.git
cd nvke
make build
```

### 使用入口

```bash
./bin/nvkectl --help
```

### 前置條件與限制

- 建置前須備妥 README 固定的 Go 1.27.3 與 GNU Make 4+。make build 只產生 binaries，不會安裝管理平面或建立叢集。

- 安裝必須依 local quickstart 或 plan-installation 指南逐步完成。macOS 評估需走 Colima VM 路線；此頁沒有在主機上安裝任何叢集。

- 重要安全限制：安裝後 API authentication 預設關閉且採明文 HTTP，接入任何呼叫者前必須設定認證與受保護存取。

- 管理叢集不會自行升級、擴縮或替換；目前沒有管理平面升級及備份／還原程序。FDE 評估映像不提供靜態資料機密性，不可誤認為生產級加密保護。

## 跟其他方案的關係

以下按用途比較，不代表效能評測或功能等價。

| 方案 | 定位 | 選用與邊界 |
|---|---|---|
| NVKE | 管理叢集與工作叢集生命週期 | 不是模型 serving runtime |
| NVKR | 建置節點映像、元件與 release evidence | 提供 NVKE 消費的部署產物 |
| NICo | 基礎機器供應與控制 | Preview 唯一相容 provider |
| vLLM 等推論引擎 | 在計算資源上執行模型服務 | 位於應用工作負載層，不能代替 NVKE 的管理平面 |

## 相關概念

← [[self-hosted]] · [[模型推論與部署]]

## 來源

- [GitHub](https://github.com/dsx-ai-factory/nvke)
- [官方補充文件](https://github.com/dsx-ai-factory/nvke/blob/main/docs/overview/preview-status.md)
- README 原始快照：`raw/2026-11-09-dsx-ai-factory-nvke.md`
- Metadata 快照：`raw/2026-11-09-dsx-ai-factory-nvke.metadata.json`
- Stars 為 2026-11-09 擷取值；功能以該日 README 為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [dsx-ai-factory/nvke](https://github.com/dsx-ai-factory/nvke) |
| Stars | 854 |
| License | Apache-2.0（細節與例外見本文） |
| Language | Go |
| 收錄日期 | 2026-11-09 |
