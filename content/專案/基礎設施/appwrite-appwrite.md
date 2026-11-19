---
title: "Appwrite"
slug: "appwrite-appwrite"
created: "2026-11-19"
updated: "2026-11-19"
stars: 58227
language: "zh-TW"
topics: ["self-hosted", "MCP"]
---

# Appwrite

> ⭐58.2k · 整合認證、資料庫、儲存與 MCP 的應用後端平台。

## 快速導航

- 🧠 [[self-hosted]] — 核心使用情境。
- 🛠 [[MCP]] — 相關工程與整合考量。

## 是什麼

Appwrite 提供統一的應用後端服務，涵蓋 Auth、Databases、Storage、Functions、Messaging、Sites 與 Realtime。可採 managed Cloud，或在自己控制的基礎設施以 Docker 自架。

README 將平台定位為 MCP 與 agent-first：Coding Agent 可透過 hosted MCP 操作實際專案，也能由應用透過 SDK 連接服務。這是提供應用資源的後端，不等同 LLM 推論引擎；雲端產品與自架可用性仍需逐項確認。

## 核心特色

- **整合認證與資料**：提供登入、資料庫與檔案存取控制等能力。

- **事件驅動功能**：Functions 與 Realtime 支援後端邏輯與事件訂閱。

- **前端部署**：Sites 可部署 static、SSR 與 CSR 前端。

- **Agent 入口**：Cloud 包含 MCP，可連接 Coding Agent 與平台 API／文件。

- **可自架**：Docker 安裝精靈僅綁定 localhost，並使用一次性 installer secret。

## 怎麼用

### 安裝與啟動

以下為官方 README 流程或加上隔離環境的改寫；本次收錄並未執行安裝。

```bash
docker run -it --rm \
  --publish 127.0.0.1:20080:20080 \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume "$(pwd)"/appwrite:/usr/src/code/appwrite:rw \
  --entrypoint="install" \
  appwrite/appwrite:2.7.2
```

### 使用前確認

- 前提是已安裝 Docker；依終端列出的含一次性 secret URL 完成精靈，不要公開該 secret。

- 遠端主機請用 SSH tunnel 連到 localhost:20080，勿把安裝埠直接公開。

- 掛載 Docker socket 會賦予容器高度主機控制能力；正式部署前須審閱映像與權限。

- 2.7.2 是此次 README 使用的範例映像，不代表永久最新版本。

## 跟其他方案的關係

以下是依工具職責整理的選型比較，不是效能測試排名。

| 方案 | 主要角色 | 選用考量 |
|---|---|---|
| Appwrite | 整合式應用後端 | 需要認證、資料、儲存與部署的一體化服務 |
| 自行組合後端服務 | 分別維護資料庫、認證與儲存 | 需要更細粒度的架構與維運控制 |
| MCP | Agent 連接工具的協議 | Appwrite 提供 MCP 入口，兩者不是替代關係 |

## 相關概念

← [[self-hosted]] · [[MCP]]

## 來源

- [GitHub](https://github.com/appwrite/appwrite)
- [官方 README](https://github.com/appwrite/appwrite/blob/main/README.md)
- 原始快照：`raw/2026-11-19-appwrite-appwrite.md`

資料為 2026-11-19 抓取的預設分支快照；Stars 與文件內容會持續變動。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/appwrite/appwrite |
| Stars | 58,227 |
| License | BSD-3-Clause |
| Language | TypeScript（原始碼）；zh-TW（本文） |
| 收錄日期 | 2026-11-19 |
