---
title: "Awesome GPT Image 2 Prompts"
slug: evolinkai-awesome-gpt-image-2-api-and-prompts
created: 2026-10-12
updated: 2026-10-12
stars: 17302
language: "Python"
topics: ["ai-art", "api", "awesome-list", "awesome-lists", "chatgpt", "creative-tools", "generative-ai", "gpt-image-2", "gpt-image-2-api", "gpt-image-2-prompts", "gptimage2", "image-generation", "image-models", "image-prompt", "image-to-image", "openai", "prompt-collection", "prompt-engineering", "text-to-image", "visual-ai"]
---

# Awesome GPT Image 2 Prompts

> ⭐17.3k · 依創作情境分類、附原作者與示例的圖像提示詞資料集，而非獨立生成服務。

## 快速導航

- [[Prompt-Engineering]] — 對應的知識庫概念與其他實作。
- [[generative-AI]] — 對應的知識庫概念與其他實作。

## 是什麼

這個 EvoLinkAI 儲存庫是以提示詞為中心的策展清單，收集圖像生成、編輯、設計、廣告與視覺實驗的完整提示詞。README 在本次快照中標示 462 個案例，保留可得的原始來源與作者歸屬；這是上游標示的案例數，並非本次逐例重跑或獨立品質評分。

使用方式是先找到接近目標的案例，複製完整 prompt，調整佔位符、構圖、風格及輸出限制，再交由具備相應能力的圖像服務執行。雖然 repo 名稱含有 API，README 明確把 API 自動化、可呼叫技能與圖轉影片工作流列為其他儲存庫的範疇，不應誤認為這裡包含完整生成後端。

## 核心特色

### 依情境分類

涵蓋電商、廣告、人像、海報、角色、UI 與社群 mockup，以及社群比較案例。

### 完整提示詞

不是只有標題或縮圖，而是可複製並調整的 prompt 區塊。

### 來源與歸屬

案例盡可能保留原始作者與來源，便於理解設計脈絡及進一步追查。

### 多語 README

包含繁體中文等多語入口，降低閱讀與探索案例的門檻。

### 成果對照

用範例圖片輔助理解目標風格；圖片是上游展示，不代表跨模型重現保證。

## 怎麼用

以下為上游文件的安裝／取得方式，僅作操作參考；本次收錄未安裝或執行第三方專案。

```bash
git clone https://github.com/EvoLinkAI/awesome-gpt-image-2-API-and-Prompts.git
cd awesome-gpt-image-2-API-and-Prompts
```

1. 這是資料庫型專案，克隆即可閱讀，不需要安裝模型或啟動服務。
2. 從 README 或 cases 目錄選案例，辨識需要的輸入圖片與應替換的變數。
3. 在自己的圖像服務測試，記錄修改後提示詞、模型與參數；不要把個資素材任意上傳。

使用／驗收任務示例：

```text
先拆解一個產品海報案例的主體、背景、光線、文字與版面限制，
再替換成自己的商品與品牌，不直接照搬範例商標。
```

**限制與注意事項：** README 導向 EvoLink 的試用及服務連結，屬第三方商業入口，不是 OpenAI 官方 repo。CC0 倉庫授權不會自動消除第三方圖片、品牌、肖像及來源素材的權利限制。

## 跟其他方案的關係

下表是依上游定位整理的用途比較，不是效能測試結果。

| 方案 | 定位 | 與本專案的差異 |
|---|---|---|
| 單一提示詞文章 | 示範少數創作情境 | 本專案以分類案例庫組織大量可閱讀的提示詞。 |
| 圖像生成 API | 真正執行推論並收取服務費 | 本專案主要提供資料，使用服務的帳號與費用另計。 |
| Agent Skill | 封裝工具與自動執行流程 | 本 repo 明確把 callable skills 列為其他專案。 |

## 相關概念

← [[Prompt-Engineering]] · [[generative-AI]]

## 來源

- [GitHub：EvoLinkAI/awesome-gpt-image-2-API-and-Prompts](https://github.com/EvoLinkAI/awesome-gpt-image-2-API-and-Prompts)
- 原始資料：`raw/2026-10-12-evolinkai-awesome-gpt-image-2-api-and-prompts.md`（README 與完整 metadata 快照）。

Stars 與文件內容以 2026-10-12 抓取快照為準；專案描述不是本次實測背書。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [EvoLinkAI/awesome-gpt-image-2-API-and-Prompts](https://github.com/EvoLinkAI/awesome-gpt-image-2-API-and-Prompts) |
| Stars | ⭐17,302 |
| License | CC0-1.0 |
| Language | Python |
| 收錄日期 | 2026-10-12 |
