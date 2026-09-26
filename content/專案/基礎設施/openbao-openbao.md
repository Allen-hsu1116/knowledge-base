---
title: "OpenBao"
slug: "openbao-openbao"
created: "2026-09-26"
updated: "2026-09-26"
stars: 7731
language: "zh-TW"
topics: ["self-hosted", "privacy"]
---

# OpenBao

> ⭐7.7k · 以開放治理維護的 secrets、憑證與金鑰管理系統。

## 快速導航

- [[self-hosted]]
- [[privacy]]

## 是什麼

OpenBao 集中管理應用需要的敏感資料，包括資料庫帳密、API keys、憑證和加密金鑰。它在資料寫入持久儲存前進行加密，並提供按需產生、租期與撤銷等生命週期機制。

它屬於安全基礎設施，而非 LLM 或 Agent 框架。對自架 AI 的關聯在於管理模型供應商與工具服務的憑證；這是可能的整合用途，不代表 README 宣稱有內建 LLM 連接器。是否真正降低風險仍取決於認證、授權、部署和操作方式。

## 核心特色

### 加密儲存

任意 key/value secrets 在寫入底層儲存前加密，支援多種儲存後端。

### 動態 secrets

對支援的 AWS、SQL 等系統按需產生具權限的憑證。

### 租期與撤銷

動態憑證可透過 lease 管理生命週期，並支援單一或樹狀撤銷。

### 加解密服務

可替資料加解密而不必保存該資料，將加密責任與應用資料儲存分離。

### 正式 Go 整合介面

提供 api/v2 與 sdk/v2；README 明確不支援把整個主程式當 Go library 匯入。

## 怎麼用

以下是依官方文件整理的安裝／起步方式；本次收錄未安裝或執行此專案。

```bash
git clone https://github.com/openbao/openbao.git
cd openbao
mkdir -p bin
go build -o bin/bao .
# 僅限本機學習／開發
./bin/bao server -dev
```

1. 準備 Go，版本優先核對 repo 的 .go-version。
2. 依上方官方 build 路徑產生 bao；開發模式只用於學習，不當成正式環境。
3. 正式部署前閱讀官方文件的儲存、認證、政策、TLS 與備份規範，再設計最小權限存取。

### 限制與注意事項

不要把正式 API keys 放入教學範例或未保護的 dev server。靜態 KV 值不會因『租期』描述就自動在外部供應商輪替；撤銷效果依 secrets engine 與外部系統而定。

## 跟其他方案的關係

以下依用途與架構比較，並非效能實測或安全評比。

| 方案 | 定位 | 關係與差異 |
|---|---|---|
| OpenBao | 集中 secrets 生命週期 | 具備加密儲存、動態憑證與撤銷機制。 |
| 應用環境變數 | 傳遞程序設定 | 本身不是憑證生命週期與存取治理系統。 |
| OS keychain | 本機憑證保管 | 偏重裝置端保管；與集中服務的責任範圍不同。 |

## 相關概念

← [[self-hosted]] · [[privacy]]

## 來源

- [GitHub](https://github.com/openbao/openbao)
- [官方 README](https://github.com/openbao/openbao/blob/main/README.md)
- 原始快照：`raw/2026-09-26-openbao-openbao.md`
- Metadata 快照：`raw/2026-09-26-openbao-openbao.metadata.json`

---

| 欄位 | 資料 |
|---|---|
| GitHub | [openbao/openbao](https://github.com/openbao/openbao) |
| Stars | 7,731（2026-09-26 快照） |
| License | MPL-2.0 |
| Language | Go |
| 收錄日期 | 2026-09-26 |
