# career-ops

> AI 求職指揮中心 — 把 AI coding CLI 變成全自動求職系統。740+ 職缺評估、100+ 客製履歷、最終拿到 Head of Applied AI。支援 Claude Code、Gemini CLI、OpenCode。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]
- 🛠️ **AI Skills** → [[AI-Skills]]

## 是什麼

Career-Ops 把任何 AI coding CLI 變成全自動求職指揮中心。貼上一個職缺 URL，AI 就會自動：掃描職缺、結構化評分、產生 ATS 優化 PDF 履歷、更新追蹤表。核心原則：這不是撒網式求職工具，而是一個篩選器 — 幫你從數百個職缺中找到真正值得投的幾個。系統強烈建議不要申請評分低於 4.0/5 的職缺。

## 核心特色

- **6-Block 評分系統** — 從 6 個維度（Role Summary、CV Match、Level Strategy、Comp Research、Personalization、Interview Prep）評估，加權後給出 A-F 等級
- **面試故事庫** — 累積 STAR+Reflection 故事，5-10 個核心故事就能回答任何行為面試問題
- **批次處理** — 用 sub-agent 平行評估 10+ 職缺，自動掃描 45+ 公司職缺入口（Anthropic、OpenAI、ElevenLabs...）
- **ATS 優化 PDF** — 自動注入關鍵字、使用 Space Grotesk + DM Sans 字型設計，通過 ATS 系統篩選

## 怎麼用

```bash
# Claude Code
git clone https://github.com/santifer/career-ops.git && cd career-ops
# 將 SKILL.md 複製到 .claude/skills/
cp -r .claude/skills/career-ops ~/.claude/skills/

# 評估一個職缺
/career-ops evaluate https://jobs.example.com/123

# 批次掃描
/career-ops scan anthropic
```

## 跟其他方案的關係

career-ops 是 [[AI-Agent]] 化求職的典型案例，使用 [[AI-Skills]] 的 SKILL.md 格式定義求職流程。技術棧為 Node.js（Skill 邏輯）+ Go（TUI 儀表板），支援 Claude Code、Gemini CLI、OpenCode。

## 相關概念

← [[AI-Agent]] · [[AI-Skills]]

## 來源

- raw/santifer-career-ops.md

---

- **GitHub**: https://github.com/santifer/career-ops
- **Stars**: ⭐41,864
- **License**: MIT
- **收錄日期**: 2026-05-03