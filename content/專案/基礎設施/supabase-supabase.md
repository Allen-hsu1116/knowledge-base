---
title: Supabase
slug: supabase-supabase
created: 2026-07-04
updated: 2026-07-04
stars: 105480
language: TypeScript
topics: database, postgres, pgvector, ai, auth, realtime, storage, edge-functions
---

# Supabase

> ⭐105.5k · The Postgres development platform — 開源 Firebase 替代方案，內建 pgvector 向量搜尋，AI 應用一站式後端

## 快速導航

- 🧠 **向量資料庫** → [[向量資料庫]]
- 🛠 **RAG** → [[rag|RAG]]
- 📦 **記憶與知識管理** → [[Mintplex-Labs-anything-llm|AnythingLLM]]
- 🏗 **基礎設施** → [[logto-io-logto|Logto]]

## 是什麼

Supabase 是一個以 PostgreSQL 為核心的開源後端開發平台，定位為 Firebase 的開源替代方案。它把資料庫、認證、即時訂閱、儲存、邊緣函數等功能整合到一個平台中，讓開發者可以快速搭建 Web、行動和 AI 應用的後端。

與 Firebase 不同的是，Supabase 堅持使用企業級開源工具（PostgreSQL、PostgREST、GoTrue 等），不鎖定供應商。你可以用託管版，也可以完全自架。近年在 AI 領域也大力佈局，透過 pgvector 擴充提供原生向量搜尋能力，成為 RAG 應用的熱門後端選擇。

## 核心特色

- **PostgreSQL 原生**：不是 NoSQL 專用資料庫，而是完整的 PostgreSQL，支援 SQL、交易、Row Level Security、觸發器、預存函數等全部功能
- **pgvector 向量搜尋**：內建 pgvector 擴充，可以直接在 Postgres 中儲存和搜尋向量 embedding，做相似度匹配和 RAG 檢索
- **即時訂閱（Realtime）**：透過 Elixir 伺服器監聯 PostgreSQL 的複製功能，把資料變更即時透過 WebSocket 推送給前端
- **自動生成 API**：PostgREST 自動把資料表變成 RESTful API，pg_graphql 則自動產生 GraphQL API，零程式碼
- **Edge Functions**：在全球邊緣節點執行的 Deno 函數，用於自訂邏輯和 Webhook 處理
- **多語言 SDK**：官方支援 JavaScript/TypeScript、Flutter、Swift、Python，社群支援 C#、Go、Java、Kotlin、Rust 等 10+ 語言

## 怎麼用

### 託管版（最快開始）

1. 到 https://supabase.com/dashboard 註冊
2. 建立新專案，取得 PostgreSQL 資料庫和 API keys
3. 安裝 SDK 開始開發

```bash
# JavaScript/TypeScript
npm install @supabase/supabase-js
```

```typescript
import { createClient } from '@supabase/supabase-js'

const supabase = createClient(
  'https://YOUR_PROJECT.supabase.co',
  'YOUR_ANON_KEY'
)

// 查詢資料
const { data, error } = await supabase
  .from('countries')
  .select()

// 向量搜尋（pgvector）
const { data } = await supabase.rpc('match_documents', {
  query_embedding: embedding,
  match_count: 10
})
```

### 自架（Docker）

```bash
# 使用 Supabase CLI 本地開發
npm install -g supabase
supabase init
supabase start
```

### Python SDK

```bash
pip install supabase
```

```python
from supabase import create_client

supabase = create_client(
    "https://YOUR_PROJECT.supabase.co",
    "YOUR_ANON_KEY"
)

data = supabase.table("countries").select("*").execute()
```

## 跟其他方案的關係

| 面向 | Supabase | Firebase | MongoDB Atlas | Appwrite |
|------|----------|----------|---------------|----------|
| 資料庫 | PostgreSQL | Firestore (NoSQL) | MongoDB | MariaDB |
| 向量搜尋 | pgvector 原生 | 不支援 | Atlas Vector | 不支援 |
| 開源 | ✅ Apache-2.0 | ❌ | ❌ (部分) | ✅ BSD-3 |
| 自架 | ✅ | ❌ | ❌ | ✅ |
| 即時訂閱 | ✅ WebSocket | ✅ | ❌ | ✅ |
| 認證 | ✅ GoTrue | ✅ | ✅ | ✅ |

Supabase 與 [[Mintplex-Labs-anything-llm|AnythingLLM]] 和 [[ragflow|RAGFlow]] 等專案互補：Supabase 提供資料層和向量搜尋基礎設施，這些專案則在上層建構 RAG 應用。與專用向量資料庫 [[Milvus]]、[[Qdrant]]、[[Chroma]] 相比，Supabase 的優勢在於把向量搜尋整合在 PostgreSQL 內，不需要額外的資料庫元件，但極端規模下的向量搜尋效能可能不如專用方案。

← [[向量資料庫]] · [[rag|RAG]] · [[Mintplex-Labs-anything-llm|AnythingLLM]]

## 來源

- [GitHub: supabase/supabase](https://github.com/supabase/supabase)
- [官方網站](https://supabase.com)
- [AI + Vector 文件](https://supabase.com/docs/guides/ai)
- raw/2026-07-04-supabase.md

---

| 欄位 | 值 |
|------|------|
| **GitHub** | https://github.com/supabase/supabase |
| **Stars** | ⭐105,480 |
| **License** | Apache-2.0 |
| **Language** | TypeScript |
| **收錄日期** | 2026-07-04 |