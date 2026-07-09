---
title: TencentDB Agent Memory
slug: TencentCloud-TencentDB-Agent-Memory
created: 2026-07-09
updated: 2026-07-09
stars: 7646
language: TypeScript
topics: [agent, ai-agent, embedding, llm, local-first, long-term-memory, memory, openclaw-plugin, vector-search]
---

# TencentDB Agent Memory

> ⭐7.6k · AI Agent 的全本地長期記憶系統，4 層漸進式管線，零外部 API 依賴，符號化短期記憶 + 分層長期記憶

## 快速導航

- 🧠 **AI Agent 記憶** → [[mem0ai-mem0|Mem0]]（通用記憶層）· [[rohitg00-agentmemory|agentmemory]]（Coding Agent 記憶）
- 🔧 **MCP 協議** → [[MCP]]（Agent 連接外部工具的標準協議）
- 📚 **RAG** → [[rag]]（記憶系統的檢索基礎）
- 🗃️ **向量資料庫** → [[向量資料庫]]（本地 SQLite + sqlite-vec 後端）

## 是什麼

TencentDB Agent Memory 是騰訊雲推出的 AI Agent 記憶系統，標榜「全本地、零外部 API 依賴」。它解決了 Agent 在長任務中 token 暴漲和跨 session 記憶斷裂的問題，核心架構建立在兩大支柱上：**記憶分層**（Memory Layering）和**符號化記憶**（Symbolic Memory）。

記憶分層採用漸進式揭露策略：底層存原始工具輸出和中間層步驟摘要，頂層只保留輕量 Mermaid 畫布。Agent 平時只需關注頂層結構，需要細節時才透過 `node_id` 向下鑽取。長期記憶則建立了語意金字塔：L0 對話 → L1 原子事實 → L2 場景 → L3 人格，用分層壓縮取代扁平向量堆疊。

符號化記憶把冗長的工具日誌（搜尋結果、程式碼、錯誤堆疊）卸載到外部檔案，只留高密度的 Mermaid 符號圖在 context 中。這樣做在 SWE-bench 上節省 33% token、WideSearch 上節省 61% token，同時提升任務成功率 9-52%。

## 核心特色

- **4 層長期記憶金字塔** — L0 對話 → L1 原子 → L2 場景 → L3 人格，用分層壓縮取代扁平向量堆疊。人格層帶日常偏好，細節才鑽取到原子層
- **符號化短期記憶** — Mermaid 畫布編碼任務狀態轉移，高密度語法 LLM 可解析、人類可讀。工具日誌全卸載到外部檔案，只留 node_id 追蹤
- **61% Token 節省** — WideSearch benchmark 上 token 從 221M 降到 85M，SWE-bench 從 3474M 降到 2375M，同時成功率提升 10-52%
- **零外部 API 依賴** — 預設 SQLite + sqlite-vec 後端，全本地運行，不需任何雲端 API
- **全可追溯、無損恢復** — 從頂層符號（人格/畫布）→ 中層索引（場景/jsonl）→ 底層原文（L0 對話/refs），保證完整的向下鑽取路徑
- **OpenClaw + Hermes 整合** — 作為 OpenClaw 插件安裝，也支援 Hermes Agent Gateway

## 怎麼用

**安裝（OpenClaw 插件）：**

```bash
openclaw plugins install @tencentdb-agent-memory/memory-tencentdb
openclaw gateway restart
```

**零配置啟用：**

```jsonc
// ~/.openclaw/openclaw.json
{
  "memory-tencentdb": {
    "enabled": true
  }
}
```

預設使用本地 `SQLite + sqlite-vec` 後端，啟用後自動處理對話捕捉、記憶提取、場景聚合、人格生成和下次回合前的召回。

**啟用短期壓縮（可選，需 v0.3.4+）：**

```jsonc
{
  "memory-tencentdb": {
    "config": {
      "offload": {
        "enabled": true
      }
    }
  }
}
```

還需在 plugin config 中註冊 slot，並執行 runtime patch 腳本：

```bash
bash scripts/openclaw-after-tool-call-messages.patch.sh
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 記憶架構 | Token 壓縮 | 本地優先 | 整合 |
|------|-------|------|---------|-----------|---------|------|
| **TencentDB Agent Memory** | ⭐7.6k | Agent 記憶 | 4 層金字塔 + Mermaid 符號 | 61% 節省 | ✅ SQLite | OpenClaw, Hermes |
| [[mem0ai-mem0\|Mem0]] | ⭐58k | 通用記憶層 | User/Session/Agent 三層 | 7K tokens/檢索 | ✅ 自架 | SDK/CLI/Skills |
| [[rohitg00-agentmemory\|agentmemory]] | ⭐15k | Coding Agent 記憶 | BM25+Vector+Graph | 92% 節省 | ✅ | MCP, 15+ Agent |
| [[supermemoryai-supermemory\|Supermemory]] | ⭐23k | AI 記憶引擎 | 向量+記憶+RAG | — | ✅ | MCP |
| [[topoteretes-cognee\|Cognee]] | ⭐18.6k | AI 記憶平台 | 知識圖譜+向量 | — | ✅ | SDK |

TencentDB Agent Memory 的獨特之處在於用 Mermaid 符號化記憶做短期 token 壓縮，同時用 4 層金字塔做長期記憶分層。Mem0 走通用記憶層路線，agentmemory 專注 Coding Agent 的混合搜尋，TencentDB 則同時兼顧短期效率與長期結構化。

## 相關概念

← [[mem0ai-mem0|Mem0]] · [[rohitg00-agentmemory|agentmemory]] · [[MCP]] · [[rag]] · [[向量資料庫]]

## 來源

- GitHub: <https://github.com/TencentCloud/TencentDB-Agent-Memory>
- 原始 README: `raw/2026-07-09-tencentdb-agent-memory.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [TencentCloud/TencentDB-Agent-Memory](https://github.com/TencentCloud/TencentDB-Agent-Memory) |
| Stars | ⭐7,646 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-07-09 |