# antigravity-awesome-skills

> 1,443+ 可安裝的 AI coding agent skills，支援 Claude Code、Cursor、Codex CLI、Gemini CLI、Antigravity、Kiro、OpenCode、GitHub Copilot 等 7+ 工具。一個指令安裝，即插即用。

| 項目 | 資訊 |
|------|------|
| **GitHub** | [sickn33/antigravity-awesome-skills](https://github.com/sickn33/antigravity-awesome-skills) |
| **Stars** | ⭐36,216 |
| **Language** | JavaScript/TypeScript (npm) |
| **版本** | v10.9.0 |
| **建立日期** | 2026-01-14 |
| **收錄日期** | 2026-05-04 |

## 快速導航

- 🛠️ **AI Skills** → [[AI-Skills]]（這是 SKILL.md 格式的最大生態系）
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]（skills 本質是結構化提示工程）
- 🔌 **MCP** → [[MCP]]（skills 可透過 MCP 介面整合）

## 簡介

Antigravity Awesome Skills 是一個可安裝的 GitHub library 和 npm installer，收錄了 1,443+ 個結構化的 `SKILL.md` 操作手冊。不同於零散的 prompt 片段，它提供可搜尋、可安裝、可組合的 skills 目錄，涵蓋開發、測試、安全、基礎設施、產品和行銷等領域。

## 支援的工具

| 工具 | 安裝指令 | 首次使用 |
|------|----------|----------|
| **Claude Code** | `npx antigravity-awesome-skills --claude` | `>> /brainstorming help me plan a feature` |
| **Cursor** | `npx antigravity-awesome-skills --cursor` | `@brainstorming help me plan a feature` |
| **Gemini CLI** | `npx antigravity-awesome-skills --gemini` | `Use brainstorming to plan a feature` |
| **Codex CLI** | `npx antigravity-awesome-skills --codex` | `Use brainstorming to plan a feature` |
| **Antigravity** | `npx antigravity-awesome-skills --antigravity` | `Use @brainstorming to plan a feature` |
| **Kiro CLI** | `npx antigravity-awesome-skills --kiro` | `Use brainstorming to plan a feature` |
| **GitHub Copilot** | `npx antigravity-awesome-skills --copilot` | CopilotChat 內呼叫 |

## 安裝

```bash
# 預設安裝到 ~/.gemini/antigravity/skills
npx antigravity-awesome-skills

# 指定工具安裝
npx antigravity-awesome-skills --claude    # Claude Code
npx antigravity-awesome-skills --cursor    # Cursor
npx antigravity-awesome-skills --gemini    # Gemini CLI
npx antigravity-awesome-skills --codex     # Codex CLI

# 驗證安裝
test -d ~/.gemini/antigravity/skills && echo "Skills installed"
```

## 核心特色

- **可安裝，不只是參考**：`npx` 一行指令把 skills 放到你的工具預期位置
- **7+ 工具支援**：Claude Code、Cursor、Codex CLI、Gemini CLI、Antigravity、Kiro、Copilot 等
- **1,443+ skills**：涵蓋開發、測試、安全、基礎設施、產品、行銷
- **Bundles & Workflows**：打包好的 skill 組合，降低從「發現」到「使用」的距離
- **目錄可搜尋**：[線上目錄](https://sickn33.github.io/antigravity-awesome-skills/) 可瀏覽 1,443+ skills

## 技術架構

- **格式**：`SKILL.md` — 結構化 Markdown 操作手冊
- **分發**：npm package + GitHub repository
- **安裝路徑**：依工具不同（`~/.claude/skills/`、`~/.cursor/skills/`、`~/.gemini/antigravity/skills/` 等）

## 授權

MIT License

## 相關連結

- [GitHub](https://github.com/sickn33/antigravity-awesome-skills)
- [線上目錄](https://sickn33.github.io/antigravity-awesome-skills/)