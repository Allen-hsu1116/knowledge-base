---
title: Semantica
slug: semantica-agi-semantica
created: 2026-08-12
updated: 2026-08-12
stars: 4892
language: Python
topics: [Knowledge Graph, Context Graph, Decision Intelligence, Provenance, AI Governance, GraphRAG, Ontology, Reasoning]
---

# Semantica

> ⭐4.9k · Graph-Native Infrastructure for Context and Accountable AI Systems——開源版 Palantir，為 AI Agent 提供可解釋、可追溯、可稽核的圖原生基礎設施

## 快速導航

- 🧠 **知識圖譜** → [[Knowledge-Graph]]
- 🔍 **Context Engineering** → [[context-engineering-basics]]
- 📊 **GraphRAG** → [[GraphRAG]]
- 🔗 **MCP** → [[MCP]]

## 是什麼

Semantica 是一個圖原生（Graph-Native）的 AI 基礎設施層，定位為「開源版 Palantir for AI Agents」。它不取代你的 LLM、向量庫或 Agent 框架，而是坐在它們底下，提供確定性的圖建構、推理和溯源能力——不需要 LLM 就能完成知識圖譜建構和因果推理。

在受監管的領域（金融、醫療、法律、政府），AI Agent 做的每個決策都必須能回答「為什麼這樣做？」的問題。Semantica 把每個決策變成圖中的一等節點，附帶完整的因果鏈、溯源資訊和合規規則，可匯出為 W3C PROV-O 格式提交給監管機構。

核心流程是：攝入企業資料 → 解析和正規化 → 實體感知分塊 → NER/關係/事件抽取 → 衝突偵測和去重 → 知識圖譜建構 → 推理/溯源/決策層 → 多後端圖儲存 → 視覺化/REST/MCP/CLI 輸出。整個管線都是可獨立使用的模組。

## 核心特色

- **Context Graph**：結構化、可查詢的圖，記錄 Agent 知道和決策的一切。圖遍歷找到向量嵌入遺漏的連結，每個節點都帶溯源，衝突被偵測而非靜默覆蓋，支援時間點快照
- **Decision Intelligence**：每個決策是一等圖節點，有完整生命週期。`record_decision()` 建立永久結構化記錄，`trace_decision_chain()` 追蹤因果祖先鏈，`find_similar_decisions()` 做語意先例搜尋，`analyze_decision_impact()` 分析下游影響
- **確定性推理引擎**：前向鏈推、Rete network、Datalog、SPARQL，推理路徑完全可解釋，不是黑盒
- **AI 治理與本體管理**：SHACL 約束、衝突偵測、合規規則、OWL 生成、SKOS 詞彙管理，含視覺化編輯器
- **W3C PROV-O 溯源**：每個事實都帶完整溯源，稽核日誌可匯出為 JSON/CSV/RDF，符合監管提交格式
- **Polyglot 圖儲存**：同時支援 RDF（Oxigraph、Blazegraph、Jena、RDF4J）和 Labeled Property Graph（Neo4j、FalkorDB、Apache AGE、AWS Neptune），加上向量庫，全部可替換不需改程式碼
- **企業資料平台連接器**：原生支援 Databricks（Unity Catalog + Delta Lake）和 Snowflake，lakehouse 裡的表直接變成圖節點
- **知識管線**：多來源攝入、實體感知分塊、NER/關係/事件抽取、語意去重、溯源保留合併

## 怎麼用

```bash
# 安裝
pip install semantica

# 驗證安裝
semantica doctor
# Python 3.11.9         pass
# semantica 0.6.5       pass
# faiss vector store    pass
# Config file           pass    ~/.semantica/config.yaml
```

```python
from semantica.context import ContextGraph

graph = ContextGraph(advanced_analytics=True)

# 記錄決策——成為可查詢、可稽核的知識節點
decision_id = graph.record_decision(
    category="credit_application",
    scenario="Personal loan, $85k income, 31% DTI",
    reasoning="Income meets threshold; employment stable",
    outcome="approved",
    confidence=0.94,
)

# 追蹤因果鏈、找相似先例、分析影響
chain = graph.trace_decision_chain(decision_id)
similar = graph.find_similar_decisions("personal loan approval", max_results=5)
impact = graph.analyze_decision_impact(decision_id)
compliant = graph.check_decision_rules({"category": "credit_application"})
```

## 跟其他方案的關係

- **Vector DB + RAG**：用嵌入相似度做召回，不存決策歷史，無溯源，衝突靜默覆蓋
- **Plain LLM Memory**：靠 token window，無圖結構，無推理，無合規匯出
- **Semantica**：圖遍歷 + 語意搜尋做召回，決策是一等物件，W3C PROV-O 溯源，確定性推理，衝突偵測，時間旅行快照，多 Agent 共享智慧層

Semantica 補充而非取代現有技術棧。保留你的 LLM、向量庫和 Agent 框架，Semantica 在上面加上決策記錄、因果推理、溯源、本體治理、衝突偵測和稽核日誌。推理引擎和 KG 建構完全確定性，不需 LLM。

## 相關概念

← [[Knowledge-Graph]] · [[context-engineering-basics]] · [[GraphRAG]] · [[rag]] · [[MCP]]

## 來源

- GitHub: <https://github.com/semantica-agi/semantica>
- 官網: <https://getsemantica.ai>
- 文件: <https://docs.getsemantica.ai>
- 原始 README: `raw/2026-08-12-semantica-agi-semantica.md`

---

| 欄位 | 值 |
|------|-----|
| GitHub | semantica-agi/semantica |
| Stars | ⭐4.9k |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-08-12 |