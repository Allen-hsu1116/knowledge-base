---
title: "Arcane"
slug: getarcaneapp-arcane
created: 2026-11-17
updated: 2026-11-17
stars: 8731
language: zh-TW
topics: ["compose", "container-management", "containers", "docker", "docker-compose", "docker-management", "go", "self-hosted", "sveltekit", "typescript", "web-ui"]
---

# Arcane

> ⭐8.7k · 以 Web UI 管理 Docker、Compose 與遠端主機的自架管理平台。

## 快速導航

- [[self-hosted]]
- [[sveltejs-svelte]]

## 是什麼

Arcane 是 Docker 管理介面，官方文件涵蓋 Compose 專案、容器、映像、儲存卷、備份與自動更新。它不是 LLM 推論服務，但可以作為自架 AI 應用的容器管理配套。

README 指出 main 分支是 v3，舊版 2.x 在 release/2.x.x 分支。使用時須對齊文件與映像版本，不應把開發分支的功能自動視為所有已發布版本都支援。

## 核心特色

### 1. 容器與專案管理

以介面集中操作 Docker 及 Compose 專案，減少零散命令。

### 2. 遠端主機支援

官方文件提供 agent 與 Swarm 管理流程；此處的 agent 是主機代理，不是 AI Agent。

### 3. 存取與登入

文件涵蓋 SSO、passkey、角色與帳號恢復。

### 4. 安全透明度

公開 SBOM，並提供 socket proxy、agent mTLS 與映像簽章相關文件。

## 怎麼用

### 安裝與起步

以下為來源文件的操作入口，並非本次已在主機安裝或執行的紀錄。

```bash
# 先準備 Docker Engine 與 Docker Compose
docker run --rm ghcr.io/getarcaneapp/manager:latest /app/arcane generate secret
# 依官方安裝頁建立 compose.yaml，填入上一步的金鑰後：
docker compose up -d
```

### 操作順序

1. 依來源中的安裝頁建立完整 Compose 設定，包含資料卷、專案目錄與 ARCANE_APP_URL。

2. 預設介面連接埠為 3552；初始管理者密碼由首次啟動產生，登入後須變更。

3. 專案目錄的容器與主機路徑需正確對應；本次未啟動容器或修改主機設定。

### 使用邊界

- Docker socket 能操作主機容器，應限制管理端存取並評估 socket proxy。
- 範例使用 latest 是官方快速入門做法；正式環境宜固定版本並事先備份。

## 跟其他方案的關係

以下是依專案定位整理的比較，非效能測試或排名。

| 方案 | 定位 | 選用差異 |
| --- | --- | --- |
| Arcane | 容器管理介面 | 在 UI 中管理 Docker 資源與 Compose 專案。 |
| Docker Compose CLI | 宣告式服務啟動 | 是底層工作流，並非與 Arcane 互斥。 |
| LLM 服務 | 模型推論或聊天 | 由容器承載的應用，Arcane 不代替其功能。 |

## 相關概念

← [[self-hosted]] · [[sveltejs-svelte]]

## 來源

- GitHub：https://github.com/getarcaneapp/arcane
- README 快照：`raw/2026-11-17-getarcaneapp-arcane.md`
- Metadata 快照：`raw/2026-11-17-getarcaneapp-arcane.metadata.json`
- https://getarcane.app/docs
- https://getarcane.app/docs/get-started/installation

---

| 欄位 | 資料 |
| --- | --- |
| GitHub | https://github.com/getarcaneapp/arcane |
| Stars | 8,731（2026-11-17 擷取） |
| License | BSD-3-Clause |
| Language | Go |
| 收錄日期 | 2026-11-17 |
