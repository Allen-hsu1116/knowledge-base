---
title: Tolaria
slug: refactoringhq-tolaria
created: 2026-06-09
updated: 2026-06-09
stars: 13580
language: TypeScript
topics: [Markdown 知識庫, Git-first, AI Agent 整合, 桌面應用]
---

# Tolaria

> ⭐13580 · 開源 Markdown 知識庫管理桌面應用，Git-first、離線優先，支援 AI Agent 整合

## 快速導航

[[self-hosted]] · [[llm-knowledge-base]] · [[llm-knowledge-base]]

## 是什麼

Tolaria 是一款跨平台桌面應用（macOS / Windows / Linux），用來管理 Markdown 格式的知識庫。它的設計哲學是「檔案優先、Git 優先、離線優先」——你的筆記就是普通的 Markdown 檔案，每個 Vault 就是一個 Git 倉庫，完全不依賴雲端服務或帳號體系。

開發者 Luca Ronin 自己用 Tolaria 管理超過 10,000 篇筆記的龐大 Vault，涵蓋他的 Refactoring 工作和大量個人筆記。Tolaria 的使用場景包括：第二大腦和個人知識管理、整理公司文件作為 AI 的上下文、以及儲存 AI Agent 的記憶和操作流程。

技術架構使用 Tauri + React + TypeScript，原生效能且跨平台。Tolaria 特別強調 AI Agent 整合，提供 AGENTS 檔案讓 AI Agent 理解 Vault 結構，支援 Claude Code、Codex CLI 和 Gemini CLI 的設定路徑。

## 核心特色

- **檔案優先**：筆記是純 Markdown 檔案，可攜、可用任何編輯器開啟、無需匯出步驟
- **Git 優先**：每個 Vault 都是 Git 倉庫，完整版本歷史，支援任何 Git 遠端
- **離線優先、零鎖定**：無帳號、無訂閱、無雲端依賴，完全離線運作
- **AI-first 但不 AI-only**：原生支援 Claude Code、Codex CLI、Gemini CLI 整合，但也可純手動操作
- **鍵盤優先設計**：為重度使用者設計，Command Palette 和編輯器都針對鍵盤操作最佳化
- **YAML Frontmatter 標準化**：使用標準 YAML frontmatter，無私有格式，相容其他工具

## 怎麼用

```bash
# macOS 安裝（Homebrew）
brew install --cask tolaria

# 或從 GitHub Releases 下載
# https://refactoringhq.github.io/tolaria/download/

# 開發者本地建置
git clone https://github.com/refactoringhq/tolaria.git
cd tolaria
pnpm install
pnpm dev        # 瀏覽器模式 http://localhost:5173
pnpm tauri dev  # 原生桌面應用
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 技術棧 | 特殊設計 |
|------|-------|------|--------|----------|
| **Tolaria** | ⭐14k | 知識庫管理 | Tauri + React + TS | Git-first、AI 整合 |
| Obsidian | ⭐—（商業） | 知識庫管理 | Electron | 外掛生態、圖譜檢視 |
| Logseq | ⭐—（開源） | 知識庫管理 | Electron | 大綱式、塊引用 |
| [[qmd|QMD]] | ⭐25k | 本地搜尋引擎 | Rust | 混合搜尋、MCP |
| [[Crosstalk-Solutions-project-nomad|Project N.O.M.A.D.]] | ⭐27k | 離線知識伺服器 | Ollama + RAG | 自架完整 AI 平台 |

Tolaria 與 Obsidian 的定位不同：Obsidian 是成熟的外掛生態系統，有大綱檢視和社群外掛；Tolaria 更強調 Git-first 和 AI Agent 原生整合，以及用 Tauri 取代 Electron 的效能優勢。Tolaria 的「離線優先、零鎖定」哲學也非常鮮明。

## 相關概念

← [[self-hosted]] · [[llm-knowledge-base]] · [[llm-knowledge-base]]

## 來源

- GitHub: <https://github.com/refactoringhq/tolaria>
- 原始 README: `raw/2026-06-09-refactoringhq-tolaria.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/refactoringhq/tolaria |
| Stars | ⭐13580|
| License | AGPL-3.0 |
| 收錄日期 | 2026-06-09 |
