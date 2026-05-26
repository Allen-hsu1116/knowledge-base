# AI Tutoring

> AI Tutoring 是利用 AI 技術實現個人化教學的應用領域，結合 RAG、知識圖譜和 LLM agent 來創造互動式、自適應的學習體驗。從「看影片+做題」走向「跟 AI 對話學」。

## 快速導航

- 🎓 **DeepTutor** → [[HKUDS-DeepTutor]]（Agent-Native 個人化 AI 家教）
- 🕸️ **Knowledge Graph** → [[Knowledge-Graph]]（知識圖譜是 AI Tutoring 的知識基礎）
- 🔍 **RAG** → [[LLM]]（RAG 讓 AI 能基於特定教材回答問題）
- 🤖 **AI Agent** → [[AI-Agent]]（TutorBot 是自主 Agent 層）

## 為什麼 AI Tutoring 重要

### 傳統線上教育的問題

| 問題 | 說明 |
|------|------|
| **靜態內容** | 影片、PDF、投影片不會根據學習者調整 |
| **無法互動** | 學生有問題只能自己查，沒人即時解答 |
| **統一進度** | 所有人看同樣的內容，不管程度如何 |
| **缺乏反饋** | 不知道自己哪裡不懂、哪裡需要加強 |

### AI Tutoring 的解法

| 能力 | 說明 | 實作 |
|------|------|------|
| **個人化** | 根據學習者畫像調整內容和難度 | TutorBot 動態記憶 |
| **互動式** | 對話式學習，即時回答問題 | Book Engine 活書引擎 |
| **自適應** | 根據學習表現調整教學策略 | 難度校準出題 |
| **持續追蹤** | 記住學習者的弱點和進度 | 混合個人化引擎 |

## 核心技術

### Book Engine（活書引擎）

把靜態文件變成互動式學習體驗。不只能讀，還能對話、測驗、探索。

### TutorBot（自主家教）

- 主動式多 agent 層
- 透過可擴展 skills 部署家教能力
- 持續追蹤學習進度
- 統一多管道存取（CLI、Web、Discord、微信、飛書）

### 混合個人化引擎

**靜態知識錨定 + 動態多解析度記憶**：

1. 靜態：基於教材和知識圖譜的基礎知識
2. 動態：從互動歷史提煉學習者畫像
3. 封閉教學迴路：引用式解題 ↔ 難度校準出題

### Question Bank（題庫）

- 書籤和分類系統
- @-mention 引用支援
- 多難度等級

## TutorBench 評測

學習者視角的評測基準，包含：
- 引用式學習者畫像
- 第一人稱互動協議
- 從學習者角度衡量自適應家教效果

## 主要專案

- [[HKUDS-DeepTutor]] — Agent-Native 個人化 AI 家教
  - Book Engine、TutorBot、RAG 整合
  - 多 LLM Provider 支援（OpenAI、Anthropic、Gemini、Ollama 等）
  - 論文：arXiv:2604.26962

## 與其他領域的關係

| 相關領域 | 關係 |
|----------|------|
| [[Knowledge-Graph]] | 知識圖譜是 AI Tutoring 的知識基礎 |
| [[AI-Agent]] | TutorBot 是 Agent 架構的教學應用 |
| [[MCP]] | MCP 讓 TutorBot 連接外部工具和資料 |
| [[AI-Skills]] | Skills 定義 TutorBot 的教學行為 |

## 相關專案

- [[HKUDS-DeepTutor]] — Agent-Native 個人化 AI 家教

## 相關概念

← [[Knowledge-Graph]] · [[AI-Agent]] · [[MCP]] · [[AI-Skills]] · [[datawhalechina-easy-vibe]]

## 來源
- raw/HKUDS-DeepTutor.md

---

_此頁由 daily-llm-trending 自動維護_