---
title: System Prompts Leaks
slug: asgeirtj-system_prompts_leaks
created: 2026-06-22
updated: 2026-06-22
stars: 44397
language: JavaScript
topics: ["prompt-engineering", "system-prompts", "ai-agents", "llm", "claude", "chatgpt", "gemini", "grok"]
---

# System Prompts Leaks

> ⭐44.4k · 系統提示詞洩漏合集，收錄 Claude、ChatGPT、Gemini、Grok 等主流 AI 產品的隱藏指令

## 快速導航

[[prompt-engineering]] · [[x1xhlol-system-prompts-and-models-of-ai-tools|System Prompts Collection]] · [[anthropics-claude-code|Claude Code]] · [[AI-Agent]]

## 是什麼

System Prompts Leaks 是一個系統性收錄各大 AI 產品 system prompt 的開源倉庫。它把 Claude、ChatGPT、Gemini、Grok、Cursor、Copilot、Perplexity 等主流 AI 工具背後的隱藏指令整理成 Markdown 文件，讓開發者和研究人員能直接檢視這些「AI 的行為準則」。

這些 system prompt 原本是各家 AI 公司不公開的核心智慧財產，決定了 AI 模型如何回應使用者、遵循什麼安全規則、使用哪些工具、以及如何組織回答。透過逆向工程或內部洩漏，作者將它們提取出來並持續更新。2026 年 5 月甚至被《華盛頓郵報》報導，稱之為「看見 AI 背後的隱藏規則」。

對於 Prompt Engineering 和 Agent 開發來說，這個倉庫是極具價值的參考資源。你可以看到 Anthropic 如何指示 Claude Code 使用工具、OpenAI 如何限制 GPT-5.5 的行為邊界、Google 如何讓 Gemini 整合搜尋功能，以及 Cursor、Copilot 等 IDE 工具的 Agent 指令架構。這些 prompt 揭示了業界最佳實踐和安全策略的一手範例。

## 核心特色

- **多廠商完整覆蓋**：Anthropic（Claude Fable 5/Opus 4.8/Code/Design）、OpenAI（GPT-5.5 系列/Codex）、Google（Gemini 3.5 Flash/3.1 Pro/Antigravity）、xAI（Grok 4.3/Expert）、Microsoft（Copilot/VS Code/Word）、Cursor、Perplexity 等 15+ 廠商
- **持續更新**：586+ commits，定期追蹤新模型發布並更新 prompt，最新更新在 2026 年 6 月 18 日（Claude Design、GPT-5.5 Codex、Copilot macOS）
- **版本差異追蹤**：提供模型間的 diff 比較，例如 Claude Opus 4.8 → Fable 5 的逐項變更
- **結構化分類**：按廠商目錄分類（Anthropic/、Google/、Microsoft/ 等），每個 prompt 一個 Markdown 文件，方便檢索和對比
- **涵蓋工具層面**：不只有聊天 prompt，還包括 Codex CLI、Claude Code 工具（Glob/Grep）、VS Code Copilot Agent、Docker Gordon AI 等開發工具的系統指令
- **媒體認可**：被《華盛頓郵報》報導，成為 AI 透明性運動的重要參考

## 怎麼用

**安裝（克隆倉庫）：**

```bash
git clone https://github.com/asgeirtj/system_prompts_leaks.git
cd system_prompts_leaks
```

**瀏覽 prompt：**

```bash
# 列出所有 Anthropic 相關 prompt
ls Anthropic/

# 查看 Claude Opus 4.8 的 system prompt
cat Anthropic/claude-opus-4.8.md

# 比較 Claude Code 的工具定義
cat Anthropic/claude-code-glob-grep-tools.md
```

**線上瀏覽：**

直接到 GitHub 頁面 <https://github.com/asgeirtj/system_prompts_leaks>，按廠商目錄點進去看 Markdown 文件即可。

**研究用途：**

- 對比不同廠商的安全策略和行為限制
- 學習大型 AI 公司如何設計 tool-use 指令
- 理解 Agent 框架的 prompt 架構（Claude Code、Codex CLI 等）
- 作為自己寫 system prompt 的參考範本

## 跟其他方案的關係

| 倉庫 | Stars | 內容類型 | 更新頻率 | 涵蓋廠商 |
|------|-------|---------|---------|---------|
| **System Prompts Leaks** | ⭐44.4k | 提取的實際 system prompt | 持續更新（每週） | 15+ 廠商 |
| [[x1xhlol-system-prompts-and-models-of-ai-tools|System Prompts Collection]] | ⭐139k | AI 工具 prompt 合集 | 定期更新 | 20+ 工具 |
| [[anthropics-claude-cookbooks|Claude Cookbooks]] | ⭐44k | 官方教學範例 | 官方維護 | Anthropic |
| [[dair-ai-Prompt-Engineering-Guide|Prompt Engineering Guide]] | ⭐75.7k | 教學指南 | 持續更新 | 通用 |

## 相關概念

← [[prompt-engineering]] · [[x1xhlol-system-prompts-and-models-of-ai-tools|System Prompts Collection]]

## 來源

- GitHub: <https://github.com/asgeirtj/system_prompts_leaks>
- 原始 README: `raw/2026-06-22-asgeirtj-system_prompts_leaks.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [asgeirtj/system_prompts_leaks](https://github.com/asgeirtj/system_prompts_leaks) |
| Stars | ⭐44,397 |
| License | 未指定 |
| Language | JavaScript |
| 收錄日期 | 2026-06-22 |