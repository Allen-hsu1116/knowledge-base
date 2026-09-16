---
title: "OpenResearch"
slug: alphaXiv-OpenResearch
created: 2026-09-16
updated: 2026-09-16
stars: 3363
language: zh-TW
topics: ["AI-Agent", "Coding-Agent-CLI", "workflow-automation"]
---

# OpenResearch

> ⭐3.4k · 把 Coding Agent 轉成研究 Agent，以 Git 實驗樹追蹤假說、執行與證據

## 快速導航

- [[AI-Agent]] — 相關背景與其他實作。
- [[Coding-Agent-CLI]] — 相關背景與其他實作。
- [[workflow-automation]] — 相關背景與其他實作。

## 是什麼

OpenResearch 是 local-first 研究工作台，讓 Claude Code、Codex、OpenCode 或 Cursor 參與文獻回顧、假說發展、實驗執行與研究產物生成。每個研究方向可以有獨立 Agent session 和 Git worktree。

它以 Git 原生實驗樹保留不同方案的脈絡，執行時使用所記錄 commit 的不可變來源封存，將 logs、diffs、結果和 artifacts 連回實驗。Autoresearch 模式可迭代提出想法、改碼、執行、檢查證據與決定下一步；這是流程自動化，不是研究結論必然正確的保證。

## 核心特色

### 平行研究方向

獨立 session 與 worktree 降低不同方案的檔案互相干擾。

### 實驗可追溯

每次 run 綁定 commit snapshot，保留實驗樹與結果證據。

### 多種運算後端

可在本機、SSH、Slurm、Kubernetes、Ray、Hugging Face Jobs、Modal、Tinker 等執行。

### CLI 與 Agent Skills

提供 orx projects、runs、logs、discover、paper，以及 install-skills 整合。

## 怎麼用

macOS／Linux 可使用官方 CLI 安裝脚本。建議先下載並檢查腳本，再執行；Windows beta 另需 Git for Windows。以下是將官方下載與執行拆開的等價流程。

```bash
curl -LsSf https://openresearch.sh/install.sh -o openresearch-install.sh
# 先閱讀並確認來源與內容，再執行
sh openresearch-install.sh
orx up
```

1. 開啟 http://127.0.0.1:4791，建立專案並選擇 Agent 與模型。
2. 先做單一小型實驗，確認 commit、日誌、產物與執行狀態對得上。
3. 需要整合 Agent 時再執行 orx install-skills；遠端工作區用 orx up --remote user@host。

### 限制與注意事項

遠端服務綁 loopback 但沒有應用層驗證，同一主機其他使用者仍可能存取。官方發行版預設送出可退出的粗粒度遙測，可用 orx telemetry off 關閉；隔離 worktree 不等於安全沙箱。

## 跟其他方案的關係

| 方案 | 定位 | 關係與選擇 |
|---|---|---|
| OpenResearch | 研究實驗樹、執行與證據管理 | 適合多假說、多 run 的研究流程。 |
| 一般 Coding Agent | 依指令編輯和執行程式 | 是可接入的執行者，不等於實驗管理平台。 |
| 手動 Git＋實驗紀錄 | 自行管理版本與報告 | 控制直接，但 lineage 與產物關聯需自行維護。 |

可重現來源快照只涵蓋部分條件；資料版本、依賴、隨機種子和算力環境仍需自行固定。

## 相關概念

← [[AI-Agent]] · [[Coding-Agent-CLI]] · [[workflow-automation]]

## 來源

- [GitHub](https://github.com/alphaXiv/OpenResearch)
- [官方 README](https://github.com/alphaXiv/OpenResearch/blob/main/README.md)
- [補充官方文件](https://openresearch.sh/docs)
- README 快照：`raw/2026-09-16-alphaXiv-OpenResearch.md`
- Metadata 快照：`raw/2026-09-16-alphaXiv-OpenResearch.metadata.json`

本頁根據收錄當日官方文件整理；安裝指令為使用說明，非本次實機安裝驗證。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/alphaXiv/OpenResearch |
| Stars | 3,363（2026-09-16 快照） |
| License | MIT |
| Language | Rust（頁面語言：繁體中文） |
| 收錄日期 | 2026-09-16 |
