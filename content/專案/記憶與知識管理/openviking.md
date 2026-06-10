# OpenViking

> 開源 Context Database，用檔案系統範式統一管理 Agent 的記憶、資源和技能，支援分層載入和可視化檢索軌跡。（詳細參考頁）

## 快速導航
- 📚 **記憶方法論** → [[llm-knowledge-base]]（分層載入 vs 編譯式 vs 索引式）
- 🦞 **檔案系統範式** → [[openclaw]]（MEMORY.md/memory/ 也是檔案系統範式）
- 🔄 **增量索引** → [[cocoindex]]（同樣是 delta-only 設計）

## 核心概念

OpenViking 用**檔案系統範式**取代傳統 RAG 的碎片化儲存：
- **L0/L1/L2 三層載入**：按需載入，大幅省 token
- **目錄遞迴檢索**：目錄定位 + 語意搜尋，精確取得上下文
- **可視化檢索軌跡**：觀察檢索路徑，方便除錯
- **自動會話管理**：壓縮對話、提取長期記憶

### 與我們方法的對比

| 方法 | 策略 | 特色 |
|------|------|------|
| 我們的知識庫 | 編譯式 | raw→wiki→lint，LLM 當編譯器 |
| OpenViking | 檔案系統式 | L0/L1/L2 分層，目錄+語意檢索 |
| [[mempalace]] | 宮殿索引式 | 原文逐字儲存 + 語意搜尋 |
| [[ocr-memory]] | 視覺壓縮式 | 圖片 + 視覺錨點檢索 |

OpenViking 的分層載入跟我們的雙層結構（概念頁+專案頁）異曲同工。

詳細的問題分析、技術規格和使用方式見專案頁 [[volcengine-OpenViking]]。

## 相關概念
← [[llm-knowledge-base]] · [[openclaw]] · [[cocoindex]] · [[volcengine-OpenViking]]（專案頁）

## 來源
- raw/2026-05-03-openviking.md