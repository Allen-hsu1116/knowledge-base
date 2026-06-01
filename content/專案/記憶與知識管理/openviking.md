# OpenViking

> 開源 Context Database，用檔案系統範式統一管理 Agent 的記憶、資源和技能，支援分層載入和可視化檢索軌跡。（詳細參考頁）

## 快速導航
- ⚡ [[llm-knowledge-base]] · [[openclaw]] · [[cocoindex]]

## 是什麼

OpenViking 是開源的 Context Database，專為 AI Agent 設計。它用**檔案系統範式**統一管理 Agent 的記憶、資源和技能，取代傳統 RAG 的碎片化儲存。核心洞察：Agent 的上下文需求暴增，簡單截斷或壓縮會遺失資訊，傳統 RAG 檢索效果差且不可觀察。OpenViking 用目錄結構 + 語意搜尋的混合方式解決這些問題，並提供視覺化檢索軌跡方便除錯。

由字節跳動（Volcengine）開源，支援多種 VLM 提供者。

## 核心特色

- **L0/L1/L2 三層載入** — 按需載入，大幅節省 token。L0 是目錄索引（最小上下文），L1 是摘要，L2 是完整內容
- **目錄遞迴檢索** — 結合目錄定位和語意搜尋，精確取得上下文，比純向量搜尋更準確
- **可視化檢索軌跡** — 清楚觀察每次檢索的路徑，方便除錯和優化
- **自動會話管理** — 自動壓縮對話、提取長期記憶，無需手動管理上下文
- **檔案系統範式** — 用目錄結構統一管理記憶、資源、技能，告別碎片化儲存
- **解決四大痛點** — 上下文碎片化、需求暴增、檢索效果差、不可觀察
- **Rust + Python 技術棧** — 高效能核心（Rust CLI）+ 靈活擴展（Python SDK）
- **多 VLM 支援** — OpenAI、Volcengine Doubao、Kimi、GLM、OpenAI Codex 等

## 怎麼用

```bash
# Python 安裝
pip install openviking --upgrade --force-reinstall

# Rust CLI（可選）
curl -fsSL https://raw.githubusercontent.com/volcengine/OpenViking/main/crates/ov_cli/install.sh | bash

# 或從原始碼建置
cargo install --git https://github.com/volcengine/OpenViking ov_cli
```

OpenViking 以檔案系統方式管理 Agent 上下文：
1. 將你的知識（文件、技能、記憶）整理成目錄結構
2. OpenViking 自動建立 L0（目錄索引）、L1（摘要）、L2（完整內容）三層
3. Agent 檢索時先掃 L0 定位目錄，再按需載入 L1 或 L2
4. 透過視覺化介面觀察檢索軌跡，優化上下文策略

跟我們的知識庫方法論對應：我們的雙層結構（概念頁 + 專案頁）異曲同工——概念頁 ≈ L0/L1，專案頁 ≈ L2。

## 跟其他方案的關係

| 方法 | 策略 | 特色 | Token 效率 |
|------|------|------|-----------|
| 我們的知識庫 | 編譯式 | raw→wiki→lint，LLM 當編譯器 | 高（只載入需要的頁面） |
| OpenViking | 檔案系統式 | L0/L1/L2 分層，目錄+語意檢索 | 高（三層漸進載入） |
| [[mempalace]] | 宮殿索引式 | 原文逐字儲存 + 語意搜尋 | 中（需載入原文） |
| [[cocoindex]] | 增量索引式 | Delta-only 設計 | 中（增量更新） |
| 傳統 RAG | 向量搜尋 | 嵌入 + 餘弦相似度 | 低（碎片化、缺乏全局視角） |

OpenViking 的分層載入跟我們的雙層結構（概念頁+專案頁）異曲同工，都是為了解決「上下文太多時如何精準載入」的問題。差異在於 OpenViking 是通用 Context Database，而我們的知識庫是 LLM 編譯式方法論。OpenViking 由字節跳動開源，生態系與 Volcengine Doubao 等 VLM 深度整合。

## 相關概念
← [[llm-knowledge-base]] · [[openclaw]] · [[cocoindex]] · [[volcengine-OpenViking]]（專案頁）

## OpenViking vs 傳統 RAG

| 痛點 | 傳統 RAG | OpenViking |
|------|---------|------------|
| 上下文碎片化 | 記憶在程式碼、資源在向量庫、技能散落 | 檔案系統範式統一管理 |
| 上下文需求暴增 | 截斷或壓縮，遺失資訊 | L0/L1/L2 三層漸進載入 |
| 檢索效果差 | 平坦向量搜尋，缺乏全局視角 | 目錄定位 + 語意搜尋遞迴 |
| 不可觀察 | 檢索鏈路黑盒 | 可視化檢索軌跡 |
| 記憶無迭代 | 只記錄互動 | 自動壓縮、提取長期記憶 |

## 來源
- [原始資料](../raw/volcengine-OpenViking.md)
- [2026-05-03 素材](../raw/2026-05-03-openviking.md)

---

- **GitHub**: https://github.com/volcengine/OpenViking
- **License**: 開源
- **收錄日期**: 2026-05