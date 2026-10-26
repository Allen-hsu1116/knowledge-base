---
title: Coolify
slug: coollabsio-coolify
created: 2026-10-26
updated: 2026-10-26
stars: 64387
language: zh-TW
topics: ["self-hosted", "MCP"]
---

# Coolify

> ⭐64.4k · 以 SSH 管理自有伺服器的開源 PaaS，部署應用、資料庫及服務。

## 快速導航

- [[self-hosted]]
- [[MCP]]

## 是什麼

Coolify 是可自行部署的平台，定位為 Heroku、Netlify、Vercel 的開源替代選項。它透過 SSH 管理 VPS、裸機或其他可連線的伺服器，把應用建置、網域、資料庫與日常維運集中到控制平面。

它不是 LLM 推論引擎，也不提供模型本身；在 AI 系統中適合作為 Web UI、API 與周邊服務的部署底座。README 列出 dashboard、API、CLI、MCP 等操作介面，但每個介面的權限仍須另行規劃。

自架模式由使用者維護整個平台；Coolify Cloud 則代管 Coolify 控制平面。官方建議控制平面與工作負載分置伺服器，並說明即使停止使用 Coolify，既有資源仍留在自己的伺服器上。

## 核心特色

- **多種建置來源**：支援 GitHub、GitLab、Bitbucket、Gitea，以及 Nixpacks、Railpack、Dockerfile、Compose 或現成映像。

- **資料庫與服務**：README 列出超過 360 種一鍵服務，包含持久儲存與產生憑證。

- **部署自動化**：支援 Git push 觸發、PR 預覽、webhook，以及保留映像的回滾。

- **網路管理**：整合自訂網域、自動 HTTPS、反向代理、健康檢查與容器網路。

- **維運整合**：多伺服器、部署日誌、容器終端、備份、排程與通知。

## 怎麼用

### 安裝

以下為官方流程的操作參考；本次收錄未安裝或執行此專案。

```bash
curl -fsSL https://cdn.coollabs.io/coolify/install.sh -o coolify-install.sh
# 先審閱腳本，並在符合官方需求的目標伺服器執行
bash coolify-install.sh
```

### 使用與驗證

1. 先核對官方安裝需求，備份伺服器並確認 SSH 管理權限。

2. 安裝後以管理介面新增伺服器、Git 來源或 Docker 映像。

3. 設定網域、環境變數與持久磁碟，再部署測試應用。

4. 驗證 HTTPS、健康檢查與備份還原，不只檢查容器是否啟動。

### 限制與注意事項

控制平面持有基礎設施管理能力，應限制公開入口與團隊權限；自架不代表使用外部模型 API 時資料不外傳。

## 跟其他方案的關係

以下是依官方 README 整理的定位比較，不是效能實測。

| 方案 | 定位 | 適用情境 |
| --- | --- | --- |
| Coolify | 管理多種應用與服務的部署生命週期 | 希望自有伺服器具備 PaaS 操作體驗 |
| 手動 Docker Compose | 自行維護服務描述與操作流程 | 小型服務或需要精細掌控 |
| Coolify Cloud | 官方維護 Coolify 控制平面 | 減少平台維護負擔，仍需評估工作負載責任 |

## 相關概念

← [[self-hosted]] · [[MCP]]

## 來源

- [GitHub](https://github.com/coollabsio/coolify)
- [官方 README](https://github.com/coollabsio/coolify/blob/main/README.md)
- 原始快照：`raw/2026-10-26-coollabsio-coolify.md`
- Metadata 快照：`raw/2026-10-26-coollabsio-coolify.metadata.json`

---

| 欄位 | 值 |
| --- | --- |
| GitHub | [coollabsio/coolify](https://github.com/coollabsio/coolify) |
| Stars | 64,387（2026-10-26 快照） |
| License | Apache-2.0 |
| Language | PHP |
| 收錄日期 | 2026-10-26 |
