---
title: Spec Kit
date: 2026-05-14
github: https://github.com/github/spec-kit
stars: 98382
language: Python
created: 2025-08-21
added: 2026-05-14
tags: [spec-driven-development, coding-agent, AI-workflow, software-methodology]
---

# Spec Kit

> 💫 Toolkit to help you get started with Spec-Driven Development

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [github/spec-kit](https://github.com/github/spec-kit) |
| Stars | ⭐ 98k+ |
| Language | Python |
| 建立日期 | 2025-08-21 |
| 收錄日期 | 2026-05-14 |
| 授權 | MIT |

## 快速導航

- [[AI-Agent]] — Spec Kit 是一套 AI coding agent 的工作流程框架
- [[AI-Skills]] — 透過 composable extensions 擴展功能
- [[Coding-Agent-CLI]] — 支援 Claude Code、Codex CLI、Copilot 等多種 coding agent
- [[context-engineering-basics]] — Spec-Driven Development 的核心就是先規格、再實作
- [[Prompt-Engineering]] — 透過結構化的 prompt 指令（/speckit.*）驅動開發流程

## 詳細簡介

Spec Kit 是 GitHub 官方推出的開源工具組，實踐「Spec-Driven Development（規格驅動開發）」的理念。傳統開發中，規格文件往往只是輔助，真正的主角是程式碼；但 SDD 翻轉了這個邏輯——規格成為可執行的 artefact，直接生成可運作的實作，而不是只用來「參考」。

這套工具提供了 `specify` CLI，透過一連串結構化的指令引導整個開發流程：先建立專案憲章（constitution），定義專案原則和開發規範；然後用自然語言描述你想建造什麼（specify）；接著生成技術實作計畫（plan）；再拆解成可執行的任務清單（tasks）；最後按計畫逐步實作（implement）。整個過程由 AI coding agent 執行，但由規格文件驅動。

Spec Kit 特別強調「先想清楚再動手」，避免了所謂的「vibe coding」——也就是讓 AI 隨意寫碼而缺乏明確方向。它的哲學是：好的規格才能產出好的程式碼。

## 核心特色

### Spec-Driven Development 工作流程

五個核心階段：`/speckit.constitution`（建立專案原則）→ `/speckit.specify`（描述需求）→ `/speckit.plan`（技術計畫）→ `/speckit.tasks`（任務拆解）→ `/speckit.implement`（執行實作）。每個階段都有對應的 slash command，讓 AI agent 能系統性地完成開發。

### Specify CLI

獨立的命令列工具，負責專案初始化、版本管理、工具檢查等。支援 `uv tool install`、`pipx` 和企業級 air-gapped 安裝。安裝後可直接用 `specify init` 建立新專案或在現有專案中初始化。

### 豐富的 Community Extensions 生態系

已有數十個社群貢獻的擴展，涵蓋 CI/CD 整合（GitHub Actions、Azure DevOps）、專案管理同步（Jira、Trello、Linear）、架構治理、成本追蹤、程式碼品質門檻等。每個擴展都有明確的分類（docs/code/process/integration/visibility）和效果標示（Read-only/Read+Write）。

### 多平台 AI Coding Agent 支援

支援 Claude Code（/speckit.* slash commands）、Codex CLI（$speckit-* skills）、GitHub Copilot、Cursor 等主流 coding agent。同一套規格文件可以在不同 agent 間通用。

### Constitution-First 開發

在寫任何規格之前，先建立專案的 governing principles——包括程式碼品質標準、測試要求、使用者體驗一致性、效能需求等。這些原則會貫穿後續所有開發決策，確保 AI agent 的產出符合你的期望。

## 安裝方式

**推薦安裝（使用 uv）：**
```bash
uv tool install specify-cli --from git+https://github.com/github/spec-kit.git@vX.Y.Z
```

**使用 pipx：**
```bash
pipx install git+https://github.com/github/spec-kit.git@vX.Y.Z
```

**一次性使用：**
```bash
uvx --from git+https://github.com/github/spec-kit.git@vX.Y.Z specify init <PROJECT_NAME>
```

**在現有專案初始化：**
```bash
specify init . --integration copilot
```

## 技術棧

- **語言**：Python
- **CLI 工具**：specify-cli
- **支援平台**：Claude Code, Codex CLI/App, GitHub Copilot, Cursor
- **核心概念**：Spec-Driven Development, Constitution-first, Composable extensions

## 授權

MIT License

## 相關連結

- [GitHub](https://github.com/github/spec-kit)
- [官方文件](https://github.github.io/spec-kit/)
- [Community Extensions](https://speckit-community.github.io/extensions/)
- [Video Overview](https://www.youtube.com/watch?v=a9eR1xsfvHg)