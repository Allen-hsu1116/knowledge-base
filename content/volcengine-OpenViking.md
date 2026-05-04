# OpenViking

> 開源 Context Database，專為 AI Agent 設計。以檔案系統範式統一管理記憶、資源和技能，告別傳統 RAG 的碎片化儲存。

| 項目 | 資訊 |
|------|------|
| **GitHub** | [volcengine/OpenViking](https://github.com/volcengine/OpenViking) |
| **Stars** | ⭐23,398 |
| **Language** | Python / Rust |
| **建立日期** | 2026-01-05 |
| **收錄日期** | 2026-05-04 |

## 快速導航

- 🗄️ **Context Database** → [[Context-Database]]（OpenViking 就是 Context Database 的實作）
- 🔍 **RAG** → [[LLM]]（OpenViking 是傳統 RAG 的替代方案）
- 🤖 **AI Agent** → [[AI-Agent]]（Context Database 是 Agent 長期運行的基礎設施）
- 📝 **概念頁** → [[openviking]]（OpenViking 的概念分析與方法論對比）

## 簡介

OpenViking 是字節跳動（火山引擎）開源的 Context Database，核心概念是用**檔案系統範式**取代傳統 RAG 的碎片化向量儲存。記憶、資源、技能全部用檔案系統組織，Agent 可以像操作檔案一樣管理上下文。

## 解決的問題

| 問題 | 傳統 RAG | OpenViking 解法 |
|------|----------|------------------|
| **碎片化 Context** | 記憶在程式碼、資源在向量庫、技能散落各處 | 檔案系統範式統一管理 |
| **Context 需求暴增** | 簡單截斷或壓縮，資訊遺失 | L0/L1/L2 三層結構，按需載入 |
| **檢索效果差** | 平面儲存，缺乏全局視角 | 目錄遞迴檢索 + 語意搜尋 |
| **不透明** | 隱式檢索鏈像黑盒 | 視覺化檢索軌跡 |
| **記憶迭代有限** | 只記錄使用者互動 | 自動壓縮對話、提取長期記憶 |

## 核心架構

### 三層 Context 載入

```
L0 (System)     → 系統提示、角色設定 — 永遠載入
L1 (Session)    → 當前對話、最近任務 — 按需載入
L2 (Long-term)  → 歷史記憶、資源索引 — 搜尋載入
```

### 目錄遞迴檢索

不只是向量搜尋，而是結合**目錄定位** + **語意搜尋**：
- 先用目錄結構縮小範圍
- 再用語意搜尋精確匹配
- 支援視覺化檢索軌跡，可追蹤每次檢索的路徑

### 自動 Session 管理

- 自動壓縮對話內容
- 提取長期記憶
- 越用越聰明

## 安裝

```bash
# Python Package
pip install openviking --upgrade --force-reinstall

# Rust CLI（選擇性）
curl -fsSL https://raw.githubusercontent.com/volcengine/OpenViking/main/crates/ov_cli/install.sh | bash

# 或從原始碼建置
cargo install --git https://github.com/volcengine/OpenViking ov_cli
```

## 支援的 VLM Provider

| Provider | 說明 | 設定 |
|----------|------|------|
| `volcengine` | 火山引擎 Doubao 模型 | 火山引擎控制台 |
| `openai` | OpenAI 官方 API | OpenAI 平台 |
| `openai-codex` | Codex VLM | `openviking-server init` |
| `kimi` | Kimi Code | `openviking-server init` |

## 技術棧

- **Python**：主要 API 和服務端
- **Rust**：高效能 CLI（`ov_cli`）
- **支援多種 VLM Provider**：火山引擎、OpenAI、Codex、Kimi

## 授權

Apache 2.0

## 相關連結

- [GitHub](https://github.com/volcengine/OpenViking)