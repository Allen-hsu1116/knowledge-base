---
title: cmux
slug: manaflow-ai-cmux
created: 2026-05-26
date: 2026-05-25
stars: 19020
repo: manaflow-ai/cmux
url: https://github.com/manaflow-ai/cmux
language: Swift
topics: [Coding Agent CLI, 終端機, AI Agent 通知]
updated: 2026-06-14
---

# cmux

> ⭐19020 · Ghostty-based macOS 終端機——直式分頁 + AI coding agent 通知，為 Agent 工作流設計。

## 快速導航

- ⚡ [[Coding-Agent-CLI]] · [[AI-Skills]] · [[earendil-works-pi|Pi Agent]]

## 是什麼


cmux 是專為 AI coding agent 工作流設計的 macOS 原生終端機——當 Agent 需要你注意時，分頁亮起通知環；內建瀏覽器可以跟終端並排；一鍵啟動 Claude Code Teams；SSH 到遠端也支援瀏覽器路由。

不是另一個 tmux wrapper，而是為「人多工 + AI 多工」場景重新設計的終端。基於 Ghostty 終端核心，用 Swift/AppKit 原生開發，不是 Electron。

## 核心特色

- **通知環 + 分頁通知** — Agent 需要人的注意時，Pane 亮藍環、分頁發光
- **通知面板** — 一次看所有待處理通知，一鍵跳到最新未讀
- **內建瀏覽器** — 可程式化的 in-app browser，API 來自 agent-browser
- **直式 + 橫式分頁** — 側邊欄顯示 git branch、PR 狀態、工作目錄、監聽端口、最新通知
- **Claude Code Teams** — `cmux claude-teams` 一鍵跑 teammate mode，原生分頁 + 通知
- **SSH 整合** — 遠端 session 的瀏覽器走遠端網路，localhost 直接用
- **Session Restore** — 關閉後重開自動恢復 workspace、分頁、scrollback、瀏覽器歷史
- **Agent Hooks** — 支援 Claude Code、Codex、OpenCode、Pi 等多種 agent session 恢復

## 怎麼用

```bash
# DMG 安裝（推薦）
# 從 GitHub Releases 下載 cmux-macos.dmg

# Homebrew 安裝
brew tap manaflow-ai/cmux
brew install --cask cmux
```

核心使用場景：
- **Agent 多工** — 同時開多個 agent session，通知系統讓你知道哪個需要你
- **Claude Code Teams** — `cmux claude-teams` 一鍵啟動多 agent 協作
- **SSH + 瀏覽器** — 遠端開發時，瀏覽器走遠端網路，無需 port forwarding
- **Agent Session 恢復** — 關閉 cmux 後重開，agent session 自動恢復

快捷鍵：
- `⌘⇧U` — 跳到最新未讀通知
- `⌘I` — 打開通知面板
- `⌘⇧L` — 開啟瀏覽器分頁

## 跟其他方案的關係

| 特色 | cmux | iTerm2 | Warp | tmux | Alacritty |
|------|------|--------|------|------|-----------|
| 定位 | AI Agent 終端 | 通用終端 | AI 終端 | 終端多工器 | 輕量終端 |
| Agent 通知 | ✅ 原生通知環 | ❌ | ⚠️ 有限 | ❌ | ❌ |
| 內建瀏覽器 | ✅ | ❌ | ❌ | ❌ | ❌ |
| Claude Code Teams | ✅ 一鍵 | ❌ | ❌ | ❌ | ❌ |
| 原生 macOS | ✅ Swift/AppKit | ✅ Objective-C | ❌ Rust/Electron | ❌ | ✅ |
| Session 恢復 | ✅ 含 Agent | ✅ | ✅ | ✅ | ❌ |
| SSH 瀏覽器路由 | ✅ | ❌ | ❌ | ❌ | ❌ |

cmux 跟 [[Coding-Agent-CLI]] 不是競爭關係——cmux 是為 coding agent 設計的終端環境，不是 agent 本身。跟 [[earendil-works-pi|Pi Agent Harness]] 互補：Pi 提供 agent runtime，cmux 提供終端 UI。

## 相關概念

← [[Coding-Agent-CLI]] · [[AI-Skills]] · [[earendil-works-pi]]

## 來源

- GitHub：https://github.com/manaflow-ai/cmux
- Raw 檔案：`raw/2026-05-25-manaflow-ai-cmux.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/manaflow-ai/cmux |
| Stars | ⭐19020|
| License | 未標示 |
| 收錄日期 | 2026-05-26 |
