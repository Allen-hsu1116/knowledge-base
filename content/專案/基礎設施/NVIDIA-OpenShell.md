---
title: NVIDIA OpenShell
slug: NVIDIA-OpenShell
created: '2026-09-30'
updated: '2026-09-30'
stars: 10615
language: zh-TW
topics:
- sandbox
- AI-Agent
---

# NVIDIA OpenShell

> ⭐10.6k · 以沙箱、執行期政策與憑證代理限制自主 Agent 權限的 runtime。

## 快速導航

- [[sandbox]] — 延伸閱讀
- [[AI-Agent]] — 延伸閱讀

## 是什麼

OpenShell 是 NVIDIA 的自主 AI Agent 執行環境，核心不是聊天介面或模型，而是管理 Agent 可以碰哪些檔案、系統呼叫、網路與憑證。使用者透過 policy 宣告允許範圍，由 runtime 在執行時強制限制。

README 描述 gateway、supervisor 與 sandbox 的分工，以及 policy change 的形式驗證：在變更套用前識別新增的敏感存取，再交由人類審查。這是安全邊界設計，不代表能形式證明任意 Agent 任務都安全或正確。

預設 sandbox 是沒有安裝 Agent 的 minimal Ubuntu。它可承載現有 Agent，但 CLI／gateway、SDK 與 Agent 本身是不同元件，應依官方版本與支援矩陣配對。

## 核心特色

### 1. 執行期政策

限制檔案、syscall 與對外網路連線。

### 2. 憑證代理

真實憑證只加入送往允許端點的請求，不直接交給 Agent。

### 3. 政策變更審查

官方描述以形式驗證提示新增 host／API 等敏感權限。

### 4. 多種接入

Python、TypeScript、Go 與 Rust SDK 連接 gateway。

### 5. 部署條件

Linux、Apple Silicon macOS、實驗性 WSL 2；需要支援的容器或虛擬化環境。

## 怎麼用

### 安裝

```bash
# 先下載並人工審查官方安裝腳本，確認後才執行
curl -LsSf https://raw.githubusercontent.com/NVIDIA/OpenShell/main/install.sh -o openshell-install.sh
sh openshell-install.sh
openshell sandbox create --name demo
```

### 建議流程

1. 先讀 Support Matrix，確認主機與隔離後端相容。
2. 安裝 CLI 與 local gateway，再建立 demo sandbox。
3. 按 Run Your First Agent 教學接入 Agent 與模型 provider。
4. 先測試允許及拒絕案例，再批准必要的網路與憑證存取。

### 限制與注意

- 安裝脚本會改變環境；這次只收錄指令，沒有安裝或重啟任何服務。
- Kubernetes 部署需要會執行 NetworkPolicy 的 CNI。
- README 說明預設收集匿名操作類別及計數遙測；可於 gateway 關閉，不宜稱為預設零遙測。

## 跟其他方案的關係

以下是用途對照，不是本次實測的效能排名。

| 方案 | 主要定位 | 選用考量 |
|---|---|---|
| OpenShell | 政策治理、憑證代理與執行隔離 | 限制 Agent 行為的基礎設施 |
| [[volcengine-OpenSandbox\|OpenSandbox]] | 另一個 Agent 沙箱方案 | 選型時比較隔離、生命週期與治理要求 |
| [[AI-Agent\|Agent 框架]] | 規劃、模型與工具調用 | 應與安全 runtime 配合，不可混為一談 |

## 相關概念

← [[sandbox]] · [[AI-Agent]]

## 來源

- [GitHub：NVIDIA/OpenShell](https://github.com/NVIDIA/OpenShell)
- README 快照：`raw/2026-09-30-NVIDIA-OpenShell.md`
- Metadata 快照：`raw/2026-09-30-NVIDIA-OpenShell.metadata.json`
- 文件與星數擷取日期：2026-09-30；上游功能與套件版本可能持續變動。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | [NVIDIA/OpenShell](https://github.com/NVIDIA/OpenShell) |
| Stars | 10,615 |
| License | Apache-2.0 |
| Language | Rust |
| 收錄日期 | 2026-09-30 |
