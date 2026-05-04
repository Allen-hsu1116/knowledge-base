# OCR-Memory

> 用視覺模態壓縮 Agent 長期記憶的新方法：把歷史軌跡渲染成帶標註的圖片，透過視覺錨點精確檢索原文，避免摘要損失和幻覺。ACL 2026 主會議論文。（詳細參考頁）

## 快速導航
- 📚 **記憶方法對比** → [[llm-knowledge-base]]（編譯式 vs 索引式 vs 視覺式）
- 🏰 **不改寫原文** → [[mempalace]]（MemPalace 也是精確檢索而非摘要）
- 🔄 **Agent 工作流** → [[AI-Agent]]（持久記憶是 Agent 化的關鍵需求）

## 核心內容

### 問題
自主 LLM Agent 在長期互動中需要重用經驗，但現有記憶系統受制於文字 context 預算：
- **存原始軌跡** → token 太貴
- **摘要** → 資訊損失
- **純文字檢索** → 碎片化證據

### 解法：光學上下文檢索（Optical Context Retrieval）

OCR-Memory 的核心創新：**用圖片作為高密度經驗表示**。

**步驟：**
1. **渲染**：把歷史軌跡渲染成帶有唯一視覺識別符的標註圖像
2. **Locate**：透過視覺錨點（visual anchors）選擇相關區域
3. **Transcribe**：檢索對應的逐字文字（verbatim text）

**關鍵：不做摘要，做「定位 + 抄錄」。**

### 為什麼有效
- 圖像比文字更能壓縮長歷史（一張圖 = 數千 token 的文字）
- 視覺錨點精確定位 → 避免自由生成 → 減少幻覺
- 檢索時 prompt 開銷最小（只需要圖片 + 定位指令）

### 實驗結果
在長期 Agent 基準測試中，在嚴格 context 限制下持續提升表現。光學編碼增加了有效記憶容量，同時保持忠實的證據恢復。

### 記憶方法對比

| 方法 | 策略 | 優點 | 缺點 |
|------|------|------|------|
| 原始軌跡 | 全存 | 零損失 | Token 太貴 |
| 摘要 | 壓縮 | 省 token | 資訊損失 |
| MemPalace | 索引+語意搜尋 | 精確檢索 | 需要向量 DB |
| **OCR-Memory** | 圖片壓縮+定位抄錄 | 省 token + 忠實 | 需要視覺模型 |

### 論文資訊
- **標題**：OCR-Memory: Optical Context Retrieval for Long-Horizon Agent Memory
- **作者**：Jinze Li, Yang Zhang, Xin Yang, Jiayi Qu, Jinfeng Xu, Shuo Yang, Junhua Ding, Edith Cheuk-Han Ngai
- **會議**：ACL 2026 Main Conference
- **arXiv**：2604.26622v1

## 相關概念
← [[llm-knowledge-base]] · [[mempalace]] · [[AI-Agent]]

## 來源
- raw/2026-05-03-ocr-memory.md