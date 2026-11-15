---
title: LoopForge
slug: Tencent-LoopForge
created: 2026-11-15
updated: 2026-11-15
stars: 914
language: Go
topics: [agent-orchestration, agentic-workflow, ai-coding, human-on-the-loop, self-hosted, workflow-engine]
---

# LoopForge

> ⭐0.9k · 自架 Coding Agent 交付工作台，以角色、腳本、Docker 工作區與人工核准組成可重複 SOP。

## 快速導航

- [[AI-Agent]] — 多角色代理的工作分配。
- [[harness-engineering]] — 執行環境、檢查與核准的外層控制。
- [[Coding-Agent-CLI]] — 被編排的實際程式開發工具。

## 是什麼

LoopForge 是 Tencent 的自架軟體交付工作台。使用者可在聊天中向 Main Bot 描述需求，由它建立工作區並委派專案角色；也可把成熟流程整理為 SOP，依序經過設計、實作、審查、測試與人工驗收。

它不取代 CodeBuddy、Codex 或 Claude Code 等 Coding Agent CLI，而是在它們外面補上角色設定、Docker 工作區、執行紀錄、產物及核准機制。聊天與 SOP 兩條路徑可連回同一需求，便於追蹤交付及成本。

產品分為團隊使用的自架平台與單人使用的 LoopForge Local。Local 把內建工作流程帶入既有 Coding Assistant，不能直接視為平台自訂 SOP 的完整離線匯出器；README 將後者列為規劃項目。

## 核心特色

- **聊天與 SOP 雙入口**：探索型任務從 Main Bot 開始，穩定流程則固定階段與簽核。
- **角色分離**：規劃、實作、審查與測試可使用不同 prompt、executor、模型及工具。
- **混合節點**：Agent、確定性 Script、Human gate、Sub-SOP 與 Preview build 可共同組成工作流。
- **恢復與返工**：支援暫停、重試或從指定節點重跑，人工也能將結果退回上游。
- **可追溯產物**：保存節點狀態、工具追蹤、日誌與產物快照，不只留下聊天文字。
- **環境選擇**：可使用平台 worker、Docker sandbox 或連接本地執行機器。
- **Local 模式**：提供 Classic／Portable 工作流；不同宿主支援範圍需查官方表格。

## 怎麼用

### 自架平台

先備妥 Git、Docker／Compose、Python 3 與 curl，再依 README 執行：

```bash
git clone https://github.com/Tencent/LoopForge.git
cd LoopForge
./start.sh
```

安裝器會檢查依賴，且可能提出安裝缺少元件的要求；執行前需審閱腳本與部署權限。
預設使用 `compose.yaml` 固定的 GHCR 映像，建立 MySQL 與平台服務。
主機不需先裝 Go 或 Node.js，真正 Agent 工作仍需模型憑證。
這些是官方操作參考，本次僅收錄文件，未在本機部署此平台。

### 先驗證非模型流程

1. 開啟安裝器輸出的地址並建立管理員帳號。
2. 使用 demo project 的「Platform check · script & approval」。
3. 確認腳本產生報告、流程停在人工閘門，核准後再繼續。
4. 驗證完成後才配置模型與 GitHub 授權，測試實際交付。

### 不架伺服器的 Local 選項

在預定的專案目錄內，官方提供 Claude Code 安裝示例：

```bash
npx -y loopforge-cli@latest install claude
```

接著在 Claude Code 使用 `/start-devflow "<your request>"`。
Local 需要 Node.js 20+、Python 3.8+ 與相容 Coding Assistant。
這會修改目標專案的助理工作流，應先檢查內容及備份，不能直接對不相關專案執行。

### 部署邊界

預設服務監聽 `0.0.0.0:8090`，第一個建立的帳號會成為管理員。
建立帳號前應先限制來源 IP；對外服務還需 HTTPS 與明確帳號政策。
預設 Docker sandbox 透過主機 Docker socket 啟動，具備控制主機 daemon 的能力。
官方定位是可信團隊，並非不可信租戶的強隔離平台；登入使用者可跨專案讀取資料。

## 跟其他方案的關係

| 方案／層次 | 主要定位 | 與 LoopForge 的差異 |
|---|---|---|
| Codex／Claude Code／CodeBuddy CLI | 實際執行程式開發任務 | LoopForge 編排它們，不取代它們 |
| Dify／n8n／Flowise | 通用 AI 或自動化工作流程 | LoopForge 聚焦軟體交付、repo、審查與驗收 |
| LoopForge Platform | 團隊工作台及自訂 SOP | 需要服務環境，集中歷史、核准與報表 |
| LoopForge Local | 既有 Coding Assistant 內的工作流 | 適合單人；目前以内建流程為主 |

**選用判斷**：如果需要跨角色的可靠交接、確定性檢查與人工簽核，它比只串幾個提示詞更接近交付系統。
但流程存在不代表程式正確；仍需真實測試、產物檢查與最小權限憑證。

## 相關概念

← [[AI-Agent]] · [[harness-engineering]] · [[Coding-Agent-CLI]]

## 來源

- GitHub：https://github.com/Tencent/LoopForge
- 授權原文：https://github.com/Tencent/LoopForge/blob/main/LICENSE
- 原始 README 與 metadata：`raw/2026-11-15-Tencent-LoopForge.md`
- README 內含部署、Local 使用及驗證紀錄的官方文件入口。
- GitHub API 將授權標為 Other／NOASSERTION；實際 LICENSE 明訂主專案為 MIT，第三方元件保留各自條款。
- 取樣日期：2026-11-15；本文未將上游測試紀錄當成本次實測結果。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/Tencent/LoopForge |
| Stars | 914 |
| License | MIT；第三方元件依各自授權 |
| Language | Go |
| 收錄日期 | 2026-11-15 |
