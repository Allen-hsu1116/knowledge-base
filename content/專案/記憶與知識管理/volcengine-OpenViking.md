---
title: OpenViking
slug: volcengine-OpenViking
created: 2026-05-10
updated: 2026-05-10
stars: 23,398
language: zh-TW
topics: [Context Database, RAG, AI Agent]
---

# OpenViking

> ⭐23,398 · 開源 Context Database，專為 AI Agent 設計。以檔案系統範式統一管理記憶、資源和技能，告別傳統 RAG 的碎片化儲存。

## 快速導航

- 🗄️ **Context Database** → [[Context-Database]]
- 🔍 **RAG** → [[LLM]]
- 🤖 **AI Agent** → [[AI-Agent]]
- 📝 **概念頁** → [[openviking]]

## 是什麼

OpenViking 是字節跳動（火山引擎）開源的 Context Database，核心概念是用**檔案系統範式**取代傳統 RAG 的碎片化向量儲存。記憶、資源、技能全部用檔案系統組織，Agent 可以像操作檔案一樣管理上下文。

## 核心特色

- **檔案系統範式** — 統一管理記憶、資源和技能，告別碎片化向量儲存
- **三層 Context 載入** — L0（System，系統提示、角色設定，永遠載入）、L1（Session，當前對話、最近任務，按需載入）、L2（Long-term，歷史記憶、資源索引，搜尋載入），三層結構按需載入，大幅節省 token 消耗
- **目錄遞迴檢索** — 結合目錄定位 + 語意搜尋，先用目錄結構縮小範圍，再用語意搜尋精確匹配，支援視覺化檢索軌跡
- **自動 Session 管理** — 自動壓縮對話內容、提取長期記憶，讓 Agent 越用越聰明
- **多種 VLM Provider** — 火山引擎 Doubao、OpenAI、Codex VLM、Kimi Code

### 解決的問題

| 問題 | 傳統 RAG | OpenViking 解法 |
|------|----------|------------------|
| **碎片化 Context** | 記憶在程式碼、資源在向量庫、技能散落各處 | 檔案系統範式統一管理 |
| **Context 需求暴增** | 簡單截斷或壓縮，資訊遺失 | L0/L1/L2 三層結構，按需載入 |
| **檢索效果差** | 平面儲存，缺乏全局視角 | 目錄遞迴檢索 + 語意搜尋 |
| **不透明** | 隱式檢索鏈像黑盒 | 視覺化檢索軌跡 |
| **記憶迭代有限** | 只記錄使用者互動 | 自動壓縮對話、提取長期記憶 |

## 怎麼用

```bash
# Python Package
pip install openviking --upgrade --force-reinstall

# Rust CLI（選擇性）
curl -fsSL https://raw.githubusercontent.com/volcengine/OpenViking/main/crates/ov_cli/install.sh | bash

# 或從原始碼建置
cargo install --git https://github.com/volcengine/OpenViking ov_cli
```

初始化 VLM Provider：
```bash
# 初始化 OpenAI Provider
openviking-server init

# 使用火山引擎 Doubao
# 在環境變數設定 VOLCENGINE_API_KEY
```

## 跟其他方案的關係

OpenViking 是 [[Context-Database]] 的實作，也是傳統 [[LLM]] RAG 的替代方案。Context Database 是 [[AI-Agent]] 長期運行的基礎設施。詳細方法論對比見概念頁 [[openviking]]。

| 方案 | 定位 | 與 OpenViking 的關係 |
|------|------|----------------------|
| 傳統 RAG（向量資料庫） | 平面向量儲存 | OpenViking 用檔案系統範式取代碎片化向量儲存 |
| [[mempalace]] | 分層記憶系統 | 記憶管理互補，mempalace 側重記憶宮殿索引 |
| [[lsdefine-GenericAgent]] | 自演化 Agent | GenericAgent 的 L0-L4 分層記憶與 OpenViking 三層架構概念相似 |

## 相關概念

← [[Context-Database]] · [[LLM]] · [[AI-Agent]] · [[openviking]]

## 來源

- raw/volcengine-OpenViking.md

---

- **GitHub**: https://github.com/volcengine/OpenViking
- **Stars**: ⭐23,398
- **License**: Apache 2.0
- **收錄日期**: 2026-05-04

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/volcengine/OpenViking |
| **Stars** | ⭐23,398 |
| **收錄日期** | 2026-05-10 |
