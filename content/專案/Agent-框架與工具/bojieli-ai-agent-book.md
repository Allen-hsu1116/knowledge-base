---
title: 深入理解 AI Agent（bojieli）
slug: bojieli-ai-agent-book
created: 2026-08-09
updated: 2026-08-09
stars: 34772
language: Python
topics: [AI Agent, LLM, MCP, RAG, Coding Agent, Multi-Agent, RL]
---

# 深入理解 AI Agent：设计原理与工程实践

> ⭐34772 · 開源 AI Agent 教科書——10 章從原理到工程實戰，95 個配套實驗全部開源，圍繞「Agent = LLM + 上下文 + 工具」核心公式展開。13 種語言翻譯版本。

## 快速導航


- 🤖 **AI Agent** → [[AI-Agent]]
- 🛠️ **Coding Agent** → [[Coding-Agent-CLI]]
- 🧠 **Context Engineering** → [[context-engineering-basics|Context Engineering]]
- 📚 **RAG** → [[rag|RAG]]
- 🔌 **MCP** → [[MCP]]

## 是什麼

《深入理解 AI Agent：设计原理与工程实践》是李博杰（bojieli）撰寫的開源 AI Agent 教科書，全書 10 章正文、配圖、95 個配套實驗全部開源。本書不是理論綜述，而是從「Agent = LLM + 上下文 + 工具」這個核心公式出發，用工程視角把 AI Agent 從底層原理講到生產實戰。

書的結構層層遞進：第 1 章建立基礎框架（Agent 三要素 + Harness 工程），第 2-4 章分別深入上下文工程、記憶與知識庫、工具系統（含 MCP 協議），第 5 章專講 Coding Agent 與程式碼生成，第 6 章談評估方法論，第 7-8 章進入模型後訓練（SFT/RL）和 Agent 持續進化，第 9-10 章擴展到多模態、即時交互和多 Agent 協作。每章都有 4-16 個可運行的配套實驗。

全書已有 13 種語言版本（中、英、西、印尼、阿、繁體中文、俄、泰米爾、越、日、土耳其、韓、匈牙利），中文正文源碼在 `book/` 目錄，社群翻譯版本在各自的 `book-xx/` 目錄。PDF 和 EPUB 可直接從 GitHub Releases 下載，也可線上閱讀（bojieli.github.io/ai-agent-book/）。

## 核心特色

- **10 章完整體系** — 從 Agent 基礎到多 Agent 協作，覆蓋上下文工程、記憶、工具、評估、後訓練、持續進化、多模態
- **95 個配套實驗** — 每章 4-16 個可運行實驗，含本地專案和外部複現軌道（如 SWE-bench、OSWorld、GAIA）
- **核心公式驅動** — 「Agent = LLM + 上下文 + 工具」貫穿全書，不是零散知識點堆砌
- **MCP 協議專章** — 第 4 章深入 MCP 協議、感知/執行/協作三類工具、事件驅動異步 Agent
- **評估方法論** — 第 6 章把 Agent 表現變成可比較信號：評估環境、指標、統計顯著性、評估驅動選型
- **SFT vs RL 決策框架** — 第 7 章講何時選 SFT、何時選 RL，工具呼叫內化、樣本效率
- **13 種語言** — 包含繁體中文（台灣）社群翻譯版

## 怎麼用

下載 PDF / EPUB（推薦離線閱讀）：

```bash
# 中文 PDF
wget https://github.com/bojieli/ai-agent-book/releases/download/latest/AI-Agents-in-Depth-zh-CN.pdf

# 繁體中文（台灣）PDF
wget https://github.com/bojieli/ai-agent-book/releases/download/latest/AI-Agents-in-Depth-zh-TW.pdf

# 英文 PDF
wget https://github.com/bojieli/ai-agent-book/releases/download/latest/AI-Agents-in-Depth-en.pdf
```

運行配套實驗：

```bash
git clone https://github.com/bojieli/ai-agent-book.git
cd ai-agent-book

# 推薦：使用 uv.lock（可復現環境）
uv sync --locked --extra ch1

# 或使用 pip
python -m pip install -e ".[ch1]"

# 運行實驗
uv run python chapter1/context/main.py
```

線上閱讀：https://bojieli.github.io/ai-agent-book/

## 跟其他方案的關係

| 資源 | 類型 | 章節數 | 實驗數 | 語言 | MCP | 評估 |
|------|------|--------|--------|------|-----|------|
| **AI Agent Book (bojieli)** | 開源教科書 | 10 | 95 | 13 | ✅ 專章 | ✅ 專章 |
| [[microsoft-generative-ai-for-beginners\|GenAI for Beginners]] | 微軟教程 | 21 | 21 | 15+ | ❌ | ❌ |
| [[mlabonne-llm-course\|LLM Course]] | 線上課程 | 多 | 多 | 英 | ❌ | ❌ |
| [[harvard-edge-cs249r_book\|CS249r]] | 哈佛課程 | — | — | 英 | ❌ | ❌ |

AI Agent Book 的核心差異化：不是泛泛的 AI 入門，而是專注 Agent 工程的深度教科書，有 95 個可運行實驗，且覆蓋了其他教程很少涉及的評估方法論和後訓練決策框架。

## 相關概念


← [[AI-Agent]] · [[Coding-Agent-CLI]] · [[context-engineering-basics]] · [[rag]] · [[MCP]]

## 來源

- GitHub: https://github.com/bojieli/ai-agent-book
- 線上閱讀: https://bojieli.github.io/ai-agent-book/
- 授權: Apache-2.0
- Raw 檔案: `raw/2026-08-09-bojieli-ai-agent-book.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/bojieli/ai-agent-book |
| Stars | ⭐34772|
| License | Apache-2.0 |
| 收錄日期 | 2026-08-09 |
