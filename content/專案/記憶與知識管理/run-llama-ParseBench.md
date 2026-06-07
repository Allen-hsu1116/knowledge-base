---



title: ParseBench
slug: run-llama-ParseBench
created: 2026-05-09
stars: '⭐468'



updated: 2026-05-09
language: zh-TW
topics: []
---

# ParseBench

> 用 ~2,000 頁真實企業文件評測文件解析工具，看它們轉出來的結構化輸出是否可靠到能讓 AI Agent 直接使用。⭐468

## 快速導航
- 🔍 **文件解析** → [[document-parsing]]（ParseBench 是文件解析的基準測試框架）
- 🤖 **AI Agent** → [[AI-Agent]]（解析結果是 AI Agent 自主決策的基礎）
- 🧠 **LLM** → [[LLM]]（大型語言模型相關）

## 是什麼

ParseBench 是由 LlamaIndex 團隊（run-llama）開發的文件解析基準測試框架。核心理念是：文件解析工具的好壞不該只用「看起來像不像原文」來衡量，而應該看解析結果是否保留了 AI Agent 在自主決策時所需的結構與語義。

ParseBench 把文件解析能力拆成五個獨立維度，每個都對應一種真實會讓 Agent 出錯的失敗模式：Tables、Charts、Content Faithfulness、Semantic Formatting、Visual Grounding。

## 核心特色

- **五維度評測體系**：Tables（合併格保真度）、Charts（精確提取資料點）、Content Faithfulness（遺漏/幻覺/閱讀順序）、Semantic Formatting（刪除線/上標下標/粗體/標題層級）、Visual Grounding（追溯回頁面原始位置）
- **90+ 解析管線開箱即用**：涵蓋 GPT-5、Gemini 3、Claude Opus 4.6、Azure DI、AWS Textract、Docling、Qwen 3 VL 等
- **全自動化評測流程**：一條指令完成推理 + 評估 + 報告生成，所有評估都是確定性的規則比對（不用 LLM-as-judge）
- **互動式報告與排行榜**：HTML 報告支援逐案例下鑽、雙管線並排比較、跨工具排行榜
- **~2,000 頁真實企業文件**：來自保險、金融、政府等領域，非合成資料

## 怎麼用

```bash
# 安裝依賴
uv sync --extra runners

# 快速測試（少量文件）
uv run parse-bench run llamaparse_agentic --test

# 完整基準測試
uv run parse-bench run llamaparse_agentic

# 評測多個管線
uv run parse-bench run gpt5 docling azure_di

# 查看互動式報告
uv run parse-bench serve llamaparse_agentic
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[document-parsing]] | 文件解析概念 | ParseBench 是評測文件解析工具的基準 |
| [[llama-index|LlamaIndex]] | RAG 框架 | ParseBench 由 LlamaIndex 團隊開發 |
| [[docling]] | 文件解析 | Docling 是 ParseBench 評測的管線之一 |
| [[datalab-to-chandra]] | 高精度 OCR | Chandra 可作為 ParseBench 的被評測對象 |
| [[aiptimizer-TurboOCR]] | GPU 加速 OCR | TurboOCR 的輸出品質可用 ParseBench 評測 |

## 相關概念

← [[document-parsing]] · [[AI-Agent]] · [[LLM]]

## 來源

- raw/2026-05-09-run-llama-ParseBench.md

---

- **GitHub**: https://github.com/run-llama/ParseBench
- **Stars**: ⭐468
- **License**: Apache-2.0
- **收錄日期**: 2026-05-09