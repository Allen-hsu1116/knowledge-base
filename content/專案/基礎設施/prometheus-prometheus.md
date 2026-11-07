---
title: Prometheus
slug: prometheus-prometheus
created: 2026-11-07
updated: 2026-11-07
stars: 67183
language: zh-TW
topics: ["observability", "self-hosted"]
---

# Prometheus

> ⭐67.2k · 以多維時間序列、PromQL 與 HTTP 拉取模型進行系統監控。

## 快速導航

- [[observability]] — 相關技術與工作流程。
- [[self-hosted]] — 相關技術與工作流程。

## 是什麼

Prometheus 是 CNCF 的系統與服務監控專案。它定期從指定目標收集 metrics、評估規則運算式、呈現結果，並在條件成立時觸發告警。

其資料模型以指標名稱與 key/value labels 定義時間序列，各單機節點可自主運作。對 LLM 服務，可用於量測自行暴露的請求量與延遲，但不會自動判斷模型回答品質，也不能取代完整日誌和追蹤系統。

## 核心特色

### 1. 多維指標

metric name 加上 labels，描述不同服務與執行狀態。

### 2. PromQL

以查詢語言篩選、聚合及分析時間序列。

### 3. HTTP pull

定期抓取端點，支援靜態設定與 service discovery。

### 4. 獨立節點與 federation

不依賴分散式儲存，也支援分層與水平 federation。

## 怎麼用

### 安裝

需先具備 Docker；官方 README 的試用命令將介面限制在本機 9090 埠。

```bash
docker run --name prometheus -d -p 127.0.0.1:9090:9090 prom/prometheus
```

### 起步與驗證

開啟 http://localhost:9090/，再依官方範例建立抓取設定並檢查 target 狀態。

### 使用邊界

要監控自己的服務，必須提供 metrics 端點及抓取設定；正式環境另規劃持久儲存、保留時間與存取控制。

> 本頁指令為官方文件整理的操作示例，收錄時未在本機安裝或執行此專案。

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|---|---|---|
| Prometheus | 以多維時間序列、PromQL 與 HTTP 拉取模型進行系統監控。 | 本頁收錄專案 |
| 日誌與追蹤系統 | 記錄事件細節或跨服務呼叫鏈 | Prometheus 專注數值時間序列；三種觀測訊號互補而非互相取代 |

此比較為依專案定位整理的編輯分析，不是效能測試或採用率排名。

## 相關概念

← [[observability]] · [[self-hosted]]

## 來源

- [GitHub](https://github.com/prometheus/prometheus)
- [官方文件](https://prometheus.io/docs/introduction/install/)
- README 快照：`raw/2026-11-07-prometheus-prometheus.md`
- Metadata 快照：`raw/2026-11-07-prometheus-prometheus-metadata.json`

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/prometheus/prometheus |
| Stars | 67,183（2026-11-07 快照） |
| License | Apache-2.0 |
| Language | Go |
| 收錄日期 | 2026-11-07 |
