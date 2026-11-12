---
title: "improve"
slug: shadcn-improve
created: 2026-11-12
updated: 2026-11-12
stars: 10882
language: zh-TW
topics: ["AI-Skills", "Coding-Agent-CLI", "AI-Agent"]
---

# improve

> ⭐10.9k · 讓強模型稽核並寫實作計畫，再委派較便宜模型執行的 Agent Skill。

## 快速導航

- [[AI-Skills]] — 延伸概念與相關工具。
- [[Coding-Agent-CLI]] — 延伸概念與相關工具。
- [[AI-Agent]] — 延伸概念與相關工具。

## 是什麼

improve 是以 Agent Skills 格式包裝的程式碼稽核及規劃技能。它把較強模型用在理解 repository、判斷值得修正的問題與撰寫規格，再讓較便宜的模型或人工依據自足的 Markdown 計畫實作。

主要產物是 plans/ 中的計畫與索引，不是顧問直接修改原始碼。當使用 execute 時，技能可委派 executor 到隔離的 Git worktree，之後重新驗收；是否合併仍由使用者決定，因此「自己不實作」不代表整個流程沒有寫入副作用。

README 描述從偵察、平行稽核、重新查證、排序到規劃的流程。計畫包含程式位置、當前片段、驗證命令、完成標準及 STOP 條件，並記錄 Git commit，以降低交接給較小模型時的上下文遺失。

## 核心特色

- **九類稽核**：涵蓋 correctness、安全、效能、測試、技術債、依賴、DX、文件與方向。

- **證據複查**：顧問重新閱讀引用位置，移除誤報並記錄排除理由。

- **自足計畫**：將路徑、程式片段與專案慣例寫入計畫，不依賴先前對話。

- **機器可驗收**：逐步設定測試命令、完成條件、越界限制與停止條件。

- **執行與回收**：execute 委派 worktree executor；reconcile 刷新漂移或阻塞的 backlog。

## 怎麼用

### 前置條件

需要支援 Agent Skills 的宿主 Agent。安裝前先閱讀技能內容及所需工具權限；下列命令是官方 README 的安裝方式。

### 安裝與基本使用

```bash
npx skills add shadcn/improve
```

### 建議流程

1. 在專案內使用 /improve quick 或 /improve，確認 findings 後才選擇要寫成計畫的項目。
2. 讀取 plans/ 計畫，核對 Git commit、測試命令及 STOP 條件。
3. 可用 /improve execute 001 委派執行，再由人工決定是否合併。
4. 下次工作前用 /improve reconcile 更新已完成、漂移及受阻的計畫。

### 使用界線

- 顧問的唯讀規範不等於 OS 層強制沙箱；executor 仍能在工作樹中編輯檔案。
- --issues 會向 GitHub 發布內容，使用前須確認權限及避免洩漏內部資訊。
- 節省費用是工作分工的目標，不是本次經量測得到的成本改善。

## 跟其他方案的關係

以下為依專案定位整理的比較，不是效能排行榜。

| 方案 | 重點 | 與本專案的關係 |
|---|---|---|
| 直接要求 Agent 實作 | 同一對話中規劃及修改 | improve 先產出可交接計畫，再單獨執行與驗收 |
| 一般待辦清單 | 描述希望完成的事情 | 計畫另含實際程式證據、驗證 gate 與漂移檢查 |
| 獨立 Agent runtime | 提供模型及工具執行環境 | improve 是技能，仍依賴宿主及可用子 Agent |

## 相關概念

← [[AI-Skills]] · [[Coding-Agent-CLI]] · [[AI-Agent]]

## 來源

- [GitHub repository](https://github.com/shadcn/improve)
- [官方 README](https://github.com/shadcn/improve/blob/main/README.md)
- 原始快照：`raw/2026-11-12-shadcn-improve.md`
- GitHub metadata：`raw/2026-11-12-shadcn-improve.metadata.json`

---

| Metadata | 值 |
|---|---|
| GitHub | https://github.com/shadcn/improve |
| Stars | 10,882（2026-11-12 快照） |
| License | MIT |
| Language | 未標示 |
| 收錄日期 | 2026-11-12 |
