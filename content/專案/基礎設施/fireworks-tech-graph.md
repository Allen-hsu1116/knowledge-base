---
title: fireworks-tech-graph
created: 2026-05-09
---

# fireworks-tech-graph

> 用自然語言描述系統，秒級生成出版品質的 SVG + PNG 技術圖表。7 種視覺風格、14 種 UML 圖類型、AI/Agent 領域圖表模式。⭐5.7K

## 快速導航
- ⚡ **Prompt 工程** → [[Prompt-Engineering]]（自然語言描述生成圖表的 prompt 工程）
- 🎨 **開源設計** → [[open-design]]（開源設計工具）
- 🤖 **AI Agent** → [[AI-Agent]]（內建 AI/Agent 領域圖表模式）

## 是什麼

fireworks-tech-graph 是一個 Claude Code Skill（也可以獨立使用），讓你用自然語言描述一個系統架構，然後自動生成專業品質的技術圖表。它不是另一個 Mermaid 或 draw.io——它理解 AI/Agent 領域的特定模式（RAG pipeline、Agentic Search、Mem0 memory、Multi-Agent collaboration、Tool Call flow），並用語義化的形狀詞彙和箭頭系統來呈現。

## 核心特色

- **7 種視覺風格**：Flat Icon、Dark Terminal、Blueprint、Notion Clean、Glassmorphism、Claude Official、OpenAI Official
- **14 種 UML 圖類型 + AI/Agent 領域圖**：Class、Component、Sequence 等完整 UML 2.5，加上 Architecture、Data Flow、Agent Architecture 等 AI 領域圖表
- **語義化形狀詞彙**：LLM = 雙邊框圓角矩形、Agent = 六邊形、Vector Store = 帶內環的圓柱體、Tool = 帶 ⚙ 的矩形
- **語義化箭頭系統**：實線（主要資料流）、虛線（寫入）、點線（非同步）、曲線（反饋/迴圈）
- **40+ 產品圖示**：內建 OpenAI、Anthropic、Pinecone 等品牌色圖示

## 怎麼用

```bash
# 作為 Claude Code Skill 安裝
npx skills add yizhiyanhua-ai/fireworks-tech-graph

# 系統需求：rsvg-convert
brew install librsvg  # macOS
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[Prompt-Engineering]] | Prompt 工程 | 自然語言描述生成圖表是 prompt engineering 的應用 |
| [[open-design]] | 開源設計 | 兩者都是開源視覺化工具 |

## 相關概念

← [[Prompt-Engineering]] · [[open-design]] · [[AI-Agent]]

## 來源

- raw/2026-05-09-fireworks-tech-graph.md

---

- **GitHub**: https://github.com/yizhiyanhua-ai/fireworks-tech-graph
- **Stars**: ⭐5,741
- **License**: MIT
- **收錄日期**: 2026-05-09