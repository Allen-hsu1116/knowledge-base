---
title: OCR-Memory
slug: ocr-memory
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# OCR-Memory

> 用視覺模態壓縮 Agent 長期記憶的新方法：把歷史軌跡渲染成帶標註的圖片，透過視覺錨點精確檢索原文，避免摘要損失和幻覺。ACL 2026 主會議論文。

## 快速導航

- 📚 **記憶方法對比** → [[llm-knowledge-base]]（編譯式 vs 索引式 vs 視覺式）
- 🏰 **不改寫原文** → [[mempalace]]（MemPalace 也是精確檢索而非摘要）
- 🔄 **Agent 工作流** → [[AI-Agent]]（持久記憶是 Agent 化的關鍵需求）

## 是什麼

OCR-Memory 是一種用視覺模態壓縮 Agent 長期記憶的方法。傳統方法要嘛存原始軌跡（token 太貴）、要嘛摘要（資訊損失）、要嘛純文字檢索（碎片化證擵）。OCR-Memory 的核心創新是：**用圖片作為高密度經驗表示**。

### 核心問題

自主 LLM Agent 在長期互動中需要重用經驗，但現有記憶系統受制於文字 context 預算：
- **存原始軌跡** → token 太貴
- **摘要** → 資訊損失
- **純文字檢索** → 碎片化證據

### 解法：光學上下文檢索（Optical Context Retrieval）

OCR-Memory 不做摘要，做「定位 + 抄錄」：

1. **渲染（Render）**：把歷史軌跡渲染成帶有唯一視覺識別符的標註圖像
2. **定位（Locate）**：透過視覺錨點（visual anchors）選擇相關區域
3. **抄錄（Transcribe）**：檢索對應的逐字文字（verbatim text）

### 為什麼有效

- 圖像比文字更能壓縮長歷史（一張圖 = 數千 token 的文字）
- 視覺錨點精確定位 → 避免自由生成 → 減少幻覺
- 檢索時 prompt 開銷最小（只需要圖片 + 定位指令）

## 核心特色

- **視覺壓縮超高密度**：一張帶標註的圖片可以壓縮數千 token 的歷史軌跡資訊，大幅減少 context window 佔用
- **精確檢索避免幻覺**：透過視覺錨點定位相關區域，再抄錄原文逐字內容，不做摘要就不會有摘要損失和幻覺問題
- **最少 prompt 開銷**：檢索時只需圖片 + 定位指令，比傳統 RAG 的多段落檢索更省 token
- **不改寫原文**：與 MemPalace 理念一致——精確檢索原文而非改寫摘要，保持資訊忠實性
- **ACL 2026 主會議等級**：經過嚴格同儕審查的學術驗證

## 怎麼用

### OCR-Memory 工作流程

```
歷史軌跡 → 渲染成帶標註圖像 → 存入視覺記憶庫
                                          ↓
新問題 → 視覺錨點定位 → 選擇相關區域 → 抄錄逐字原文 → 組裝回答
```

### 記憶方法對比

| 方法 | 策略 | 優點 | 缺點 |
|------|------|------|------|
| 原始軌跡 | 全存 | 零損失 | Token 太貴 |
| 摘要 | 壓縮 | 省 token | 資訊損失 |
| MemPalace | 索引+語意搜尋 | 精確檢索 | 需要向量 DB |
| **OCR-Memory** | 圖片壓縮+定位抄錄 | 省 token + 忠實 | 需要視覺模型 |

### 與知識庫的關聯

OCR-Memory 的理念與知識庫系統有深層連結：
- 跟知識庫的「編譯式記憶」互補：知識庫用文字編譯，OCR-Memory 用視覺壓縮
- 跟 MemPalace 的「不改寫原文」理念一致：都是精確檢索而非摘要
- 是 Agent 工作流中「持久記憶」趨勢的最新研究方向

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[llm-knowledge-base]] | 互補 | 知識庫用文字編譯，OCR-Memory 用視覺壓縮 |
| [[mempalace]] | 理念一致 | 都強調精確檢索原文而非摘要 |
| [[AI-Agent]] | 應用 | 持久記憶是 Agent 化的關鍵需求 |
| [[rag]] | 對比 | RAG 用向量檢索，OCR-Memory 用視覺定位 |
| [[harness-engineering]] | 整合 | 記憶管理是 Harness 的重要組件 |

## 相關概念

← [[llm-knowledge-base]] · [[mempalace]] · [[AI-Agent]] · [[rag]] · [[harness-engineering]]

## 來源

- [OCR-Memory 論文筆記](../raw/2026-05-03-ocr-memory.md)
- arXiv:2604.26622v1
- ACL 2026 Main Conference

---

_此頁由 daily-llm-trending 自動維護_