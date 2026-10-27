---
title: "Huashu Design"
slug: "alchaincyf-huashu-design"
created: "2026-10-27"
updated: "2026-10-27"
stars: 26758
language: "zh-TW"
topics: ["AI-Skills", "generative-AI"]
---

# Huashu Design

> ⭐26.76k · 以跨 Agent Skill 產出網頁、App 原型、可編輯簡報與動畫的設計工作流。

## 快速導航

- [[AI-Skills]] — 相關方法與實作背景。
- [[generative-AI]] — 相關方法與實作背景。

## 是什麼

Huashu Design 是安裝到 Coding Agent 的設計技能包，不是獨立設計 SaaS 或 Figma 插件。它把設計探索、品牌資產理解、產物生成與評審包裝成可重用流程，讓使用者在既有 Agent 中提出需求。

README 的 3.0 流程先產生六個縮圖候選，再挑出三個差異化方向製作真稿；84 種附樣張的風格庫提供參照。交付形式包括互動 HTML、可編輯 PPTX、MP4／GIF 與資訊圖，但品質與耗時仍受模型、素材及執行環境影響。

## 核心特色

- 多方向探索：最佳設計師、同媒介參照與隨機風格提供互補候選。

- 品牌資產流程：先取得 logo、色板與參照，整理品牌規格再實作。

- 可編輯簡報：html2pptx.js 依 DOM computedStyle 轉成 PowerPoint 物件與文字框。

- 互動原型：以 HTML 製作可點擊介面，配合 Playwright 驗證。

- 設計記憶與檢查：外觀帳本記錄近期風格，搭配設計體檢與評審避免同質化。

## 怎麼用

需要支援 Skills 的 Agent；工具、瀏覽器與匯出依賴需依實際交付形式準備。以下為官方安裝示例，本次未實際安裝技能。

```bash
npx skills add alchaincyf/huashu-design
```

1. 確認安裝後除了 SKILL.md，還包含 references、assets、scripts、demos。

2. 提供品牌素材、目標媒介與需求；例如請 Agent 產生三個簡報方向。

3. 選定方向後迭代，檢查原型操作、PPTX 文字可編輯性與匯出成品。

### 使用邊界

- README 的示範效果與耗時不是獨立評測，不保證任意任務同樣表現。

- MIT 適用專案程式碼；外部照片、品牌與素材仍要個別確認使用權。

## 跟其他方案的關係

以下為依官方文件整理的定位比較，不是實測效能排名。

| 方案 | 定位 | 選擇重點 |
|---|---|---|
| Huashu Design | 設計流程、參照庫與產物匯出 | 擴充既有 Agent，而非替代它 |
| 一般一次性 prompt | 臨時要求產出設計 | 缺乏同一套可版本化配方與檢查流程 |
| 人工設計工具 | 人工精修與視覺操作 | 可在生成初稿後接手調整，非互斥選擇 |

## 相關概念

← [[AI-Skills]] · [[generative-AI]]

## 來源

- GitHub：https://github.com/alchaincyf/huashu-design
- README 原始快照：`raw/2026-10-27-alchaincyf-huashu-design.md`

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/alchaincyf/huashu-design |
| Stars | 26,758（2026-10-27 擷取） |
| License | MIT |
| Language | HTML |
| 收錄日期 | 2026-10-27 |
