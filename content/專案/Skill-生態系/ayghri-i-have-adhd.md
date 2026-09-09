---
title: i-have-adhd
slug: ayghri-i-have-adhd
created: 2026-09-09
updated: 2026-09-09
stars: 30471
language: zh-TW
topics: [AI-Skills, Prompt-Engineering, AI-Agent]
---

# i-have-adhd

> ⭐30.5k · 讓 Coding Agent 先給行動、再給必要細節的 ADHD-friendly 輸出 Skill。

## 快速導航

- [[AI-Skills]] — 將回覆規範封裝為可重用技能。
- [[Prompt-Engineering]] — 用明確約束改善答案呈現。
- [[AI-Agent]] — 套用在具工具能力的編碼助理。

## 是什麼

i-have-adhd 是調整 Coding Agent 回覆方式的開源 Skill／plugin，目標是避免把答案埋在長篇鋪陳中。它要求先呈現下一個動作、用編號拆分工作，並減少離題與客套文字；不是另一個模型或完整 Agent 執行框架。

專案把這種風格稱為 ADHD-friendly，但 README 明確說明不需要 ADHD 診斷也能使用。它處理的是資訊呈現與工作步驟的可讀性，不是診斷工具，也不能從專案名稱推論任何醫療效果。

README 提供十條規則，INSTALL.md 則按宿主說明安裝與啟用方式。不同宿主對指令、plugin、extension 與常駐模式的處理不同，不能把某一個平台的預設行為直接套到全部平台。

## 核心特色

- **行動優先**：先給命令、路徑或下一個可執行動作。
- **多步驟編號**：降低從長段落中辨識操作順序的負擔。
- **維持任務狀態**：每輪重述進度，避免突然切換話題。
- **可見的成果與錯誤**：說明已經改善的部分，並平實指出錯誤位置與修正方向。
- **可調整的規則集**：可 fork 後編輯 SKILL.md，依個人需求替換。

規則另包含限制清單長度、減少前言與結尾，以及用具體單位表達時間估計。
這些是輸出偏好，不能取代事實查證；若沒有量測依據，不應為滿足格式捏造精確時間。

## 怎麼用

### Claude Code 安裝

以下為官方 INSTALL.md 的指令，僅作操作參考；本次收錄未執行安裝。

```bash
claude plugin marketplace add ayghri/i-have-adhd
claude plugin install i-have-adhd@i-have-adhd
claude plugin list
```

開啟新工作階段後，輸入：

```text
/i-have-adhd
```

### 啟用與驗證

1. 先確認 plugin 已出現在清單中。
2. 明確呼叫 Skill，再給一個需要多步驟回答的小任務。
3. 檢查答案是否先給行動、步驟是否有序，以及必要細節有沒有被省略。
4. 需要恢復一般風格時，依官方說明輸入 `stop adhd mode` 或 `normal mode`。

Claude Code 的常駐模式另需旗標搭配 SessionStart hook；僅安裝不代表已啟用。
Codex 的顯式呼叫使用 `$i-have-adhd`，與 Claude Code 的 slash command 不同。
修改任何常駐規則或安裝第三方插件前，應先審查來源並備份設定。

## 跟其他方案的關係

以下為依官方文件整理的定位比較，不是效果評測。

| 方案 | 主要作用 | 適合情境 |
|------|----------|----------|
| i-have-adhd | 可安裝、按需啟用的輸出風格規則 | 希望回覆更容易立即行動 |
| 一次性 Prompt | 單次請求內描述輸出偏好 | 臨時調整，無需安裝 |
| AGENTS.md 等常駐規則 | 在宿主支援範圍內持續提供指令 | 希望所有相關任務採同一風格 |
| 通用 Agent 框架 | 提供工具、記憶與執行生命週期 | 需要建置 Agent 系統而非只改呈現 |

這個 Skill 可以補充 [[AI-Agent]] 的人機互動，但不增加模型本身的正確率保證。
對複雜解釋與風險揭露，完整性仍應優先於形式上的簡短。

## 相關概念

← [[AI-Skills]] · [[Prompt-Engineering]] · [[AI-Agent]]

## 來源

- [GitHub：ayghri/i-have-adhd](https://github.com/ayghri/i-have-adhd)
- [官方安裝說明](https://github.com/ayghri/i-have-adhd/blob/main/INSTALL.md)
- 原始 README：`raw/2026-09-09-ayghri-i-have-adhd.md`
- 安裝文件快照：`raw/2026-09-09-ayghri-i-have-adhd-install.md`
- Stars 與授權依 2026-09-09 GitHub metadata 快照。

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/ayghri/i-have-adhd |
| Stars | 30,471 |
| License | MIT |
| Language | Python（GitHub 主要語言）；本文為繁體中文 |
| 收錄日期 | 2026-09-09 |
