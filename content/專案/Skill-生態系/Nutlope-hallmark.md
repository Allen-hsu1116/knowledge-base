---
title: Hallmark
slug: Nutlope-hallmark
created: 2026-07-14
updated: 2026-07-14
stars: 5149
language: CSS
topics:
  - ai-skills
  - frontend-design
  - anti-ai-slop
  - claude-code
  - cursor
  - codex
---

# Hallmark

> ⭐5149 · 反 AI 味設計 Skill，讓 Claude Code、Cursor、Codex 生成的 UI 看起來像人做的，不是 AI 吐出來的

## 快速導航

快速導航：[[AI-Skills|AI Skills]] · [[frontend-design|前端設計]] · [[anthropics-skills|Anthropic Skills]] · [[Leonxlnx-taste-skill|Taste Skill]]

## 是什麼

Hallmark 是由 Together AI 製作的設計 Skill，專門解決一個日益嚴重的問題：AI 生成的網頁 UI 看起來都一樣。每次請 Claude Code 或 Cursor 蓋一個 landing page，出來的都是「hero → 三欄特色 → CTA → footer」的相同節奏，配色永遠是藍紫色漸層，字體永遠是 Inter，間距永遠是 Tailwind 預設。Hallmark 把這些 AI 預設全部封鎖，強迫模型走出舒適圈。

核心做法是「結構多樣性」而非只是「視覺多樣性」。Hallmark 內建 21 種命名巨觀結構（macrostructure），從 Bento Grid 到 Long Document 到 Manifesto 到 Marquee Hero，每種都是完整的頁面骨架——標題位置、正文構成、分隔線語言、按鈕風格、圖片處理都打包成一個命名選擇。再加上 20 種命名主題、14 種導覽列原型和 8 種頁尾原型，組合空間足夠讓兩個不同 brief 的頁面看起來像完全不同的網站。

Hallmark 的 57 道 slop-test gate 是最硬的核心。這些 gate 在輸出前逐項檢查：是否用了 AI 預設配色？是否捏造了數據（「+47% conversion」）？是否用了斜體標題？是否畫了假的瀏覽器框？手機 320px 是否會橫向滾動？任何一道 gate 失敗就觸發修版，不通過不交付。

## 核心特色

- **57 道 slop-test gate + 6 軸自我評估**：在交付前對輸出做 Philosophy / Hierarchy / Execution / Specificity / Restraint / Variety 六軸評分，任一軸 < 3 分就自動修版。57 道 gate 涵蓋配色、字體、間距、互動、無障礙、響應式等所有面向
- **21 種巨觀結構 + 20 種主題 + 14 種導覽原型**：不是換顏色而是換骨架。每次建構都從 `.hallmark/log.json` 讀取歷史紀錄，強制這次的結構、主題、導覽原型都跟上一次不同，避免連續輸出看起來像同一個模板換色
- **四種動詞模式**：預設（建新 UI）、`audit`（評分既有程式碼）、`redesign`（保留內容換骨架）、`study`（從截圖或 URL 提取設計 DNA——巨觀結構、字型配對、色彩錨點——拒絕像素克隆和付費模板）
- **Custom 主題路線**：當 brief 帶有創意意圖（指定品牌色、描述多維度美學風格），Hallmark 切換到 Custom 路線，用 OKLCH 色彩空間打造量身定製的調色盤和免費字型配對，通過同樣的 57 道 gate
- **元件級流程**：當 brief 是單一 UI 元素（按鈕、卡片、Modal）而非整頁時，自動切換到 Component-scope，跳過頁面級 apparatus，強制交付 8 狀態 demo wrapper（default / hover / focus / active / disabled / loading / error / success）
- **可攜式 design.md 匯出**：用戶可以說「lock the system」把建構的設計系統（token、字型、色彩、間距）鎖定成可攜帶的 `design.md`，後續頁面都遵循同一個系統，實現多頁一致性

## 怎麼用

```bash
# 一鍵安裝（Claude Code / Cursor / Codex 通用）
npx skills add nutlope/hallmark

# 或者手動複製 SKILL.md + references/ 到對應目錄：
# Claude Code:  ~/.claude/skills/hallmark/
# Cursor:       .cursor/rules/hallmark.mdc
# Codex:        ~/.codex/skills/hallmark/
```

安裝後直接在 Claude Code / Cursor / Codex 中請它「設計一個 landing page」即可。Hallmark 會先問你三個問題（受眾、用途、語氣），然後根據回答選擇結構和主題。

其他動詞：

```bash
# 評分既有程式碼的 AI 味
hallmark audit ./src/landing.tsx

# 保留內容和品牌，換掉視覺結構
hallmark redesign ./src/landing.tsx

# 從截圖或 URL 提取設計 DNA
hallmark study https://example.com
hallmark study screenshot.png
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心差異 |
|------|-------|------|----------|
| **Hallmark** | ⭐5.1k | 設計 Skill | 57 道 slop-test gate + 21 種巨觀結構 + 結構多樣性強制 |
| [[anthropics-skills|Anthropic Skills]] | ⭐147.9k | 設計 Skill | Anthropic 官方前端設計 Skill，Hallmark 的靈感來源之一 |
| [[Leonxlnx-taste-skill|Taste Skill]] | ⭐36k | 設計 Skill | 設計品味 Skill，聚焦美學判斷力 |
| [[pbakaus-impeccable|Impeccable]] | ⭐32.7k | 設計 Skill | 設計語言和反模式 Skill |
| [[VoltAgent-awesome-design-md|DESIGN.md]] | ⭐99.7k | 設計系統 | DESIGN.md 規範，Hallmark 也支援匯出 design.md |
| [[nextlevelbuilder-ui-ux-pro-max-skill|UI UX Pro Max]] | ⭐88.8k | 設計 Skill | UI/UX 通用 Skill |

## 相關概念


← [[AI-Skills]] · [[frontend-design]] · [[pbakaus-impeccable]] · [[Leonxlnx-taste-skill]]

## 來源

- GitHub: <https://github.com/Nutlope/hallmark>
- 官網: <https://www.usehallmark.com>
- 原始 README: `raw/2026-07-14-Nutlope-hallmark.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/Nutlope/hallmark |
| Stars | ⭐5149|
| License | MIT |
| 收錄日期 | 2026-07-14 |
