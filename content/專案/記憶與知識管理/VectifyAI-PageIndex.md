---
title: PageIndex
slug: VectifyAI-PageIndex
created: '2026-09-30'
updated: '2026-09-30'
stars: 37384
language: zh-TW
topics:
- rag
- document-parsing
---

# PageIndex

> ⭐37.4k · 以文件樹索引與 LLM 推理檢索長文件，不依賴向量資料庫。

## 快速導航

- [[rag]] — 延伸閱讀
- [[document-parsing]] — 延伸閱讀

## 是什麼

PageIndex 將長文件整理成階層式樹索引，再由 LLM 沿樹尋找與問題相關的章節。它不是先把文字切成固定大小片段再做 embedding 相似度搜尋，而是將文件結構當成檢索路徑。

目前 README 的 SDK 已包含 local 與 Cloud 模式。Local 適合文字型 PDF，索引與儲存留在本機；Cloud 才提供代管 OCR、圖像理解與更完整的文件管理，不能把兩者能力混為一談。

適合財報、法規與技術手冊等具有章節結構的資料。無向量庫不代表無模型成本，本機索引也不等於推理完全離線；是否外傳文件內容仍取決於使用的模型提供者。

## 核心特色

### 1. 樹狀索引

利用文件版面建立結構，再由模型摘要與精煉。

### 2. 推理式檢索

由聊天模型尋找需要閱讀的節點，可帶入對話脈絡。

### 3. SDK 雙模式

相同 PageIndexClient 可以使用 local 索引或雲端服務。

### 4. 來源定位

Local 提供頁級引用，Cloud 提供區塊級引用。

### 5. Agent 整合

官方提供接入 OpenAI Agents SDK 與 Claude Agent SDK 的文件。

## 怎麼用

### 安裝

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -U pageindex
```

### 建議流程

1. 先準備文字型 PDF 與可用的模型 API key。
2. 依官方 SDK 文件設定 PageIndexClient 的 index 與 chat 模型。
3. 用 submit_document 建立索引，再以 doc_id 呼叫 chat。
4. 對照原 PDF 驗證引用與答案，另外量測成本及延遲。

### 限制與注意

- 掃描 PDF 的 OCR 不應視為開源 local 模式內建功能。
- README 的 FinanceBench 成績屬專案方報告，不等同所有文件與模型的保證。
- 本次只驗證文件及網站產物，未執行付費模型查詢。

## 跟其他方案的關係

以下是用途對照，不是本次實測的效能排名。

| 方案 | 主要定位 | 選用考量 |
|---|---|---|
| PageIndex | 文件樹＋LLM 路徑選擇 | 長文件章節檢索；需评估模型成本 |
| 向量 RAG | embedding 相似度召回 | 不同檢索設計；不是必然較差 |
| 整份 PDF 輸入模型 | 直接提供全文 | 受上下文長度與重複輸入成本影響 |

## 相關概念

← [[rag]] · [[document-parsing]]

## 來源

- [GitHub：VectifyAI/PageIndex](https://github.com/VectifyAI/PageIndex)
- README 快照：`raw/2026-09-30-VectifyAI-PageIndex.md`
- Metadata 快照：`raw/2026-09-30-VectifyAI-PageIndex.metadata.json`
- 文件與星數擷取日期：2026-09-30；上游功能與套件版本可能持續變動。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | [VectifyAI/PageIndex](https://github.com/VectifyAI/PageIndex) |
| Stars | 37,384 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-09-30 |
