---
title: fireworks-tech-graph
date: 2026-05-09
stars: 5741
language: JavaScript
github: https://github.com/yizhiyanhua-ai/fireworks-tech-graph
created: 2026-04-10
tags: [diagram, visualization, claude-code, prompt-engineering]
---

# fireworks-tech-graph

用自然語言描述系統，秒級生成出版品質的 SVG + PNG 技術圖表。內建 7 種視覺風格、14 種 UML 圖類型、以及 AI/Agent 領域圖表模式（RAG、Agentic Search、Mem0、Multi-Agent、Tool Call）。

**相關概念**：[[Prompt-Engineering]] · [[open-design]] · [[AI-Agent]]

---

## 基本資訊

| 項目 | 內容 |
|---|---|
| GitHub | [yizhiyanhua-ai/fireworks-tech-graph](https://github.com/yizhiyanhua-ai/fireworks-tech-graph) |
| Stars | ⭐5.7k |
| Language | JavaScript |
| 建立日期 | 2026-04-10 |
| 收錄日期 | 2026-05-09 |
| 授權 | MIT |

## 快速導航

- [[Prompt-Engineering]] — prompt 工程技巧
- [[open-design]] — 開源設計工具
- [[AI-Agent]] — AI agent 架構

---

## 詳細簡介

fireworks-tech-graph 是一個 Claude Code Skill（也可以獨立使用），讓你用自然語言描述一個系統架構，然後自動生成專業品質的技術圖表。它不是另一個 Mermaid 或 draw.io——它理解 AI/Agent 領域的特定模式（RAG pipeline、Agentic Search、Mem0 memory、Multi-Agent collaboration、Tool Call flow），並用語義化的形狀詞彙（LLM = 雙邊框圓角矩形、Agent = 六邊形、Vector Store = 帶內環的圓柱體）和語義化的箭頭系統（實線 = 主要資料流、虛線 = 寫入、點線 = 非同步）來呈現。

它最初是作為 Claude Code 的 skill 發佈的（`npx skills add yizhiyanhua-ai/fireworks-tech-graph`），但也可以用於任何 LLM 的 prompt 流程中。輸出是純 SVG（可編輯）加上 `rsvg-convert` 轉換的 1920px PNG（適合嵌入文件和簡報）。

## 核心特色

### 7 種視覺風格

| # | 名稱 | 背景 | 適用場景 |
|---|---|---|---|
| 1 | Flat Icon | 白色 | 部落格、簡報、文件 |
| 2 | Dark Terminal | 深色 | GitHub README、開發文章 |
| 3 | Blueprint | 深藍 | 架構文件、工程圖 |
| 4 | Notion Clean | 白色極簡 | Notion、Confluence、wiki |
| 5 | Glassmorphism | 漸變深色 | 產品頁、Keynote |
| 6 | Claude Official | 暖米色 | Anthropic 風格文件 |
| 7 | OpenAI Official | 白色極簡 | OpenAI 風格文件 |

每種風格都有獨立的參考文件，包含精確的色票、SVG 模式和模板。風格不只是「換個顏色」——它們有各自的排版規則、字型選擇和裝飾元素。

### 14 種 UML 圖類型 + AI/Agent 領域圖

完整支援 UML 2.5 的 14 種圖類型：Class、Component、Deployment、Package、Composite Structure、Object、Use Case、Activity、State Machine、Sequence、Communication、Timing、Interaction Overview、ER Diagram。在此基礎上，還內建了 AI/Agent 領域的特定圖表模式：Architecture、Data Flow、Flowchart、Agent Architecture、Memory Architecture、Comparison、Mind Map。

### 語義化形狀詞彙

每個概念都有對應的形狀，跨所有風格保持一致：
- **LLM/Model**：雙邊框圓角矩形 + ⚡
- **Agent/Orchestrator**：六邊形
- **Vector Store**：帶內環的圓柱體
- **Tool/Function**：帶 ⚙ 的矩形
- **Memory (short-term)**：虛線邊框圓角矩形
- **Memory (long-term)**：實線圓柱體
- **Decision**：菱形

### 語義化箭頭系統

箭頭不只是連線——顏色和線型編碼了語義：
- **主要資料流**：2px 實線
- **控制/觸發**：1.5px 實線
- **記憶讀取**：1.5px 實線
- **記憶寫入**：1.5px 虛線 (5,3)
- **非同步/事件**：1.5px 點線 (4,2)
- **反饋/迴圈**：1.5px 曲線

### 40+ 產品圖示

內建 OpenAI、Anthropic、Pinecone、Weaviate、Kafka、PostgreSQL 等產品的品牌色圖示，讓架構圖更專業更易讀。

## 安裝方式

```bash
# 作為 Claude Code Skill 安裝
npx skills add yizhiyanhua-ai/fireworks-tech-graph

# 更新到最新版
npx skills add yizhiyanhua-ai/fireworks-tech-graph --force -g -y

# 系統需求：rsvg-convert
# macOS
brew install librsvg
# Ubuntu/Debian
sudo apt install librsvg2-bin
```

### 使用範例

```
Draw a RAG pipeline flowchart
Generate an Agentic Search architecture diagram
Draw a microservices architecture diagram, style 2 (dark terminal)
Draw a Mem0 architecture diagram, style 3 (blueprint)
```

## 技術棧

- **語言**: JavaScript
- **輸出格式**: SVG + PNG (via rsvg-convert)
- **整合方式**: Claude Code Skill / 獨立 prompt
- **UML 支援**: 完整 14 種圖類型

## 授權

MIT License

## 相關連結

- [GitHub](https://github.com/yizhiyanhua-ai/fireworks-tech-graph)
- [npm](https://www.npmjs.com/package/@yizhiyanhua-ai/fireworks-tech-graph)