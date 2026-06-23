---
title: LLM 知識庫中文報導
slug: llm-knowledge-base-obsidian-claude-code
language: zh-TW
---

# LLM 知識庫中文報導

> 數位時代對 Karpathy LLM Wiki 系統的中文完整拆解：讓 AI 代替人做知識整理工作，LLM 作為「編譯器」把原始文件編譯成結構化的 markdown wiki。

## 核心內容

這是數位時代（BusinessNext）對 Karpathy LLM Wiki 系統的中文報導，由李先泰撰寫。Karpathy 的核心概念是讓 LLM 作為「編譯器」，把原始文件編譯成結構化的 markdown wiki。傳統知識管理工具（Notion、Roam、Obsidian）把整理苦工甩給人做，LLM 知識庫把這個成本轉移給 AI。

人負責找素材、定方向、問好問題；AI 負責摘要、交叉連結、一致性維護。系統由三層構成：raw/（不可改的原始素材）→ wiki/（AI 整理的知識庫，每個概念一篇，互相連結）→ schema（共同演化的設定檔）。index.md 和 log.md 由 AI 自動維護，提供內容導向的目錄和時間順序的操作記錄。

四個 Phases 形成持續循環：Ingest（Obsidian Web Clipper 把網頁存成 .md）→ Compile（LLM 讀取 raw/ 建立結構化 wiki）→ Query & Enhance（對 wiki 提問，好的答案回存）→ Lint & Maintain（掃描不一致、補缺失、建新連結）。這個迴圈讓知識庫持續成長，每次探索都有累積。

## 關鍵要素

- **人類策展 + AI 書記** — 人找素材定方向，AI 做摘要和交叉連結，成本轉移是核心創新
- **三層架構** — raw/（不可改）→ wiki/（AI 擁有）→ schema（共同演化），職責分明
- **四個 Phases** — Ingest → Compile → Query → Lint，持續循環讓知識庫複利成長
- **知識複利** — 每次提問的答案回存 wiki，探索也會累積，不消失在聊天歷史
- **不需要 RAG** — 在中等規模（~100 來源）效果很好，index.md 就夠用
- **工具簡單** — Obsidian（免費）+ Web Clipper（免費）+ Claude Code（~$20/月）

## 各框架的做法

- **Karpathy Gist** → 原始方法論，完整 prompt 和流程定義
  👉 詳見 [[karpathy-gist-llm-wiki]]
- **Karpathy Skills** → 標準化 SKILL.md 版本，可透過 `npx skills add` 安裝
  👉 詳見 [[multica-ai-andrej-karpathy-skills]]
- **claude-mem** → Claude Code 記憶壓縮系統，session 級別的知識持久化
  👉 詳見 [[thedotmack-claude-mem]]
- **OpenHuman** → Memory Tree + Obsidian Wiki，直接受 Karpathy 方法啟發
  👉 詳見 [[tinyhumansai-openhuman]]
- **Project Golem** → lancedb-pro 向量記憶，另一種知識持久化方案
  👉 詳見 [[project-golem]]

## 相關概念

- [[karpathy-gist-llm-wiki]] — 原始 Gist，本頁是其中文報導版
- [[llm-knowledge-base]] — 通用知識庫方法論，更完整的說明
- [[agent-skills-ecosystem]] — Skill 標準生態，方法論的標準化封裝
- [[agent-persona]] — Persona 設計影響知識庫整理的風格和深度
- [[context-engineering-basics]] — 知識庫是 Context Engineering 的實作

## 來源

- 數位時代 BusinessNext 中文報導
- Karpathy GitHub Gist
- Elvis Saravia / dair.ai 架構說明