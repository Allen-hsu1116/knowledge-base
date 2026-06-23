---
title: CLAUDE.md
slug: CLAUDE-md
language: zh-TW
---

# CLAUDE.md

> Claude Code 的行為設定檔，放在專案根目錄，用自然語言告訴 Claude 該怎麼做、不該怎麼做。

## 核心內容

CLAUDE.md 是 Anthropic Claude Code 的專案級設定檔，類似 `.cursorrules` 之於 Cursor。它是一個 Markdown 檔案，放在專案根目錄，用自然語言描述 Claude 的行為規範、專案慣例、和開發偏好。

Anthropic 官方文件將 CLAUDE.md 定義為「advisory」（建議性）檔案——Claude 大約 80% 機率遵守，但不是強制約束。這意味著寫規則時需要講究策略：具體規則的合規率（76%）遠高於抽象指令（「Be careful」僅 30%），而超過 200 行後合規率急降，重要規則會被噪音淹沒。

Karpathy 的原始 4 條規則（Think Before Coding、Simplicity First、Surgical Changes、Goal-Driven Execution）和社群補充的 8 條規則構成了目前最被廣泛引用的 CLAUDE.md 實踐指南。這 12 條規則的核心精神是：告訴 Claude「成功長什麼樣子」而非具體步驟，寫能解決問題的最小程式碼，只動該動的不「順手改善」，失敗要大聲揭露。

## 關鍵要素

- **Advisory 性質** — 不是強制約束，是行為建議；合規率約 80%，需要用策略而非權威來確保遵守
- **行數上限** — 200 行為實質上限，超過後合規率急降；規則越少越有效，超過 14 條合規率掉到 52%
- **規則型 > 範例型** — 抽象指令（「Be careful」）合規率僅 30%；具體規則合規率 76%；3 個範例的 token 成本 = 10 條規則
- **Identity prompt 無效** — 叫 Claude「當資深工程師」不改變行為，規則型指令才有效
- **多層級** — 全域 `~/.claude/CLAUDE.md` + 專案級 `./CLAUDE.md` + 子目錄級，越靠近的越優先
- **Token budget** — 每條規則消耗 token，單任務 4K、單 session 30K；接近 budget 要主動摘要重啟

## 各框架的做法

- **Claude Code** → CLAUDE.md 作為 Advisory 行為契約，合規率約 80%（<200 行）
  👉 詳見 [[anthropics-claude-code]]
- **Cursor** → .cursorrules 作為強制規則檔，系統級注入
- **OpenClaw / Hermes** → AGENTS.md 作為工作空間指引，依 Agent 實作載入
  👉 詳見 [[openclaw]]
- **Copilot** → COPILOT_INSTRUCTIONS.md 作為建議性指引，插入 context
- **Karpathy Skills** → 將 12 條規則封裝成可安裝的 Skill 格式
  👉 詳見 [[multica-ai-andrej-karpathy-skills]]

## 相關概念

- [[AI-Skills]] — SKILL.md 是 CLAUDE.md 的結構化升級，技能定義檔
- [[Prompt-Engineering]] — CLAUDE.md 是 Prompt Engineering 的專案級應用
- [[Coding-Agent-CLI]] — CLAUDE.md 是 Coding Agent CLI 的行為設定標準
- [[harness-engineering]] — CLAUDE.md 是 Harness 中 Natural Language Harness 的具體實作
- [[agent-persona]] — CLAUDE.md 是 Claude Code 版的 Persona 載體

## 來源

- Karpathy 4 條規則（Forrest Chang 整理）
- 社群 8 條補充規則（Mnilax，2026-05）
- Anthropic 官方文件