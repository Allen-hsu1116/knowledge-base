---
title: OpenRig
slug: mvschwarz-openrig
created: 2026-09-28
updated: 2026-09-28
stars: 976
language: zh-TW
topics: ["harness-engineering", "Coding-Agent-CLI", "AI-Agent", "MCP"]
---

# OpenRig

> ⭐1.0k · 以 YAML 拓樸、穩定角色與 tmux 管理 Claude Code／Codex 團隊的多 Agent Harness。

## 快速導航

- [[harness-engineering]] — 相關概念與實作案例
- [[Coding-Agent-CLI]] — 工程與工具脈絡
- [[AI-Agent]] — 相關概念與實作案例
- [[MCP]] — 相關概念與實作案例

## 是什麼

OpenRig 把多個 Coding Agent 的原生會話組成持續運作的團隊，透過 RigSpec 定義 pods、edges 與延續策略。它包覆既有 Claude Code、Codex 等 harness，而非另外實作一個取代所有代理的模型執行器。

架構包含 CLI、TUI、MCP server 與本地 Hono daemon，以 SQLite 儲存狀態並管理 tmux 會話。Seat 是穩定角色與地址，對話可更換但角色及其脈絡保留；Pod 則將相關 seats 編成小組，各自仍有獨立 context window。

## 核心特色

### 宣告式團隊

以 RigSpec／AgentSpec 描述拓樸、角色、skills、啟動契約與協作規範。

### 可觀測會話

TUI 提供拓樸表格與圖形，底層 tmux 可直接 attach；舊 Web UI 僅維護模式。

### 訊息與佇列

提供 send、broadcast、chatroom；送出訊息本身不代表已建立 queue item。

### 恢復與調整

可 snapshot／restore，也能 grow、shrink、discover、adopt；恢復會回報各節點結果。

## 怎麼用

需 Node.js 20、22 或 24、tmux，以及已完成認證的對應代理；first-project 範例使用 Codex。

```bash
npm install -g @openrig/cli
rig setup --dry-run
tmux -V
codex login status
# 在測試 repository 內先檢查計畫
rig up first-project --cwd . --plan
```

確認備份、權限與認證後，才執行 rig up first-project --cwd .，並使用 rig tui --shared 和 rig ps --nodes --rig first-project 檢查。首次只交付一個範圍明確的任務，審查精確候選產物。

### 使用邊界與注意事項

- 啟動 daemon／seat 會寫入 hooks、工作區 trust 與設定；setup --dry-run 不涵蓋所有後續副作用。
- 單改 OPENRIG_HOME 不會隔離 Claude／Codex 的 provider 設定；首次使用前必須備份相關檔案。
- YOLO 預設關閉；保留權限檢查。本文只記錄使用方式，沒有在此機安裝或啟動 OpenRig。

## 跟其他方案的關係

以下為依 README 定位整理的分工比較，不是效能實測。

| 方案 | 定位 | 與本專案的差異 |
| --- | --- | --- |
| Claude Code／Codex | 單個原生 Coding Agent | OpenRig 保留原生會話，在外層管理角色、協作與延續。 |
| 純 tmux | 終端會話管理 | OpenRig 另加拓樸、訊息、佇列、角色與恢復語意。 |
| MCP | 代理工具協議 | OpenRig 以 MCP 暴露拓樸操作，不以 MCP 取代原生 harness。 |

## 相關概念

← [[harness-engineering]] · [[Coding-Agent-CLI]] · [[AI-Agent]] · [[MCP]]

## 來源

- GitHub：[mvschwarz/openrig](https://github.com/mvschwarz/openrig)
- README：https://github.com/mvschwarz/openrig/blob/main/README.md
- 原始快照：`raw/2026-09-28-mvschwarz-openrig.md`
- Metadata：`raw/2026-09-28-mvschwarz-openrig.metadata.json`

---

| 欄位 | 值 |
| --- | --- |
| GitHub | [mvschwarz/openrig](https://github.com/mvschwarz/openrig) |
| Stars | 976（2026-09-28 快照） |
| License | Apache-2.0 |
| Language | TypeScript（GitHub 倉庫統計） |
| 收錄日期 | 2026-09-28 |
