---
title: Humanizer
slug: blader-humanizer
created: 2026-08-16
updated: 2026-08-16
stars: 35825
language: Python
topics: [agent-skills, ai-writing, claude-code, codex, cursor, prompt-engineering, writing-tools]
---

# Humanizer

> ⭐35825 · 便攜式 agent skill，移除 AI 生成文字的痕跡，讓文字聽起來更自然、更像真人寫的

## 快速導航


- 🛠️ **Skill 生態系** → [[agentskills-agentskills]] · [[AI-Skills]]
- ✍️ **Prompt 工程** → [[dair-ai-Prompt-Engineering-Guide]] · [[Prompt-Engineering]]

## 是什麼

Humanizer 是一個便攜式的 agent skill，專門用來移除文字中 AI 生成的痕跡。它的核心是一份純 Markdown 的 `SKILL.md` 檔案，因此可以在任何支援 skill-style 指令的 agent harness 中運行——Claude Code、Codex、Cursor、Hermes 等等都能用。

這個 skill 基於 Wikipedia 的「Signs of AI writing」指南，該指南由 WikiProject AI Cleanup 維護，來自對數千個 AI 生成文字實例的觀察。Humanizer 偵測 33 種 AI 寫作模式，涵蓋內容模式（意義膨脹、知名度暗示）、語言模式（AI 詞彙、被動語態）、風格模式（破折號濫用、粗體過度）、溝通模式（聊天機器人痕跡、諂媚語氣）和填充模式（冗詞、過度避險）。

一個重要的設計原則是「不捏造規則」：改寫時永遠不會添加來源文字中不存在的事實、名字、日期或引用。具體性必須來自來源或作者，而不是來自改寫本身。此外，skill 還包含語音校準功能——提供一段你自己的寫作樣本，它會分析你的句型節奏、用詞習慣和個人風格，然後將這些應用到改寫中，而非產出千篇一律的「乾淨」文字。

## 核心特色

- **33 種 AI 寫作模式偵測**：涵蓋內容、語言、風格、溝通、填充五大類，每種都有 Before/After 範例
- **跨平台便攜**：純 Markdown `SKILL.md`，任何支援 skill 指令的 harness 都能用（Claude Code、Codex、Cursor 等）
- **雙重審計**：改寫後執行「明顯 AI 生成」審計 pass 和第二次改寫，捕捉第一稿殘留的 AI 痕跡
- **語音校準**：提供個人寫作樣本，skill 分析句型節奏和用詞習慣後套用到改寫
- **不捏造規則**：絕不添加來源文字中不存在的事實、名字、日期或引用
- **Skills CLI 安裝**：一行 `npx skills add blader/humanizer --global` 跨 harness 全域安裝
- **Claude Code 插件支援**：可作為 Claude Code plugin 安裝，用 `/humanizer:humanizer` 呼叫

## 怎麼用

```bash
# 全域安裝（跨所有支援的 agent harness）
npx skills add blader/humanizer --global

# 更新
npx skills update humanizer --global

# 安裝到所有 harness
npx skills add blader/humanizer --global --agent '*'

# 專案本地安裝（可 commit 分享給協作者）
npx skills add blader/humanizer

# Claude Code 插件方式
/plugin marketplace add blader/humanizer
/plugin install humanizer@humanizer
```

使用方式：
```
/humanizer

[貼上你的文字]
```

也可以指向檔案就地改寫：
```
Humanize the prose in docs/launch-post.md
```

語音校準：
```
/humanizer

Here's a sample of my writing for voice matching:
[貼 2-3 段你自己的寫作]

Now humanize this text:
[貼要改寫的 AI 文字]
```

## 跟其他方案的關係

- **手動改寫**：Humanizer 用結構化的 33 模式清單系統化偵測，比人工憑感覺更全面
- **通用 LLM 改寫**：通用模型不知道這些具體模式；Humanizer 把 Wikipedia 社群的集體知識編入 skill
- **AI 偵測器**：偵測器判斷「是否 AI 寫的」；Humanizer 直接改寫讓文字自然，解決問題而非標記問題

| 能力 | Humanizer | 手動改寫 | 通用 LLM | AI 偵測器 |
|---|:---:|:---:|:---:|:---:|
| 33 模式系統化 | ✓ | — | — | — |
| 語音校準 | ✓ | — | — | — |
| 不捏造規則 | ✓ | ✓ | — | — |
| 跨 harness 便攜 | ✓ | — | — | — |
| 雙重審計 | ✓ | — | — | — |
| 一鍵安裝 | ✓ | — | — | — |

## 相關概念


← [[agentskills-agentskills]] · [[AI-Skills]] · [[dair-ai-Prompt-Engineering-Guide]] · [[Prompt-Engineering]] · [[AI-Skills]]

## 來源

- GitHub: <https://github.com/blader/humanizer>
- Skills.sh: <https://skills.sh/blader/humanizer>
- 原始 README: `raw/2026-08-16-blader-humanizer.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/blader/humanizer |
| Stars | ⭐35825|
| License | MIT |
| 收錄日期 | 2026-08-16 |
