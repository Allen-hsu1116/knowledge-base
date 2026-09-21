---
title: "CS146S Modern Software Developer Assignments"
slug: "mihail911-modern-software-dev-assignments"
created: "2026-09-21"
updated: "2026-09-21"
stars: 4555
language: "Python"
topics: ["self-education", "Coding-Agent-CLI"]
---

# CS146S Modern Software Developer Assignments

> ⭐4.6k · Python · Stanford CS146S 的實作作業庫，練習 prompting 與 Agent 輔助軟體開發。

## 快速導航

- [[self-education]]
- [[Coding-Agent-CLI]]

## 是什麼

此 repository 收錄 The Modern Software Developer 課程的程式作業。根 README 指向 Stanford 2025 秋季課程，GitHub description 則提到 2026/2025；本頁依實際取得的文件描述內容，不把兩個年份自行合併成同一版課綱。

根目錄包含 week1 至 week8 的材料。week1 README 是 LLM Prompting Playground；week5 和 week7 則提供可執行的全端 starter，讓學生用 coding agents 完成具體任務，而非只閱讀工具清單。

這是學習資源，不是通用 Agent 框架或 production starter 保證。學習價值在於有既有程式、測試和品質工具可供檢驗，能把模型產出的修改放回真正工程流程中評估。

## 核心特色

### 1. Prompting 練習

week1 明確聚焦核心 LLM 提示技巧。

### 2. 全端任務場景

week5 使用 FastAPI、SQLite／SQLAlchemy 與靜態前端。

### 3. 工程驗證

week5、week7 提供 pytest，以及 black、ruff、pre-commit 相關流程。

### 4. 漸進式擴充

week7 增加時間戳、分頁排序、篩選和 PATCH endpoints。

### 5. 環境說明

根 README 指定 Python 3.12，透過 Conda 與 Poetry 安裝依賴。

## 怎麼用

### 安裝與起步

```bash
git clone https://github.com/mihail911/modern-software-dev-assignments.git
cd modern-software-dev-assignments
# 前置：已安裝 Conda 與 Poetry
conda create -n cs146s python=3.12 -y
conda activate cs146s
poetry install --no-interaction
```

### 建議操作流程

1. 先讀根 README，再選定某週的作業說明，不假設每週啟動方式完全相同。
2. 以 week5 為例，其 README 提供 make run、make test、make format 與 make lint。
3. 保存 Agent 的變更 diff，對照任務和測試結果，自行解釋每項修改再接受。

### 使用邊界

分週 README 含作者電腦的絕對路徑，使用時應換成自己的 clone 位置；week7 啟動說明文字與指令也有週次不一致。未取得明確授權檔，不應直接假設可任意商用。

本次僅查證文件並收錄，沒有安裝或執行上游專案。

## 跟其他方案的關係

以下為依官方文件整理的定位比較，不代表效能測試。

| 方案 | 著重面向 | 與本專案的差異 |
|---|---|---|
| 純影片課程 | 主要靠觀看和筆記 | 本 repo 提供可修改與測試的實作材料。 |
| Coding Agent 工具 | 提供開發操作能力 | 作業庫是練習場景，可用來檢查工具是否真的完成任務。 |
| 生產環境框架 | 重視正式部署及長期維護 | 此 repo 定位是教學作業，需自行評估安全與可維護性。 |

## 相關概念

← [[self-education]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub](https://github.com/mihail911/modern-software-dev-assignments)
- [官方 README](https://github.com/mihail911/modern-software-dev-assignments/blob/master/README.md)
- 原始快照：`raw/2026-09-21-mihail911-modern-software-dev-assignments.md`
- Metadata 快照：`raw/2026-09-21-mihail911-modern-software-dev-assignments-metadata.json`
- [官方 week1/README.md](https://github.com/mihail911/modern-software-dev-assignments/blob/master/week1/README.md)
- [官方 week5/README.md](https://github.com/mihail911/modern-software-dev-assignments/blob/master/week5/README.md)
- [官方 week7/README.md](https://github.com/mihail911/modern-software-dev-assignments/blob/master/week7/README.md)

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/mihail911/modern-software-dev-assignments |
| Stars | 4,555（2026-09-21 快照） |
| License | 未確認（metadata 無授權，檔案樹未見 LICENSE） |
| Language | Python |
| 收錄日期 | 2026-09-21 |
