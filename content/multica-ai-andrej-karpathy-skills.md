---
title: Andrej Karpathy Skills
slug: multica-ai-andrej-karpathy-skills
date: 2026-05-20
stars: 138023
repo: https://github.com/multica-ai/andrej-karpathy-skills
language: Markdown
topics:
  - AI-Skills
  - Prompt-Engineering
  - Coding-Agent-CLI
  - karpathy-skills
  - andrej-karpathy-ai-how
---

# Andrej Karpathy Skills — Karpathy-Inspired Claude Code Guidelines

> A single CLAUDE.md file to improve Claude Code behavior, derived from Andrej Karpathy's observations on LLM coding pitfalls.

這是一個單一 CLAUDE.md 檔案，直接回應 Karpathy 對 LLM coding 問題的觀察：錯誤假設、過度複雜化、無關修改、缺乏驗證。

## 四大原則

1. **Think Before Coding** — 不要假設、不要隱藏困惑、呈現取捨、該反對時就反對
2. **Simplicity First** — 解決問題的最少程式碼，沒有投機性功能
3. **Surgical Changes** — 只碰你必須碰的，只清理你自己造成的混亂
4. **Goal-Driven Execution** — 定義成功標準，迴圈直到驗證通過

## 核心洞見

來自 Karpathy 的名言：
> "LLMs are exceptionally good at looping until they meet specific goals... Don't tell it what to do, give it success criteria and watch it go."

## 安裝方式

- Claude Code Plugin（推薦）
- Per-project CLAUDE.md
- Cursor project rules

## 相關概念

- [[AI-Skills]] — Agent 技能系統
- [[Prompt-Engineering]] — 提示工程
- [[Coding-Agent-CLI]] — 終端 coding agent 工具
- [[karpathy-skills]] — Karpathy 相關 skills
- [[andrej-karpathy-ai-how]] — Karpathy 的 AI 觀點