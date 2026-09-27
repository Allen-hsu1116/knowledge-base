---
title: caveman
slug: JuliusBrussee-caveman
created: 2026-05-10
updated: 2026-09-27
stars: 52,506
language: zh-TW
topics: [Token Optimization, Prompt Engineering]
---

# caveman

> ⭐52506 · 以極簡回答風格與本機 proxy／middleware 降低 coding agent 的 token 用量；節省比例與品質需依任務驗證。

## 快速導航


- ⚡ **Token Optimization** → [[Token-Optimization]]
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]

## 是什麼


Caveman 的核心理念是：**為什麼用很多字，當少少字就夠了？** Skill 控制輸出風格，proxy／middleware 則處理輸入端的工具結果壓縮。

它讓 AI 用極簡語法回答（穴居人語），把冗長的自然語言描述壓縮成資訊密集的回應。[⚠️ 可能過時] 舊筆記把特定測試寫成「100% 技術準確度保留」；2026-09-27 官方 README 改以具名實驗及任務條件呈現數字，並建議實際 A/B 驗證，不應理解成所有任務的保證。

## 核心特色

- **Output 壓縮** — Skill 減少解釋文字；舊版 75% 是特定情境的宣稱，不是固定節省率或正確性保證
- **Input 壓縮** — 本機 proxy／middleware 壓縮工具輸出並保留原始內容供取回；實際效益需自行量測
- **四種壓縮強度** — Lite（稍微精簡）、Full（標準穴居人語）、Ultra（極限壓縮）、文言文（中文古文風格）
- **Terse Commits** — 極簡 commit message
- **One-line Reviews** — 一行 code review
- **Lifetime Stats** — 追蹤累計節省的 token 數

### 四種壓縮強度

| 等級 | 說明 | 效果 |
|------|------|------|
| **Lite** | 稍微精簡 | 適合需要可讀性的場景 |
| **Full** | 標準穴居人語 | 平衡壓縮率和可讀性 |
| **Ultra** | 極限壓縮 | 只剩關鍵資訊 |
| **文言文** | 中文古文風格 | 中文使用者的趣味選項 |

## 怎麼用

```bash
# 安裝風格 Skill（官方 README 的跨 client 入口）
npx skills add JuliusBrussee/caveman -g

# 可選的本機 proxy：與 Skill 是不同元件
npm install -g @caveman-ai/cli
caveman setup --install
caveman stats
```

自動偵測 30+ agent harness（Claude Code、Codex、Cursor、OpenCode 等）。

## 跟其他方案的關係

| 方案 | 壓縮類型 | Input 省 | Output 省 | 可讀性 |
|------|----------|----------|-----------|--------|
| [[rtk]] | CLI proxy | 46% | — | 高 |
| caveman | Skill + proxy／middleware | 依任務實測 | 依任務實測 | 依模式 |
| caveman Ultra | 極簡輸出模式 | — | 依任務實測 | 較低，須驗證理解 |
| [[DietrichGebert-ponytail|Ponytail]] | Plugin/Skill | 22% tokens | 54% LOC | 高 |

caveman 的 input 壓縮與 [[rtk]] 同屬降低工具輸入成本的方法；新版提供 proxy／middleware，不再適合簡化成「只有 MCP、不是 proxy」。[[DietrichGebert-ponytail|Ponytail]] 用六階梯思考法控制程式碼生成邏輯，與 caveman 互補：caveman 控制文字風格，Ponytail 控制程式碼結構。穴居人語是 [[Prompt-Engineering]] 的實戰應用，整體屬於 [[Token-Optimization]] 領域。

## 相關概念


← [[Token-Optimization]] · [[Prompt-Engineering]] · [[rtk]] · [[DietrichGebert-ponytail]]

> [⚠️ 日期校正] 本頁「收錄日期」統一採 projects.md 的索引收錄批次（2026-05-03）；原欄位 2026-05-10 與索引不一致，舊值保留於 lint 稽核與備份。這不是上游專案建立日期。

## 來源

- [GitHub：專案原始碼](https://github.com/JuliusBrussee/caveman)
- raw/JuliusBrussee-caveman.md
- [2026-09-27 核對：README（安裝、實驗與限制）](https://github.com/JuliusBrussee/caveman/blob/main/README.md)
- [2026-09-27 核對：分元件授權](https://github.com/JuliusBrussee/caveman/blob/main/LICENSING.md) — [⚠️ 可能過時] 舊筆記的全專案 MIT 不適用於 engine-linked runtime；Skill／CLI／client SDK 是 MIT，Engine／Proxy 等為 BSL-1.1 source-available，轉換前不是 OSI 開源。

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/JuliusBrussee/caveman |
| Stars | ⭐52506|
| License | Skill／CLI／client SDK：MIT；Engine／Proxy 等：BSL-1.1（依元件） |
| 收錄日期 | 2026-05-03 |
