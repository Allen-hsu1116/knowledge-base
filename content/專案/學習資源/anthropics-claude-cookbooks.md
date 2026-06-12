---
title: Claude Cookbooks
slug: anthropics-claude-cookbooks
created: 2023-08-15
updated: 2026-05-26
stars: 44023
language: Jupyter Notebook
topics:
  - Prompt-Engineering
  - rag
  - AI-Agent
  - LLM
---

# Claude Cookbooks

> ⭐44k · Anthropic 官方的 Claude 實戰食譜集，用 Jupyter Notebook 提供可複製的程式碼片段

快速導航：[[Prompt-Engineering]] · [[rag|RAG]] · [[AI-Agent]] · [[LLM]]

## 是什麼

Claude Cookbooks 是 Anthropic 官方發布的 Claude API 實戰範例集，以 Jupyter Notebook 格式提供可複製的程式碼片段。涵蓋文字分類、RAG（檢索增強生成）、摘要、工具使用、多模態（視覺/圖像生成）、子代理、PDF 處理、JSON 模式、內容審核、Prompt Caching 等主題。

## 核心特色

- 📂 **分類與 RAG**：文字分類、檢索增強生成、摘要三大基礎能力範例
- 🔧 **工具整合**：客戶服務 Agent、計算機、SQL 查詢等 Tool Use 範例
- 🖼️ **多模態**：圖片理解、圖表解讀、表單提取、Stable Diffusion 圖像生成
- 🧠 **進階技巧**：子代理架構（Haiku + Opus）、自動化評估、Prompt Caching、JSON Mode、內容審核
- 🔗 **第三方整合**：Pinecone 向量資料庫、Wikipedia、Voyage AI Embeddings
- 📓 **Jupyter 格式**：每個範例都是可直接執行的 Notebook

## 怎麼用

```bash
# Clone 專案
git clone https://github.com/anthropics/claude-cookbooks
cd claude-cookbooks

# 安裝依賴（各 notebook 有獨立 requirements）
pip install -r requirements.txt

# 設定 API Key
export ANTHROPIC_API_KEY="your-api-key"

# 啟動 Jupyter
jupyter notebook
# 選擇感興趣的 notebook 開始實作

# 建議先完成 API Fundamentals 課程
# https://github.com/anthropics/courses/tree/master/anthropic_api_fundamentals
```

程式範例以 Python 為主，但概念可適用於任何支援 Claude API 的程式語言。

## 跟其他方案的關係

| 方案 | Stars | 類型 | Tool Use | 多模態 | 子代理 | 官方 |
|------|-------|------|---------|--------|--------|------|
| **Claude Cookbooks** | ⭐44k | 實戰範例集 | ✅ | ✅ | ✅ | ✅ Anthropic |
| [[hardikpandya-stop-slop\|Stop Slop]] | ⭐5.7k | Claude Skill | ❌ | ❌ | ❌ | ❌ |
| OpenAI Cookbooks | ⭐60k+ | 實戰範例集 | ✅ | ✅ | ✅ | ✅ OpenAI |
| LangChain Docs | — | 框架文件 | ✅ | ✅ | ✅ | ❌ |

← [[Prompt-Engineering]] · [[rag|RAG]] · [[AI-Agent]] · [[LLM]]

## 來源

- GitHub: <https://github.com/anthropics/claude-cookbooks>
- API 課程: <https://github.com/anthropics/courses/tree/master/anthropic_api_fundamentals>
- 原始 README: `raw/2026-05-26-anthropics-claude-cookbooks.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [anthropics/claude-cookbooks](https://github.com/anthropics/claude-cookbooks) |
| Stars | ⭐44,023 |
| License | MIT |
| Language | Jupyter Notebook |
| 收錄日期 | 2026-05-26 |