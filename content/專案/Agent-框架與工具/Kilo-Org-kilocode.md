---
title: Kilo Code
slug: Kilo-Org-kilocode
created: 2026-06-21
updated: 2026-06-21
stars: 23359
language: TypeScript
topics: [cli, ai, jetbrains, vscode, gemini, vscode-extension, claude, ai-coding]
---

# Kilo Code

> ⭐23359 · 開源 AI 編碼 Agent——VS Code、JetBrains、CLI 三棲，500+ 模型零加價，MCP 市場整合。

## 快速導航

[[anthropics-claude-code|Claude Code]] · [[anomalyco-opencode|OpenCode]] · [[MCP]] · [[OpenHands-OpenHands|OpenHands]]

## 是什麼

Kilo Code 是一個開源的 AI 編碼 Agent，定位為「無處不在的 AI 編碼助手」。它同時支援 VS Code（擴充功能）、JetBrains（插件）和 CLI（命令列工具），讓開發者在任何工作環境中都能使用同一個 AI Agent。它的核心理念是「開源 + 開放定價」：你可以從 500+ 個模型中選擇，任務中途切換模型，按模型供應商的原始費率付費，零加價。

Kilo Code 內建 5 種專用 Agent：Code（預設，從自然語言生成程式碼）、Plan（設計架構和實作計畫）、Ask（回答程式碼問題）、Debug（除錯追蹤）、Review（程式碼審查）。每種 Agent 針對不同的開發任務最佳化，你也可以建立自訂 Agent。它還支援 MCP Marketplace，讓你尋找和連接 MCP Server 來擴充 Agent 能力。

在 CI/CD 場景中，Kilo Code 提供 `--auto` 自主模式，禁用所有權限提示，讓 Agent 在可信環境中全自動執行任務。它還提供 Cloud Agent、Code Reviews 和 KiloClaw 等雲端功能。專案以 MIT 授權開源，已有 23k+ stars 和 23,705 commits，活躍度極高。

## 核心特色

- **三棲工作環境**：VS Code 擴充功能 + JetBrains 插件 + CLI 工具，同一個 Agent 無縫切換
- **500+ 模型支援**：包含 GPT-5.5、Claude Opus 4.7、Claude Sonnet 4.6、Gemini 3.1 Pro Preview 等，任務中途可切換模型
- **零加價定價**：按模型供應商原始費率付費，無中間商加價
- **5 種內建 Agent**：Code（寫程式）、Plan（規劃）、Ask（問答）、Debug（除錯）、Review（審查），支援自訂 Agent
- **MCP Marketplace**：內建 MCP Server 市場，一鍵安裝擴充 Agent 能力的 MCP Server
- **自主模式**：`kilo run --auto` 適用 CI/CD，禁用所有權限提示全自動執行
- **終端機與瀏覽器控制**：Agent 可執行命令和自動化網頁操作
- **自我檢查**：Agent 會審查並修正自己的工作
- **內聯補全**：ghost-text 建議 + tab 接受
- **多檔案程式碼生成**：從自然語言跨多個檔案生成程式碼

## 怎麼用

```bash
# 安裝 CLI（多種方式）
npm install -g @kilocode/cli
# 或
curl -fsSL https://kilo.ai/cli/install | bash
# 或
pnpm add -g @kilocode/cli
# 或
brew install Kilo-Org/tap/kilo
# 或
paru -S kilo-bin  # Arch Linux AUR

# 在專案目錄啟動
cd your-project
kilo

# 自主模式（CI/CD）
kilo run --auto "run tests and fix any failures"

# VS Code：從 Marketplace 安裝 Kilo Code 擴充功能
# JetBrains：安裝 Kilo Code JetBrains 插件
```

## 跟其他方案的關係

| 方案 | 核心定位 | IDE 支援 | CLI | MCP | 自主模式 | 模型數 |
|------|----------|----------|-----|-----|----------|--------|
| [[Kilo-Org-kilocode|Kilo Code]] | 開源 AI 編碼 Agent | VS Code + JetBrains | ✅ | ✅ Marketplace | ✅ | 500+ |
| [[anthropics-claude-code|Claude Code]] | 終端機 AI 編碼助手 | — | ✅ | ✅ | — | Anthropic |
| [[anomalyco-opencode|OpenCode]] | 開源 Coding Agent CLI | — | ✅ | ✅ | — | 多 |
| [[OpenHands-OpenHands|OpenHands]] | Coding Agent 控制中心 | Web | ✅ | ✅ ACP | ✅ | 多 |

與 [[anthropics-claude-code|Claude Code]] 的關係：Claude Code 是 Anthropic 官方終端機 AI 編碼助手，Kilo Code 則是開源替代品，支援 VS Code + JetBrains + CLI 三棲，且支援 500+ 模型不限 Anthropic。與 [[anomalyco-opencode|OpenCode]] 類似在於都是開源 Coding Agent，但 Kilo Code 有 IDE 插件和 MCP Marketplace。與 [[OpenHands-OpenHands|OpenHands]] 類似在於都支援自主模式，但 Kilo Code 更聚焦在 IDE 內的開發體驗。

## 相關概念


← [[anthropics-claude-code]] · [[anomalyco-opencode]] · [[MCP]] · [[OpenHands-OpenHands]]

## 來源

- GitHub：https://github.com/Kilo-Org/kilocode
- 官網：https://kilo.ai
- 文件：https://kilo.ai/docs
- Raw 檔案：`knowledge-base/raw/2026-06-21-Kilo-Org-kilocode.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/Kilo-Org/kilocode |
| Stars | ⭐23359|
| License | MIT |
| 收錄日期 | 2026-06-21 |
