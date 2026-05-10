---
title: ParseBench
created: 2026-05-09
---

# ParseBench — AI Agent 用的文件解析基準測試

> 用 ~2,000 頁真實企業文件評測文件解析工具，看它們轉出來的結構化輸出是否可靠到能讓 AI Agent 直接使用。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [run-llama/ParseBench](https://github.com/run-llama/ParseBench) |
| Stars | ⭐468 |
| Language | Python |
| 建立日期 | 2026-04-10 |
| 收錄日期 | 2026-05-09 |
| 授權 | Apache-2.0 |

## 快速導航

- [[document-parsing]] — 文件解析相關概念
- [[AI-Agent]] — AI Agent 框架與工具
- [[LLM]] — 大型語言模型相關

## 簡介

ParseBench 是由 LlamaIndex 團隊（run-llama）開發的文件解析基準測試框架。它的核心理念是：文件解析工具的好壞不該只用「看起來像不像原文」來衡量，而應該看解析結果是否保留了 AI Agent 在自主決策時所需的結構與語義。

在生產環境中，AI Agent 依賴文件解析輸出來做出判斷——如果表格合併格跑掉、圖表數值不對、或格式語義遺失，Agent 的每一步推理都會受影響。ParseBench 把這些真實失敗模式拆解成五個可量測的維度，讓開發者能精準定位問題。

## 核心特色

### 五維度評測體系

ParseBench 不是給一個籠統分數，而是把文件解析能力拆成五個獨立維度，每個都對應一種真實會讓 Agent 出錯的失敗模式：

- **Tables**：合併格與多層表頭的結構保真度。一個錯位的表頭意味著 Agent 會讀到錯誤的欄位。
- **Charts**：從長條圖、折線圖、圓餅圖等圖表中精確提取資料點、序列與軸標籤。多數解析器只能回傳原始文字，Agent 根本無法提取精確數值。
- **Content Faithfulness**：檢測遺漏、幻覺與閱讀順序錯誤。如果 Agent 的上下文不完整或包含虛構內容，後續每個決策都會受影響。
- **Semantic Formatting**：保留帶有語義的格式——刪除線（表示已過時的內容）、上標/下標（註腳、公式）、粗體（定義詞、關鍵值）、標題層級。一個被刪除線劃掉的價格不是現在的價格。
- **Visual Grounding**：將每個提取出的元素追溯回頁面上的原始位置。這在受監管的工作流程中是必須的——每個值都必須可追溯。

### 90+ 解析管線開箱即用

內建 90+ 管線（pipeline）配置，涵蓋主流 VLM（GPT-5、Gemini 3、Claude Opus 4.6）、雲端 API（Azure DI、AWS Textract、Google DocAI）、開源工具（Docling、Qwen 3 VL）以及商業方案（Reducto、Extend、LandingAI）。

### 全自動化評測流程

一條指令完成推理 + 評估 + 報告生成，支援並行處理、維度篩選、以及跳過推理只做評估等進階用法。所有評估都是確定性的規則比對，不使用 LLM-as-judge。

### 互動式報告與排行榜

產生互動式 HTML 報告，支援逐案例下鑽、雙管線並排比較、跨工具排行榜。另提供 CSV、Markdown、JSON 等格式匯出。

## 安裝方式

```bash
# 安裝依賴
uv sync --extra runners

# 快速測試（每類別 3 個檔案）
uv run parse-bench run llamaparse_agentic --test

# 完整基準測試
uv run parse-bench run llamaparse_agentic

# 查看互動式報告
uv run parse-bench serve llamaparse_agentic
```

需要在專案根目錄建立 `.env` 檔案，填入欲評測工具的 API Key（如 `LLAMA_CLOUD_API_KEY`、`OPENAI_API_KEY` 等）。

## 技術棧

- **語言**：Python
- **套件管理**：uv
- **資料集來源**：HuggingFace（llamaindex/ParseBench）
- **評估方式**：確定性規則比對（GriTS + TableRecordMatch、ChartDataPointMatch、Content Faithfulness Score 等）
- **CLI 框架**：Google Fire
- **報告輸出**：HTML、CSV、Markdown、JSON

## 相關連結

- [ParseBench 官網](https://parsebench.ai)
- [論文：arXiv:2604.08538](https://arxiv.org/abs/2604.08538)
- [HuggingFace 資料集](https://huggingface.co/datasets/llamaindex/ParseBench)
- [GitHub](https://github.com/run-llama/ParseBench)