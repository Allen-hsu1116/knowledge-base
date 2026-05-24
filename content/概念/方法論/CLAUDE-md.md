---
title: CLAUDE.md
created: 2026-05-22
updated: 2026-05-22
topics:
  - Prompt-Engineering
  - AI-Skills
  - Coding-Agent-CLI
---

# CLAUDE.md

> Claude Code 的行為設定檔，放在專案根目錄，用自然語言告訴 Claude 該怎麼做、不該怎麼做。

## 是什麼

CLAUDE.md 是 Anthropic Claude Code 的專案級設定檔，類似 `.cursorrules` 之於 Cursor。它是一個 Markdown 檔案，放在專案根目錄，用自然語言描述 Claude 的行為規範、專案慣例、和開發偏好。

Anthropic 官方文件將 CLAUDE.md 定義為「advisory」（建議性）檔案 — Claude 大約 80% 機率遵守；超過 200 行後合規率急降，重要規則會被噪音淹沒。

## 核心特色

- **Advisory 性質** — 不是強制約束，是行為建議；合規率約 80%
- **行數上限** — 200 行為實質上限，超過後合規率急降
- **規則型 > 範例型** — 抽象指令（「Be careful」）合規率僅 30%；具體規則合規率 76%
- **Identity prompt 無效** — 叫 Claude「當資深工程師」不改變行為，規則型指令才有效
- **Token budget** — 每條規則消耗 token，3 個範例 = 10 條規則的成本
- **多層級** — 全域 `~/.claude/CLAUDE.md` + 專案級 `./CLAUDE.md` + 子目錄級

## 怎麼用

```bash
# 建立專案級 CLAUDE.md
touch CLAUDE.md

# 常見寫法：規則型（合規率高）
echo "- 不要重構沒壞的東西" >> CLAUDE.md
echo "- 只動你必須動的程式碼" >> CLAUDE.md

# 避免：抽象指令（合規率低）
# ❌ "Be careful when writing code"
# ❌ "Think hard before making changes"

# 使用社群規則集（推薦）
/plugin marketplace add forrestchang/andrej-karpathy-skills
/plugin install andrej-karpathy-skills@karpathy-skills
```

## 跟其他方案的關係

| 檔案 | 工具 | 性質 | 合規機制 |
|------|------|------|----------|
| **CLAUDE.md** | Claude Code | Advisory 行為契約 | ~80%（<200行） |
| **.cursorrules** | Cursor | 強制規則檔 | 系統級注入 |
| **AGENTS.md** | 多 Agent | 工作空間指引 | 依 Agent 實作 |
| **COPILOT_INSTRUCTIONS.md** | Copilot | 建議性指引 | 插入 context |
| **SKILL.md** | Hermes/OpenClaw | 技能定義檔 | Agent 載入 |

## 相關概念

← [[AI-Skills]] · [[Prompt-Engineering]] · [[Coding-Agent-CLI]]

---

| 類型 | 數量 | 代表專案 |
|------|------|----------|
| 社群規則集 | 10+ | [[multica-ai-andrej-karpathy-skills]] |
| 官方插件 | 1 | [[anthropics-claude-plugins-official]] |
| 進階技巧 | 1 | [[claude-code-boris-cherny-advanced-techniques]] |
| 百科全書 | 1 | [[affaan-m-everything-claude-code]] |