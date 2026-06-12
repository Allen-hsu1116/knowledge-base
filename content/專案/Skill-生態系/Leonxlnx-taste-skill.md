---
title: Leonxlnx/taste-skill
slug: Leonxlnx-taste-skill
url: https://github.com/Leonxlnx/taste-skill
stars: 36016
created: 2026-02-19
language: Shell
date: 2026-06-07
topics:
  - AI-Skills
  - Prompt-Engineering
  - Frontend
  - agent-skills-ecosystem
updated: 2026-06-07
---

# Taste Skill — 反樣板 AI 前端框架

> The Anti-Slop Frontend Framework for AI Agents — gives your AI good taste, stops generating boring, generic slop

Taste Skill 是一系列可攜式的 Agent Skill，讓 AI 生成的前端不再千篇一律，而是有更好的排版、字體、動畫和間距。同時也提供圖像生成 Skill（網頁、手機、品牌套件），可搭配 ChatGPT Images 或圖像生成工具先產出設計稿，再交給 Codex、Cursor、Claude Code 實作。

## 快速導航

- ⚡ [[AI-Skills]] · [[Prompt-Engineering]] · [[Frontend]] · [[agent-skills-ecosystem]]

## 是什麼

Taste Skill 是一個反樣板（anti-slop）前端框架，專為 AI Agent 設計。它提供多種可攜式的 Agent Skill，讓 AI 生成的前端 UI 不再千篇一律——告別制式的居中佈局、系統字體和無動畫頁面。

v2 實驗版帶來重大改寫：brief inference（自動推斷設計語言）、design-system map（設計系統映射）、硬性 em-dash 禁令、GSAP 動畫骨架、redesign-audit 協議、嚴格的 pre-flight check。

支援主技能（v2 實驗中）、GPT 變體、極簡風、粗獷風、柔和高級風、重設計、完整輸出強制等多種風格。框架無關，適用於 React、Vue、Svelte 等任何前端框架。

## 核心特色

- **v2 實驗版重大更新**：brief inference、design-system map、canonical GSAP code skeletons、redesign-audit protocol、strict pre-flight check
- **9 種程式碼 Skill + 3 種圖像 Skill**：從前端美學到品牌設計板全涵蓋
- **可調三參數**：DESIGN_VARIANCE（佈局實驗性）、MOTION_INTENSITY（動畫深度）、VISUAL_DENSITY（資訊密度），各 1-10 刻度
- **Image-first 工作流**：先用 imagegen Skill 生成設計稿，再用 image-to-code Skill 轉成程式碼
- **框架無關**：適用於 React、Vue、Svelte 等任何前端框架
- **安裝簡單**：`npx skills add https://github.com/Leonxlnx/taste-skill`

## 怎麼用

```bash
# 安裝 Taste Skill（預設 v2）
npx skills add https://github.com/Leonxlnx/taste-skill

# 安裝特定變體
npx skills add https://github.com/Leonxlnx/taste-skill --skill "design-taste-frontend"
npx skills add https://github.com/Leonxlnx/taste-skill --skill "high-end-visual-design"
npx skills add https://github.com/Leonxlnx/taste-skill --skill "minimalist-ui"

# 可調參數（在 prompt 或設定中指定）
# DESIGN_VARIANCE=7    # 佈局實驗性 (1-10)
# MOTION_INTENSITY=5   # 動畫深度 (1-10)
# VISUAL_DENSITY=6     # 資訊密度 (1-10)
```

適合用 AI 寫前端但受不了千篇一律的開發者、想讓 Codex / Cursor / Claude Code 產出更好 UI 的人，以及需要快速生成高品質設計稿再轉程式碼的團隊。

## 跟其他方案的關係

- **程式碼 Skill 清單**：
  - `design-taste-frontend`（v2 主技能）、`design-taste-frontend-v1`（v1 穩定版）、`gpt-taste`（GPT/Codex 專用）、`image-to-code`（圖→碼流程）、`redesign-existing-projects`（重設計）、`high-end-visual-design`（柔和高級）、`full-output-enforcement`（完整輸出）、`minimalist-ui`（極簡）、`industrial-brutalist-ui`（粗獷）、`stitch-design-taste`（Google Stitch）
- **圖像 Skill 清單**：`imagegen-frontend-web`、`imagegen-frontend-mobile`、`brandkit`
- Taste Skill 是 [[AI-Skills]] 在前端美學領域的專門應用
- 與 ECC 互補：ECC 優化 Agent 的整體效能和安全，Taste Skill 優化 Agent 的前端輸出品質
- 屬於 [[agent-skills-ecosystem]] 中的前端風格類 Skill
- v2 的 brief inference 和 design-system map 與 [[Prompt-Engineering]] 密切相關

## 相關概念

← [[AI-Skills]] · [[Prompt-Engineering]] · [[Frontend]] · [[agent-skills-ecosystem]]

## 來源

- [原始資料](../raw/2026-06-07-Leonxlnx-taste-skill.md)