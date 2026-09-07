---
title: "STAIR / SearchTome：以目錄結構增強生成式檢索"
slug: ibm-stair-searchtome
type: paper
date: 2026-09-08
updated: 2026-09-08
language: zh-TW
stars: "—"
publisher: IBM
year: 2026
arxiv: 2609.03874v1
source: https://arxiv.org/abs/2609.03874v1
topics: [RAG, document-parsing, LLM]
---

# STAIR / SearchTome：以目錄結構增強生成式檢索

> 讓微調後的 LLM 看完整目錄並輸出最相關的葉節點；SearchTome 上 Recall@1 為 82.6%，但這不是「回答事實錯誤率低於 0.05%」的證明。[1][2]

## 快速導航

- [[RAG]] — STAIR 是檢索器，不是已驗證的端到端問答系統。
- [[document-parsing]] — 目錄、章節邊界與原文映射是資料準備的前提。

## 是什麼

**STAIR（STructure Aware Information Retriever）**研究如何把長文件原有的 Table of Contents（ToC，目錄）加入生成式檢索。它不只依固定長度切塊，也不是僅把全文塞進上下文：模型經監督式微調，從「查詢＋完整目錄」生成能回答問題的最細章節標題，再由章節對應回內容。[2]

本文只收錄 **arXiv:2609.03874v1**，提交於 2026-09-03；英文原題為 *STAIR (STructure Aware Information Retriever): A novel dataset and LLM based retriever for document structure augmentation*。作者為 Vineet Kumar、Meghanadh Pulivarthi、Vishwajeet Kumar、Jaydeep Sen、Riyaz Ahmad Bhat、Sachindra Joshi。論文列 IBM affiliation，並註明 Vineet Kumar 的工作完成於 IBM、現於 Amazon Books Science。已讀取版本固定的摘要、HTML 全文與 11 頁 PDF；沒有用最新版覆蓋 v1。[1][2][3]

## 核心特色

- **目錄葉節點作為檢索單位**：把語義完整、有章節邊界的內容映射到章節標題，而非任意長度的識別碼區塊。[2]
- **參數化知識＋顯式目錄**：訓練讓模型學會問題與章節的對應；目錄在輸入中提供候選結構，減少模型自己記住或捏造章節名稱的負擔。[2]
- **SearchTome 基準**：18 本開放教科書、6 個領域，每個領域 3 本，附目錄、原文映射與 train/dev/test 問題。[2]
- **低樣本章節分析**：作者觀察到訓練問題較少的葉節點，STAIR 相對 DSI 的優勢較大；這是同一語料內低樣本分析，不是未見新書的零樣本泛化證明。[2]

### 方法：從書本到檢索結果

1. **建構資料**：用 PyMuPDF 解析 Open Textbook Library 的書籍 PDF，擷取及清理目錄與章節內容；以 Mixtral 8x7B 對每段產生多個問題，將問題標註到對應葉節點。[2]（§3.2）
2. **監督式微調**：輸入為固定任務指令、書名、完整 ToC 與查詢；輸出只有正確葉節點的章節名稱。相同書本的不同查詢共享目錄。[2]（§4.2）
3. **推論與內容回查**：圖 2 明確列出 constrained generation，把輸出限制到有效 ToC 葉節點。章節選出後可據映射取回原文；論文的主要評估是章節檢索，不是生成最終答案。[2][3]

**訓練設定（§5.2）**：Mistral-7B-Instruct-v0.2、LoRA rank 16、alpha 32、最多 200 epochs；以 dev Recall@1 選模型，early stopping patience 為 20 epochs。STAIR 最大輸入 14k tokens，DSI 為 512 tokens；最大輸出皆為 64 tokens。DSI 以每本書的 training split 微調；STAIR 同樣利用書本的已知語料與訓練問題，不是開箱即用的通用檢索器。[2][3]

### SearchTome 與評估設定

六個領域為教育、財務、法律、醫學、自然科學、社會科學。問題源自書籍段落的 LLM 合成，而非明確收集的人類真實搜尋紀錄；作者將部分問題用於訓練、小部分作 dev、多數作 test。Table 1 列出各書的頁數、葉節點數與各 split 數量。本文沒有將這種切分解讀成跨書 hold-out 測試。[2]（§3）

評估以每本書的測試集計算 Recall@1、Recall@3、nDCG@3，使用 BEIR 工具。BM25 透過 Elasticsearch 8.11.2 索引葉節點內容；文中稱「DPR」的稠密檢索基線實際採 **未針對 SearchTome 微調的 NV-Embed-v2**，passage/query 長度分別為 512/256。因此它不是與 STAIR 同等任務微調預算的比較。[2]（§5）

### 結果：論文 Table 4 的 Avg 欄

| 方法 | Recall@1 | Recall@3 | nDCG@3 |
| --- | --- | --- | --- |
| Mistral（未微調） | 13.8 | 16.4 | 15.4 |
| BM25 | 59.5 | 77.6 | 70.1 |
| Claude Haiku 4.5 | 45.6 | 64.1 | 56.4 |
| DPR / NV-Embed-v2 | 68.7 | 85.4 | 78.6 |
| DSI | 76.9 | 85.3 | 81.9 |
| STAIR | **82.6** | **90.8** | **87.5** |

表中數值依原文百分制列示，非本知識庫重跑結果。Haiku 列確實出現在 v1 Table 4，但 §5.1 沒有對等詳細的 Haiku 設定說明；不自行補上 prompt、價格或 API 版本。[2][3]

**編者計算**：82.6 − 76.9 = **5.7 個百分點**；相對提升約 **7.4%**，不是增加 7.4 個百分點。作者以各領域合併書本查詢進行 randomization test，報告六個領域皆達 p < 0.05；這是作者的顯著性結論，不等於已排除所有資料設計或比較設定的混雜因素。[2]（§6）

### 「幻覺近零」必須怎麼讀

作者在 §6.1 將 hallucination 定義為產生 non-leaf node／無效文件識別碼；摘要稱低於 0.05%，§6.2 則記為 STAIR 0.05% 的預測是 non-leaf。**這不表示最後答案只有 0.05% 的事實錯誤，也不表示找錯有效章節的機率只有 0.05%。** 82.6% Recall@1 本身就顯示首選檢索仍會失敗。[1][2]

v1 的報告還有應保留的口徑不確定性：§6.2 同時分列 non-leaf 與 hallucination，錯誤率報 STAIR 18.67%、DSI 24.31%，並未清楚解釋與 Table 4 平均 Recall@1 的聚合關係；圖 2 又明示 constrained generation，而分析把低無效輸出歸因於 ToC 學習。**編者判讀**：在未釐清解碼限制、錯誤分類與分母前，不能把效果全部歸因於微調學會結構，也不能擅自把不一致數字「修正」成另一個值。[2][3]

## 怎麼用

### 依論文重現的最小路線

1. 選擇目錄可靠且內容相對穩定的文件；保存葉節點 ID、完整標題、階層關係與原文範圍。
2. 依論文建立段落問題與葉節點標籤，明確保存生成器、資料切分及去重策略。
3. 依上述 Mistral / LoRA 設定訓練 STAIR，並做不含 ToC 的 DSI 對照。
4. 同時測試章節 Recall@k、nDCG、無效識別碼率；另行量測最終回答正確率、成本及延遲，不混為同一指標。

上述為依方法整理的重現路線，**不是已執行的安裝或訓練結果**。論文提供匿名程式與資料連結 `https://anonymous.4open.science/r/s_331/README.md`；本次未審核該程式、下載模型或重跑實驗，不捏造 GitHub repository、套件名稱或啟動指令。[2]

### 限制與落地判讀

**作者明示的限制／未來工作**：目前只評估已有全域結構的語料；對無目錄語料自動誘導 ToC、百萬 URL 級企業資料、未見語料零樣本、多跳 agentic retrieval 都是未來方向，不是本文已驗證能力。[2]（§7–8）

**編者推論，非論文結果**：

- 合成問題可能偏向原文措辭或生成器習慣；實務上應另測人類查詢、改寫問題及不可回答問題。
- 以同一書本建立參數化索引，文件更新可能需要重做資料或微調；本文未證明增量更新成本優於向量索引。
- 完整 ToC 佔用輸入 token，結構更大、標題模糊或解析錯誤時可能退化；14k 輸入上限不能被說成無限擴展。
- 要隔離結構的貢獻，值得補充等預算微調的 embedding/reranker、相同解碼限制、打亂目錄／只給葉標題等控制實驗。
- constrained generation 可防止無效名稱，卻不能保證選中正確節點；應把「合法輸出」與「語義正確」分開驗收。

## 跟其他方案的關係

| 路線 | 與 STAIR 的差異／關係 |
| --- | --- |
| BM25 | 詞彙匹配原文；論文中為直接比較基線，不需要將書本知識寫入 LLM 參數。[2] |
| NV-Embed-v2 稠密檢索 | 用向量相似度找內容；此文沒有 SearchTome 任務微調，不能據此宣稱所有 dense retrieval 都較差。[2] |
| DSI | 同為參數化生成式檢索；STAIR 的關鍵差異是查詢輸入附上完整 ToC。[2] |
| RAPTOR | 論文相關工作描述其遞迴聚類／摘要與稠密檢索；STAIR 使用既有目錄與模型式索引，本文未提供 RAPTOR 正面對比數字。[2]（§2） |
| 一般 RAG 系統 | **編者判讀**：可把 STAIR 當檢索階段的候選設計，再接原文回查與有引用的生成；不等於移除所有外部文件儲存。 |

## 相關概念

← [[RAG]] · [[document-parsing]]

## 來源

- 不可變原始快照：`raw/2026-09-08-ibm-stair-searchtome-2609.03874v1.md`。
- 同前綴的 `-abstract.html`、`-fulltext.html`、`-fulltext.md`、`.pdf`、`.txt` 與 `-provenance.json` 保存原始回應、全文、頁碼、來源 URL、抓取時間與 SHA-256；HTML 轉文字的數學重複保留於 raw，wiki 數字以 PDF 交叉核對。
- 以下引用皆固定 v1；本文僅整理論文，沒有獨立重現其效果。

---

- **類型**：研究論文（arXiv 預印本）
- **發布者／機構**：arXiv／IBM（作者 affiliation）
- **年份**：2026
- **來源版本**：2609.03874v1
- **來源授權**：CC BY 4.0（arXiv 頁標示）[1]
- **收錄日期**：2026-09-08

## Sources

[1] https://arxiv.org/abs/2609.03874v1 — STAIR exact v1 abstract
[2] https://arxiv.org/html/2609.03874v1 — STAIR exact v1 full text
[3] https://arxiv.org/pdf/2609.03874v1 — STAIR exact v1 PDF
