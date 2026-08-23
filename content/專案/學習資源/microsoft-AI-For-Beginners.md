---
title: AI for Beginners
slug: microsoft-AI-For-Beginners
created: 2026-07-01
updated: 2026-07-01
stars: 49365
language: Jupyter Notebook
topics:
  - ai
  - artificial-intelligence
  - deep-learning
  - computer-vision
  - nlp
  - rnn
  - gan
  - machine-learning
  - microsoft-for-beginners
  - cnn
---

# AI for Beginners

> ⭐49365 · 微軟出品 12 週 24 課 AI 入門課程，從符號 AI 到深度學習、電腦視覺、NLP 和強化學習，涵蓋 TensorFlow 和 PyTorch 雙框架

## 快速導航


- 📖 **學習資源** → [[mlabonne-llm-course|LLM Course]] · [[microsoft-ai-agents-for-beginners|AI Agents for Beginners]]
- 🧠 **AI 基礎** → [[LLM]] · [[AI-Agent]]
- 🎓 **教學** → [[AI-Tutoring]] · [[self-education|自主學習]]

## 是什麼

AI for Beginners 是微軟推出的一套完整 AI 入門課程，以 12 週 24 課的結構帶領學習者從零開始探索人工智慧的世界。課程不僅涵蓋現代深度學習，還包含了「經典 AI」的符號推理方法，讓學習者理解 AI 發展的完整脈絡。

課程設計以實作為導向，每堂課都配備可執行的 Jupyter Notebook，支援 PyTorch 和 TensorFlow 兩大框架。學習者可以選擇自己偏好的框架，通過實際跑 code 來理解理論。內容從最基礎的 Perceptron 開始，一路講到 CNN、RNN、Transformers、GAN，甚至涵蓋遺傳演算法和強化學習。

特別值得一提的是，課程後段觸及了大語言模型（LLM）和 Prompt Programming 的入門，讓這套課程不僅是傳統 AI 教材，也是通往現代 LLM 應用的橋樑。50+ 語言的自動翻譯支援（包含繁體中文）使其成為全球最通用的 AI 入門資源之一。

## 核心特色

- **12 週 24 課完整結構**：從 AI 歷史入門 → 符號 AI → 神經網路 → 電腦視覺 → NLP → 其他 AI 技術 → AI 倫理，循序漸進
- **雙框架實作**：每個主題同時提供 PyTorch 和 TensorFlow（Keras）版本的 Notebook，學習者任選其一即可
- **50+ 語言翻譯**：透過 Co-op Translator 自動維護，包含繁體中文、日文、韓文等，翻譯始終與原文同步
- **涵蓋 LLM 與 Prompt Programming**：第 20 課專門講解大語言模型和 Few-Shot Tasks，是通往現代 AI 應用的入口
- **Lab 實作練習**：多個課程附帶 Lab，讓學習者動手解決具體問題，不只看理論
- **完整課程地圖**：提供 Mindmap 課程心智圖，學習者可以一眼掌握整體結構
- **微軟官方維護**：由 Microsoft Cloud Advocates 團隊維護，品質有保障

## 怎麼用

```bash
# 方式 1：完整 Clone（包含 50+ 語言翻譯，檔案較大）
git clone https://github.com/microsoft/AI-For-Beginners.git
cd AI-For-Beginners

# 方式 2：Sparse checkout（不含翻譯，下載更快）
git clone --filter=blob:none --sparse https://github.com/microsoft/AI-For-Beginners.git
cd AI-For-Beginners
git sparse-checkout set --no-cone '/*' '!translations' '!translated_images'

# 方式 3：線上直接跑（Binder）
# 前往 https://mybinder.org/v2/gh/microsoft/ai-for-beginners/HEAD
```

課程結構一覽：
- **第 I-II 週**：AI 簡介與歷史、符號 AI（知識表示、專家系統）
- **第 III 週**：神經網路基礎（Perceptron → MLP → 框架入門）
- **第 IV 週**：電腦視覺（CNN、遷移學習、Autoencoder、GAN、物件偵測、語意分割）
- **第 V 週**：NLP（詞向量、RNN、Transformers、BERT、LLM）
- **第 VI 週**：遺傳演算法、深度強化學習、多 Agent 系統
- **第 VII 週**：AI 倫理

## 跟其他方案的關係


- **[[mlabonne-llm-course|LLM Course]]** → 專注 LLM 的進階課程（微調、量化），AI for Beginners 是更廣泛的 AI 基礎入門
- **[[microsoft-ai-agents-for-beginners|AI Agents for Beginners]]** → 微軟另一套課程，聚焦 AI Agent 和 MCP，是 AI for Beginners 的延伸
- **[[rasbt-LLMs-from-scratch|LLMs from Scratch]]** → 從零建構 LLM 的深入教材，AI for Beginners 的第 20 課是入門版
- **[[FareedKhan-dev-train-llm-from-scratch|Train LLM From Scratch]]** → 更實作導向的 LLM 訓練教學
- **[[freeCodeCamp-freeCodeCamp|freeCodeCamp]]** → 廣泛程式學習平台，AI for Beginners 是專注 AI 的深度課程

← [[mlabonne-llm-course|LLM Course]] · [[microsoft-ai-agents-for-beginners|AI Agents for Beginners]] · [[AI-Tutoring]] · [[harvard-edge-cs249r_book|ML Systems (CS249r)]]

| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[mlabonne-llm-course]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[microsoft-ai-agents-for-beginners]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念


← [[mlabonne-llm-course]] · [[microsoft-ai-agents-for-beginners]] · [[LLM]] · [[AI-Agent]]

## 來源

- GitHub: <https://github.com/microsoft/AI-For-Beginners>
- 課程心智圖: <http://soshnikov.com/courses/ai-for-beginners/mindmap.html>
- 原始 README: `raw/2026-07-01-microsoft-AI-For-Beginners.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/microsoft/AI-For-Beginners |
| Stars | ⭐49365|
| License | MIT |
| 收錄日期 | 2026-07-01 |
