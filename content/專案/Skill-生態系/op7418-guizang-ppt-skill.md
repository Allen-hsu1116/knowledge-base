---
title: "Guizang PPT Skill"
slug: op7418-guizang-ppt-skill
created: 2026-10-12
updated: 2026-10-12
stars: 27615
language: "HTML"
topics: ["ai-agent", "claude-code", "codex", "html-deck", "image-generation", "ppt", "presentation", "skill", "skills", "swiss-design", "web-ppt"]
---

# Guizang PPT Skill

> ⭐27.6k · 將文章與大綱轉成有設計規範、配圖及演講者模式的單檔 HTML 簡報技能。

## 快速導航

- [[AI-presentation]] — 對應的知識庫概念與其他實作。
- [[AI-Skills]] — 對應的知識庫概念與其他實作。

## 是什麼

Guizang PPT Skill 是給 Claude Code、Codex 等具備檔案操作能力的 Agent 使用的簡報工作流。輸出以橫向翻頁的單檔 HTML 為主，不是宣稱能取代所有 PowerPoint 編輯功能的通用辦公套件。它把需求澄清、視覺選型、模板填充、配圖、檢查與排練整理成可重複使用的技能。

專案內建電子雜誌與瑞士國際主義兩套視覺系統，分別偏向觀點敘事與產品、數據、方法論表達。設計限制與版型是工作流的一部分，而不是生成後才任意美化。簡報附帶本地演講者工具，適合分享與產品展示；原始文件也明確指出，大量表格、密集培訓內容及多人協作編輯不是主要目標。

## 核心特色

### 雙視覺系統

電子雜誌風重視敘事，瑞士風強調網格、字級對比及單一高飽和錨點色。

### 可重複版型

README 列出 Style A 的 10 種布局與 Style B 的 22 種鎖定版式，方便 Agent 依內容選擇。

### 配圖與封面

同一套規則可延伸至簡報配圖及多平台封面；圖像模型為可選流程，帳號與費用另計。

### 演講者模式

包含觀眾屏、當前與下一頁預覽、演講備註、排練計時、圈選與故障恢復。

### 靜態降級與檢查

提供低性能模式及品質檢查流程；瀏覽器預覽仍須人工確認字體、圖片與投影效果。

## 怎麼用

以下為上游文件的安裝／取得方式，僅作操作參考；本次收錄未安裝或執行第三方專案。

```bash
npx skills add https://github.com/op7418/guizang-ppt-skill --skill guizang-ppt-skill
```

1. 先提供文章、大綱、受眾、預計時長及不能變動的素材，並指定視覺風格。
2. 讓 Agent 選模板、填入內容與演講備註，再執行專案所附檢查器。
3. 用瀏覽器開啟 HTML，確認每頁文字沒有溢出；演講前排練並檢查觀眾屏。

使用／驗收任務示例：

```text
幫我把這份文章做成約七頁的瑞士風 HTML 簡報，
先列大綱，保留來源，再加入每頁演講備註。
```

**限制與注意事項：** 安裝技能會讓 Agent 讀取外部操作指令；應先審閱來源與腳本。HTML 輸出不等於可多人即時協作的 PPTX。

## 跟其他方案的關係

下表是依上游定位整理的用途比較，不是效能測試結果。

| 方案 | 定位 | 與本專案的差異 |
|---|---|---|
| 一般 PPTX 編輯器 | 以可編輯投影片與團隊辦公為主 | 本專案偏向 Agent 生成的單檔 HTML 演講體驗。 |
| 純 Markdown 投影片 | 用精簡標記描述投影片內容 | 本專案增加較細的視覺布局與演講運行時。 |
| 通用 Agent Skills | 封裝各領域的工作流程 | 本專案是針對簡報、配圖及封面的領域技能。 |

## 相關概念

← [[AI-presentation]] · [[AI-Skills]]

## 來源

- [GitHub：op7418/guizang-ppt-skill](https://github.com/op7418/guizang-ppt-skill)
- 原始資料：`raw/2026-10-12-op7418-guizang-ppt-skill.md`（README 與完整 metadata 快照）。

Stars 與文件內容以 2026-10-12 抓取快照為準；專案描述不是本次實測背書。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [op7418/guizang-ppt-skill](https://github.com/op7418/guizang-ppt-skill) |
| Stars | ⭐27,615 |
| License | AGPL-3.0 |
| Language | HTML |
| 收錄日期 | 2026-10-12 |
