---
title: SwarmForge
slug: unclebob-swarm-forge
created: 2026-09-02
updated: 2026-09-07
language: zh-TW
stars: 3756
topics: [multi-agent, coding-agent, worktree, harness-engineering]
source: https://github.com/unclebob/swarm-forge
---

# SwarmForge

> ⭐3,756 · Uncle Bob（Robert C. Martin）公開原始碼的 tmux 多 Agent 軟體工程編排平台：每個角色使用獨立 worktree、終端 session、Prompt 與交接郵件，讓多個 Coding Agent 在同一專案上分工，降低工作目錄互相干擾。

## 快速導航

- 🧠 [[AI-Agent]] — 多 Agent 分工與協作
- 🛠 [[harness-engineering]] — 執行環境、品質控制與交接

## 是什麼

SwarmForge 不是讓多個 Agent 自由聊天，而是把它們放進有角色、流程、憲法與交接協議的工程組織。人類透過本機 dashboard 查看工作看板、Attention 事件與聊天；Agent 則在隔離的 git worktree 與 tmux session 中完成各自職責。

它的設計重點不在逐行閱讀 AI 生成的程式碼，而在把品質要求變成可觀察的角色分工、測試、審查與 handoff。這與 [[harness-engineering]] 的核心一致：可靠度來自模型外的執行環境與控制機制，而不只依賴更強模型。

## 核心特色

- **two-pack**：`coder → cleaner → Done`，適合快速後端工作，不使用完整 Gherkin 流程
- **four-pack**：`specifier → coder → refactorer → architect`，在規格與架構審查間取得較精簡平衡
- **six-pack**：`specifier → coder → cleaner → architect → hardener → QA`，加入 mutation 與 headed QA 的完整管線
- **project-manager forge**：可同時管理多個 pack 與多個專案，提供 dashboard、host lieutenant 與 New Project 流程
- **lieutenant forge**：多專案 forge，使用一套可設定的 project template 與 planning lieutenant；路由與角色以該產品分支為準

Packs 直接安裝進既有 repo；Forges 則安裝一個 host，從 dashboard 建立與管理多個專案。官方 `main` 分支只是 landing page、共用 script 與 constitution 來源，本身不是可執行產品。

### 隔離與協作機制

每個角色各有 git worktree，可避免多 Agent 同時修改同一 working tree。tmux 讓各 Agent 在獨立長駐終端中運作；handoff mail 則以明確協議交接工作，而不是依賴共享對話上下文。這種架構把並行性、責任邊界與狀態傳遞變成外部可檢查的工程結構。

共用規範放在 `swarmforge/constitution/articles/`，包含 engineering、workflow 與 handoffs 三類 Prompt。Pack-specific 規則則使用 `local-*.prompt` 與 `project.prompt`，避免共用憲法被角色套件覆蓋。

### 2026-09-07 官方 README 補充

- `swarmforge/swarmforge.conf` 定義角色、backend、worktree、接收與回傳方式；`task`／`batch` 控制接收，`forward-only`／`back-one`／`back-all` 控制向前交接及向前序角色傳遞 merge-only 副本。
- 必須恰有一個角色使用 `master` worktree sentinel，意指目前分支的主 checkout，**不是要求分支名為 master**。其他角色 checkout 位於 `.worktrees/`。
- `.swarmforge/` 保存 inbox/outbox、看板、approval、clarification、daemon 與 dashboard 等共用執行狀態。Agent 以 `swarm_handoff.sh` 送出已提交工作、`ready_for_next.sh` 接收、`done_with_current.sh` 完成工作，而非自行改 transport state。
- Dashboard 不僅顯示狀態，也讓操作者處理 approval gates、回答澄清及停止 swarm；共享 runtime 啟動時會驗證設定並建立 worktree、tmux session、handoff daemon。

### INSIDE 報導與官方文件對照

INSIDE（2026-09-01）把此專案放在 Uncle Bob「不再逐行閱讀 AI 生成程式碼」的脈絡中，強調將 Clean Code 品質要求前移到角色規範。這是媒體對工作方式的解讀，**不是官方保證可免除人工驗收或安全審查**。

| 媒體說法 | 2026-09-07 官方 README 核對與界線 |
|---|---|
| two／four／six-pack 依任務規模選用 | README 確認三種 pack，但它們差別也在角色管線；沒有佐證媒體所稱 four／six-pack 必然更有效率。另有兩種多專案 forge。 |
| tmux 各 pane「不共享環境狀態」 | **不能照單全收**：官方是 git worktree 與 tmux session 分離，並有 `.swarmforge/` 共用傳輸與控制狀態。tmux 不是安全沙箱，不能據此推論檔案系統、網路、憑證或主機權限隔離。 |
| handshake 避免覆蓋進度 | 官方更精確地描述 durable handoff：已提交工作經 send、receive、merge、retry、completion 協議流轉；不是全面免衝突保證。 |
| constitution 強制命名與函式長度等 Clean Code 規則 | README 確認共用 engineering／workflow／handoffs 與角色 Prompt，但不逐條證實報導列舉的限制，也不表示 Prompt 是強制安全邊界。 |
| 已採開源授權，可直接修改取用 | **授權未確認**：當日 GitHub API `license=null`、根目錄清單未見 LICENSE/COPYING；公開程式庫不等於已有明確開源授權，不採用媒體的授權結論。 |

## 怎麼用

先將官方安裝器下載至使用者目錄，閱讀腳本後再授予執行權限；以下不需要 sudo：

```bash
mkdir -p ~/cmds
curl -L -o ~/cmds/get-swarm-forge https://raw.githubusercontent.com/unclebob/swarm-forge/main/get-swarm-forge
# 先閱讀 ~/cmds/get-swarm-forge，確認後繼續
chmod +x ~/cmds/get-swarm-forge
export PATH="$HOME/cmds:$PATH"
```

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

### 優勢與限制

- **優勢**：worktree 隔離、明確角色、可視化 dashboard、結構化交接、支援多種 Coding Agent backend
- **優勢**：把規格、實作、清理、架構、安全強化與 QA 拆成不同責任，降低單 Agent 自評的盲點
- **限制**：依賴 tmux、Babashka、git 與 Unix shell 工具，環境門檻高於單一 CLI Agent
- **限制**：角色與交接增加協調成本，小型任務使用 two-pack 或單 Agent 可能更有效率
- **注意**：README 明確警告不要購買任何名為 SWARM 的代幣；專案與加密代幣無關

## 跟其他方案的關係

| 方案 | 主要定位 | 分工方式 |
|---|---|---|
| SwarmForge | 多 Agent 工程組織 | 固定角色、pack／forge、handoff mail |
| [[chaitanyagiri-munder-difflin\|Munder Difflin]] | 多終端 Agent 協作 | worktree 與 mailbox 協調 |

SwarmForge 是 [[AI-Agent]] 的多 Agent 軟體工程實例，也可與 [[chaitanyagiri-munder-difflin|Munder Difflin]] 比較：兩者都使用多終端 Agent、獨立 worktree 與 mailbox／handoff；SwarmForge 更突出固定工程角色、憲法與 pack／forge 產品分層。

### 專案資訊

- 作者：Robert C. Martin（Uncle Bob）
- GitHub：https://github.com/unclebob/swarm-forge
- 主要語言：Clojure／Babashka + shell
- License：GitHub metadata 未偵測到明確授權檔，使用前應自行確認
- Stars：2026-09-07 GitHub API 查得 3,756

## 相關概念

← [[AI-Agent]] · [[harness-engineering]]

## 來源

- raw/2026-09-01-inside-unclebob-swarm-forge.md — INSIDE 文章 metadata 與擷取說明，已整理；正文錯置不採用。
- raw/2026-09-06-unclebob-swarm-forge-readme.md — 官方 README 原始快照。
- https://github.com/unclebob/swarm-forge
- raw/2026-09-07-inside-unclebob-swarm-forge.md — 本次取得正確文章正文，已裁切掉尾端另一篇活動文章；歷史 raw 保留不改。
- raw/2026-09-07-unclebob-swarm-forge-readme.md — 最新官方 main README，blob `2a5bf1652a2e5837f8bbd3f6300c0718a8f8de8f`。
- [INSIDE 原文（2026-09-01）](https://www.inside.com.tw/article/42246-unclebob-swarm-forge-ai-agent-deployment)
- [官方 main README](https://github.com/unclebob/swarm-forge/blob/main/README.md) · [GitHub metadata API](https://api.github.com/repos/unclebob/swarm-forge)
- [⚠️ 可能過時] 先前「正文錯置不採用」僅描述 2026-09-02 擷取；2026-09-07 已取回正確 H1 至責任編輯／延伸閱讀，只有 response title 與尾端串文仍錯置。本頁媒體脈絡採此次裁切正文，技術細節以官方 README 為準。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/unclebob/swarm-forge |
| Stars | ⭐3,756（2026-09-07） |
| License | GitHub API 未辨識授權；不可視為默認開源授權 |
| 收錄日期 | 2026-09-02 |
