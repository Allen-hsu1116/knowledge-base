---
title: Stop Slop
slug: hardikpandya-stop-slop
created: 2026-01-11
updated: 2026-05-28
stars: 5700
language: Markdown
---

# Stop Slop

> ⭐5.7k · 移除 AI 寫作痕跡的 skill 檔案，教導 LLM 偵測並消除常見的 AI 寫作模式

## 快速導航
[[Prompt-Engineering]] · [[AI-Skills]] · [[AI-Skills|Agent Skills 生態系]] · [[LLM]]

## 是什麼

Stop Slop 是一個 Claude Code Skill，專門用來消除 AI 生成文字中常見的「slop」模式——那些讓人一眼看出是 AI 寫的陳腔濫調。它包含一套完整的禁用短語清單、結構性偵測規則和句子級規則，並透過 5 維度評分系統量化文字品質。

## 核心特色

- 🚫 **禁用短語清單**：喉嚨清嗓式開場、強調拐杖、商業術語、模糊宣告、元評論
- 🏗️ **結構性偵測**：二元對比、否定列舉、戲劇性斷句、虛假主語、被動語態
- ✍️ **句子級規則**：禁止 Wh- 開頭、禁用破折號、禁用斷奏式碎片、要求主動語態
- 📊 **5 維度評分系統**：直接性、節奏、信任、真實性、密度——低於 35/50 則需修改
- 🔌 **多平台相容**：Claude Code skill、Claude Projects、自訂指令或 API system prompt
- 📁 **模組化結構**：`SKILL.md` 核心指令 + `references/` 短語/結構/範例參考檔

## 怎麼用

```bash
# 作為 Claude Code Skill 使用
# 將 SKILL.md 和 references/ 目錄放入 Claude Code 的 skill 目錄

# 或在 Claude Projects 中加入
# 將 SKILL.md 內容貼入專案的 System Instructions

# 或作為 API system prompt 使用
# 直接在 API 呼叫的 system 欄位引用 SKILL.md 內容
```

```bash
# clone 專案
git clone https://github.com/hardikpandya/stop-slop
cd stop-slop
# 查看目錄結構
# ├── SKILL.md               # 核心指令
# ├── references/
# │   ├── phrases.md          # 禁用短語庫
# │   ├── structures.md        # 禁用結構模式
# │   └── examples.md          # 修改前後範例
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 評分機制 | Skill 格式 | 多 LLM 支援 |
|------|-------|------|---------|-----------|------------|
| **Stop Slop** | ⭐5.7k | Claude Skill | ✅ 5維度 | ✅ | ✅ |
| 通用 writing prompt | — | Prompt 模板 | ❌ | ❌ | ✅ |
| [[anthropics-claude-cookbooks|Claude Cookbooks]] | ⭐44k | 範例集 | ❌ | ❌ | ❌ |

## 相關概念
← [[Prompt-Engineering]] · [[AI-Skills]] · [[AI-Skills|Agent Skills 生態系]] · [[LLM]]

## 來源

- GitHub: <https://github.com/hardikpandya/stop-slop>
- 原始 README: `raw/2026-05-28-hardikpandya-stop-slop.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) |
| Stars | ⭐5,700 |
| License | — |
| Language | Markdown |
| 收錄日期 | 2026-05-28 |