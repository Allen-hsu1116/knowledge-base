---
title: "Auto Ontology"
slug: "NVIDIA-auto-ontology"
created: "2026-11-06"
updated: "2026-11-06"
stars: 7338
language: "zh-TW"
topics: ["Knowledge-Graph", "MCP", "AI-Agent"]
---

# Auto Ontology

> ⭐7.3k · 以企業 metadata 建立可認證的語義本體，為 Agent 的資料查詢提供定義、關係與溯源。

## 快速導航

- [[Knowledge-Graph]]
- [[MCP]]
- [[AI-Agent]]

## 是什麼

NVIDIA Auto Ontology 從企業資料庫 schema、欄位與樣本建立語義目錄，將業務術語、SQL attributes 與資料表關係放進共同上下文層。它補充既有 semantic model，不是單純把文件切塊存入向量庫。

其流程是先生成本體草稿，再由人員測試、修正與認證，最後讓 Agent 依術語檢索、組合 SQL、驗證與執行，回傳 SQL 及推導步驟。自動產生的定義不是天然可信，仍需真實問題與來源資料交叉檢查。

## 核心特色

- **業務語義建模**：術語連到欄位，SQL attributes 保存審核過的計算式，relationships 表示 joins。

- **人工認證循環**：在 UI／API 修正並認證定義，避免不同問題使用不一致的指標。

- **查詢可追溯**：答案附 SQL 與執行步驟，支援結果列、CSV 與圖表。

- **可回答性檢查**：MCP 提供 check_readiness 與 check_answerable，不應憑空補上不存在的資料。

- **標準整合**：提供 MCP、CLI、API，並可透過 Apache Ossie 匯入／匯出語義模型。

- **完整服務堆疊**：Next.js 前端、FastAPI backend／ingestion、Postgres＋pgvector；模型使用 NVIDIA NIM 端點。

## 怎麼用

### 安裝／準備

```bash
git clone https://github.com/NVIDIA/auto-ontology.git
cd auto-ontology
cp .env.example .env
# 完成下方設定與資料來源準備後再執行
docker compose up -d --build
```

### 使用入口

```bash
AUTO_ONTOLOGY_API_URL=http://localhost:3000 \
  uvx --from "git+https://github.com/NVIDIA/auto-ontology.git#subdirectory=mcp" auto-ontology-mcp
```

### 前提與限制

- 前提是 Docker Compose v2、uv 與 NVIDIA API key；.env 要設定模型 API key、AUTH_SECRET、APP_URL、資料庫連線及各服務新密碼。
- 官方 Wide World Importers 示範另需 auto-ontology-eval 的 seed 流程；其 --drop 會刪除資料，不能對既有業務庫直接照抄。
- 登入 http://localhost:3000 後在 Settings → Semantic Compilation 啟用編譯，確認 readiness 再提問。
- 3001／3002 必須留在私有網路：backend 信任前端傳入的身分 header，ingestion 端點本身沒有驗證。客戶端應走 3000 前端。
- MCP 工具是唯讀語義查詢入口，不代表整個管理系統沒有寫入能力。本次僅文件收錄，沒有啟動服務。

## 跟其他方案的關係

以下是依用途整理的選型比較，不代表本次執行了跨專案 benchmark。

| 方案 | 定位 | 選型界線 |
|---|---|---|
| Auto Ontology | 結構化資料語義與 SQL | 用術語、已審核計算式及關係約束查詢 |
| [[semantica-agi-semantica]] | 圖原生知識與推理基礎設施 | 同屬語義圖領域，部署與介面仍須各自評估 |
| 一般文件 RAG | 檢索文字片段回答問題 | 文件相關性不等於企業指標定義或 join 正確性 |

## 相關概念

← [[Knowledge-Graph]] · [[MCP]] · [[AI-Agent]]

## 來源

- [GitHub](https://github.com/NVIDIA/auto-ontology)
- [官方 README](https://github.com/NVIDIA/auto-ontology/blob/main/README.md)
- README 快照：`raw/2026-11-06-NVIDIA-auto-ontology.md`
- Metadata 快照：`raw/2026-11-06-NVIDIA-auto-ontology.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/NVIDIA/auto-ontology |
| Stars | 7,338（2026-11-06 快照） |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-11-06 |
