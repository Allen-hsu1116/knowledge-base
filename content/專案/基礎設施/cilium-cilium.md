---
title: "Cilium"
slug: cilium-cilium
created: 2026-09-18
updated: 2026-09-18
stars: 25266
language: zh-TW
topics: ["self-hosted", "observability"]
---

# Cilium

> ⭐25.3k · 以 eBPF 實作 Kubernetes 網路、安全政策與流量觀測；不是 LLM 框架

## 快速導航

- [[self-hosted]]
- [[observability]]

## 是什麼

Cilium 是以 eBPF 為資料平面的容器網路、安全與可觀測性平台。它提供 Layer 3 網路，可選原生路由或 overlay，並用身分識別而非固定 IP 管理 L3–L7 網路政策。

它也包含分散式負載平衡、跨叢集連線與服務網格能力。對 AI 平台而言，它處理的是服務與工作負載的網路底座，不負責模型推論、Prompt 管理或 Agent 規劃。

本次來源是 GitHub Trending，屬周邊基礎設施收錄；與 LLM 的關聯是部署層的編輯判斷，不代表專案自稱 AI 工具。

## 核心特色

- **eBPF 資料平面**：把網路、安全和可見性邏輯掛入 Linux 核心。

- **多種網路模式**：支援 VXLAN、Geneve overlay 與原生路由。

- **身分導向政策**：按工作負載身分與標籤控制流量，而非只綁定 IP。

- **負載平衡**：支援替代 kube-proxy；實際模式需按叢集配置。

- **Cluster Mesh**：跨 Kubernetes 叢集共享服務與身分政策。

- **可觀測性**：以網路流量視角協助診斷服務連線與安全事件。

## 怎麼用

### 安裝與啟動

需先有使用 CNI 的測試 Kubernetes 叢集與 Cilium CLI；官方穩定版指南列出 Linux kernel >= 5.10。CLI 請依官方指南選擇平台安裝。

```bash
cilium install 1.20.2
cilium status --wait
cilium connectivity test
```

### 使用流程

1. 確認 kubectl context 指向測試叢集，而非直接覆蓋既有正式環境。
2. 執行安裝後等待元件健康，並跑連通性測試。
3. 按需求再啟用網路政策、Hubble 或跨叢集連線。

### 限制與注意

- 這些命令是官方文件範例，本次沒有實際修改叢集。
- 替換 CNI 或 kube-proxy 會影響既有網路，必須另做遷移與回滾規劃。
- README 的 Apache-2.0 是 API 主授權標籤；子元件仍應檢查個別檔案授權。

## 跟其他方案的關係

以下是依功能分層的編輯比較，不是實测效能排名。

| 方案 | 定位 | 關係與選擇 |
|---|---|---|
| Cilium | 網路與政策資料平面 | 處理服務連線、隔離與可觀測性 |
| kube-proxy | Kubernetes Service 流量轉送 | Cilium 在適當配置下可替代此角色 |
| LLM 觀測平台 | Prompt、token 與推論追蹤 | 與網路流量觀測互補，不互相替代 |

## 相關概念

← [[self-hosted]] · [[observability]]

## 來源

- [GitHub](https://github.com/cilium/cilium)
- [官方 README](https://github.com/cilium/cilium/blob/main/README.rst)
- 原始快照：`raw/2026-09-18-cilium-cilium.md`
- [官方快速安裝](https://docs.cilium.io/en/stable/gettingstarted/k8s-install-default/)

---

| 欄位 | 內容 |
|---|---|
| GitHub | [cilium/cilium](https://github.com/cilium/cilium) |
| Stars | 25,266（2026-09-18 擷取） |
| License | Apache-2.0 |
| Language | Go（原始碼）；zh-TW（本頁） |
| 收錄日期 | 2026-09-18 |
