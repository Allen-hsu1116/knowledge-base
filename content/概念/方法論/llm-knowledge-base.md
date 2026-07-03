---
title: LLM 知識庫系統
slug: llm-knowledge-base
language: zh-TW
---

# LLM 知識庫系統

> 用 LLM 當「編譯器」，把原始素材編譯成結構化的個人知識庫。人負責找素材，AI 負責整理。

## 核心內容

LLM 知識庫系統是一種知識管理方法論，核心觀念是讓 LLM 當「編譯器」，把原始素材編譯成結構化的個人知識庫。人負責找素材、定方向、問好問題；AI 負責摘要、交叉連結、一致性維護。這個方法論由 Andrej Karpathy 在 2026 年 4 月公開，靈感來自軟體工程的 compile/lint 循環。

關鍵差異在於跟傳統 RAG 的本質不同：LLM 知識庫是「編譯式」而非「檢索式」。知識編譯一次後持續更新，而非每次查詢重新推導。wiki 是一個持久的、複利的產物——交叉引用已經存在、矛盾已經被標記、綜合分析已經反映所有讀過的內容。每次提問都讓知識庫更強，探索也會複利。

系統由三層架構構成：Raw sources（不可改，LLM 只讀不寫）→ The wiki（LLM 擁有，建頁面、更新、維護交叉連結）→ The schema（告訴 LLM wiki 的結構和慣例，你和 LLM 共同演化）。四個 Phases 形成持續循環：Ingest（蒐集）→ Compile（整理）→ Query（提問）→ Lint（健康檢查），lint 完成後循環回 compile，wiki 持續成長。

在中等規模（~100 來源、~數百頁）效果很好，不需要 embedding-based RAG。Schema 品質決定一切——寫得模糊，輸出就模糊。未來方向是從 wiki 生成合成資料來微調 LLM，把知識「燒進」權重而不只是靠 context window。

## 關鍵要素

- **三層架構** — Raw sources（不可改）→ The wiki（LLM 擁有）→ The schema（共同演化），職責分明
- **四個 Phases** — Ingest（蒐集，不整理不改名）→ Compile（LLM 建結構化 wiki）→ Query（提問，答案回存）→ Lint（掃描矛盾、補缺漏、發現新連結）
- **知識複利** — 每次提問都讓知識庫更強，好的答案回存 wiki 而非消失在聊天歷史
- **人類策展 + LLM 書記** — 人類負責策展素材和提好問題，LLM 負責所有書記工作（摘要、交叉連結、一致性維護）
- **不需要 embedding-based RAG** — 在中等規模效果很好，index.md + log.md 就夠用
- **Schema 決定一切** — SCHEMA.md 是唯一的前期投入，隨使用共同演化

## 方法論演進與變體

### Karpathy 原始 Gist

原始 Gist 定義了三個核心操作：**Ingest**（蒐集原始素材，不整理不改名）、**Query**（向知識庫提問，答案回存）、**Lint**（健康檢查——掃描矛盾、補缺漏、發現新連結）。引入「idea file」概念——一個記錄探索方向和待查問題的檔案，驅動持續 Ingest 循環。完整的 prompt 和流程定義都在 Gist 中。

### Obsidian + Claude Code 實作

數位時代中文報導將此方法論框架為「成本轉移」——把整理知識的成本從人類轉移到 AI。推薦工具棧：Obsidian（知識庫本體）+ Web Clipper（網頁蒐集）+ Claude Code（AI 整理），月成本約 \$20。重點是讓人類只做策展（找素材、定方向、問好問題），AI 做所有書記工作（摘要、交叉連結、一致性維護）。

### SKILL.md 標準化

Karpathy 後續將方法論封裝成 [[AI-Skills|SKILL.md]] 標準格式，支援一指令安裝，框架無關（Claude Code、Cursor、Codex 等皆可使用），讓知識庫方法論本身也變成可安裝、可分享的技能。

### MemPalace 索引式方法

[[mempalace|MemPalace]] 採用三層索引結構：Wing（大類）→ Room（子類）→ Drawer（具體條目），原文逐字儲存不壓縮。檢索精確度 R@5=96.6%。與編譯式知識庫的關係是**互補而非替代**——編譯式適合綜合理解和交叉分析，索引式適合精確引用和原文回溯。

### 視覺壓縮記憶

OCR-Memory 方法將視覺軌跡壓縮為記憶：Render（渲染頁面）→ Locate（定位元素）→ Transcribe（轉錄內容），以圖片形式壓縮操作軌跡。ACL 2026 論文。與文字編譯式知識庫互補——視覺壓縮保留版面和位置資訊，文字編譯保留語義結構。

## 各框架的做法

- **Karpathy Gist** → 原始方法論定義，完整的 prompt 和流程
  👉 詳見 [[llm-knowledge-base]]
- **Karpathy Skills** → 將方法論封裝成可安裝的 SKILL.md 格式
  👉 詳見 [[multica-ai-andrej-karpathy-skills]]
- **MemPalace** → 索引式記憶，原文逐字儲存 + 宮殿結構索引，跟編譯式方法互補
  👉 詳見 [[mempalace]]
- **Project Golem** → 向量式記憶（lancedb-pro），金字塔摘要
  👉 詳見 [[project-golem]]
- **Hermes Agent** → 建模式記憶（Honcho dialectic user modeling）
  👉 詳見 [[hermes-agent]]
- **OpenViking** → 檔案系統 Context DB，L0/L1/L2 分層載入
  👉 詳見 [[openviking]]
- **CocoIndex** → 增量索引引擎，宣告目標狀態只跑 delta
  👉 詳見 [[cocoindex]]

## 相關概念

- [[llm-knowledge-base]] — 原始 Gist，方法論的直接來源
- [[llm-knowledge-base]] — 數位時代中文報導版
- [[AI-Skills]] — Skill 格式標準化讓知識庫方法更容易部署
- [[agent-persona]] — Persona 設計影響知識庫整理的風格和深度
- [[context-engineering-basics]] — 知識庫是 Context Engineering 的實作
- [[AI-Agent]] — AI 工作流整體趨勢
- [[llm-knowledge-base]] — 視覺壓縮記憶（用圖片壓縮軌跡，ACL 2026）

## 來源

- Karpathy LLM 知識庫原始 Gist
- 數位時代中文報導
- Karpathy Skills 專案