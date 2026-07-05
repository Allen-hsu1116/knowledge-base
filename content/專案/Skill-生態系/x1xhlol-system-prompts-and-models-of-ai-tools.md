---
title: System Prompts and Models of AI Tools
slug: x1xhlol-system-prompts-and-models-of-ai-tools
created: 2026-06-12
updated: 2026-06-12
stars: 139871
language: ""
topics: [Prompt Engineering, System Prompts, 安全研究]
---

# System Prompts and Models of AI Tools

> ⭐139k · 最完整的 AI 工具 system prompts 收集，揭露 Augment Code、Claude Code、Cursor、Devin 等 30+ 產品的提示詞設計

## 快速導航
[[Prompt-Engineering]] · [[prompt-security]] · [[AI-Agent]] · [[AI-Skills]]

## 是什麼

這個專案是迄今為止最全面的 AI 工具 system prompt 收集庫。作者從 Augment Code、Claude Code、Cluely、CodeBuddy、Comet、Cursor、Devin AI、Junie、Kiro、Leap.new、Lovable、Manus、Notion AI 等 30+ 個主流 AI 產品中提取並公開了它們的 system prompt 和模型配置。

對 Prompt Engineering 研究者來說，這是一個珍貴的實戰參考庫——你能看到頂級 AI 產品如何設計提示詞結構、定義角色、設定安全邊界和工具使用規範。對安全研究者來說，它同時展示了 prompt extraction 漏洞的現實風險：原來這些精心設計的 system prompt 是可以被提取出來的。

專案也附帶了 ZeroLeaks 安全服務的推薦，幫助 AI 新創識別和加固 prompt injection 與 system prompt extraction 的風險。

## 核心特色

- **30+ 產品 system prompts**：涵蓋 Augment Code、Claude Code、Cursor、Devin、Kiro、Manus、Lovable 等主流 AI 工具
- **持續更新**：社群驅動，新工具的 prompt 一出來就會被加入（最近更新 2026-05-10）
- **模型配置揭露**：不只 prompt，還記錄各工具使用的底層模型和參數設定
- **安全研究價值**：作為 prompt extraction 攻擊面的實際案例，推動 prompt 安全意識
- **結構化分類**：按工具類型（coding agent、通用助手、設計工具等）組織，方便查閱

## 怎麼用

**直接瀏覽 GitHub 倉庫：**

```bash
# 克隆專案
git clone https://github.com/x1xhlol/system-prompts-and-models-of-ai-tools.git
cd system-prompts-and-models-of-ai-tools

# 查看 Claude Code 的 system prompt
cat "Claude Code/system_prompt.md"

# 查看 Cursor 的 system prompt
cat "Cursor/system_prompt.md"
```

不需要安裝任何依賴，整個專案就是純文字的 prompt 集合，直接閱讀即可。

**線上查看：** 直接在 GitHub 網頁上瀏覽各個資料夾即可閱讀所有 prompt。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 內容 | 安全角度 |
|------|-------|------|------|----------|
| **本專案** | ⭐139k | Prompt 收集 | 30+ 產品 system prompts | ⚠️ 揭露 extraction 風險 |
| [[prompt-security|CL4R1T4S]] | — | Jailbreak 研究 | 越獄技術與防禦 | 🛡️ 防禦視角 |
| [[AI-Skills|CLAUDE.md]] | — | 規範格式 | Claude Code 行為規範 | ✅ 正面設計視角 |
| [[anthropics-claude-code|Claude Code]] | ⭐128k | Coding Agent | 被 收錄的對象 | — |
| [[multica-ai-andrej-karpathy-skills|Karpathy CLAUDE.md]] | ⭐141k | Skill 規則 | Karpathy 的 CLAUDE.md 規則 | ✅ 正面設計視角 |

## 相關概念
← [[Prompt-Engineering]] · [[prompt-security]] · [[AI-Agent]] · [[AI-Skills]]

## 來源

- GitHub: <https://github.com/x1xhlol/system-prompts-and-models-of-ai-tools>
- 原始 README: `raw/2026-06-12-x1xhlol-system-prompts-and-models-of-ai-tools.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [x1xhlol/system-prompts-and-models-of-ai-tools](https://github.com/x1xhlol/system-prompts-and-models-of-ai-tools) |
| Stars | ⭐139,871 |
| License | GPL-3.0 |
| Language | Markdown |
| 收錄日期 | 2026-06-12 |