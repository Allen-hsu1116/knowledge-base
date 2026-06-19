---
title: Ponytail
slug: DietrichGebert-ponytail
created: 2026-06-12
updated: 2026-06-19
stars: 36775
language: JavaScript
topics: [agent-skills, ai-agents, claude, claude-code, prompt-engineering, yagni, token-optimization]
---

# Ponytail

> ⭐36.8k · 讓 AI Agent 像最懶的資深工程師一樣思考——最好的程式碼是你從沒寫過的程式碼。

快速導航：[[AI-Skills|AI Skills]] · [[affaan-m-ECC|ECC]] · [[Token-Optimization|Token Optimization]] · [[JuliusBrussee-caveman|Caveman]]

## 是什麼

Ponytail 是由 Dietrich Gebert 開發的 AI Agent Skill/Plugin，核心理念是「最好的程式碼是你從未寫過的程式碼」。它讓 coding agent 在寫每一行程式之前，先沿著六階梯思考法檢查：這東西真的需要存在嗎？標準庫能做嗎？平台原生功能能做嗎？已裝的依賴能做嗎？一行能搞定嗎？只有都不行才寫最少可運作的程式碼。

這跟一般的「寫簡短一點」prompt 不同。Ponytail 不犧牲安全性——信任邊界驗證、資料遺失處理、安全檢查和無障礙永遠不在砍除範圍內。基準測試顯示它讓 Claude Code 平均少寫 54% 的程式碼（最高 94%），同時 100% 保持安全防護。相比之下，單純用「YAGNI + one-liners」prompt 的方法會丟失一個安全防護。

它支援 14 種 AI Agent 平台，包括 Claude Code、Codex、GitHub Copilot CLI、Pi、OpenCode、Gemini CLI、Antigravity CLI、Cursor、Windsurf 等，是目前覆蓋最廣的 coding agent skill 之一。在 2026 年 6 月建立後迅速獲得 36k+ stars，反映了社群對「少即是多」coding 哲學的需求。

## 核心特色

- **六階梯思考法**：YAGNI → stdlib → native platform → installed dependency → one line → minimum viable，agent 寫碼前逐階檢查
- **安全不妥協**：信任邊界驗證、資料遺失處理、安全性、無障礙永遠保留，100% 安全率
- **14 Agent 平台支援**：Claude Code, Codex, Copilot CLI, Pi, OpenCode, Gemini CLI, Antigravity, CodeWhale, OpenClaw, Cursor, Windsurf, Cline, Aider, Zed
- **實證基準測試**：12 個 feature tickets × n=4 × Haiku 4.5，LOC -54%、tokens -22%、cost -20%、time -27%
- **四種模式**：lite / full / ultra / off，可用 env var 或 config 設定預設模式
- **Plugin 安裝**：Claude Code/Codex/Copilot CLI 用 plugin marketplace 一鍵安裝，Cursor/Windsurf 等用 rules 檔

## 怎麼用

```bash
# Claude Code 安裝
/plugin marketplace add DietrichGebert/ponytail
/plugin install ponytail@ponytail

# Codex 安裝
codex plugin marketplace add DietrichGebert/ponytail

# GitHub Copilot CLI
copilot plugin marketplace add DietrichGebert/ponytail
copilot plugin install ponytail@ponytail

# Pi agent harness
pi install git:github.com/DietrichGebert/ponytail

# Gemini CLI
gemini extensions install https://github.com/DietrichGebert/ponytail

# 設定預設模式
export PONYTAIL_DEFAULT_MODE=full  # lite/full/ultra/off

# 在 session 中切換模式
/ponytail ultra  # 程式碼庫對不起你時用
```

## 跟其他方案的關係

| 方案 | 核心理念 | LOC 減少 | 安全保持 | 支援 Agent 數 | 安裝方式 |
|------|----------|----------|----------|---------------|----------|
| [[DietrichGebert-ponytail\|Ponytail]] | 六階梯 + 安全不妥協 | -54% | 100% | 14 | Plugin/Rules |
| [[JuliusBrussee-caveman\|Caveman]] | 精簡文字風格 | -20% | 100% | — | Skill |
| "YAGNI + one-liners" prompt | 直接要求少寫 | -33% | 95% | — | 手動 |
| [[affaan-m-ECC\|ECC]] | Context 壓縮 | — | — | — | Skill |
| [[hardikpandya-stop-slop\|stop-slop]] | 寫作品質 | — | — | — | Skill |

Ponytail 和 [[JuliusBrussee-caveman|Caveman]] 互補：Caveman 控制文字風格，Ponytail 控制程式碼生成邏輯。與 [[Token-Optimization|Token Optimization]] 概念相關，但更聚焦於程式碼品質而非單純壓縮。

## 相關概念

← [[AI-Skills|AI Skills]] · [[Token-Optimization|Token Optimization]] · [[JuliusBrussee-caveman|Caveman]] · [[affaan-m-ECC|ECC]]

## 來源

- GitHub：https://github.com/DietrichGebert/ponytail
- 基準測試：https://github.com/DietrichGebert/ponytail/blob/main/benchmarks/results/2026-06-18-agentic.md
- Raw 檔案：`knowledge-base/raw/2026-06-19-DietrichGebert-ponytail.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) |
| Stars | ⭐36,775 |
| License | MIT |
| Language | JavaScript |
| 收錄日期 | 2026-06-19 |