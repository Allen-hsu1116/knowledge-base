# DeepTutor

> HKUDS 開發的 Agent-Native 個人化教學助手，結合 RAG、知識圖譜和 LLM agent 創造互動式學習體驗。

| 項目 | 資訊 |
|------|------|
| **GitHub** | [HKUDS/DeepTutor](https://github.com/HKUDS/DeepTutor) |
| **Stars** | ⭐23,109 |
| **Language** | Python / Next.js |
| **建立日期** | 2025-12-28 |
| **收錄日期** | 2026-05-04 |

## 簡介

DeepTutor 是一個 Agent-Native 的個人化學習助手，由香港大學數據科學實驗室（HKUDS）開發。它將 RAG、知識圖譜和 LLM agent 結合，創造互動式、自適應的教學體驗。核心功能包括 Book Engine（活書編譯器）、TutorBot（持久化 AI 助教）和 Skills System（使用者自定義教學行為）。

## 主要特色

- **Book Engine**：將文件轉化為互動式「活書」，支援多文件協作寫作
- **TutorBot**：持久化的自主 AI 助教，持續追蹤學習進度
- **Question Bank**：帶書籤和分類的題庫系統，支援 @-mention 引用
- **Skills System**：使用者可自定義教學行為技能
- **RAG 整合**：支援 PDF/DOCX/XLSX/PPTX 文件提取和向量化
- **多 Provider 支援**：OpenAI、Anthropic、Gemini、vLLM、Ollama、LM Studio、llama.cpp
- **Space Hub**：統一的上下文管理空間

## 安裝

```bash
git clone https://github.com/HKUDS/DeepTutor.git
cd DeepTutor
pip install -r requirements.txt
```

## 相關論文

- [arXiv:2604.26962](https://arxiv.org/abs/2604.26962)

## 相關概念

- [[AI-Tutoring|AI Tutoring]] — AI 個人化教學的核心概念
- [[RAG]] — 檢索增強生成，DeepTutor 的核心檢索技術
- [[AI Agent]] — Agent 架構是 DeepTutor 的實現基礎

---

_此頁由 daily-llm-trending 自動維護_