---
title: Karpathy LLM Wiki Gist
slug: karpathy-gist-llm-wiki
language: zh-TW
---

# Karpathy LLM Wiki Gist

> Karpathy 提出的 LLM Wiki 模式——用 LLM 增量建構和維護持久化的個人知識庫，而非每次重新檢索。知識編譯一次後持續更新，而非每次查詢重新推導。

## 核心內容

Karpathy 在 2026 年 4 月公開的 LLM Wiki 系統方法論。核心觀念：讓 LLM 當「編譯器」，把原始素材增量建構成一個持久的、互相連結的 wiki，放在你和原始素材之間。新素材進來時，LLM 不只是索引它，而是讀取、提取關鍵資訊、整合進現有 wiki——更新實體頁面、修正主題摘要、標記矛盾。

關鍵差異在於跟傳統 RAG 的根本不同：傳統 RAG 每次提問都要重新從原始文件檢索和拼湊知識，沒有積累。LLM Wiki 的做法是增量建構一個持久的、複利的產物——交叉引用已經存在、矛盾已經被標記、綜合分析已經反映所有讀過的內容。知識編譯一次後持續更新，而非每次查詢重新推導。

維護知識庫的枯燥部分——更新交叉引用、保持摘要最新、標記矛盾——人類會放棄，但 LLM 不會。人類負責策展素材、提好問題、思考意義；LLM 負責所有書記工作。在中等規模（~100 來源、~數百頁）效果很好，不需要 embedding-based RAG。這份 Gist 本身是一份 idea file，設計來直接 copy-paste 給你的 LLM Agent。

## 關鍵要素

- **三層架構** — Raw sources（不可改，LLM 只讀不寫）→ The wiki（LLM 完全擁有）→ The schema（CLAUDE.md / AGENTS.md，共同演化）
- **三種操作** — Ingest（一個素材觸及 10-15 個 wiki 頁面）、Query（好的答案回存 wiki，探索也會複利）、Lint（檢查矛盾、過時聲明、孤立頁面、缺失交叉引用）
- **知識複利** — 每次提問都讓知識庫更強，wiki 是持久且複利的產物
- **人類策展 + LLM 書記** — 人類找素材、定方向；LLM 做摘要、交叉連結、一致性維護
- **不需要 embedding-based RAG** — 在中等規模效果很好，index.md + log.md 就夠用
- **索引與日誌設計** — index.md（內容導向目錄）+ log.md（時間順序 append-only 日誌）

## 各框架的做法

- **Karpathy Skills** → 標準化 SKILL.md 版本，可透過 `npx skills add` 安裝
  👉 詳見 [[multica-ai-andrej-karpathy-skills]]
- **LLM 知識庫中文報導** → 數位時代中文解讀版，完整拆解
  👉 詳見 [[llm-knowledge-base-obsidian-claude-code]]
- **claude-mem** → Claude Code 記憶壓縮系統，session 級別的知識持久化
  👉 詳見 [[thedotmack-claude-mem]]
- **OpenHuman** → Memory Tree + Obsidian Wiki，直接受 Karpathy 方法啟發
  👉 詳見 [[tinyhumansai-openhuman]]
- **Project Golem** → lancedb-pro 向量記憶，另一種知識持久化方案
  👉 詳見 [[project-golem]]

## 相關概念

- [[llm-knowledge-base]] — 通用知識庫方法論，基於此 Gist 發展
- [[llm-knowledge-base-obsidian-claude-code]] — 中文報導版
- [[agent-skills-ecosystem]] — Skill 標準生態，方法論的標準化封裝
- [[context-engineering-basics]] — 知識庫是 Context Engineering 的實作
- [[agent-persona]] — Persona 設計影響知識庫整理的風格和深度

## 來源

- Karpathy 原始 GitHub Gist
- Elvis Saravia / dair.ai 架構說明