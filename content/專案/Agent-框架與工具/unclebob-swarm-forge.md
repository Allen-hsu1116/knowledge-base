---
title: SwarmForge
slug: unclebob-swarm-forge
created: 2026-09-02
updated: 2026-09-02
language: zh-TW
stars: 3.5k
source: https://github.com/unclebob/swarm-forge
---

# SwarmForge

> Uncle Bob（Robert C. Martin）開源的 tmux 多 Agent 軟體工程編排平台：每個角色使用獨立 worktree、終端 session、Prompt 與交接郵件，讓多個 Coding Agent 在同一專案上分工而不互相踩檔案。

## 核心定位

SwarmForge 不是讓多個 Agent 自由聊天，而是把它們放進有角色、流程、憲法與交接協議的工程組織。人類透過本機 dashboard 查看工作看板、Attention 事件與聊天；Agent 則在隔離的 git worktree 與 tmux session 中完成各自職責。

它的設計重點不在逐行閱讀 AI 生成的程式碼，而在把品質要求變成可觀察的角色分工、測試、審查與 handoff。這與 [[harness-engineering]] 的核心一致：可靠度來自模型外的執行環境與控制機制，而不只依賴更強模型。

## Packs 與 Forges

- **two-pack**：`coder → cleaner → Done`，適合快速後端工作，不使用完整 Gherkin 流程
- **four-pack**：`specifier → coder → refactorer → architect`，在規格與架構審查間取得較精簡平衡
- **six-pack**：`specifier → coder → cleaner → architect → hardener → QA`，加入 mutation 與 headed QA 的完整管線
- **project-manager forge**：可同時管理多個 pack 與多個專案，提供 dashboard、host lieutenant 與 New Project 流程
- **lieutenant forge**：單一 pipeline，由 host lieutenant 規劃 utility、component、QA、review 等卡片

Packs 直接安裝進既有 repo；Forges 則安裝一個 host，從 dashboard 建立與管理多個專案。官方 `main` 分支只是 landing page、共用 script 與 constitution 來源，本身不是可執行產品。

## 隔離與協作機制

每個角色各有 git worktree，可避免多 Agent 同時修改同一 working tree。tmux 讓各 Agent 在獨立長駐終端中運作；handoff mail 則以明確協議交接工作，而不是依賴共享對話上下文。這種架構把並行性、責任邊界與狀態傳遞變成外部可檢查的工程結構。

共用規範放在 `swarmforge/constitution/articles/`，包含 engineering、workflow 與 handoffs 三類 Prompt。Pack-specific 規則則使用 `local-*.prompt` 與 `project.prompt`，避免共用憲法被角色套件覆蓋。

## 操作方式

在既有軟體 repo 安裝 pack：

```bash
get-swarm-forge six-pack
./swarm
```

在空目錄安裝 forge：

```bash
get-swarm-forge project-manager
./swarm
```

需求包含 zsh、git、tmux、Babashka，以及至少一個 Agent backend：Grok、Codex、Claude 或 Copilot。

## 優勢與限制

- **優勢**：worktree 隔離、明確角色、可視化 dashboard、結構化交接、支援多種 Coding Agent backend
- **優勢**：把規格、實作、清理、架構、安全強化與 QA 拆成不同責任，降低單 Agent 自評的盲點
- **限制**：依賴 tmux、Babashka、git 與 Unix shell 工具，環境門檻高於單一 CLI Agent
- **限制**：角色與交接增加協調成本，小型任務使用 two-pack 或單 Agent 可能更有效率
- **注意**：README 明確警告不要購買任何名為 SWARM 的代幣；專案與加密代幣無關

## 與現有知識的關係

SwarmForge 是 [[AI-Agent]] 的多 Agent 軟體工程實例，也可與 [[chaitanyagiri-munder-difflin|Munder Difflin]] 比較：兩者都使用多終端 Agent、獨立 worktree 與 mailbox／handoff；SwarmForge 更突出固定工程角色、憲法與 pack／forge 產品分層。

## 專案資訊

- 作者：Robert C. Martin（Uncle Bob）
- GitHub：https://github.com/unclebob/swarm-forge
- 主要語言：Clojure／Babashka + shell
- License：GitHub metadata 未偵測到明確授權檔，使用前應自行確認
- Stars：擷取時約 3.5k

## 來源與擷取備註

- [[../raw/2026-09-01-inside-unclebob-swarm-forge|INSIDE 文章 metadata 與擷取說明]]
- [[../raw/2026-09-02-unclebob-swarm-forge-readme|GitHub README 原始快照]]
- INSIDE 原文頁在 2026-09-02 擷取時出現「標題是 SwarmForge、正文卻是 Google Cloud 報導」的 CMS 內容錯置，因此本頁技術細節以官方 README 為準。
