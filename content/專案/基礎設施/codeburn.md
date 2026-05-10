---
title: CodeBurn
date: 2026-05-09
stars: 5885
language: TypeScript
github: https://github.com/getagentseal/codeburn
created: 2026-04-13
---

# CodeBurn

跨 18 種 AI coding 工具的 token 用量、成本與效能追蹤儀表板。完全本地執行，不需代理、不需 API key，直接讀取磁碟上的 session 資料並用 LiteLLM 定價。

**相關概念**：[[Coding-Agent-CLI]] · [[Token-Optimization]] · [[ai-agent-work-impact]]

---

## 基本資訊

| 項目 | 內容 |
|---|---|
| GitHub | [getagentseal/codeburn](https://github.com/getagentseal/codeburn) |
| Stars | ⭐5.9k |
| Language | TypeScript |
| 建立日期 | 2026-04-13 |
| 收錄日期 | 2026-05-09 |
| 授權 | MIT |

## 快速導航

- [[Coding-Agent-CLI]] — coding agent 命令列工具
- [[Token-Optimization]] — token 效率與成本優化
- [[ai-agent-work-impact]] — AI agent 對工作流程的影響

---

## 詳細簡介

CodeBurn 解決了一個 AI coding 工具使用者的核心痛點：錢花去哪了？當你同時用 Claude Code、Codex、Cursor、Gemini CLI 等多種工具，沒有一個統一的地方可以看到所有花費。CodeBurn 直接讀取各工具寫在磁碟上的 session 日誌，用 LiteLLM 的定價資料計算每次 API 呼叫的成本，然後在一個互動式 TUI 儀表板上呈現。

它不只是一個花費追蹤器。CodeBurn 把每次編輯分類為 13 種任務類型（Coding、Debugging、Feature Dev、Refactoring、Testing 等），計算「一次命中率」（one-shot rate）——模型第一次就改對的百分比——以及每次編輯的平均重試次數。這些指標幫助你理解哪個模型在哪種任務上最有效率。

## 核心特色

### 18 種 AI Coding 工具支援

支援 Claude Code、Claude Desktop、Codex、Cursor、cursor-agent、Gemini CLI、GitHub Copilot、Kiro、OpenCode、OpenClaw、Pi、OMP、Droid、Roo Code、KiloCode、Qwen、Goose、Antigravity。自動偵測你安裝了哪些工具，在儀表板中按 `p` 切換。

### 成本追蹤與定價

使用 LiteLLM 的模型價格資料（自動快取 24 小時），計算 input、output、cache write、cache read、web search 的每一種 token 成本。支援 Claude fast mode 倍率。內建所有 Claude 和 GPT 模型的硬編碼 fallback 定價，避免模糊比對造成的錯誤計價。

### 13 種任務分類

不靠 LLM 呼叫，完全基於工具使用模式和關鍵字進行確定性分類：Coding（Edit/Write tools）、Debugging（error/fix 關鍵字）、Feature Dev（add/create/implement）、Refactoring、Testing、Exploration、Planning、Delegation、Git Ops、Build/Deploy、Brainstorming、Conversation、General。

### Optimize：浪費偵測與修復建議

掃描你的 session 和 `~/.claude/` 設定，找出浪費模式：
- 重複讀取的檔案（跨 session 同樣內容反覆讀取）
- 低 Read:Edit 比（不讀就改，導致重試浪費）
- 未截斷的 bash 輸出
- 啟用但從未使用的 MCP servers（白付 tool schema overhead）
- Ghost agents、skills、slash commands
- 膨脹的 CLAUDE.md 檔案
- 快取建立與垃圾目錄讀取的 overhead

每個發現都附帶預估節省的 token 數和美元金額，以及可直接貼上的修復指令。還會給你的設定一個 A 到 F 的健康評分。

### Compare：模型比較

並排比較不同模型的使用指標：一次命中率、重試率、自我修正率、每次呼叫成本、每次編輯成本、output token 效率、快取命中率。幫助你做出「什麼任務用什麼模型」的資料驅動決策。

### Yield：生產力追蹤

將 AI session 與 git commits 按時間戳關聯，分類為：
- **Productive**：commits 已合併到 main
- **Reverted**：commits 後來被 revert
- **Abandoned**：沒有 commit 或 commits 從未合併

這讓你量化 AI coding 工具的真正投資回報率。

### 原生 macOS 選單列 App

`codeburn menubar` 一鍵安裝原生 Swift/SwiftUI 選單列應用，永遠顯示今日花費，點擊展開完整儀表板。每 30 秒自動刷新。

## 安裝方式

```bash
# npm
npm install -g codeburn

# Homebrew
brew tap getagentseal/codeburn
brew install codeburn

# 直接執行（不安裝）
npx codeburn
```

### 基本使用

```bash
codeburn                        # 互動式儀表板（預設 7 天）
codeburn today                  # 今日用量
codeburn month                  # 本月用量
codeburn optimize               # 掃描浪費，給出修復建議
codeburn compare                # 模型並排比較
codeburn yield                  # 生產力 vs 浪費分析
codeburn status                 # 精簡一行摘要
codeburn export                 # CSV 匯出
```

## 技術棧

- **語言**: TypeScript
- **執行環境**: Node.js 20+
- **UI**: TUI (Terminal User Interface)
- **定價資料**: LiteLLM
- **原生 App**: Swift / SwiftUI (macOS)

## 授權

MIT License

## 相關連結

- [GitHub](https://github.com/getagentseal/codeburn)
- [npm](https://www.npmjs.com/package/codeburn)