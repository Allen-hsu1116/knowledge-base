# antigravity-awesome-skills

> 1,443+ 可安裝的 AI coding agent skills，支援 Claude Code、Cursor、Codex CLI、Gemini CLI、Antigravity、Kiro、OpenCode、GitHub Copilot 等 7+ 工具。一個指令安裝，即插即用。

## 快速導航

- 🛠️ **AI Skills** → [[AI-Skills]]
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]
- 🔌 **MCP** → [[MCP]]

## 是什麼

Antigravity Awesome Skills 是一個可安裝的 GitHub library 和 npm installer，收錄了 1,443+ 個結構化的 `SKILL.md` 操作手冊。不同於零散的 prompt 片段，它提供可搜尋、可安裝、可組合的 skills 目錄，涵蓋開發、測試、安全、基礎設施、產品和行銷等領域。

## 核心特色

- **可安裝，不只是參考** — `npx` 一行指令把 skills 放到你的工具預期位置
- **7+ 工具支援** — Claude Code、Cursor、Codex CLI、Gemini CLI、Antigravity、Kiro、Copilot 等
- **1,443+ skills** — 涵蓋開發、測試、安全、基礎設施、產品、行銷
- **Bundles & Workflows** — 打包好的 skill 組合，降低從「發現」到「使用」的距離
- **目錄可搜尋** — 線上目錄可瀏覽全部 1,443+ skills

## 怎麼用

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

### 各工具首次使用

| 工具 | 安裝指令 | 首次使用 |
|------|----------|----------|
| **Claude Code** | `npx antigravity-awesome-skills --claude` | `>> /brainstorming help me plan a feature` |
| **Cursor** | `npx antigravity-awesome-skills --cursor` | `@brainstorming help me plan a feature` |
| **Gemini CLI** | `npx antigravity-awesome-skills --gemini` | `Use brainstorming to plan a feature` |
| **Codex CLI** | `npx antigravity-awesome-skills --codex` | `Use brainstorming to plan a feature` |

## 跟其他方案的關係

這是 [[AI-Skills]] SKILL.md 格式的最大生態系。skills 本質是結構化 [[Prompt-Engineering]]，也可透過 [[MCP]] 介面整合。安裝路徑依工具不同（`~/.claude/skills/`、`~/.cursor/skills/`、`~/.gemini/antigravity/skills/` 等）。

## 相關概念

← [[AI-Skills]] · [[Prompt-Engineering]] · [[MCP]]

## 來源

- raw/sickn33-antigravity-awesome-skills.md

---

- **GitHub**: https://github.com/sickn33/antigravity-awesome-skills
- **Stars**: ⭐36,216
- **License**: MIT
- **收錄日期**: 2026-05-04