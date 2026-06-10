---
title: Tolaria
slug: refactoringhq-tolaria
created: 2026-06-10
updated: 2026-06-10
stars: 14330
language: TypeScript
topics:
  - markdown
  - knowledge-base
  - desktop-app
  - git
  - ai-first
  - tauri
---

# Tolaria

> ⭐14.3k · 桌面端 Markdown 知識庫管理工具——Git 原生、離線優先、零鎖定，支援 Claude Code / Codex / Gemini CLI 整合。

## 快速導航

- 🧠 [[llm-knowledge-base|LLM 知識庫系統]] — 用 LLM 編譯知識的方法論
- 📖 [[llm-knowledge-base-obsidian-claude-code|LLM 知識庫中文報導]] — Karpathy 系統的中文拆解
- 🔌 [[AI-Skills|AI Skills]] — AI Agent 操作指令格式

## 是什麼

Tolaria 是一個跨平台桌面應用（macOS / Windows / Linux），專門用來管理 Markdown 格式的知識庫。它不是筆記應用裡的封閉花園——你的筆記就是標準 Markdown 檔案，每個知識庫就是一個 Git 倉庫。創辦人 Luca Ronin 用它管理 10,000+ 筆記，每天依賴它生活和工作。

Tolaria 的核心理念是「檔案優先、Git 優先、離線優先」：你的資料永遠是標準 Markdown + YAML frontmatter，不依賴任何雲端服務，不需要帳號或訂閱。同時它對 AI 工具非常友善——提供 AGENTS 設定檔，原生支援 Claude Code、Codex CLI 和 Gemini CLI，讓 AI Agent 可以直接讀寫你的知識庫。

## 核心特色

- **檔案優先（Files-first）**：筆記就是 Markdown 檔案，可攜、通用、不需要匯出
- **Git 原生（Git-first）**：每個知識庫都是 Git 倉庫，完整版本歷史，支援任何 Git 遠端
- **離線優先、零鎖定**：不需要帳號、訂閱或雲端依賴，完全離線運作
- **AI 整合友善**：提供 AGENTS 設定檔，原生支援 Claude Code、Codex CLI、Gemini CLI
- **鍵盤優先**：為重度使用者設計，大量鍵盤快捷鍵和 Command Palette
- **開源免費**：AGPL-3.0 授權，基於 Tauri + React + TypeScript 打造

## 怎麼用

**Homebrew 安裝（macOS）：**
```bash
brew install --cask tolaria
```

**下載安裝：**
到 [tolaria download](https://refactoringhq.github.io/tolaria/download/) 下載 macOS / Windows / Linux 版本。

**從原始碼建置：**
```bash
# 需求：Node.js 20+, pnpm 8+, Rust stable
pnpm install
pnpm dev          # 瀏覽器模式
pnpm tauri dev    # 桌面應用模式
```

首次開啟 Tolaria 會提供 Getting Started Vault 引導教學。

## 跟其他方案的關係

| 專案 | 定位 | 與 Tolaria 的關係 |
|------|------|-------------------|
| [[llm-knowledge-base|LLM 知識庫系統]] | 用 LLM 編譯知識的方法論 | Tolaria 是此方法的桌面端工具實現 |
| Obsidian | Markdown 知識庫管理 | 同類競品，但 Tolaria 更強調 Git 原生和 AI 整合 |
| [[mempalace|MemPalace]] | AI 記憶引擎 | MemPalace 側重記憶管理，Tolaria 側重知識庫管理 |
| [[refactoringhq-tolaria|Tolaria]] | 本身 | — |

← [[llm-knowledge-base|LLM 知識庫系統]] · [[AI-Skills]] · [[mempalace|MemPalace]] · [[CLAUDE-md|CLAUDE.md]]

## 來源

- GitHub: [refactoringhq/tolaria](https://github.com/refactoringhq/tolaria)
- raw/2026-06-10-tolaria.md

---

| 項目 | 內容 |
|------|------|
| GitHub | [refactoringhq/tolaria](https://github.com/refactoringhq/tolaria) |
| Stars | ⭐14,330 |
| License | AGPL-3.0 |
| Language | TypeScript (Tauri + React) |
| 收錄日期 | 2026-06-10 |