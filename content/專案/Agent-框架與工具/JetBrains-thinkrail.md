---
title: ThinkRail
slug: JetBrains-thinkrail
created: 2026-10-26
updated: 2026-10-26
stars: 1746
language: zh-TW
topics: ["Coding-Agent-CLI", "AI-Skills", "AI-Agent", "MCP"]
---

# ThinkRail

> ⭐1.7k · JetBrains 孵化的 pi Agent IDE，以 Git worktree 與 living specs 組織開發工作。

## 快速導航

- [[Coding-Agent-CLI]]
- [[AI-Skills]]
- [[AI-Agent]]
- [[MCP]]

## 是什麼

ThinkRail 是建立在 pi Coding Agent 之上的開發介面，提供原生桌面程式及由 CLI 開啟的瀏覽器介面。它不是另一個基礎模型，也不是只把聊天視窗嵌入編輯器，而是把工作區、編輯、審查與持久專案規格放在一起。

工作區通常對應 Git worktree，各有分支與目錄；多個 Agent 會話可同時工作，並顯示 token 與成本。專案以程式碼旁的 SPEC.md 圖譜保留設計意圖，Agent 使用 spec_* 工具讀取、搜尋與維護規格。

架構由引擎宿主、版本化 contracts 與 Web UI 分工：pi 管理模型、技能、壓縮及會話狀態，ThinkRail 管理工作區與介面。README 將更完整的擴充能力列為後續方向，不能把未來願景當作已完成能力。

## 核心特色

- **工作區隔離**：以 worktree 分開分支和工作目錄，並可接入既有 worktree。

- **完整審查介面**：Monaco 編輯器、檔案樹、終端與 diff 註解可轉為聊天上下文。

- **持久規格**：SPEC.md 隨程式碼維護，以專用工具及樹狀視圖追蹤意圖。

- **Skills 與流程**：讀取既有可攜式技能，內附設定、設計及送出 PR 的工作流。

- **MCP 與核准**：未標記唯讀的工具會先詢問；repo 定義的 server 須先核准，也支援專案信任設定。

- **多種供應商**：可登入 JetBrains AI 或透過 pi 使用自有 provider 憑證。

## 怎麼用

### 安裝

以下為官方流程的操作參考；本次收錄未安裝或執行此專案。

```bash
curl -fsSL https://raw.githubusercontent.com/JetBrains/thinkrail/main/install.sh -o thinkrail-install.sh
# 審閱安裝腳本後再執行
bash thinkrail-install.sh
thinkrail ~/code/my-repo
```

### 使用與驗證

1. 需 git 與可用模型供應商；官方 installer 會選擇 binary 並驗證 SHA-256。

2. 先在測試 repo 開新 worktree，選擇 provider 後執行小型修改。

3. 檢視 SPEC.md、diff 與測試結果，再經 PR 流程合併。

4. macOS 桌面版僅支援 Apple Silicon；Intel 沒有預建 CLI，須查閱原始碼建置流程。

### 限制與注意事項

Git worktree 只分開工作目錄，不是 OS 安全沙箱。README 說基本使用事件與錯誤報告會傳送；--no-analytics 只關閉額外分享，不能解讀為完全無遙測。

## 跟其他方案的關係

以下是依官方 README 整理的定位比較，不是效能實測。

| 方案 | 定位 | 適用情境 |
| --- | --- | --- |
| ThinkRail | pi 引擎加上工作區、規格圖與 IDE 介面 | 偏好視覺審查與分支工作流 |
| pi | ThinkRail 使用的 Coding Agent 引擎 | 偏好直接使用底層 Agent 工作方式 |
| 手動 worktree + IDE | 開發者自行串接分支、編輯與規格 | 希望保留既有工具組合 |

## 相關概念

← [[Coding-Agent-CLI]] · [[AI-Skills]] · [[AI-Agent]] · [[MCP]]

## 來源

- [GitHub](https://github.com/JetBrains/thinkrail)
- [官方 README](https://github.com/JetBrains/thinkrail/blob/main/README.md)
- 原始快照：`raw/2026-10-26-JetBrains-thinkrail.md`
- Metadata 快照：`raw/2026-10-26-JetBrains-thinkrail.metadata.json`

---

| 欄位 | 值 |
| --- | --- |
| GitHub | [JetBrains/thinkrail](https://github.com/JetBrains/thinkrail) |
| Stars | 1,746（2026-10-26 快照） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-10-26 |
