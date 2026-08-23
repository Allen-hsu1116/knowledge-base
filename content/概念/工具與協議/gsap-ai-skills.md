---
title: GSAP AI Skills
slug: gsap-ai-skills
created: 2026-06-20
updated: 2026-08-23
language: zh-TW
---

# GSAP AI Skills

> 文章/概念 · GSAP 官方推出的 AI Skill · 讓 AI 能正確使用專業動畫引擎，擺脫「AI 味」網站

## 核心內容

GSAP AI Skills 是 **GSAP（GreenSock Animation Platform）官方推出的 AI Skill**，讓 AI Agent（如 Claude、Cursor）能正確使用 GSAP 產生高質感動畫，而非預設的「AI 味」效果（紫藍漸層、玻璃擬態卡片、千篇一律的 fade in）。

這篇來自 AI郵報（aiposthub.com）的文章由 Joanna Chang 撰寫，記錄了用 Claude + GSAP AI Skills + 高質感設計參考，做出有品牌特色的互動網站 Demo 的實戰過程。

## 關鍵要素

- **GSAP 官方出品** — 由 GreenSock 團隊直接推出，確保 AI 能正確使用 GSAP API
- **解決「AI 味」問題** — AI 做網站時沒有明確美學方向就會選最安全的「平均值」設計
- **設計品味 > 寫程式能力** — 核心心得：AI 缺的不是寫程式的能力，而是好的設計品味與參考
- **動畫節奏感** — 真正讓人「哇」的網站靠的是動畫節奏、頁面敘事、用心設計的細節

## 各框架的做法

- **Leonxlnx-taste-skill** → 展示此主題在實際專案或工具中的做法
  👉 詳見 [[Leonxlnx-taste-skill]]
- **nextlevelbuilder-ui-ux-pro-max-skill** → 展示此主題在實際專案或工具中的做法
  👉 詳見 [[nextlevelbuilder-ui-ux-pro-max-skill]]

## 延伸筆記

### 原有筆記：快速導航
- 🎨 [[Frontend-Design-Agent-Skills]] — 前端設計 Agent Skill
- 🧩 [[AI-Skills]] — AI Skill 概念總覽
- 🍯 [[Leonxlnx-taste-skill|taste-skill]] — Anti-Slop 前端框架
- 📝 [[Figma-Skills]] — Figma 設計 Skill

### 原有筆記：是什麼
GSAP AI Skills 是 **GSAP（GreenSock Animation Platform）官方推出的 AI Skill**，讓 AI Agent（如 Claude、Cursor）能正確使用 GSAP 產生高質感動畫，而非預設的「AI 味」效果（紫藍漸層、玻璃擬態卡片、千篇一律的 fade in）。

這篇來自 AI郵報（aiposthub.com）的文章由 Joanna Chang 撰寫，記錄了用 Claude + GSAP AI Skills + 高質感設計參考，做出有品牌特色的互動網站 Demo 的實戰過程。

### 原有筆記：核心特色
- **GSAP 官方出品** — 由 GreenSock 團隊直接推出，確保 AI 能正確使用 GSAP API
- **解決「AI 味」問題** — AI 做網站時沒有明確美學方向就會選最安全的「平均值」設計
- **設計品味 > 寫程式能力** — 核心心得：AI 缺的不是寫程式的能力，而是好的設計品味與參考
- **動畫節奏感** — 真正讓人「哇」的網站靠的是動畫節奏、頁面敘事、用心設計的細節

### 為什麼 AI 網站都有「AI 味」？

1. 沒有明確美學方向時，AI 自動選最常見的路
2. AI 讀過上萬個網站模板，吐回設計的「平均值」
3. 技術上挑不出毛病，視覺上卻沒有靈魂
4. 需要兩塊拼圖：**GSAP**（動畫引擎）+ **GSAP AI Skills**（讓 AI 正確使用它）

### 原有筆記：怎麼用
```bash

npm install gsap
```

1. 在 Claude / Cursor 中安裝 GSAP AI Skills
2. 餵給 AI 幾個高質感的設計參考網站
3. 讓 AI 使用 GSAP 而非 CSS animation / Tailwind 預設動畫
4. 搭配設計參考實作互動網站



### 原有筆記：跟其他方案的關係
| 方案 | 類型 | 核心差異 |
|------|------|----------|
| **GSAP AI Skills** | 官方 Skill | GSAP 官方出品，精準 API 使用 |
| [[Leonxlnx-taste-skill|taste-skill]] | 開源框架 | Anti-Slop 框架，從設計系統出發 |
| [[Frontend-Design-Agent-Skills]] | Agent Skill | 通用前端設計 Skill |
| [[Figma-Skills]] | 設計 Skill | Figma → 程式碼工作流 |
| [[nextlevelbuilder-ui-ux-pro-max-skill|UI/UX Pro Max]] | Agent Skill | UI/UX 設計 Skill |

**共同趨勢**：AI 做網站的下一步不是更會寫程式，而是**注入設計品味**。多個工具（taste-skill、GSAP Skills、Frontend Design Skills）都從不同角度解決同一個問題。

### 原有筆記：相關概念
← [[AI-Skills]] · [[Frontend-Design-Agent-Skills]] · [[Leonxlnx-taste-skill|taste-skill]] · [[Figma-Skills]]

### 原有筆記：來源
- 📝 文章：[AI郵報 — GSAP Skills 教學](https://www.aiposthub.com/claude-gsap-skills/)（付費訂閱）
- 📦 GSAP 官網：[greensock.com](https://greensock.com/)
- 📁 raw：`raw/2026-06-20-aiposthub-gsap-skills.md`

### 延伸筆記：核心特色
- **可追溯資訊** — 來源、授權與收錄日期集中在頁尾，方便核對專案背景。
- **生態系連結** — 透過相關概念與替代方案連結，補足採用時的比較脈絡。
- **實作導向** — 將定位、使用方式與限制整理在同一頁，便於快速評估。
- **延伸閱讀** — 保留原始素材路徑，必要時可回查完整 README 或研究資料。

### 延伸筆記：快速導航
- 🔗 **延伸主題** → [[Leonxlnx-taste-skill]]
- 🔗 **延伸主題** → [[nextlevelbuilder-ui-ux-pro-max-skill]]

### 延伸筆記：跟其他方案的關係
| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[Leonxlnx-taste-skill]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[nextlevelbuilder-ui-ux-pro-max-skill]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念

- [[AI-Skills]]
- [[AI-Agent]]
- [[LLM]]

## 來源

- https://www.aiposthub.com/claude-gsap-skills/
- https://greensock.com/
- `raw/2026-06-20-aiposthub-gsap-skills.md`
- 📁 raw：`raw/2026-06-20-aiposthub-gsap-skills.md`
