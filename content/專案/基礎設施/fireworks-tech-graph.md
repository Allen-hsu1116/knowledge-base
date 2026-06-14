---
title: fireworks-tech-graph
slug: fireworks-tech-graph
created: 2026-05-09
stars: '⭐5.7'
updated: 2026-05-09
language: zh-TW
---

# fireworks-tech-graph

> 用自然語言描述系統，秒級生成出版品質的 SVG + PNG 技術圖表。7 種視覺風格、14 種 UML 圖類型、AI/Agent 領域圖表模式。⭐5.7K

## 快速導航
- ⚡ **Prompt 工程** → [[Prompt-Engineering]]（自然語言描述生成圖表的 prompt 工程）
- 🎨 **開源設計** → [[open-design]]（開源設計工具）
- 🤖 **AI Agent** → [[AI-Agent]]（內建 AI/Agent 領域圖表模式）

## 是什麼

fireworks-tech-graph 是一個 Claude Code Skill（也可以獨立使用），讓你用自然語言描述一個系統架構，然後自動生成專業品質的技術圖表。它不是另一個 Mermaid 或 draw.io——它理解 AI/Agent 領域的特定模式（RAG pipeline、Agentic Search、Mem0 memory、Multi-Agent collaboration、Tool Call flow），並用語義化的形狀詞彙和箭頭系統來呈現。輸出 SVG 原始檔和 1920px PNG，可直接嵌入文件和簡報。

## 核心特色

- **7 種視覺風格**：Flat Icon、Dark Terminal、Blueprint、Notion Clean、Glassmorphism、Claude Official、OpenAI Official
- **14 種 UML 圖類型 + AI/Agent 領域圖**：Class、Component、Deployment、Package、Composite Structure、Object、Use Case、Activity、State Machine、Sequence、Communication、Timing、Interaction Overview、ER Diagram，加上 Architecture、Data Flow、Agent Architecture 等 AI 領域圖表
- **語義化形狀詞彙**：LLM = 雙邊框圓角矩形、Agent = 六邊形、Vector Store = 帶內環的圓柱體、Tool = 帶 ⚙ 的矩形
- **語義化箭頭系統**：實線（主要資料流）、虛線（寫入）、點線（非同步）、曲線（反饋/迴圈）
- **40+ 產品圖示**：內建 OpenAI、Anthropic、Pinecone、Weaviate、Kafka、PostgreSQL 等品牌色圖示
- **內建 AI/Agent 領域模式**：RAG Pipeline、Agentic Search、Mem0 Memory Layer、Multi-Agent、Tool Call Flow
- **SVG + PNG 雙輸出**：SVG 可編輯，1920px PNG 可直接嵌入
- **Swim Lane 分組**：自動為複雜架構加上泳道標籤

## 怎麼用

```bash
# 作為 Claude Code Skill 安裝
npx skills add yizhiyanhua-ai/fireworks-tech-graph

# 系統需求：rsvg-convert
brew install librsvg  # macOS
sudo apt install librsvg2-bin  # Ubuntu/Debian
```

使用自然語言描述即可生成圖表：
```
Draw a RAG pipeline flowchart
Generate an Agentic Search architecture diagram
Draw a microservices architecture diagram, style 2 (dark terminal)
Generate a Mem0 architecture diagram, output to ~/Desktop/
```

內建領域模式範例：
- **RAG Pipeline** → Query → Embed → VectorSearch → Retrieve → LLM → Response
- **Agentic RAG** → 加上 Agent 迴圈 + Tool use
- **Agentic Search** → Query → Planner → [Search/Calc/Code] → Synthesizer
- **Mem0 Memory Layer** → Input → Memory Manager → [VectorDB + GraphDB] → Context
- **Multi-Agent** → Orchestrator → [SubAgent×N] → Aggregator → Output
- **Tool Call Flow** → LLM → Tool Selector → Execution → Parser → LLM (loop)

## 跟其他方案的關係

| 專案 | 定位 | 輸入方式 | 輸出 | AI 領域 |
|------|------|---------|------|---------|
| fireworks-tech-graph | AI 技術圖表 | 自然語言 | SVG + PNG | ✅ 內建模式 |
| Mermaid | 圖表語法 | DSL 語法 | SVG | ❌ |
| draw.io | 圖表編輯器 | 拖拽 | 多格式 | ❌ |
| [[Prompt-Engineering]] | Prompt 工程 | — | — | 自然語言描述是 prompt engineering 的應用 |
| [[open-design]] | 開源設計 | — | — | 兩者都是開源視覺化工具 |

## 相關概念

← [[Prompt-Engineering]] · [[open-design]] · [[AI-Agent]]

## 來源

- raw/2026-05-09-fireworks-tech-graph.md

---

- **GitHub**: https://github.com/yizhiyanhua-ai/fireworks-tech-graph
- **Stars**: ⭐5,741
- **License**: MIT
- **收錄日期**: 2026-05-09