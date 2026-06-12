# Knowledge Graph（知識圖譜）

> 知識圖譜以圖結構組織資訊，將實體（節點）與關係（邊）連結，讓機器能以結構化方式理解與檢索知識。比 flat RAG 更有結構性，比純文件搜尋更精準。

## 快速導航

- 🕸️ **graphify** → [[safishamsi-graphify]]（把任意資料夾轉成知識圖譜的 Claude Code skill）
- 🗄️ **Context Database** → [[Context-Database]]（知識圖譜是 context database 的一種實作方式）
- 🔍 **RAG** → [[LLM]]（知識圖譜是 RAG 的進化形態）
- 📚 **知識庫方法論** → [[llm-knowledge-base]]（我們的知識庫方法論）

## 核心特色

知識圖譜以圖結構（節點與邊）組織資訊，讓機器能結構化地理解與檢索知識，比 flat RAG 更精準、更有效率。

## 核心

知識圖譜以圖結構（節點與邊）組織資訊，讓機器能結構化地理解與檢索知識，比 flat RAG 更精準、更有效率。

## 是什麼

知識圖譜是一種以圖結構組織資訊的方式。每個概念是**節點（Node）**，概念之間的關係是**邊（Edge）**。比 flat 文件或向量搜尋更能保留結構和語意。

## 怎麼用

### 建立知識圖譜
1. 定義實體類型和關係類型
2. 從結構化/非結構化資料中抽取實體和關係
3. 建構圖結構並建立索引
4. 透過圖查詢語言（如 Cypher、SPARQL）查詢

### 常見應用場景
- RAG 增強：用圖結構改善檢索品質
- 程式碼智慧：理解符號之間的關係
- 推薦系統：基於實體關係推薦相關內容

## 跟其他方案的關係

### 與我們的知識庫方法論的對比

我們的知識庫採用**雙層結構**（概念頁 + 專案頁），本質上就是一種輕量級知識圖譜：

### 節點類型

| 類型 | 說明 | 範例 |
|------|------|------|
| **EXTRACTED** | 從文件直接提取 | "Python 是程式語言" |
| **INFERRED** | 由 LLM 推斷 | "RAG 和知識圖譜都處理檢索" |
| **AMBIGUOUS** | 不確定的關係 | "可能相關" |

### 關鍵概念

- **社群偵測（Community Detection）**：用 Leiden 演算法自動將相關節點分群
- **God Nodes**：連接度最高的概念節點，通常是理解整個知識體系的關鍵入口
- **持久化查詢**：建好圖後可以反覆使用，不需重新讀取原始文件

## 為什麼比 flat RAG 更好

| 特性 | Flat RAG | 知識圖譜 |
|------|----------|----------|
| 結構 | 無結構，扁平向量 | 圖結構，節點+邊 |
| 檢索 | 語意相似度 | 語意 + 結構關係 |
| 全局視角 | ❌ 只有局部片段 | ✅ 能看見整體結構 |
| 推理能力 | ❌ 只能匹配 | ✅ 能沿邊推理 |
| Token 效率 | 低（載入大量文件） | 高（71.5x 縮減比） |
| 持久性 | 每次重新檢索 | 建好圖後可重複使用 |

## 實作工具

### graphify（[[safishamsi-graphify]]）

Claude Code skill，一行指令把任意資料夾轉成知識圖譜：

```bash
/graphify ./raw          # 建圖
/graphify query "attention 和 optimizer 的關係"  # 查詢
```

輸出：互動式 HTML、Obsidian vault、Wiki、JSON、GraphML、Neo4j Cypher。

### 其他工具

- **Neo4j**：工業級圖資料庫
- **NetworkX**：Python 圖分析庫（graphify 使用）
- **Leiden 演算法**：社群偵測（graspologic 實作）

## 與我們的知識庫方法論的對比

我們的知識庫採用**雙層結構**（概念頁 + 專案頁），本質上就是一種輕量級知識圖譜：

| 我們的方法 | 知識圖譜 | OpenViking |
|-----------|----------|-----------|
| 概念頁 + 專案頁 | 節點 + 邊 | L0/L1/L2 分層 |
| WikiLink 連結（\`\[\[...\]\]\`） | 邊 | 目錄遞迴檢索 |
| 編譯式（raw→wiki） | 建圖（文件→圖） | 增量索引 |

## 相關專案

- [[safishamsi-graphify]] — 一行指令建知識圖譜

## 相關概念

← [[Context-Database]] · [[LLM]] · [[llm-knowledge-base]] · [[volcengine-OpenViking]]

---

## 來源
- GraphRAG / Microsoft Research 等知識圖譜相關研究
- [[safishamsi-graphify|graphify]] 實作經驗

---

_此頁由 daily-llm-trending 自動維護_