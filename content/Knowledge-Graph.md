# Knowledge Graph

> 知識圖譜（Knowledge Graph）是一種以圖結構組織資訊的方式，將實體（節點）與關係（邊）連結起來，讓機器能以結構化方式理解與檢索知識。

## 核心概念

- **節點（Node）**：代表概念、實體或文件
- **邊（Edge）**：代表節點之間的關係，可標記為 EXTRACTED、INFERRED 或 AMBIGUOUS
- **社群偵測（Community Detection）**：用 Leiden 演算法自動將相關節點分群
- **God Nodes**：連接度最高的概念節點，通常是理解整個知識體系的關鍵入口

## 為什麼重要

- 比 flat RAG 更有結構性，能回答跨文件的全局性問題
- Token 效率極高：graphify 實測可達 71.5x 的 token 縮減比
- 支援持久化查詢：建好圖後可以反覆使用，不需重新讀取原始文件

## 相關專案

- [[safishamsi-graphify|graphify]] — Claude Code skill，將任意資料夾轉成知識圖譜，支援多模態輸入

---

_此頁由 daily-llm-trending 自動維護_