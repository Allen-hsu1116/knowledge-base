---
title: jieba
slug: jieba
created: 2026-05-16
stars: 34,952
updated: 2026-05-16
language: zh-TW
topics: [NLP, 中文分詞, 關鍵詞提取]
---

# jieba

> ⭐34952 · 結巴中文分詞 — Python 最流行的中文分詞套件，支援四種分詞模式、關鍵詞提取、詞性標注。35K ⭐。

## 快速導航

- 📝 **NLP** → [[nltk]]（jieba 是中文分詞，NLTK 是通用 NLP 工具包）
- 🔍 **RAG** → [[rag]]（中文 RAG 系統的前端分詞基礎）
- 📄 **文件解析** → [[document-parsing]]（中文文件處理的分詞前置步驟）

## 是什麼


jieba（結巴）是 Python 最流行的中文分詞套件，提供精確模式、全模式、搜索引擎模式、Paddle 模式四種分詞策略。

基於前綴詞典和動態規劃算法，對未登錄詞使用 HMM（Viterbi 算法）識別，同時支援繁體中文和自定義詞典。

## 核心特色

- **四種分詞模式**：精確（文本分析）、全模式（快速掃描）、搜索引擎（高召回）、Paddle（深度學習詞性標注）
- **高效算法**：前綴詞典 DAG + 動態規劃最大概率路徑 + HMM 新詞識別
- **關鍵詞提取**：TF-IDF 和 TextRank 兩種演算法
- **詞性標注**：Paddle 模式支援 24 種詞性 + 4 種专名類別
- **自定義詞典**：支援詞頻和詞性標記
- **並行分詞**：多進程加速，4 核可達 1MB/s

## 怎麼用

```bash
pip install jieba
```

```python
import jieba

# 精確模式
seg = jieba.cut("我来到北京清华大学", cut_all=False)
print("/ ".join(seg))  # 我/ 来到/ 北京/ 清华大学

# 搜索引擎模式
seg = jieba.cut_for_search("小明硕士毕业于中国科学院计算所")

# 關鍵詞提取
import jieba.analyse
tags = jieba.analyse.extract_tags(text, topK=20)
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[nltk]] | 通用 NLP 工具包 | jieba 專注中文分詞，NLTK 涵蓋更廣的 NLP 任務 |
| [[LangChain]] | LLM 應用框架 | LangChain 可用 jieba 做中文文本預處理 |
| [[ragflow]] | RAG 引擎 | ragflow 可整合 jieba 做中文分詞 |

## 相關概念


← [[nltk]] · [[rag]] · [[document-parsing]]

## 來源

- [GitHub：專案原始碼](https://github.com/fxsjy/jieba)
- raw/2026-05-16-jieba.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/fxsjy/jieba |
| Stars | ⭐34952|
| License | MIT |
| 收錄日期 | 2026-05-16 |
