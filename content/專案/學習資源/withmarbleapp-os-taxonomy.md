---
title: Marble Skill Taxonomy（os-taxonomy）
slug: withmarbleapp-os-taxonomy
created: 2026-10-20
updated: 2026-10-20
stars: 6125
language: JavaScript
topics: [Knowledge Graph, Education, Open Data]
---

# Marble Skill Taxonomy（os-taxonomy）

> ⭐6.1k · 以微主題、先備關係及課綱對齊組成的小學教育知識圖譜資料集，非 LLM 框架。

## 快速導航

- [[Knowledge-Graph]] — 以節點與有方向的先備關係組織學習路徑。
- [[RAG]] — 可作為教育檢索應用的外部資料來源，但不自帶 RAG 管線。

## 是什麼

Marble Skill Taxonomy 是 Marble 公開的初等教育結構化資料集。README 的 v1 快照列出 1,591 個微主題、3,225 條先備關係及 8 個學科，將「孩子學什麼」拆成可教學、可觀察學習證據的細小單位，而不是只有一份平面的課綱清單。

各主題附有描述、約略年齡區間、學習證據與課綱標準連結；先備關係則構成有向無環圖，標示 hard／soft 與理由。另有 176 個面向家長的領域摘要，以及涵蓋科學與數學的教學研究紀錄。這是資料集專案，GitHub 顯示 JavaScript 並不代表必須採用 JavaScript 才能讀取 JSON。

它與 AI 的關聯在於部分教學紀錄由 Agent 撰寫，以及可供教育應用作為結構化知識來源；並非模型、Agent runtime 或已完成的智慧家教。研究紀錄的歷史 verified／confidence 欄位不代表本次重新查證，也不能據此宣稱教學活動經過實證驗證。

## 核心特色

- **細粒度主題節點**：每個微主題包含穩定 ID、學科、領域、類型與學習證據。
- **有語意的先備邊**：`topicId` 依賴 `prerequisiteId`，附強弱標記及理由；反轉邊可找出後續可解鎖主題。
- **跨課綱對齊**：以識別碼連接 NGSS、Common Core、英國國家課綱等來源。
- **明確揭露研究缺口**：1,051 筆教學研究涵蓋科學與數學；其餘 540 個主題沒有研究紀錄。
- **可驗證的資料發行**：提供 JSON Schema、manifest 的 SHA-256 與驗證腳本。
- **純資料、低耦合**：使用 JSON 不需要部署服務；發布內容不含兒童／使用者個資，也不含語意 embeddings。

## 怎麼用

### 取得資料

無須安裝套件或模型；以下為下載與官方驗證步驟，收錄時未執行此專案的驗證腳本。

```bash
git clone https://github.com/withmarbleapp/os-taxonomy.git
cd os-taxonomy
# 如需執行官方驗證工具，先準備相容的 Node.js
node scripts/validate.mjs
node --test scripts/teaching-research.test.mjs
```

### 讀取主題與先備關係

以下依 README 示範，使用支援 JSON import attributes 的 JavaScript 執行環境：

```js
import topics from './data/topics.json' with { type: 'json' };
import deps from './data/dependencies.json' with { type: 'json' };

const byId = new Map(topics.topics.map(t => [t.id, t]));
const prereqs = deps.dependencies
  .filter(d => d.topicId === 'mt_N8CpN1EJrP')
  .map(d => byId.get(d.prerequisiteId).name);
console.log(prereqs);
```

教學研究透過 `topicId` join；應先檢查 coverage，不能假設每個主題都有活動建議。顯示 `assessmentPrompt` 前須替換或移除 `{{name}}` 佔位符。資料更新後，研究投影必須與 `topics.json` 的位元組雜湊保持一致。

### 使用邊界

資料庫結構與關係採 ODbL 1.0，Marble 原創文字採 CC BY-SA 4.0；第三方課綱仍適用各自的上游條款。商業使用不是免除署名與相同方式分享義務，應閱讀 LICENSE、LICENSE-CONTENT 與 PROVENANCE.md，而非只看 GitHub 的單一 license 欄位。

教學活動是研究啟發的提案，不是已驗證介入；實際教學前須審閱限制、review notes 與原始來源。README 亦明示這次發布未重新抓取或驗證來源。

## 跟其他方案的關係

以下為資料角色比較與編輯分析，不是效能測試或官方整合承諾。

| 方案類型 | 主要產出 | 與本專案的差異／互補 |
|---|---|---|
| 平面課綱清單 | 標準條目與學習目標 | 本專案額外提供微主題、先備邊與學習證據 |
| 通用知識圖譜工具 | 圖儲存、查詢或抽取能力 | 本專案提供特定領域資料，不是圖資料庫引擎 |
| 教育 RAG 應用 | 檢索資料並生成回答 | 可自行匯入本資料集，但仍需另建檢索、模型與評估 |
| 完整智慧家教產品 | 互動教學與學習者狀態 | 本專案不提供個人化產品 runtime，也未發布兒童資料 |

## 相關概念

← [[Knowledge-Graph]] · [[RAG]]

## 來源

- [GitHub：withmarbleapp/os-taxonomy](https://github.com/withmarbleapp/os-taxonomy)
- [官方 README](https://github.com/withmarbleapp/os-taxonomy/blob/main/README.md)
- [資料來源與授權說明](https://github.com/withmarbleapp/os-taxonomy/blob/main/PROVENANCE.md)
- 原始快照：`raw/2026-10-20-withmarbleapp-os-taxonomy.md`（完整 README 與 GitHub metadata）。
- 數量與限制以 2026-10-20 抓取的 README 為準；未獨立驗證整份資料集或教學有效性。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/withmarbleapp/os-taxonomy |
| Stars | 6,125（2026-10-20 快照） |
| License | ODbL 1.0（資料庫）；CC BY-SA 4.0（原創文字）；第三方課綱各自授權 |
| Language | JavaScript；主要交換資料為 JSON |
| 收錄日期 | 2026-10-20 |
