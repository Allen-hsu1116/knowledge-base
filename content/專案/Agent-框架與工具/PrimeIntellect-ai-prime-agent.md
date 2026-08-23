---
title: Prime Agent
slug: PrimeIntellect-ai-prime-agent
created: 2026-08-08
updated: 2026-08-08
stars: 6544
language: zh-TW
topics: [Agent, RLM, Self-Improving, Coding Agent, Long-Running, Subagent, Harness, IPython]
---

# Prime Agent

> ⭐6544 · 自我進化的 RLM Agent——持久 IPython 環境 + 可精煉的 Continual Harness + 內建子 Agent + 背景守護行程

## 快速導航


- 🤖 [[AI-Agent]] — Prime Agent 是具備自我進化能力的 Coding/Research Agent
- 🧠 [[harness-engineering]] — Continual Harness 是 Harness Engineering 的進一步演化，支援 `/refine` 自動精煉
- 🛠 [[Coding-Agent-CLI]] — Prime Agent 同時具備 TUI 和 CLI 介面，是 Coding Agent 的新範式

## 是什麼

Prime Agent 是 PrimeIntellect 推出的開源 Coding 與 Research Agent，專為通用和長時間運行的任務設計。它的核心創新在於兩個抽象：Recursive Language Model（RLM）把 context 當成變數、把工具和子 Agent 當成函式呼叫，在持久的 IPython REPL 中運作；Continual Harness 則把補充提示、記憶、技能描述和子 Agent 規格存為持久狀態，Agent 可以透過 `/refine` 指令基於證據做小幅更新。

這個設計讓工作上下文和可重用的操作模式可以超越單一聊天視窗的生命週期。Session 可以在背景持續運行、終端斷線後重新連接、Agent 之間可以直接通訊協作，而不需要把所有東西都路由到使用者面前。它是建立在 [pi](https://github.com/earendil-works/pi) 之上的，繼承了 pi 的 TUI 和 Agent Harness 基礎。

與傳統 Coding Agent 不同，Prime Agent 把「自我進化」放在架構核心——不是事後附加的功能，而是從 RLM + Continual Harness 兩個原語就內建的能力。

## 核心特色

- **持久 IPython 環境**：內建的 model tool 是持久化的 IPython REPL，檔案操作、Shell 命令、工具使用、子 Agent 和 context 管理全部透過程式碼完成，不是文本指令
- **內建子 Agent**：`rlm(...)` 生成真正的子 Agent 進行平行或背景工作，並以程式化方式回傳結果，不是模擬而是實際的獨立 Agent 實例
- **可精煉的 Harness**：`/refine` 指令回顧當前軌跡，可以對補充 harness 狀態做小幅、基於證據的更新；永不改寫不可變的基礎系統提示，記錄的快照支援回滾
- **可執行的 Skills**：Skills 是可匯入的 Python 套件，內建 Skill 創建器可以把重複的工作流程轉換為專案或個人 Skills
- **背景守護行程**：Daemon 支撐的 Agent 在終端斷線後持續運行，可以之後重新連接；IPython 狀態、排程和子 Agent 都保持活躍
- **Agent 間直接通訊**：運行中的 Agent 和保留的子 Agent 可以互相發現、交換訊息、引導彼此的工作，不需要經由使用者中轉
- **長任務保持推進**：自動壓縮（compaction）、持久目標（`/goal`）、心跳（`/heartbeat`）、排程（`prime-agent schedule`）、自主模式（`/autonomous`）和保留子 Agent 確保跨 turn 和跨終端 session 的進度不丟失

## 怎麼用

### 安裝

```bash
# macOS / Linux 一鍵安裝
curl -fsSL https://app.primeintellect.ai/prime-agent/install.sh | sh

# 安裝器會下載版本化 release、驗證 SHA-256 校驗碼、安裝 prime-agent 命令
```

### 啟動與使用

```bash
cd /path/to/project
prime-agent

# 首次啟動執行 /login 選擇訂閱或 API-key provider
# 在 TUI 中使用斜線指令操作
```

### 常用命令

```bash
prime-agent agents                   # 瀏覽運行中、閒置和已保存的 session
prime-agent attach <agent>           # 重新連接到運行中的 session
prime-agent --resume <path|id>       # 恢復已保存的 session
prime-agent status                   # 檢查背景服務狀態
prime-agent doctor [--fix]           # 檢查或修復背景服務
prime-agent shutdown [--force]       # 停止所有 agent、worker 和背景服務
```

### TUI 斜線指令

```bash
/refine        # 回顧軌跡並精煉 harness 狀態
/goal          # 設定持久目標
/heartbeat     # 設定心跳重新進入 session
/autonomous    # 進入有界自主模式（turn/token/時間預算 + 品質閘道）
/login         # 選擇 provider
```

## 跟其他方案的關係


Prime Agent 與其他 Coding/Research Agent 的比較：

- **Prime Agent** — RLM + Continual Harness，持久 IPython，`/refine` 自我精煉，內建子 Agent，背景守護，Agent 間直接通訊
- **Claude Code** — Anthropic 官方 CLI，Skills + MCP，但無持久 REPL 環境和 harness 自動精煉
  👉 詳見 [[anthropics-claude-code]]
- **OpenCode** — 開源 CLI，子 Agent + 工作樹平行，但無 RLM 抽象和 Continual Harness
  👉 詳見 [[anomalyco-opencode]]
- **Pi Agent Harness** — Prime Agent 建立在 pi 之上，繼承其 TUI 和 harness 基礎，但加入了 RLM 和 Continual Harness
  👉 詳見 [[earendil-works-pi]]
- **LoopX** — Agent 迴圈工程控制平面，管理長時間運行的狀態，但 Prime Agent 把狀態管理內建到 Agent 本身
  👉 詳見 [[huangruiteng-loopx]]

Prime Agent 的獨特之處在於 RLM 把 context 當變數、把子 Agent 當函式呼叫的程式化範式，以及 Continual Harness 讓 harness 可以像程式碼一樣持續迭代——這兩個原語讓「自我進化」成為架構級別的能力，而非附加功能。

| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[anthropics-claude-code]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[anomalyco-opencode]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念


← [[AI-Agent]] · [[harness-engineering]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub：專案原始碼](https://github.com/earendil-works/pi)
- raw/2026-08-08-PrimeIntellect-ai-prime-agent.md
- GitHub: https://github.com/PrimeIntellect-ai/prime-agent
- RLM blog: https://www.primeintellect.ai/blog/rlm
- Continual Harness paper: https://arxiv.org/abs/2605.09998

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/earendil-works/pi |
| Stars | ⭐6544|
| License | MIT |
| 收錄日期 | 2026-08-08 |
