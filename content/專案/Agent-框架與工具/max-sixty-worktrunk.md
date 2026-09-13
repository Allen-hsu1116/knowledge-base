---
title: Worktrunk
slug: max-sixty-worktrunk
created: '2026-09-13'
updated: '2026-09-13'
stars: 7236
language: zh-TW
topics:
- Coding-Agent-CLI
- AI-Agent
---

# Worktrunk

> ⭐7.2k · 為平行 Coding Agent 工作流簡化 Git worktree 的 Rust CLI，統一切換、狀態與合併清理。

## 快速導航

- [[Coding-Agent-CLI]] — 相關概念與其他實作
- [[AI-Agent]] — 相關概念與其他實作

## 是什麼

Worktrunk 是管理 Git worktree 的命令列工具，不是另一個語言模型或 Coding Agent。它讓 worktree 可以按 branch 名稱定位，路徑由模板計算，將開新工作目錄、切換、查看狀態與清理等常用操作包成較簡單的命令。

平行執行 Claude Code、Codex 等 Agent 時，各任務共用同一工作目錄容易互相覆蓋修改。Worktrunk 利用 Git 原生 worktree 將工作檔案分開，並補上 hooks、分支狀態和合併流程，適合已採用 Git 的個人開發者或多 Agent 工程環境。

工作目錄分離不等於安全沙箱：Agent 仍可能存取同一使用者的其他檔案、憑證及服務。它解決的是開發工作流隔離與管理成本，不負責提供多 Agent 的任務規劃、模型推論或完整权限控管。

## 核心特色

- **以分支切換 worktree**
  wt switch 支援既有分支、新建工作樹與 PR 入口，減少重複輸入路徑。

- **統一狀態總覽**
  wt list 顯示工作樹與 Git 狀態，完整模式還可整合 CI 與 AI 摘要。

- **啟動 Agent**
  切換後可透過 -x 執行命令，讓不同任務在各自的 worktree 啟動工具。

- **Hooks 自動化**
  可在建立、合併前後等時間點執行命令，處理依賴安裝與開發伺服器等本地流程。

- **合併與清理**
  提供 squash、rebase、merge 與清理工作流，也可維持原本 PR 審查流程。

## 怎麼用

### 環境與安裝

需先準備 Git 與套件管理器。官方 Homebrew 方式如下；wt config shell install 會修改 shell 整合設定，實際執行前應備份並確認。本次僅整理命令，未安裝或改 shell。

```bash
brew install worktrunk
wt config shell install
# 在已存在的 Git repository 中建立任務工作樹
wt switch --create feature-auth
wt list
```

### 使用流程

1. 每個平行任務使用獨立分支／worktree，必要時以 wt switch -c -x claude feature-a 啟動已安裝的 Claude。
2. 完成修改後執行專案測試，確認差異再走 PR 或本地合併流程；不要把隔離工作目錄當成不需 code review。
3. 使用 wt remove 或 wt merge 前先確認未提交變更、合併目標與備份需求，避免將示例中的清理當成無風險操作。

### 限制與注意事項

Shell integration 是切換目前 shell 工作目錄所需的配合。Windows 的 wt 名稱可能與 Windows Terminal 衝突，官方提供 git-wt 命令。快取共用優化依檔案系統能力而定，不應宣稱所有平台零成本複製。

## 跟其他方案的關係

以下依文件描述做定位比較，不是實測效能排行。

| 方案 | 核心定位 | 選擇重點 |
|---|---|---|
| Worktrunk | Git worktree 的 UX 與工作流自動化 | 既有 Agent／終端工具不變，只改善平行分支管理 |
| 原生 git worktree | Git 自帶的多工作目錄功能 | 依賴較少，但需自行串接路徑、狀態與清理流程 |
| Coding Agent | 理解任務、修改程式與執行工具 | 與 Worktrunk 互補；Agent 做任務，Worktrunk 管理工作目錄 |

README 的普及度表述屬維護者自述，本頁不採用『最受歡迎』作為經獨立驗證的排名。授權以 LICENSE 確認的 MIT／Apache-2.0 雙授權為準，而非 GitHub 的 Other 標籤。

## 相關概念

← [[Coding-Agent-CLI]] · [[AI-Agent]]

## 來源

- [GitHub repository](https://github.com/max-sixty/worktrunk)
- [本次 README 所在分支](https://github.com/max-sixty/worktrunk/blob/main/README.md)
- 原始 README 與來源欄位：`raw/2026-09-13-max-sixty-worktrunk.md`
- GitHub metadata 快照：`raw/2026-09-13-max-sixty-worktrunk.metadata.json`
- https://worktrunk.dev
- https://github.com/max-sixty/worktrunk/blob/main/LICENSE

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/max-sixty/worktrunk |
| Stars | 7,236（2026-09-13 快照） |
| License | MIT OR Apache-2.0 |
| Language | Rust |
| 收錄日期 | 2026-09-13 |
