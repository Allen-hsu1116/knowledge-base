---
title: Openship
slug: oblien-openship
created: '2026-09-30'
updated: '2026-09-30'
stars: 13831
language: zh-TW
topics:
- self-hosted
- workflow-automation
- MCP
---

# Openship

> ⭐13.8k · 串起建置、部署、路由與 TLS 的自架平台，提供桌面、Web、CLI 與 MCP。

## 快速導航

- [[self-hosted]] — 延伸閱讀
- [[workflow-automation]] — 延伸閱讀
- [[MCP]] — 延伸閱讀

## 是什麼

Openship 是具備內建 CI/CD 的自架部署平台，能從 GitHub repo、本機目錄或已建置產物啟動部署流程。控制平面會偵測技術棧、建置、執行應用，再設定 OpenResty 反向代理與 TLS。

桌面版在應用開啟時於本機運作，透過 SSH 或 Cloud 部署到遠端，不代表筆電自動成為公開應用主機。若需要 GitHub webhook 的 push-to-deploy，必須使用可接收公開請求的常駐 server 或 Cloud。

它不是 LLM 推論引擎，但提供 MCP、REST API 及 Ship SDK 讓自動化系統操作部署。部署屬高權限操作，MCP 的權限检查不能取代主機信任與管理介面的隔離。

## 核心特色

### 1. 端到端管線

偵測、建置、執行、路由及 TLS 配置。

### 2. 雙 server 模式

Linux＋Docker 預設 Compose；其他環境走 bare 控制平面。

### 3. CI/CD

webhook、preview、staging／prod 與 rollback。

### 4. 可程式化

CLI、JavaScript／TypeScript SDK、REST 與選擇性 MCP tools。

### 5. 操作邊界

MCP 僅開放 opt-in routes，每次呼叫重新檢查權限。

## 怎麼用

### 安裝

```bash
# 需 Node.js 22+；以下為官方 npm 安裝方式
npm install -g openship
# 互動式初始設定，會安裝與管理服務
openship
```

### 建議流程

1. 先選擇桌面、常駐自架或 Cloud 控制平面。
2. 在專用測試主機準備 SSH、DNS、管理員與備份。
3. 於應用目錄使用 openship init，再用 openship deploy。
4. 驗證健康狀態、路由、TLS 與 rollback，才導入正式流量。

### 限制與注意

- Compose 模式掛載 host Docker socket，具主機級權限，只能部署在可信主機。
- README 的 multi-node clusters、load-balancing UI 等仍列為後續項目，不宣稱已完成。
- 主體 Apache-2.0；打包的 iRedMail engine 為 GPL，散佈時需另看元件授權。

## 跟其他方案的關係

以下是用途對照，不是本次實測的效能排名。

| 方案 | 主要定位 | 選用考量 |
|---|---|---|
| Openship | 常駐部署控制平面與 edge | 整合應用生命週期 |
| 手動 Docker Compose | 由操作者管理服務組合 | 自行處理部署、網域與回復流程 |
| GitHub Actions | 事件觸發的 CI 工作流 | 可以配合部署平台，並非常駐 edge |

## 相關概念

← [[self-hosted]] · [[workflow-automation]] · [[MCP]]

## 來源

- [GitHub：oblien/openship](https://github.com/oblien/openship)
- README 快照：`raw/2026-09-30-oblien-openship.md`
- Metadata 快照：`raw/2026-09-30-oblien-openship.metadata.json`
- 文件與星數擷取日期：2026-09-30；上游功能與套件版本可能持續變動。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | [oblien/openship](https://github.com/oblien/openship) |
| Stars | 13,831 |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-09-30 |
