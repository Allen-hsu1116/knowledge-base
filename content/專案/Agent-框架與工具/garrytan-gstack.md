---
title: gstack
slug: garrytan-gstack
created: 2026-05-15
stars: '⭐96762'
updated: 2026-05-15
language: zh-TW
topics: [Coding Agent CLI, AI Skills, Agent 工作流程]
---

# gstack

> ⭐96762 · YC 總裁 Garry Tan 的開源軟體工廠，把 Claude Code 變成 23 人虛擬工程團隊——CEO、設計師、QA、安全長，全用斜線指令操作。⭐96,762

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（gstack 是 AI Agent 工作流程的具體實踐）
- 🛠 **Agent Skills** → [[AI-Skills]]（23 個專家技能，每個都是一個 AI skill）
- 💻 **Coding Agent CLI** → [[Coding-Agent-CLI]]（支援 10 種 AI 編程 Agent CLI）
- ⚡ **Prompt 工程** → [[Prompt-Engineering]]（每個 skill 都是精心設計的 prompt）
- 🌐 **技能生態系** → [[AI-Skills]]（與 ClawHub 技能生態系整合）

## 是什麼

gstack 是 Y Combinator 總裁 Garry Tan 的開源軟體工廠，把 Claude Code 變成一支 23 人的虛擬工程團隊——CEO、設計師、工程經理、QA、安全長、發布工程師，全用斜線指令操作，全 Markdown，全免費，MIT 授權。

gstack 的核心理念是「流程而非工具集」。每個 skill 不是孤立的指令，而是一個衝刺循環中的環節：思考 → 規劃 → 建構 → 審查 → 測試 → 發布 → 反思。不同於一般的 AI 輔助工具，gstack 強調「角色分工」。

## 核心特色

- **23 個專家 Skill**：/office-hours（YC 辦公時間）、/plan-ceo-review（CEO 視角）、/review（資深工程師審查）、/qa（QA 主管開真瀏覽器測試）、/cso（安全長 OWASP Top 10）、/ship（發布工程師）等
- **多 Agent 支援**：Claude Code、Codex CLI、Cursor、Gemini CLI 等 10 種 AI 編程 Agent
- **OpenClaw 整合**：透過 ACP 協定深度整合，提供 4 個專門給 OpenClaw Agent 的會話式 skill
- **設計工具鏈**：/design-consultation 從零建構設計系統、/design-shotgun 生成 4-6 個 AI 模擬原型、/design-html 轉成可直接上線的 HTML
- **衝刺循環流程**：Think → Plan → Build → Review → Test → Ship → Reflect
- **全 Markdown 驅動**：每個 skill 都是一份 Markdown 文件，透明可審計

## 怎麼用

```bash
# 安裝 gstack
git clone --single-branch --depth 1 https://github.com/garrytan/gstack.git ~/.claude/skills/gstack
cd ~/.claude/skills/gstack && ./setup

# 指定其他 AI Agent
cd ~/gstack && ./setup --host codex  # OpenAI Codex CLI

# 使用 skill
/office-hours    # YC 創業辦公時間模擬
/plan-ceo-review # CEO 視角規劃審查
/review          # 資深工程師 code review
/qa              # QA 測試流程
/cso             # 安全審計
/ship            # 發布流程
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[obra-superpowers]] | 開發方法論框架 | superpowers 偏方法論（先思考再動手），gstack 偬角色分工 |
| [[github-spec-kit]] | 規格驅動開發 | spec-kit 偬規格文件，gstack 偬流程角色 |
| [[Coding-Agent-CLI]] | Coding Agent 平台 | gstack 支援 10 種 coding agent 平台 |
| [[AI-Skills]] | Agent Skills 標準 | gstack 的每個 skill 都遵循 Agent Skills 標準 |

## 相關概念


← [[AI-Agent]] · [[AI-Skills]] · [[Coding-Agent-CLI]] · [[Prompt-Engineering]]

## 來源

- [GitHub：專案原始碼](https://github.com/garrytan/gstack)
- raw/2026-05-15-garrytan-gstack.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/garrytan/gstack |
| Stars | ⭐96762|
| License | MIT |
| 收錄日期 | 2026-05-15 |
