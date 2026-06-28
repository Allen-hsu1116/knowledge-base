---
title: OpenSpec
slug: Fission-AI-OpenSpec
created: 2026-06-28
updated: 2026-06-28
stars: 57126
language: TypeScript
topics:
  - spec-driven-development
  - sdd
  - ai
  - context-engineering
  - planning
  - prd
---

# OpenSpec

> ⭐57k · Spec-Driven Development（SDD）框架，讓 AI coding assistant 先寫規格再寫程式碼

## 快速導航
- 🧠 **Spec Kit** → [[github-spec-kit|Spec Kit]]
- 🛠 **Claude Code** → [[Coding-Agent-CLI]]
- 📐 **Context Engineering** → [[context-engineering-basics|Context Engineering]]

## 是什麼

OpenSpec 是由 Fission AI 開發的 Spec-Driven Development（SDD）框架，專為 AI coding assistant 設計。它的核心理念是：在 AI 開始寫程式碼之前，先寫好一份清晰的規格文件（spec），讓 AI 根據規格來實作，而不是直接面對模糊的需求。

傳統的 AI coding 流程常常是「說一句話 → AI 開始寫程式碼」，這容易導致方向偏差、反覆修改。OpenSpec 的工作流程則是「propose → explore → apply → archive」四步循環：先提出變更提案，探索可行方案，實作任務清單，最後歸檔規格。每一步都產生結構化的 Markdown 產物（proposal.md、specs/、design.md、tasks.md），讓整個開發過程可追蹤、可審查。

OpenSpec 的設計哲學強調「fluid not rigid」（流暢而非僵化）、「iterative not waterfall」（迭代而非瀑布）、「built for brownfield not just greenfield」（不只用於全新專案，也適用於既有程式碼庫）。它不要求你改變整個開發流程，而是將規格文件作為 AI coding 的上下文錨點，讓 AI 在每次實作時都有明確的目標和邊界。

## 核心特色

- **四步工作流程**：propose（提案）→ explore（探索）→ apply（實作）→ archive（歸檔），每步產生結構化 Markdown 產物
- **規格驅動**：每個變更提案包含 proposal.md（為什麼做）、specs/（需求和場景）、design.md（技術方案）、tasks.md（實作清單）
- **opsx 新工作流**：2025 年新增 artifact-guided 工作流，用 `/opsx:propose`、`/opsx:apply`、`/opsx:archive` 指令驅動
- **Brownfield 友善**：不只用於全新專案，也能在既有程式碼庫中增量導入規格
- **AI coding assistant 整合**：透過 slash commands（`/opsx:propose` 等）與 Cursor、Claude Code 等 AI assistant 深度整合
- **OpenSpec Dashboard**：視覺化查看所有變更提案和規格狀態
- **MIT 開源**：完全開源，社群活躍

## 怎麼用

```bash
# 安裝
npm install -g @fission-ai/openspec

# 在專案中初始化
cd your-project
openspec init

# 使用 opsx 工作流（推薦）
# 在你的 AI coding assistant 中：
/opsx:explore          # 探索需求
/opsx:propose add-dark-mode  # 建立變更提案
# → 自動生成 openspec/changes/add-dark-mode/
#   proposal.md, specs/, design.md, tasks.md

/opsx:apply            # 根據 tasks.md 實作
/opsx:archive          # 歸檔完成的變更
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 特色1 | 特色2 |
|------|-------|------|-------|-------|
| **OpenSpec** | ⭐57k | SDD 框架 | 四步工作流 | 規格驅動 AI coding |
| [[github-spec-kit\|Spec Kit]] | ⭐98k | SDD 工具 | GitHub 官方 | 多語言 spec 模板 |
| [[Coding-Agent-CLI\|Claude Code]] | ⭐128k | Coding Agent | 終端機介面 | 規格即上下文 |
| [[context-engineering-basics\|Context Engineering]] | — | 方法論 | 管理上下文 | 規格作為錨點 |

← [[github-spec-kit|Spec Kit]] · [[Coding-Agent-CLI]] · [[context-engineering-basics|Context Engineering]]

## 來源

- GitHub: <https://github.com/Fission-AI/OpenSpec>
- 原始 README: `raw/2026-06-28-Fission-AI-OpenSpec.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [Fission-AI/OpenSpec](https://github.com/Fission-AI/OpenSpec) |
| Stars | ⭐57,126 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-06-28 |