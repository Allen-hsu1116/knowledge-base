# OpenViking

> 字節跳動開源的 Context Database，以檔案系統範式統一管理 AI Agent 的記憶、資源和技能。

| 項目 | 資訊 |
|------|------|
| **GitHub** | [volcengine/OpenViking](https://github.com/volcengine/OpenViking) |
| **Stars** | ⭐23,398 |
| **Language** | Python / Rust |
| **建立日期** | 2026-01-05 |
| **收錄日期** | 2026-05-04 |

## 簡介

OpenViking 是一個專為 AI Agent 設計的開源 Context Database。它摒棄了傳統 RAG 的扁平向量儲存模式，創新地採用「檔案系統範式」來統一管理 Agent 所需的記憶、資源和技能的結構化組織。

## 主要特色

- **檔案系統管理範式**：統一管理記憶、資源和技能，解決碎片化問題
- **分層上下文載入**：L0/L1/L2 三層結構，按需載入，大幅節省 token
- **目錄遞迴檢索**：結合目錄定位和語意搜尋，精確獲取上下文
- **視覺化檢索軌跡**：可視化檢索路徑，方便除錯和優化
- **自動對話管理**：自動壓縮對話內容，提取長期記憶，讓 Agent 越用越聰明

## 安裝

```bash
pip install openviking --upgrade --force-reinstall
# Rust CLI（選用）
curl -fsSL https://raw.githubusercontent.com/volcengine/OpenViking/main/crates/ov_cli/install.sh | bash
```

## 相關概念

- [[Context-Database|Context Database]] — Context Database 的核心概念
- [[RAG]] — 檢索增強生成，OpenViking 是對傳統 RAG 的結構化升級
- [[AI Agent]] — AI Agent，OpenViking 的服務對象

---

_此頁由 daily-llm-trending 自動維護_