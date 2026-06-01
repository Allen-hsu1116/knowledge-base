---
title: Leonxlnx/taste-skill
url: https://github.com/Leonxlnx/taste-skill
stars: 19717
created: 2026-02-19
language: Shell
date: 2026-05-26
topics:
  - AI-Skills
  - Prompt-Engineering
  - agent-skills-ecosystem
---

# Taste Skill — 反樣板 AI 前端框架

> The Anti-Slop Frontend Framework for AI Agents — gives your AI good taste, stops generating boring, generic slop

Taste Skill 是一系列可攜式的 Agent Skill，讓 AI 生成的前端不再千篇一律，而是有更好的排版、字體、動畫和間距。

## 快速導航

- ⚡ [[AI-Skills]] · [[Prompt-Engineering]] · [[agent-skills-ecosystem]]

## 是什麼

Taste Skill 是一個反樣板（anti-slop）前端框架，專為 AI Agent 設計。它提供多種可攜式的 Agent Skill，讓 AI 生成的前端 UI 不再千篇一律——告別制式的居中佈局、系統字體和無動畫頁面。每個 Skill 定義了風格變體、可調參數（DESIGN_VARIANCE、MOTION_INTENSITY、VISUAL_DENSITY），以及設計稿到程式碼的生成流程。

支援主技能（v2 實驗中）、GPT 變體、極簡風、粗獷風、柔和高級風、重設計、完整輸出強制等多種風格。框架無關，適用於 React、Vue、Svelte 等任何前端框架。

## 核心特色

- **多種風格變體**：主技能（v2 實驗中）、GPT 變體、極簡風、粗獷風、柔和高級風、重設計、完整輸出強制
- **可調參數**：DESIGN_VARIANCE（佈局實驗性）、MOTION_INTENSITY（動畫深度）、VISUAL_DENSITY（資訊密度），各 1-10 刻度
- **圖像生成技能**：imagegen-frontend-web、imagegen-frontend-mobile、brandkit，產出設計稿再交給編碼 Agent
- **框架無關**：適用於 React、Vue、Svelte 等任何前端框架
- **安裝簡單**：`npx skills add https://github.com/Leonxlnx/taste-skill`

## 怎麼用

```bash
# 安装 Taste Skill
npx skills add https://github.com/Leonxlnx/taste-skill

# 在 Claude Code 中使用
# 安裝後會自動載入 taste skill，影響 AI 的前端輸出風格

# 可調參數（在 prompt 或設定中指定）
# DESIGN_VARIANCE=7    # 佈局實驗性 (1-10)
# MOTION_INTENSITY=5   # 動畫深度 (1-10)
# VISUAL_DENSITY=6     # 資訊密度 (1-10)
```

適合用 AI 寫前端但受不了千篇一律的開發者、想讓 Codex / Cursor / Claude Code 產出更好 UI 的人，以及需要快速生成高品質設計稿再轉程式碼的團隊。

## 跟其他方案的關係

| 方案 | 定位 | 安裝方式 | 風格數 | 框架相容 | 授權 |
|------|------|---------|--------|---------|------|
| **Taste Skill** | 反樣板前端 Skill | `npx skills add` | 7+ | 任何前端框架 | MIT |
| [[anthropics-knowledge-work-plugins|Knowledge Work Plugins]] | 企業角色插件 | `claude plugin install` | 11 角色插件 | Claude Cowork/Code | Apache-2.0 |
| [[affaan-m-ECC|ECC]] | Harness 優化系統 | `./setup.sh` | 232+ skills | 7+ harness | MIT |
| [[msitarzewski-agency-agents|Agency Agents]] | Agent 人格集 | 手動複製 | 144+ agents | 10+ 工具 | MIT |

- Taste Skill 是 [[AI-Skills]] 在前端美學領域的專門應用
- 與 ECC 互補：ECC 優化 Agent 的整體效能和安全，Taste Skill 優化 Agent 的前端輸出品質
- 屬於 [[agent-skills-ecosystem]] 中的前端風格類 Skill

## 相關概念

← [[AI-Skills]] · [[Prompt-Engineering]] · [[agent-skills-ecosystem]]

## 來源

- [原始資料](../raw/2026-05-26-Leonxlnx-taste-skill.md)