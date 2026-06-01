# DeepTutor

> Agent-Native 個人化 AI 家教，結合 RAG、知識圖譜和 LLM agent。支援互動式學習、多文件協作、自動出題，並有 TutorBot 自主家教功能。

## 快速導航

- 🎓 **AI Tutoring** → [[AI-Tutoring]]
- 🔍 **RAG** → [[LLM]]
- 🤖 **AI Agent** → [[AI-Agent]]

## 是什麼

DeepTutor 由港大數據科學實驗室（HKUDS）開發，是一個 Agent-Native 的個人化 AI 家教框架。核心創新是**混合個人化引擎**：靜態知識錨定 + 動態多解析度記憶，持續演進學習者畫像。封閉教學迴路雙向耦合引用式解題和難度校準出題，讓 AI 不是只回答問題，而是真正引導學習。

## 核心特色

- **混合個人化引擎** — 靜態知識錨定（教材 + 知識圖譜）+ 動態多解析度記憶（互動歷史提煉學習者畫像）
- **封閉教學迴路** — 引用式解題 ↔ 難度校準出題，雙向耦合，讓學習和評測形成正循環
- **Book Engine（活書引擎）** — 把文件變成互動式學習體驗，不只是閱讀，而是對話、測驗、探索
- **多文件協作寫作** — 跨多份文件的協作寫作工具，AI 協助整合和引用
- **TutorBot（自主家教）** — 主動式多 agent 層，透過可擴展 skills 部署家教能力，統一多管道存取（CLI、Web、Discord、微信、飛書）
- **TutorBench（評測基準）** — 學習者視角的評測基準，引用式學習者畫像 + 第一人稱互動協議
- **互動式 HTML 視覺化** — Chart.js/SVG 圖表，讓學習內容視覺化

## 怎麼用

```bash
# 安裝
pip install deeptutor

# 或從原始碼
git clone https://github.com/HKUDS/DeepTutor.git
cd DeepTutor
pip install -e .
```

### 支援的 LLM Provider

| Provider | 類型 |
|----------|------|
| OpenAI | 雲端 API |
| Anthropic | 雲端 API |
| Gemini | 雲端 API |
| vLLM | 自架推論 |
| Ollama | 本地模型 |
| LM Studio | 本地模型 |
| llama.cpp | 本地模型 |

Embedding Provider：NVIDIA NIM、Gemini、OpenAI、Volcengine — 自動發現 embedding adapter。

### 版本發展

- v1.0.0：穩定版，RAG + WebSocket + 多 Provider 支援
- v1.2.0：Book Engine 活書編譯器、多文件協作寫作
- v1.3.6：Catalog 模型選擇、安全 RAG 重新索引、Skills editor 驗證

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[HKUDS-Vibe-Trading]] | AI 交易 Agent | 同為 HKUDS 出品，Vibe-Trading 做交易，DeepTutor 做教育 |
| 一般 AI 家教 | 單次問答 | DeepTutor 側重封閉教學迴路和個人化，不只是問答 |
| Khan Academy AI | 線上教育 AI | DeepTutor 是開源可自架，Khan Academy 是封閉平台 |
| [[Ollama]] | 本地 LLM | DeepTutor 支援 Ollama 作為本地 LLM Provider |

DeepTutor 是 [[AI-Tutoring]] 的完整實作，使用 [[LLM]] 的文件抽取 + RAG 增強家教。TutorBot 是 [[AI-Agent]] 的自主 agent 層。技術棧為 Python 3.11+ 後端 + Next.js 16 前端，支援 Docker 部署，文件格式支援 PDF、DOCX、XLSX、PPTX。

## 相關概念

← [[AI-Tutoring]] · [[LLM]] · [[AI-Agent]]

## 來源

- raw/HKUDS-DeepTutor.md

---

- **GitHub**: https://github.com/HKUDS/DeepTutor
- **Stars**: ⭐23,109
- **License**: Apache 2.0
- **收錄日期**: 2026-05-04