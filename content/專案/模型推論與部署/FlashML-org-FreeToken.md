---
title: "FreeToken"
slug: "FlashML-org-FreeToken"
created: "2026-11-02"
updated: "2026-11-02"
stars: 15409
language: "Python"
topics: ["模型推論與部署", "embedded-AI"]
---

# FreeToken

> ⭐15.4k · 面向消費級異質硬體，以 CPU／GPU 協同與快取管理執行大型 MoE 的推論引擎。

## 快速導航

- [[模型推論與部署]] — 延伸概念與相關實作。
- [[embedded-AI]] — 使用情境與設計取捨。

## 是什麼

FreeToken 將 GPU、CPU、主記憶體與互連視為共同的邊緣推論資源，主攻大型開放權重 MoE 模型的本地服務。它不是提供免費雲端 token 的服務，也不是新的模型權重。

其設計包含頻寬自適應 CPU／GPU 協同、expert cache 與動態顯存分配。README 宣稱可在個人硬體運行超大型模型，但本次僅整理來源，未執行模型或驗證速度；可行性仍取決於模型格式、RAM、GPU 與頻寬。

## 核心特色

- **異質協同**：頻寬自適應執行策略與雙緩衝 prefill 串流。

- **專家快取**：全域 LRU expert cache 與 FTW 權重格式。

- **語意錨點**：recurrent state 與 KV cache checkpoint 減少部分重算。

- **彈性顯存**：在 expert cache 與 KV 記憶體之間動態重分配。

- **工具整合**：提供 OpenAI／Anthropic 相容 API，面向 coding 與 tool-calling Agent。

## 怎麼用

### 安裝或取得專案

以下為文件化操作範例；本次收錄沒有在主機安裝或執行此專案。

```bash
uv venv
source .venv/bin/activate
uv pip install "freetoken[accel]"
```

### 使用流程

1. 先確認官方 install 與 models 文件的硬體及模型支援。
2. Windows／Linux 可使用官網桌面版本；README 列出 NVIDIA RTX 30／40／50 系列。
3. 依 Quick start 啟動服務，再以相容 API 接入客戶端；相容不代表所有功能完全一致。

### 限制與注意

- 本次未做效能基準，不能把上游速度宣稱當成本機結果。
- 不要從 NVIDIA 支援推論為 Apple Silicon 原生支援。

## 跟其他方案的關係

以下是定位比較，不是相同環境的效能測試。

| 方案 | 定位 | 選用注意 |
|---|---|---|
| FreeToken | 消費級硬體的 MoE 異質服務 | 需核對模型與硬體支援 |
| 一般 GPU 服務引擎 | GPU 推論與批次服務 | 適用情境與記憶體策略不同 |
| 雲端模型 API | 供應商管理硬體 | 成本、資料外送與維運取捨不同 |

## 相關概念

← [[模型推論與部署]] · [[embedded-AI]]

## 來源

- [GitHub：FlashML-org/FreeToken](https://github.com/FlashML-org/FreeToken)
- 原始 README：`raw/2026-11-02-FlashML-org-FreeToken.md`
- Metadata：`raw/2026-11-02-FlashML-org-FreeToken.metadata.json`
- [官方快速開始](https://github.com/FlashML-org/FreeToken/blob/main/docs/quickstart.md)

---

| 欄位 | 內容 |
|---|---|
| GitHub | [FlashML-org/FreeToken](https://github.com/FlashML-org/FreeToken) |
| Stars | 15,409（2026-11-02 快照） |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-11-02 |
