---
title: ECC
slug: affaan-m-ECC
date: 2026-05-20
stars: 187193
repo: https://github.com/affaan-m/ECC
language: JavaScript
topics:
  - AI-Agent
  - AI-Skills
  - Coding-Agent-CLI
  - agent-skills-ecosystem
  - prompt-security
---

# ECC — Agent Harness Performance Optimization System

> The harness-native operator system for agentic work. From an Anthropic hackathon winner.

ECC 是一個完整的 AI coding agent 優化系統，不只是設定檔，而是涵蓋 skills、instincts、memory optimization、continuous learning、security scanning 與 research-first development 的全套方案。經過 10+ 個月高強度日常使用打磨而成。

## 核心特色

- **60+ agents、232+ skills、75+ legacy command shims** — 涵蓋各種開發場景
- **跨 harness 支援** — Claude Code、Codex、Cursor、OpenCode、Gemini、Zed、GitHub Copilot 等 7+ 工具
- **Token 優化與記憶持久化** — 跨 session 自動保存/載入上下文
- **AgentShield 安全掃描** — 攻擊向量、沙箱化、sanitization、CVE 防禦
- **持續學習** — 自動從 session 提取可複用的 skill pattern
- **驗證迴圈與平行化** — checkpoint vs continuous evals、git worktree 並行

## 版本演進

- **v2.0.0-rc.1** — Dashboard GUI、operator workflow 擴展、ECC 2.0 alpha（Rust control-plane）
- **v1.9.0** — Selective install 架構、6 新 agents、12+ 語言生態系
- **v1.8.0** — Harness performance system 定位、Hook 可靠性大修

## 相關概念

- [[AI-Agent]] — Agent 架構與設計
- [[AI-Skills]] — Agent 技能系統
- [[Coding-Agent-CLI]] — 終端 coding agent 工具
- [[agent-skills-ecosystem]] — Agent 技能生態系
- [[prompt-security]] — 提示安全與防禦