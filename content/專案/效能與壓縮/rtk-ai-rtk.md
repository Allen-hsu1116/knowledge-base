---



title: RTK (Rust Token Killer)
slug: rtk-ai-rtk
aliases:
  - rtk-ai-rtk
  - RTK AI

stars: '⭐6k'


updated: TODO
language: zh-TW
topics: []
---

# RTK (Rust Token Killer)

> 高效能 CLI proxy，減少 LLM token 消耗 60-90%。單一 Rust binary，零依賴，支援 100+ 指令。⭐ 6k+

## 快速導航
- ⚡ [[Token-Optimization]] · [[Coding-Agent-CLI]] · [[agent-skills-ecosystem]]

## 是什麼

RTK（Rust Token Killer）是一個高效能 CLI proxy，安裝在 LLM CLI 工具和 shell 之間，過濾和壓縮常用指令的輸出，減少 token 消耗 60-90%。典型 30 分鐘的 Claude Code session 可以從 118k token 降到 24k token。支援 100+ 指令（ls、cat、grep、git、test runners、docker 等），單一 Rust binary、<10ms 延遲、零設定。

## 核心特色

- **60-90% Token 節省** — 典型 30 分鐘 Claude Code session 從 118k → 24k token
- **單一 Rust Binary** — 零依賴，<10ms 延遲，對使用者透明
- **100+ 指令支援** — 過濾和壓縮 ls、cat、grep、git、test runners、docker 等輸出
- **零設定** — 開箱即用，不需要改現有 workflow
- **多語言文件** — 英文、中文、日文、韓文、法文、西班牙文
- **四種壓縮策略** — 智慧過濾（Smart Filtering）、分組（Grouping）、截斷（Truncation）、去重（Deduplication）
- **Token 分析** — `rtk gain` 顯示節省統計、`rtk discover` 發現未覆蓋的指令
- **12 個 AI 工具整合** — Claude Code、Copilot、Gemini CLI、Codex、Cursor、Windsurf、Cline 等

Token 節省明細：
| 指令 | 原始 token | rtk 後 | 節省 |
|------|-----------|--------|------|
| ls/tree | 2,000 | 400 | -80% |
| cat/read | 40,000 | 12,000 | -70% |
| grep/rg | 16,000 | 3,200 | -80% |
| git status | 3,000 | 600 | -80% |
| git diff | 10,000 | 2,500 | -75% |
| git add/commit/push | 1,600 | 120 | -92% |
| cargo test/npm test | 25,000 | 2,500 | -90% |
| pytest | 8,000 | 800 | -90% |

## 怎麼用

```bash
# Homebrew
brew install rtk

# 或快速安裝
curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh | sh

# 或 Cargo
cargo install --git https://github.com/rtk-ai/rtk

# 初始化（自動設定 Bash hook）
rtk init -g                     # Claude Code / Copilot（預設）
rtk init -g --gemini            # Gemini CLI
rtk init -g --codex             # Codex（OpenAI）
rtk init -g --agent cursor      # Cursor

# 查看節省統計
rtk gain

# 發現覆蓋機會
rtk discover
```

安裝後直接使用——RTK 會自動攔截和壓縮 CLI 輸出，不需要改你的日常工作流程。適用在所有 LLM CLI 工具（Claude Code、Codex、Gemini CLI 等）。

## 跟其他方案的關係

| 方案 | 策略 | 延遲 | 指令覆蓋 | 設定 |
|------|------|------|---------|------|
| RTK | CLI Proxy 過濾壓縮 | <10ms | 100+ | 零設定 |
| 系統提示壓縮 | Prompt 層壓縮 | 0 | 僅文字 | 需要調 prompt |
| Context Window 管理 | 截斷/摘要 | 0 | 通用 | 需要邏輯 |
| [[openclaw]] 限制 token | Skill 漸進式揭露 | 0 | Skill 系統 | 需要 SKILL.md |

RTK 跟 [[Token-Optimization]] 直接相關——它是 token 優化在 CLI 層的實作。也跟 [[Coding-Agent-CLI]] 相關——coding agent 是 token 消耗的主要場景。

## 相關概念
← [[Token-Optimization]] · [[Coding-Agent-CLI]] · [[agent-skills-ecosystem]]

## 來源
- [原始資料](../raw/2026-05-03-rtk.md)