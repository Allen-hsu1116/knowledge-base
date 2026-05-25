---
title: cmux
date: 2026-05-25
stars: 19020
repo: manaflow-ai/cmux
url: https://github.com/manaflow-ai/cmux
language: Swift
topics:
  - Coding-Agent-CLI
  - agent-skills-ecosystem
  - coding-agent-toolkit
---

# cmux

⭐ 19k · Ghostty-based macOS 終端機——直式分頁 + AI coding agent 通知，為 Agent 工作流設計。

## 一句話

cmux 是專為 AI coding agent 工作流設計的 macOS 原生終端機：當 Agent 需要你注意時，分頁亮起通知環；內建瀏覽器可以跟終端並排；一鍵啟動 Claude Code Teams；SSH 到遠端也支援瀏覽器路由。不是另一個 tmux wrapper，而是為「人多工 + AI 多工」場景重新設計的終端。

## 快速導航

- 🛠 **Coding Agent CLI** → [[Coding-Agent-CLI]]（終端機 AI 程式開發助手）
- 🔗 **Agent Skills 生態** → [[agent-skills-ecosystem]]（AI coding agent 的 skill 標準）
- 🧰 **Coding Agent 工具包** → [[coding-agent-toolkit]]（AI coding agent 的基礎建設）

## 為什麼重要

AI coding agent 時代，終端機是人和 AI 的共同工作空間。但現有終端（iTerm2、Warp、Alacritty）不是為 Agent 工作流設計的。cmux 的核心洞察是：當 Agent 在背景工作時，你需要的是**通知 + 上下文切換**，而不是持續盯著。通知環、通知面板、一鍵 Claude Code Teams、SSH 遠端瀏覽器路由——每個功能都是在解決「人跟 AI 同時多工」的問題。

## 核心概念

- **通知環 + 分頁通知** — Agent 需要人的注意時， Pane 亮藍環、分頁發光
- **通知面板** — 一次看所有待處理通知，一鍵跳到最新未讀
- **內建瀏覽器** — 可程式化的 in-app browser，API 來自 agent-browser
- **直式 + 橫式分頁** — 側邊欄顯示 git branch、PR 狀態、工作目錄、監聽端口、最新通知
- **Claude Code Teams** — `cmux claude-teams` 一鍵跑 teammate mode，原生分頁 + 通知
- **SSH 整合** — 遠端 session 的瀏覽器走遠端網路，localhost 直接用

## 跟我們的關聯

- [[Coding-Agent-CLI]] — cmux 不是 coding agent 本身，而是為 coding agent 設計的終端環境
- [[agent-skills-ecosystem]] — Claude Code Teams 整合顯示 agent 工作流對終端的新需求
- [[coding-agent-toolkit]] — 從終端層面補足 AI coding agent 的基礎建設
- [[earendil-works-pi|Pi Agent Harness]] — Pi 提供 agent runtime，cmux 提供終端 UI，互補
- [[manaflow-ai-cmux|cmux]] — 新概念：為 AI coding agent 工作流設計的原生終端

## 來源

- raw/2026-05-25-manaflow-ai-cmux.md