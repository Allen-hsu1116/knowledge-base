---
title: OCR-Memory
slug: ocr-memory
language: zh-TW
---

# OCR-Memory

> 用視覺模態壓縮 Agent 長期記憶的新方法：把歷史軌跡渲染成帶標註的圖片，透過視覺錨點精確檢索原文，避免摘要損失和幻覺。ACL 2026 主會議論文。

## 核心內容

OCR-Memory 是一種用視覺模態壓縮 Agent 長期記憶的方法。自主 LLM Agent 在長期互動中需要重用經驗，但現有記憶系統受制於文字 context 預算：存原始軌跡太貴、摘要會損失資訊、純文字檢索導致碎片化證據。OCR-Memory 的核心創新是用圖片作為高密度經驗表示。

具體做法是「光學上下文檢索」（Optical Context Retrieval），分三步：Render（把歷史軌跡渲染成帶有唯一視覺識別符的標註圖像）、Locate（透過視覺錨點選擇相關區域）、Transcribe（檢索對應的逐字文字）。不做摘要，做「定位 + 抄錄」。

這個方法有效的關鍵在於：圖像比文字更能壓縮長歷史（一張圖 = 數千 token 的文字），視覺錨點精確定位避免自由生成從而減少幻覺，檢索時 prompt 開銷最小（只需要圖片 + 定位指令）。

與 MemPalace 的理念一致——都是精確檢索原文而非改寫摘要，保持資訊忠實性。與知識庫的「編譯式記憶」互補：知識庫用文字編譯，OCR-Memory 用視覺壓縮。

## 關鍵要素

- **視覺壓縮超高密度**：一張帶標註的圖片壓縮數千 token 的歷史軌跡，大幅減少 context window 佔用
- **精確檢索避免幻覺**：視覺錨點定位相關區域再抄錄原文，不做摘要就不會有摘要損失
- **最少 prompt 開銷**：檢索時只需圖片 + 定位指令，比傳統 RAG 的多段落檢索更省 token
- **不改寫原文**：與 MemPalace 理念一致，精確檢索原文而非摘要改寫
- **學術驗證**：ACL 2026 主會議等級，經過嚴格同儕審查

## 各框架的做法

- **編譯式知識庫** → 用文字編譯 raw→wiki，與 OCR-Memory 的視覺壓縮互補
  👉 詳見 [[llm-knowledge-base]]
- **MemPalace** → 同樣強調精確檢索原文而非摘要，三層索引式記憶
  👉 詳見 [[mempalace]]
- **傳統 RAG** → 用向量檢索文字段落，OCR-Memory 用視覺定位取代
  👉 詳見 [[rag]]

## 相關概念

- [[AI-Agent]] — 持久記憶是 Agent 化的關鍵需求，OCR-Memory 是最新研究方向
- [[harness-engineering]] — 記憶管理是 Harness 的重要組件
- [[mempalace]] — 理念一致，都是精確檢索而非摘要

## 來源

- OCR-Memory 論文（arXiv:2604.26622v1）
- ACL 2026 Main Conference