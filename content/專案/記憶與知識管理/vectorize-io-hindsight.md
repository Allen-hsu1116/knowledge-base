---
title: "Hindsight"
slug: vectorize-io-hindsight
created: 2026-09-25
updated: 2026-09-25
stars: 27784
language: zh-TW
topics: ["AI-Agent", "llm-knowledge-base"]
---

# Hindsight

> ⭐27.8k · 以 retain、recall、reflect 與持續整合的知識頁建構 Agent 長期記憶。

## 快速導航

- [[AI-Agent]] — 技術與使用情境。
- [[llm-knowledge-base]] — 延伸閱讀與實務取捨。

## 是什麼

Hindsight 是 Vectorize 開源的 Agent 記憶系統，將對話與經驗轉成可查詢、可整合的持久記憶。它不只是把歷史訊息塞回 prompt，而是透過 LLM 擷取事實、時間、實體及關係，再建立檢索索引。

資料以 bank 組織，可按使用者、Agent 或專案區分。世界事實、Agent 經驗、由證據整合的 observations，以及回答固定問題的 mental models，形成從原始輸入到持續更新知識的不同層次。

README 的「學習」主要指記憶整合與知識更新，不能直接解讀成基礎模型權重訓練。官方提供 LongMemEval 與外部重現的說明，本頁未重跑評測，不把官方最佳成績當成所有應用的保證。

## 核心特色

- **三種操作**
  retain 寫入、recall 檢索、reflect 根據記憶推理；可由 SDK 或 REST 明確控制時機。

- **混合召回**
  並行使用語意向量、BM25、圖關聯及時間篩選，再經 RRF、cross-encoder reranking 與 token 預算裁剪。

- **證據化 observations**
  整合重複事實並保留引文與支持證據；新資訊可以強化或修正既有理解。

- **Mental models 與 knowledge pages**
  將固定問題的答案持久化並在背景更新，知識頁可投影成 Markdown。

- **多種部署與整合**
  提供 Docker、pip、Helm、Cloud、Python／TypeScript／Go 客戶端及每個 bank 的 MCP endpoint。

## 怎麼用

### 安裝與準備

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install hindsight-api hindsight-client
# 請先在環境設定 HINDSIGHT_API_LLM_API_KEY
hindsight-api
```

1. 預設 API 使用 localhost:8888；此處示範 pip 啟動，並不假設同時啟用 Docker 版本的 UI。
2. 建立明確的 bank_id，先寫入一段測試資訊，再分別驗證 recall 與 reflect。
3. 以自己的記憶問答集評估正確率、寫入成本、召回延遲及過時資訊處理。

### 最小操作入口

```python
from hindsight_client import Hindsight
client = Hindsight(base_url="http://localhost:8888")
client.retain(bank_id="demo", content="The project uses PostgreSQL")
print(client.recall(bank_id="demo", query="Which database is used?"))
```

### 限制與驗證

自架服務不等於所有資料都留在本機：若選雲端 LLM，擷取及推理可能送出記憶內容；正式環境仍需確認授權、認證、刪除與備份策略。

上述指令整理自官方文件，作為讀者操作入口；本次收錄只驗證文件與知識庫建置，未安裝候選專案。

## 跟其他方案的關係

以下是用途定位比較，不是效能排行榜。

| 方案 | 主要角色 | 適用情境 |
|---|---|---|
| Hindsight | 事實、經驗與持續整合的記憶 | 需要跨 session 知識更新的 Agent |
| 一般文件 RAG | 查詢既有文件片段 | 以文件依據回答為主 |
| Markdown 知識庫 | 直接可讀、可編輯的知識文件 | 重視版本控制與人工維護 |

## 相關概念

← [[AI-Agent]] · [[llm-knowledge-base]]

## 來源

- [GitHub](https://github.com/vectorize-io/hindsight)
- [README](https://github.com/vectorize-io/hindsight/blob/main/README.md)
- 原始快照：`raw/2026-09-25-vectorize-io-hindsight.md`
- Metadata：`outputs/2026-09-25-vectorize-io-hindsight-metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | [vectorize-io/hindsight](https://github.com/vectorize-io/hindsight) |
| Stars | 27,784（2026-09-25 快照） |
| License | MIT |
| Language | Python（GitHub 主語言；本文為繁體中文） |
| 收錄日期 | 2026-09-25 |
