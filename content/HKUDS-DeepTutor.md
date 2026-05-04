# DeepTutor

> Agent-Native 個人化 AI 家教，結合 RAG、知識圖譜和 LLM agent。支援互動式學習、多文件協作、自動出題，並有 TutorBot 自主家教功能。

| 項目 | 資訊 |
|------|------|
| **GitHub** | [HKUDS/DeepTutor](https://github.com/HKUDS/DeepTutor) |
| **Stars** | ⭐23,109 |
| **Language** | Python 3.11+ / Next.js 16 |
| **版本** | v1.3.6 |
| **建立日期** | 2025-12-28 |
| **收錄日期** | 2026-05-04 |
| **論文** | [arXiv:2604.26962](https://arxiv.org/abs/2604.26962) |

## 快速導航

- 🎓 **AI Tutoring** → [[AI-Tutoring]]（DeepTutor 是 AI Tutoring 的完整實作）
- 🔍 **RAG** → [[LLM]]（DeepTutor 使用文件抽取 + RAG 增強家教）
- 🤖 **AI Agent** → [[AI-Agent]]（TutorBot 是自主 agent 層）

## 簡介

DeepTutor 由港大數據科學實驗室（HKUDS）開發，是一個 Agent-Native 的個人化 AI 家教框架。核心創新是**混合個人化引擎**：靜態知識錨定 + 動態多解析度記憶，持續演進學習者畫像。封閉教學迴路雙向耦合引用式解題和難度校準出題，讓 AI 不是只回答問題，而是真正引導學習。

## 核心特色

### 🎯 混合個人化引擎

- **靜態知識錨定**：基於教材和知識圖譜的基礎知識
- **動態多解析度記憶**：從互動歷史提煉學習者畫像，持續演進
- **封閉教學迴路**：引用式解題 ↔ 難度校準出題，雙向耦合

### 📚 Book Engine（活書引擎）

把文件變成互動式學習體驗 — 不只是閱讀，而是對話、測驗、探索。

### ✍️ 多文件協作寫作

跨多份文件的協作寫作工具，AI 協助整合和引用。

### 🤖 TutorBot（自主家教）

- 主動式多 agent 層
- 透過可擴展 skills 部署家教能力
- 統一多管道存取（CLI、Web、Discord、微信、飛書）

### 📊 TutorBench（評測基準）

學習者視角的評測基準，包含：
- 引用式學習者畫像
- 第一人稱互動協議
- 從學習者角度衡量自適應家教效果

## 支援的 LLM Provider

| Provider | 類型 |
|----------|------|
| OpenAI | 雲端 API |
| Anthropic | 雲端 API |
| Gemini | 雲端 API |
| vLLM | 自架推論 |
| Ollama | 本地模型 |
| LM Studio | 本地模型 |
| llama.cpp | 本地模型 |

## 支援的 Embedding Provider

NVIDIA NIM、Gemini、OpenAI、Volcengine — 自動發現 embedding adapter。

## 技術棧

- **後端**：Python 3.11+
- **前端**：Next.js 16
- **部署**：Docker 支援
- **文件格式**：PDF、DOCX、XLSX、PPTX

## 社群

- 💬 Discord Community
- 🐦 飛書 Group
- 💬 微信 Group

## 授權

Apache 2.0

## 相關連結

- [GitHub](https://github.com/HKUDS/DeepTutor)
- [論文](https://arxiv.org/abs/2604.26962)