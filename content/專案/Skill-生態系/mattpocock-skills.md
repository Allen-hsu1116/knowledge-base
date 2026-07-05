---
title: Matt Pocock Skills
slug: mattpocock-skills
created: 2026-05-18
stars: 89,433
updated: 2026-06-14
language: zh-TW
topics: [AI Skills, 工程實踐, 對齊, 架構]
---

# Matt Pocock Skills

> ⭐89,433 · 工程師實戰 Skills 庫，強調小而可組合、與模型無關，基於數十年工程經驗提煉。解決 Agent 最常見的四個失敗模式：對齊、術語、回饋迴圈、設計侵蝕。

## 快速導航

- 🛠️ **Agent Skills 生態系** → [[AI-Skills]]
- 🧠 **AI Skills** → [[AI-Skills]]
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]

## 是什麼

Matt Pocock（TypeScript 社群知名開發者）公開的個人 Skills 庫，設計哲學是「小、可適應、可組合」，適用於任何模型。核心洞察：Agent 最常見的四個失敗模式是對齊（misalignment）、術語斷層（jargon）、回饋缺失（feedback loops）、設計侵蝕（design erosion），每個都有對應 Skill 解決。

## 核心特色

- **Grilling Session**：`/grill-me` 和 `/grill-with-docs` 強迫 Agent 反覆提問，消除需求模糊
- **Shared Language（CONTEXT.md）**：建立專案專屬共享語言，減少 token 消耗、統一命名
- **TDD + Diagnose**：`/tdd` 紅綠重構迴圈 + `/diagnose` 系統化除錯流程
- **架構改善**：`/improve-codebase-architecture` 定期掃描深層化機會，建議每幾天跑一次
- **PRD + Issue 分解**：`/to-prd` 從對話生成 PRD，`/to-issues` 切成可獨立抓取的 GitHub Issues

## 怎麼用

```bash
# 安裝
npx skills@latest add mattpocock/skills

# 選擇要安裝的 Skills 和目標 Agent（記得選 /setup-matt-pocock-skills）
# 然後在 Agent 中執行：
/setup-matt-pocock-skills
```

設定會詢問：
1. Issue tracker 類型（GitHub / Linear / 本地檔案）
2. Triage 標籤
3. 文件儲存位置

日常使用：
- `/grill-with-docs` — 開新功能前先對齊
- `/tdd` — 用紅綠重構開發功能
- `/diagnose` — 系統化除錯
- `/improve-codebase-architecture` — 定期改善架構
- `/zoom-out` — 看全局脈絡

## 跟其他方案的關係

| 方案 | 定位 | 與 Matt Pocock Skills 的關係 |
|------|------|------------------------------|
| [[github-spec-kit|Spec Kit]] | Spec 驅動開發 | Spec Kit 控制流程，Matt Pocock Skills 保留控制權、更小更可組合 |
| [[obra-superpowers|Superpowers]] | 通用 Skills 庫 | Superpowers 偏全流程，Matt Pocock 偏工程實踐和除錯 |
| [[addyosmani-agent-skills|addyosmani/agent-skills]] | 通用開發 Skills | addyosmani 偏全流程開發，Matt Pocock 強調對齊和架構 |
| [[AI-Skills]] | 概念層 | Matt Pocock Skills 是 AI Skills 格式的最佳實踐案例 |
| [[codeburn|CodeBurn]] | 程式碼優化 | CodeBurn 偏效能優化，Matt Pocock 偏架構和流程 |

## 相關概念

← [[AI-Skills]] · [[AI-Skills]] · [[Prompt-Engineering]]

## 來源

- GitHub：https://github.com/mattpocock/skills
- Raw 檔案：`raw/2026-05-18-mattpocock-skills.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [mattpocock/skills](https://github.com/mattpocock/skills) |
| Stars | ⭐89,433 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-05-18 |
