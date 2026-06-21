---
title: career-ops
slug: santifer-career-ops
created: 2026-05-10
updated: 2026-05-10
stars: 41,864
language: zh-TW
---

# career-ops

> ⭐41,864 · AI 求職指揮中心 — 把 AI coding CLI 變成全自動求職系統。740+ 職缺評估、100+ 客製履歷、最終拿到 Head of Applied AI。支援 Claude Code、Gemini CLI、OpenCode。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]
- 🛠️ **AI Skills** → [[AI-Skills]]

## 是什麼

Career-Ops 把任何 AI coding CLI 變成全自動求職指揮中心。貼上一個職缺 URL，AI 就會自動：掃描職缺、結構化評分、產生 ATS 優化 PDF 屷歷、更新追蹤表。核心原則：這不是撒網式求職工具，而是一個篩選器 — 幫你從數百個職缺中找到真正值得投的幾個。系統強烈建議不要申請評分低於 4.0/5 的職缺。作者用它拿到了 Head of Applied AI 的 offer。

## 核心特色

- **6-Block 評分系統** — 從 6 個維度評估每個職缺：Role Summary（職位理解）、CV Match（履歷匹配度）、Level Strategy（級別策略 — 該投高/低一級嗎）、Comp Research（薪資調查）、Personalization（個人化建議）、Interview Prep（面試準備方向）。加權後給出 A-F 等級，4.0/5 以下不建議申請
- **面試故事庫** — 累積 STAR+Reflection 故事庫。STAR 是情境-任務-行動-結果，加上 Reflection（如果重來會怎麼做）。5-10 個核心故事就能回答任何行為面試問題，因為 Agent 會根據問題自動選配故事
- **批次處理** — 用 sub-agent 平行評估 10+ 職缺。自動掃描 45+ 公司職缺入口（Anthropic、OpenAI、ElevenLabs 等），一次跑完所有公司的匹配職缺
- **ATS 優化 PDF** — 自動注入職缺關鍵字到履歷中，使用 Space Grotesk + DM Sans 字型設計。ATS 系統用關鍵字匹配篩選履歷，career-ops 確保你的履歷通過 ATS 第一關

## 怎麼實現的

Career-Ops 的架構是 Skill 定義 + Sub-agent 平行 + 評分管線：

1. **SKILL.md 定義**：整個求職流程用 SKILL.md 格式定義（[[AI-Skills|AI Skills]] 格式），包含評分規則、履歷生成邏輯、追蹤表更新邏輯。AI CLI 讀取 SKILL.md 後就知道怎麼執行求職流程
2. **6-Block 評分管線**：每個職缺經過 6 個評分 block，每個 block 用 LLM 分析職缺描述和用戶履歷的匹配度。Block 之間有依賴關係（例如 CV Match 需要先完成 Role Summary），所以是管線式執行
3. **Sub-agent 平行**：批次處理時，每個職缺的評分用獨立 sub-agent 平行執行。10 個職缺同時跑，不用排隊等
4. **ATS 關鍵字注入**：分析職缺描述中的高頻技能關鍵字，自動在履歷的技能/經歷區塊中注入匹配的關鍵字（不造假，而是用職缺的用詞重新描述你已有的技能）
5. **追蹤表自動更新**：每個評估結果自動寫入 Markdown 追蹤表，包含評分、等級、建議行動、履歷連結

## 怎麼用

```bash
# Claude Code 安裝
git clone https://github.com/santifer/career-ops.git && cd career-ops
cp -r .claude/skills/career-ops ~/.claude/skills/

# Gemini CLI / OpenCode 類似，複製 skill 到對應目錄

# 評估一個職缺（最基本用法）
/career-ops evaluate https://jobs.example.com/123
# → 輸出 6-Block 評分、A-F 等級、建議行動

# 批次掃描某公司的所有職缺
/career-ops scan anthropic
# → sub-agent 平行評估所有匹配職缺

# 產生客製履歷
/career-ops resume https://jobs.example.com/123
# → 自動注入關鍵字，生成 ATS 優化 PDF

# 面試準備
/career-ops prep https://jobs.example.com/123
# → 根據職缺自動匹配故事庫中的 STAR+Reflection 故事

# 查看追蹤表
/career-ops status
# → 所有已評估職缺的總覽
```

## 跟其他方案的關係

- career-ops 是 [[AI-Agent]] 化求職的典型案例，用 [[AI-Skills]] 的 SKILL.md 格式定義整個求職流程
- 技術棧為 Node.js（Skill 邏輯）+ Go（TUI 儀表板），支援 Claude Code、Gemini CLI、OpenCode 三個 AI CLI
- 與傳統求職工具（LinkedIn Easy Apply 等）的差異：傳統工具幫你撒網，career-ops 幫你篩選 — 只投值得投的
- 與 [[affaan-m-everything-claude-code|ECC]] 的關係：ECC 優化 Agent 效能，career-ops 是用 Agent 做求職的具體應用

## 相關概念

← [[AI-Agent]] · [[AI-Skills]]

## 來源

- raw/santifer-career-ops.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [santifer/career-ops](https://github.com/santifer/career-ops) | ⭐41,864 | MIT | 2026-05-03 |