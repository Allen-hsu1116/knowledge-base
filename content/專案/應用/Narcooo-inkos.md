---
title: InkOS
slug: Narcooo-inkos
created: 2026-05-06
stars: '⭐5672'
updated: 2026-05-06
language: zh-TW
topics: [AI Agent, AI Skills, 小說寫作]
---

# InkOS

> ⭐5672 · 自主小說寫作 AI Agent — 寫、審、改全程接管。33 維度連續性審計 + AI 痕跡偵測 + 文風指紋注入，支援玄幻、仙俠、都市、科幻等多種風格。⭐5,672

## 快速導航
- 🤖 **Agent 工作流** → [[AI-Agent]]（InkOS 是垂直領域 Agent 的代表作）
- 🛠 **Agent Skills** → [[AI-Skills]]（InkOS 已發布為 OpenClaw Skill）
- 🧠 **記憶與連續性** → [[mempalace]]（小說連續性審計 vs Agent 記憶系統）
- 🔄 **自演化** → [[lsdefine-GenericAgent]]（技能結晶 vs 小說寫作技能樹）
- ⚡ **Prompt 工程** → [[Prompt-Engineering]]（文風指紋注入是一種 prompt engineering）

## 是什麼

InkOS 是一個自主小說寫作 AI Agent，覆蓋玄幻、仙俠、都市、科幻等多種風格。它不只是一個「AI 寫作工具」，而是一個完整的寫-審-改管線：Agent 自主寫草稿、33 維度審計員檢查連續性、修訂員修正問題 — 人類只在審閱門控處介入。

InkOS 的核心差異化在於「去 AI 味」設計：內建 AI 痕跡偵測維度，自動識別「LLM 味」表達，並在寫手 agent 的 prompt 層注入詞彙疲勞詞表、禁用句式、文風指紋，從源頭減少 AI 生成痕跡。

## 核心特色

- **寫-審-改自主管線**：草稿 → 33 維度審計 → 修訂循環 → 人類審閱門控，審計不通過自動修訂
- **33 維度連續性審計**：角色記憶、物資連續性、伏箏收放、大綱偏離、敘事節奏、情感弧線、AI 痕跡偵測等
- **去 AI 味雙層設計**：源頭預防（詞彙疲勞詞表、禁用句式、文風指紋注入）+ 事後改寫（revise --mode anti-detect）
- **雙重控制文件**：story/author_intent.md（長期想成為什麼）+ story/current_focus.md（近期 1-3 章重點）
- **LLM Provider 支援**：Gemini、Moonshot、MiniMax、智譜、百鍊、DeepSeek、Ollama 等

## 怎麼用

```bash
# 安裝
npm i -g @actalk/inkos

# 或透過 OpenClaw
clawhub install inkos

# 建立新書
inkos init my-novel
cd my-novel
inkos book create --title "吞天魔帝" --genre xuanhuan

# 寫下一章
inkos write next 吞天魔帝

# 導出
inkos export 吞天魔帝 --format epub
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[mempalace]] | 記憶系統 | 宮殿索引解決「記憶在哪」，InkOS 連續性審計解決「記憶是否正確」 |
| [[lsdefine-GenericAgent]] | 自演化 Agent | GenericAgent 走技能結晶，InkOS 走小說寫作技能樹 |
| [[Prompt-Engineering]] | Prompt 工程 | 文風指紋注入是一種 prompt engineering |

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[mempalace]] · [[Prompt-Engineering]]

## 來源

- raw/2026-05-06-Narcooo-inkos.md

---

- **GitHub**: https://github.com/Narcooo/inkos
- **Stars**: ⭐5,672
- **License**: MIT
- **收錄日期**: 2026-05-06

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/Narcooo/inkos |
| **Stars** | ⭐'⭐5672' |
| **收錄日期** | 2026-05-06 |
