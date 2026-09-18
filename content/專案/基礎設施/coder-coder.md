---
title: "Coder"
slug: coder-coder
created: 2026-09-18
updated: 2026-09-18
stars: 14837
language: zh-TW
topics: ["self-hosted", "Coding-Agent-CLI", "AI-Agent"]
---

# Coder

> ⭐14.8k · 以 Terraform 管理自架開發工作區，並整合基礎設施內執行的 Coding Agent

## 快速導航

- [[self-hosted]]
- [[Coding-Agent-CLI]]
- [[AI-Agent]]

## 是什麼

Coder 是可自架的雲端開發環境平台。工作區以 Terraform 定義，可以是 VM、Kubernetes Pod 或 Docker container，開發者透過安全通道連入既有 IDE 與工具。

README 同時介紹 Coder Agents：原生 AI 編碼迴圈在自有基礎設施的控制平面執行，LLM 金鑰不放在工作區。環境管理、模型治理與工作委派因而可以放在同一套管理介面內。

收錄重點不是宣稱所有工作區都有同等隔離，而是把開發環境生命週期與 Agent 執行分開設計；實際安全邊界取決於 Terraform 模板及部署方式。

## 核心特色

- **Terraform 模板**：把環境規格、依賴與資源配置寫成可重用定義。

- **安全連線**：以 WireGuard 通道連接工作區。

- **閒置關閉**：自動停止不用的資源，減少運算成本。

- **控制平面 Agent**：原生 Agent loop 不在工作區持有模型金鑰。

- **集中治理**：README 列有模型治理、成本追蹤及稽核記錄。

- **IDE 整合**：支援 VS Code、JetBrains 與 Dev Containers 等入口。

## 怎麼用

### 安裝與啟動

以下為 Linux/macOS 評估流程；先下載並審閱官方安裝腳本，再執行。

```bash
curl -L https://coder.com/install.sh -o coder-install.sh
# 審閱 coder-install.sh 後再執行
sh coder-install.sh
coder server
```

### 使用流程

1. 開啟 http://localhost:3000 建立初始帳號。
2. 建立 Docker template，再依模板佈建第一個工作區。
3. 正式環境另設定 PostgreSQL 13+ 與 external access URL，參考官方 validated architectures。

### 限制與注意

- 未提供正式參數時，README 說明使用內建資料庫與 try.coder.app 評估網址。
- Premium 功能與開源核心應分開確認，不能把產品總覽都當成免費承諾。
- 本頁只整理官方安裝方式，沒有啟動伺服器或測試隔離強度。

## 跟其他方案的關係

以下是依功能分層的編輯比較，不是實测效能排名。

| 方案 | 定位 | 關係與選擇 |
|---|---|---|
| Coder | 開發工作區平台與 Agent 整合 | 管理環境、存取與治理 |
| 單獨 Coding Agent CLI | 在已有環境內完成編碼任務 | 可配合工作區使用，不等於環境平台 |
| 手動管理 VM／容器 | 自行維護開發資源 | 需要自行補上模板與生命週期管理 |

## 相關概念

← [[self-hosted]] · [[Coding-Agent-CLI]] · [[AI-Agent]]

## 來源

- [GitHub](https://github.com/coder/coder)
- [官方 README](https://github.com/coder/coder/blob/main/README.md)
- 原始快照：`raw/2026-09-18-coder-coder.md`
- [官方安裝指南](https://coder.com/docs/install)

---

| 欄位 | 內容 |
|---|---|
| GitHub | [coder/coder](https://github.com/coder/coder) |
| Stars | 14,837（2026-09-18 擷取） |
| License | AGPL-3.0 |
| Language | Go（原始碼）；zh-TW（本頁） |
| 收錄日期 | 2026-09-18 |
