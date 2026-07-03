---
title: Vercel Agent Skills
slug: vercel-labs-agent-skills
created: 2026-06-08
updated: 2026-06-08
stars: 27725
language: JavaScript
---

# Vercel Agent Skills

> ⭐27.7k · Vercel 官方 Agent Skills 集合，提供前端設計審查、UI 最佳實踐等技能，讓 AI Agent 能產出符合 Web Interface Guidelines 的高品質介面。

## 快速導航
[[AI-Skills]] · [[AI-Skills]] · [[vercel-labs-agent-skills]] · [[Prompt-Engineering]]

## 是什麼

Vercel Labs 的 agent-skills 是 Vercel 官方維護的 Agent 技能庫，核心技能 **web-design-guidelines** 能讓 AI 程式碼 Agent 自動審查 UI 程式碼是否符合 Web Interface Guidelines，涵蓋無障礙設計、效能優化、UX 模式和語意化 HTML 等面向。

這不是另一個 prompt 模板庫——而是 Vercel 將多年前端設計經驗蒸餾成可被 Agent 直接消費的結構化技能文件，解決「Agent 產出的 UI 很功能但不好用」的問題。

## 核心特色

- 🎨 **web-design-guidelines 技能**：核心 SKILL.md 定義了完整的 UI 審查流程，Agent 依此檢查產出程式碼的合規性
- ♿ **無障礙優先**：審查包含 ARIA 標籤、鍵盤導航、色彩對比等 accessibility 項目
- ⚡ **效能意識**：檢查 Lighthouse Core Web Vitals 相關指標（LCP、FID、CLS）
- 🧩 **語意化 HTML**：強調正確的語意標籤使用（header/nav/main/section/footer）
- 📐 **UX 模式清單**：涵蓋常見 UX 反模式（例如：沒有 loading 狀態、破壞使用者預期的動線）
- 🔧 **SKILL.md 格式**：遵循 AI Skills 標準格式，可被任何支援 SKILL.md 的 Agent 平台直接使用

## Web-Design-Guidelines 技能詳解

web-design-guidelines 是一個 UI 合規審查技能，運作方式如下：

**工作流程**：

1. 從來源 URL 取得最新的 Web Interface Guidelines 規則
2. 讀取指定的檔案（或提示使用者提供檔案/模式）
3. 根據取得的規則對所有項目進行檢查
4. 以精簡的 `file:line` 格式輸出發現

**規則來源**：
```
https://raw.githubusercontent.com/vercel-labs/web-interface-guidelines/main/command.md
```

每次審查前都會重新取得最新規則，確保審查標準始終是最新的。這意味著 Vercel 團隊可以持續更新規則，而使用者的 Agent 自動獲得最新版本。

**使用情境**：
1. **寫新頁面時**：請 Agent 參照 web-design-guidelines 來設計 UI
2. **Code Review 時**：讓 Agent 用此技能審查 PR 中的前端變更
3. **重構時**：對既有頁面做合規性掃描，找出無障礙和 UX 問題
4. **無指定檔案時**：技能會主動詢問使用者要審查哪些檔案

**觸發關鍵詞**：`review my UI`、`check accessibility`、`audit design`、`review UX`、`check my site against best practices`

## 怎麼用

```bash
# 複製技能檔案到你的專案
# 方式一：直接下載 SKILL.md
curl -o SKILL.md https://raw.githubusercontent.com/vercel-labs/agent-skills/main/web-design-guidelines/SKILL.md

# 方式二：透過技能安裝器（如果你用 OpenClaw 等平台）
npx skills@latest add vercel-labs/agent-skills
```

使用情境：
1. **寫新頁面時**：請 Agent 參照 web-design-guidelines 來設計 UI
2. **Code Review 時**：讓 Agent 用此技能審查 PR 中的前端變更
3. **重構時**：對既有頁面做合規性掃描，找出無障礙和 UX 問題

## 跟其他方案的關係

| 方案 | 定位 | 與 Vercel Agent Skills 的關係 |
|------|------|-------------------------------|
| [[anthropics-skills|Anthropic Skills]] | 官方 Skills | Anthropic 偏設計創作與測試，Vercel 偏 UI 合規審查 |
| [[mattpocock-skills|Matt Pocock Skills]] | 工程實踐 Skills | Matt Pocock 偏架構和除錯流程，Vercel 偏前端設計品質 |
| [[softaworks-agent-toolkit|SoftaWorks Agent Toolkit]] | 設計系統 Skills | SoftaWorks 建立設計系統，Vercel 審查設計品質，互補關係 |
| [[expo-skills|Expo Skills]] | 行動開發 Skills | Expo 聚焦 React Native，Vercel 聚焦 Web 前端 |
| [[addyosmani-agent-skills|addyosmani/agent-skills]] | 通用開發 Skills | addyosmani 偏全流程開發，Vercel 專注 UI/UX 合規 |
| [[AI-Skills]] | 概念層 | Vercel Agent Skills 是 AI Skills 格式的官方示範案例 |

## 相關概念

- **Web Interface Guidelines**：Vercel 維護的 Web 介面最佳實踐規則集，是 web-design-guidelines 技能的審查基準
- **UI 合規審查**：不是生成 UI，而是檢查既有 UI 是否符合最佳實踐
- **動態規則取得**：每次審查前從遠端取得最新規則，確保標準永遠最新

← [[AI-Skills]] · [[AI-Skills]] · [[vercel-labs-agent-skills]] · [[Prompt-Engineering]]

## 來源

- GitHub: <https://github.com/vercel-labs/agent-skills>
- 原始技能: `raw/2026-06-08-vercel-labs-agent-skills-web-design-guidelines.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |
| Stars | ⭐27,725 |
| License | MIT |
| Language | JavaScript |
| 技能 | web-design-guidelines |
| 收錄日期 | 2026-06-08 |