---
title: Modern Go Guidelines
slug: JetBrains-go-modern-guidelines
created: 2026-08-28
updated: 2026-08-28
stars: 2098
language: Go
topics: [AI Skills, coding agent, Go, modernize, Claude Code, Codex, Cursor, Junie]
---

# Modern Go Guidelines

> ⭐2.1k · JetBrains 提供給 Coding Agent 的現代 Go 指南，依 go.mod 版本選用新版語法與標準函式庫慣用法

## 快速導航

- 🛠️ **可安裝的 Agent 行為規範** → [[AI-Skills]]
- 🤖 **支援的 Coding Agents** → [[Coding-Agent-CLI]]
- 🧭 **Agent 執行環境設計** → [[harness-engineering]]

## 是什麼

Modern Go Guidelines 是 JetBrains 維護的 Agent Skill／plugin，目的不是教人從零學 Go，而是修正 Coding Agent 常產生過時 Go 寫法的問題。它把 Go 1.0 到 1.27 的重要語言與標準函式庫變化整理成可在任務中載入的明確參考。

工具先從 `go.mod` 判斷專案的 Go 版本，再只建議該版本可用的語法與 API。例如可用 `slices.Contains` 取代手寫 loop、`cmp.Or` 取代連續 nil check，或在新版 Go 使用 `errors.AsType[T]`，避免 Agent 無視相容性地套用最新功能。

這套指南對抗兩種模型偏差：訓練資料截止造成的新功能空白，以及舊寫法在 corpus 中數量較多造成的 frequency bias。它與 Go 團隊的 `modernize` analyzer 方向一致，但把修正提前到 Agent 產生新程式碼的階段。

## 核心特色

- **版本感知**：讀取 `go.mod`，不會對舊版專案盲目使用新版 API
- **涵蓋 Go 1.0–1.27**：把重要語法與 stdlib 演進集中成 Agent 可查參考
- **對齊 modernize**：涵蓋 `modernize` analyzer 針對既有程式碼的更新方向
- **降低訓練截止落差**：補充模型未見過的近期 Go 功能
- **修正 frequency bias**：明確要求優先採用現代慣用寫法
- **跨 Agent 發佈**：支援 Junie、Claude Code、Codex、Cursor 與 skills.sh
- **隔離工具快取**：小型 CLI 安裝在 cache，不修改使用者專案

## 怎麼用

最通用的 Agent Skills 安裝方式：

```bash
npx skills add JetBrains/go-modern-guidelines
# 只安裝 use-modern-go skill
npx skills add JetBrains/go-modern-guidelines --skill use-modern-go
```

Claude Code 可安裝 marketplace plugin：

```text
/plugin marketplace add JetBrains/go-modern-guidelines
/plugin install modern-go-guidelines@goland-claude-marketplace
/modern-go-guidelines:use-modern-go
```

Codex CLI 的 marketplace 路徑：

```bash
codex plugin marketplace add JetBrains/go-modern-guidelines
codex plugin add modern-go-guidelines@goland-codex-marketplace
```

Marketplace integration 會在首次使用以 `go install` 準備 CLI，因此系統需有 Go toolchain；CLI 目標是 Go 1.25+，舊工具鏈可依賴預設的 `GOTOOLCHAIN=auto` 自動切換。

## 跟其他方案的關係

它比一般 `CLAUDE.md` 規則更專注 Go 版本與 API 細節，也比單純跑 linter 更早介入：Agent 在生成階段就選擇現代寫法。`modernize` analyzer 適合掃描既有程式碼，gofmt 負責格式，golangci-lint 聚合多種靜態檢查，四者可串成互補的產生與驗證流程。

| 方案 | 介入階段 | 主要功能 | 與本專案關係 |
|------|----------|----------|----------------|
| Modern Go Guidelines | Agent 生成前／生成中 | 版本感知的現代 Go 寫法 | 主動引導 |
| modernize analyzer | 程式碼完成後 | 找出可現代化的舊模式 | 自動檢查與修正建議 |
| gofmt | 編輯／CI | 標準格式化 | 處理格式，不判斷 API 新舊 |
| golangci-lint | 編輯／CI | 聚合靜態分析 | 補充 correctness 與 style gates |

## 相關概念

← [[AI-Skills]] · [[Coding-Agent-CLI]] · [[harness-engineering]] · [[Prompt-Engineering]]

## 來源

- GitHub: <https://github.com/JetBrains/go-modern-guidelines>
- Skill: <https://github.com/JetBrains/go-modern-guidelines/blob/main/plugin/skills/use-modern-go/SKILL.md>
- 原始 README 與 metadata: `raw/2026-08-28-JetBrains-go-modern-guidelines.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/JetBrains/go-modern-guidelines |
| Stars | ⭐2,098 |
| License | Apache-2.0 |
| Language | Go |
| 收錄日期 | 2026-08-28 |
