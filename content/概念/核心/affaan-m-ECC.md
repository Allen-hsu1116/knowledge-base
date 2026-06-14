---
title: ECC
slug: affaan-m-ECC
date: 2026-05-20
stars: 187193
repo: https://github.com/affaan-m/ECC
language: JavaScript
updated: 2026-06-14
---

# ECC — Agent Harness Performance Optimization System

> The harness-native operator system for agentic work. From an Anthropic hackathon winner.

ECC 是一個完整的 AI coding agent 優化系統，不只是設定檔，而是涵蓋 skills、instincts、memory optimization、continuous learning、security scanning 與 research-first development 的全套方案。經過 10+ 個月高強度日常使用打磨而成。

## 快速導航

- ⚡ [[AI-Agent]] · [[AI-Skills]] · [[Coding-Agent-CLI]] · [[prompt-security]]

## 是什麼

ECC（Agent Harness Performance Optimization System）是一個完整的 AI coding agent 優化系統，源自 Anthropic hackathon 得獎作品。它不只是設定檔或 prompt 模板，而是一套涵蓋 skills（技能）、instincts（直覺）、memory optimization（記憶優化）、continuous learning（持續學習）、security scanning（安全掃描）與 research-first development（研究優先開發）的完整方案。支援 Claude Code、Codex、Cursor、OpenCode、Gemini、Zed、GitHub Copilot 等 7+ harness，經過 10+ 個月高強度日常使用打磨而成。

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

## 怎麼用

```bash
# 克隆與安裝
git clone https://github.com/affaan-m/ECC.git && cd ECC

# Selective install（v1.9+）— 只裝你需要的部分
./setup.sh --selective

# 或完整安裝
./setup.sh

# 針對特定 harness 使用（以 Claude Code 為例）
# skills 會自動載入到 ~/.claude/skills/
# agents 會自動載入到 ~/.claude/agents/

# 也可用於 Codex / Cursor / OpenCode 等
# 每個 harness 有對應的設定目錄
```

ECC 的 skills 目錄包含 232+ 個可攜式技能定義，每個都是 markdown 檔。Agent 定義包含身份、使命、工作流程。安裝後在對應 harness 中直接啟用即可。

## 跟其他方案的關係

| 方案 | 定位 | Skills/Agents | 安全掃描 | 持續學習 | Harness 支援 | 授權 |
|------|------|-------------|----------|---------|-------------|------|
| **ECC** | Harness 優化系統 | 232+ skills / 60+ agents | ✅ AgentShield | ✅ 自動提取 | 7+ | MIT |
| [[msitarzewski-agency-agents\|Agency Agents]] | Agent 人格集 | 144+ agents | ❌ | ❌ | 10+ | MIT |
| [[anthropics-knowledge-work-plugins\|Knowledge Work Plugins]] | 企業角色插件 | 11 plugins | ❌ | ❌ | Claude Cowork/Code | Apache-2.0 |
| [[Leonxlnx-taste-skill\|Taste Skill]] | 前端風格 skill | 多種風格變體 | ❌ | ❌ | 多工具 | MIT |

- ECC 側重 **harness 效能最佳化與安全防禦**，Agency Agents 側重 **豐富角色人格**
- ECC 的 AgentShield 是 [[prompt-security]] 領域的實際應用——掃描攻擊向量、沙箱化、sanitization、CVE 防禦
- ECC 屬於 [[agent-skills-ecosystem]] 生態系中功能最完整的方案之一

## 相關概念

- [[AI-Agent]] — Agent 架構與設計
- [[AI-Skills]] — Agent 技能系統
- [[Coding-Agent-CLI]] — 終端 coding agent 工具
- [[agent-skills-ecosystem]] — Agent 技能生態系
- [[prompt-security]] — 提示安全與防禦

## 來源

- [原始資料](../raw/2026-05-20-affaan-m-ECC.md)