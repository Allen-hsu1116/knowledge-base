---
title: CodeBurn
slug: codeburn
created: 2026-05-09
stars: '⭐5.9'
updated: 2026-05-09
language: zh-TW
---

# CodeBurn

> 跨 18 種 AI coding 工具的 token 用量、成本與效能追蹤儀表板。完全本地執行，不需代理、不需 API key。⭐5.9K

## 快速導航
- 💻 **Coding Agent CLI** → [[Coding-Agent-CLI]]（CodeBurn 追蹤 coding agent 的 token 和成本）
- ⚡ **Token 優化** → [[Token-Optimization]]（CodeBurn 的 optimize 功能偵測 token 浪費）
- 📊 **AI Agent 影響** → [[ai-agent-work-impact]]（CodeBurn 的 yield 功能量化 AI 投資回報率）

## 是什麼

CodeBurn 解決了一個 AI coding 工具使用者的核心痛點：錢花去哪了？當你同時用 Claude Code、Codex、Cursor、Gemini CLI 等多種工具，沒有一個統一的地方可以看到所有花費。CodeBurn 直接讀取各工具寫在磁碟上的 session 日誌，用 LiteLLM 的定價資料計算每次 API 呼叫的成本，然後在一個互動式 TUI 儀表板上呈現。

它把每次編輯分類為 13 種任務類型，計算「一次命中率」和平均重試次數，幫助你理解哪個模型在哪種任務上最有效率。

## 核心特色

- **18 種 AI Coding 工具支援**：Claude Code、Codex、Cursor、Gemini CLI、GitHub Copilot、OpenClaw 等，自動偵測
- **成本追蹤與定價**：LiteLLM 定價資料計算每一種 token 成本，支援 cache write/read、web search
- **13 種任務分類**：基於工具使用模式和關鍵字進行確定性分類，不需 LLM 呼叫
- **Optimize 浪費偵測**：掃描 session 找出浪費模式，附帶預估節省金額和修復指令
- **Compare 模型比較**：並排比較不同模型的使用指標
- **Yield 生產力追蹤**：將 AI session 與 git commits 關聯，分類為 Productive/Reverted/Abandoned
- **原生 macOS 選單列 App**：永遠顯示今日花費，每 30 秒自動刷新

## 怎麼用

```bash
# 安裝
npm install -g codeburn

# 互動式儀表板
codeburn

# 今日用量
codeburn today

# 掃描浪費
codeburn optimize

# 模型比較
codeburn compare

# 生產力追蹤
codeburn yield
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[Coding-Agent-CLI]] | Coding Agent 工具 | CodeBurn 追蹤 coding agent 的使用狀況 |
| [[Token-Optimization]] | Token 優化 | CodeBurn 的 optimize 功能偵測 token 浪費 |
| [[ai-agent-work-impact]] | AI 工作影響 | CodeBurn 的 yield 功能量化 AI 投資回報率 |
| [[mattpocock-skills]] | 工程實踐 Skills | Matt Pocock 的 /caveman Skill 減少 token 用量 ~75%，與 CodeBurn 的 optimize 互補 |
| [[Kappaemme-git-codex-complexity-optimizer]] | 演算法複雜度分析 | 分析程式碼複雜度，與 CodeBurn 的成本追蹤互補 |

## 相關概念

← [[Coding-Agent-CLI]] · [[Token-Optimization]] · [[ai-agent-work-impact]]

## 來源

- raw/2026-05-09-codeburn.md

---

- **GitHub**: https://github.com/getagentseal/codeburn
- **Stars**: ⭐5,885
- **License**: MIT
- **收錄日期**: 2026-05-09