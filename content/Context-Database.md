# Context Database

> Context Database 是專為 AI Agent 設計的上下文資料庫，以檔案系統範式統一管理 Agent 所需的記憶、資源和技能。

## 核心概念

- **檔案系統範式（Filesystem Paradigm）**：用目錄和檔案的結構來組織上下文，取代傳統 RAG 的扁平向量儲存
- **分層載入（Tiered Context Loading）**：L0/L1/L2 三層結構，按需載入，大幅節省 token 消耗
- **目錄遞迴檢索（Directory Recursive Retrieval）**：結合目錄定位和語意搜尋，實現精確的上下文獲取
- **視覺化檢索軌跡（Visualized Retrieval Trajectory）**：可視化目錄檢索路徑，方便除錯和優化
- **自動對話管理（Automatic Session Management）**：自動壓縮對話內容，提取長期記憶

## 為什麼重要

- 解決 Agent 開發中上下文碎片化、token 消耗暴增、檢索效果差、除錯困難等核心痛點
- 比傳統 RAG 更有結構性，比純記憶系統更可觀察
- 讓 Agent 越用越聰明：自動迭代記憶，而非只是記錄互動

## 相關專案

- [[volcengine-OpenViking|OpenViking]] — 字節跳動開源的 Context Database，以檔案系統範式統一管理 Agent 上下文

## 相關概念

- [[RAG]] — 檢索增強生成，Context Database 的演進基礎
- [[AI Agent]] — Context Database 的服務對象

---

_此頁由 daily-llm-trending 自動維護_