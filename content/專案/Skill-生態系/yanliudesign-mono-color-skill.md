---
title: Monocolor Editorial Print：單色與受控雙色編輯印刷 Skill
slug: yanliudesign-mono-color-skill
date: 2026-09-07
created: 2026-09-07
updated: 2026-09-07
stars: 2844
language: zh-TW
topics: [AI-Skills, Prompt-Engineering, 平面設計, 圖像生成]
---

# Monocolor Editorial Print

> ⭐2,844 · 將主題、文字或照片轉為單色／受控雙色的編輯式印刷圖像，並交付生成提示詞與可追溯的設計配方。

## 快速導航

- [[AI-Skills|AI Skills]] — 把設計規則封裝成可載入的 SKILL.md。
- [[Prompt-Engineering|Prompt Engineering]] — 以配方、限制與檢查規則組織圖像生成提示。

## 是什麼

yanliudesign/mono-color-skill 是以 Claude Code Skill 為主要安裝形式的視覺設計工作流，可處理海報、zine、肖像、包裝與視覺田野筆記。它不是新圖像模型，也不是單純替照片加單色濾鏡，而是約束色版、構圖、字體與印刷質感的操作規範。

儘管名稱帶有 mono-color，收錄時 README 標示的 1.2.0 文件已預設使用「主色版＋限定用途的強調色版」；只有明確要求 one-ink／monochrome 時才維持純單色。當代編輯風格是預設，復古、泛黃與懷舊處理必須由內容或要求支持，不能從半色調直接推定。

## 核心特色

- **受控色版系統**：最多兩個印刷墨色；雙色工作通常以主版覆蓋印刷區域的 70%–85%、強調版 15%–30%。紙色及疊印產生的深色不視為額外墨色。
- **留白與視覺節奏**：以非對稱編輯網格、25%–55% 可見紙面為方向；用超大字、極端裁切或局部疊印形成單一焦點，而非把所有元素一起弱化。
- **印刷語彙而非濾鏡**：支援半色調、risograph 顆粒、藍曬或影印破碎效果；紙底可選中性白、冷灰或淡米色，不固定套用懷舊底色。
- **可檢查的設計配方**：先解析為 recipe manifest，再編譯提示詞；`design-system/` 分離色彩、字體、幾何構圖、節奏與印刷瑕疵。README 提供評估與設計系統驗證腳本，但這不代表每張生成圖都已獲品質保證。
- **原創性與身份保留**：照片中的人物與物件應保持可辨識；參考圖只用於抽取設計語法，至少改變四項結構變數，避免重建既有海報的獨特編排。

## 怎麼用

以下為上游 README 的安裝方式，僅作文件記錄；本次收錄未執行安裝或圖像生成：

```bash
git clone https://github.com/yanliudesign/mono-color-skill.git \
  ~/.claude/skills/mono-color
```

安裝後重新啟動 Claude Code；其他 Agent 環境可將 `SKILL.md` 作為入口，實際載入方式依該環境決定。提供主題、精確標題、照片、版面用途與單／雙色要求，避免讓模型自行編造品牌或活動資訊。

```text
Use mono-color to make a vertical poster about a midnight convenience store.
The exact headline is “still open”.
```

工作流為：辨識內容與意圖 → 選版型 → 分配色版 → 編排留白與焦點 → 生成並檢查墨色、身份、層級、紋理與原創性。未指定時的配方預設包括 3:4 比例、中性白紙底、當代編輯方向與 35% 留白；明確選項在色版與原創性限制內優先。

具備圖像生成工具時交付點陣圖、實際 production prompt，以及列出色盤、版型、字體、印刷方式與原創改動的 recipe。**沒有圖像生成工具時只交付提示詞並告知限制**；不能將安裝 Skill 等同取得圖像生成服務。點陣圖與「production-ready prompt」也不等同已驗證可直接送印的分色檔。

## 跟其他方案的關係

| 方案／做法 | 差異與適用情境 |
|---|---|
| 一次性圖像提示詞 | 本專案增加固定配方、設計目錄與品質檢查，適合重複產製具有一致設計語法的作品。 |
| 單色濾鏡 | 濾鏡主要改變色彩；本專案重新處理裁切、網格、字體、留白與機械複製質感。 |
| 海報模板 | 模板維持既定版型；此 Skill 要求依主題重建構圖，不把參考作品當可複製模板。 |
| 圖像生成模型或服務 | 本專案提供指令與工作流，仍需工具實際生成圖片，屬互補關係而非模型替代品。 |

## 相關概念

← [[AI-Skills|AI Skills]] · [[Prompt-Engineering|Prompt Engineering]]

單色印刷、受控雙色、半色調、設計 token 與原創性約束也是相關主題；本次不為它們建立新概念頁。

## 來源

- 原始專案：https://github.com/yanliudesign/mono-color-skill
- README：https://github.com/yanliudesign/mono-color-skill/blob/main/README.md
- 圖像素材授權：https://github.com/yanliudesign/mono-color-skill/blob/main/ASSET-LICENSE.md
- 原始快照：`raw/2026-09-07-yanliudesign-mono-color-skill.md`，保存完整 README、GitHub metadata、根目錄與素材授權原文。

**授權界線**：MIT 適用於程式碼、Skill 指令與腳本；`examples/` 中 Yan Liu 的原創生成作品不在 MIT 之內，未經書面許可不可複製、改作、再散布或商用。第三方參考圖仍屬各權利人所有。

---

- **GitHub**：https://github.com/yanliudesign/mono-color-skill
- **Stars**：⭐2844（2026-09-07 擷取）
- **License**：MIT（軟體部分）；圖像素材另有規範
- **主要程式語言**：Python（GitHub metadata）
- **預設分支**：main
- **最近推送時間**：2026-09-02T18:49:42Z
- **收錄日期**：2026-09-07
- **驗證範圍**：唯讀取得來源；未執行專案、驗證腳本或生成範例。
