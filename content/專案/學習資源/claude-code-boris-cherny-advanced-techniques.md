---
title: Claude Code 進階技巧
slug: claude-code-boris-cherny-advanced-techniques
created: 2026-05-06
updated: 2026-05-06
language: zh-TW
---

# Claude Code 進階技巧

> ⭐— · Claude Code 之父 Boris Cherny 親授 8 個進階技巧，涵蓋生產力提升、自動化和最佳實踐。

## 快速導航

- 🤖 **Coding Agent CLI** → [[Coding-Agent-CLI]]（Claude Code 是 Coding Agent CLI 的一種）
- 🛠 **AI Skills** → [[AI-Skills]]（進階技巧與 Agent Skills 的理念相通）

## 是什麼

這是 Claude Code 之父 Boris Cherny 親授的 8 個進階技巧，涵蓋生產力提升、自動化和最佳實踐。內容來自科技翰林院的中文整理報導。

> Boris Cherny 是 Anthropic 的 Claude Code 負責人。Anthropic 內部導入後工程師產出量翻 200%，新人上手從 2-3 週縮短到 2-3 天。

**來源**: 科技翰林院
**原文**: https://www.techhanlin.tw/claude-code-tips-boris-cherny-advanced-techniques/

## 核心特色

- **平行執行多個 Session**：同時跑 3-5 個 Git Worktree，每個開一個獨立 Claude Code session，生產力最大化
- **自我驗證迴圈**：讓 Claude Code 自己檢查自己（瀏覽器、測試套件、Docker logs），品質翻 2-3 倍
- **Plan Mode 三階段**：Plan → 自我批評 → Auto-accept 執行，鎖定計畫才放手跑
- **CLAUDE.md 飛輪效應**：每次犯錯就加一條規則，2,500 tokens 的精煉知識庫
- **Context 管理**：400k 自動壓縮閾值，/rewind、/compact、/clear 三把斧
- **自動化工具**：/loop、/schedule 和 Hooks 讓 Claude 持續運作
- **委派模式**：不是 Pair Programming，而是給目標、限制、驗收標準、背景知識
- **Custom Skills**：一天做超過一次的事就值得做成 Skill

## 1. 平行執行多個 Session（最大生產力提升）

同時跑 3-5 個 Git Worktree，每個開一個獨立 Claude Code session：
- `claude --worktree my_worktree` 啟動隔離 session
- iTerm2 開 5 個 tab：新功能/測試/code review/debug/文件
- 加上 5-10 個 claude.ai/code 網頁 session + 手機 iOS App = 共 10-15 個 session
- 手機開 session 後用 `/teleport` 指令接回桌機

## 2. 讓 Claude Code 自己檢查自己（品質翻 2-3 倍）

給 Claude 驗證方法 → 自動跑 2-3 輪修正迴圈：
- **前端**：Claude Chrome Extension（開瀏覽器、看 UI、自己發現問題）
- **後端**：測試套件（寫完自動跑 test，沒過自己改到過為止）
- **桌面應用**：Computer Use 功能
- **分散式系統**：Docker logs 排錯
- **內部 subagent**：verify-app（端到端測試）、code-simplifier（實作後自動清理）
- **規則**：沒通過驗證，不准標記任務完成

> Boris：「你不會叫一個工程師在沒有瀏覽器的情況下做網站。」

## 3. Plan Mode 三階段工作流

1. **Plan**（Shift+Tab）：跟 Claude 反覆對齊計畫
2. **自我批評**：「如果你是資深工程師，這個計畫有什麼問題？」高風險任務開第二個 session 做獨立架構審查
3. **Auto-accept 執行**：計畫鎖定後切到自動接受模式

## 4. CLAUDE.md 飛輪效應

CLAUDE.md 約 2,500 tokens，包含常用指令、架構決策、檔案路徑、風格規範、PR 模板、歷史犯錯紀錄。重點：**不要只寫規則，要寫為什麼**。每次 Claude 犯錯就加一條規則。

**-.claude 自動學習**：PR review 標記 `-.claude`，GitHub Action 自動寫進 CLAUDE.md。

## 5. Context 管理（長對話不崩潰）

Context window 1M token，但 30-40 萬 tokens 時表現開始下降：

| 指令 | 用途 | 代價 |
|------|------|------|
| `/rewind`（Esc×2） | 跳回前一訊息 | 丟失後續對話 |
| `/compact` | AI 摘要壓縮 | 細節可能遺失 |
| `/clear` | 清空對話 | 需自己寫 context 摘要 |

**400k 自動壓縮閾值**：`CLAUDE_CODE_AUTO_COMPACT_WINDOW=400000 claude`

## 6. 進階自動化：/loop、/schedule 和 Hooks

| 工具 | 說明 |
|------|------|
| `/loop` | 本地循環任務（最長 3 天，關終端機就停） |
| `/schedule` | 雲端排程（跑在 Anthropic 伺服器，關機也繼續） |
| **Hooks** | 生命週期事件自動執行 shell 腳本 |

範例：`/loop 5m /babysit`、`/loop 30m /slack-feedback`、`/loop 1h /pr-pruner`

## 7. 委派模式（不是 Pair Programming）

每次委派提供四個資訊：目標、限制、驗收標準、背景知識。

Boris 的 prompt 技巧：
- "Grill me on these changes and don't make a PR until I pass your test"
- "Prove to me this works"
- "Knowing everything you know now, scrap this and implement the elegant solution"

## 8. 平行遷移 /batch 和 Custom Skills

- **/batch**：互動式規劃 → Claude 自動派出幾十個 agent → 每個在 worktree 獨立作業 → 自己跑測試 → 開 PR
- **Custom Skills**（`.claude/skills/`）：專注寫 Gotchas，不要寫顯而易見的東西

判斷標準：一天做超過一次，就值得做成 Skill 或 Slash Command。

## 怎麼用

```bash
# 安裝 Claude Code
npm install -g @anthropic-ai/claude-code

# 啟動
claude
```

### 立即見效的技巧
1. **開多個 Session**：用 Git Worktree 隔離，同時處理多個任務
2. **設定自動驗證**：讓 Claude Code 用瀏覽器或測試套件自己檢查自己
3. **建立 CLAUDE.md**：從犯錯紀錄開始，每次犯錯加一條

### 中期優化
4. **設定 400k 自動壓縮**：避免長對話崩潰
5. **建立 Custom Skills**：把重複操作封裝成 Skill
6. **設定 Hooks**：讓 Claude Code 在特定事件自動執行

### 進階玩法
7. **用 /batch 處理遷移任務**：一次改幾十個檔案
8. **用 /schedule 做雲端排程**：關機也繼續跑

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|------|------|------|
| [[agent-anatomy-openclaw]] | Agent 架構 | SOUL.md ≈ CLAUDE.md，都是 Persona/Context 的載體 |
| [[AI-Skills]] | Skill 生態 | Custom Skills 是 SKILL.md 格式的一種實作 |
| [[openclaw]] | OpenClaw 框架 | SOUL.md + SKILL.md 對應 CLAUDE.md + Custom Skills |
| [[context-engineering-basics]] | Context Engineering | /compact、/rewind 都是 CE 技巧 |
| [[llm-knowledge-base]] | 知識庫方法 | CLAUDE.md 是精煉後的知識庫，飛輪效應與知識庫 lint 一致 |

## 核心哲學

**不要把 Claude Code 當聊天機器人，把它當成一支你在調度的工程師團隊。**

如果只能帶走一件事：**先設好自動驗證**。

## 相關概念

- [[AI-Skills|Agent Skills 生態系]]
- [[openclaw|OpenClaw]]
- [[AI-Skills]] — Skill 標準格式
- [[context-engineering-basics]] — Context Engineering 核心技術
- [[llm-knowledge-base]] — 知識庫方法論

## 來源

- [科技翰林院原文](https://www.techhanlin.tw/claude-code-tips-boris-cherny-advanced-techniques/)
- [原始資料](../raw/2026-05-06-claude-code-boris-cherny-advanced-techniques.md)