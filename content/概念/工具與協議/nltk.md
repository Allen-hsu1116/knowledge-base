---
title: NLTK
created: 2026-05-16
---

# NLTK

> Natural Language Toolkit — Python 自然語言處理工具包，50+ 語料庫、分詞標注詞幹提取句法分析一站式解決。14.5K ⭐。

## 快速導航
- 📝 **NLP** → [[jieba]]（jieba 是中文分詞，NLTK 是通用 NLP）
- 🔍 **RAG** → [[rag]]（NLTK 的分詞和 NER 是 RAG 前處理的基礎）
- 📄 **文件解析** → [[document-parsing]]（文字處理的前置步驟）

## 是什麼

NLTK（Natural Language Toolkit）是 Python 最老牌也最全面的自然語言處理工具包，提供 50+ 語料庫和詞彙資源接口，涵蓋分詞、詞性標注、命名實體識別、詞幹提取、詞形還原、句法分析、語義推理等 NLP 核心任務。適合教學、研究和原型開發。

## 核心特色

- **分詞**：word_tokenize、sent_tokenize，支援多語言
- **詞性標注**：多種標注器（默認 averaged_perceptron_tagger）
- **命名實體識別**：ne_chunk 辨識人名、地名、組織名
- **詞幹提取**：Porter、Lancaster、Snowball 等演算法
- **詞形還原**：WordNetLemmatizer，比詞幹提取更精確
- **句法分析**：CFG、依存句法、Treebank 解析
- **50+ 語料庫**：WordNet、Brown、Gutenberg、Treebank 等
- **分類器**：NaiveBayes、DecisionTree、MaxEnt 等
- **免費書籍**：*Natural Language Processing with Python* 線上免費閱讀

## 怎麼用

```bash
pip install nltk
python -c "import nltk; nltk.download('punkt'); nltk.download('averaged_perceptron_tagger')"
```

```python
import nltk

# 分詞 + 詞性標注
tokens = nltk.word_tokenize("At eight o'clock on Thursday morning Arthur didn't feel very good.")
tagged = nltk.pos_tag(tokens)

# 命名實體識別
entities = nltk.chunk.ne_chunk(tagged)

# 詞形還原
from nltk.stem import WordNetLemmatizer
lemmatizer = WordNetLemmatizer()
lemmatizer.lemmatize('better', pos='a')  # 'good'
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[jieba]] | 中文分詞 | jieba 專注中文分詞，NLTK 是通用 NLP 工具包 |
| [[LangChain]] | LLM 應用框架 | LangChain 可用 NLTK 做文字預處理和 NER |
| [[ragflow]] | RAG 引擎 | RAG 管線的文件分詞可用 NLTK |

## 相關概念

← [[jieba]] · [[rag]] · [[document-parsing]]

## 來源

- raw/2026-05-16-nltk.md

---

- **官網**: https://www.nltk.org/
- **GitHub**: https://github.com/nltk/nltk
- **Stars**: ⭐14,500
- **License**: Apache-2.0
- **收錄日期**: 2026-05-16