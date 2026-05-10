---
source: https://github.com/hugohe3/ppt-master
date: 2026-05-05
tags: [ppt, powerpoint, ai-generation, python, presentation]
---

# PPT Master — AI 生成原可編輯 PPTX

> AI 生成真正可編輯的 PowerPoint，從 PDF/DOCX/URL/Markdown 輸入，輸出原生 DrawingML 元素，不是圖片。

**GitHub**: https://github.com/hugohe3/ppt-master
**Stars**: 11.3k | **Language**: Python | **License**: MIT

## 什麼是 PPT Master

PPT Master 從各種文件格式（PDF、DOCX、URL、Markdown）生成原可編輯的 PowerPoint 檔案。與圖片式 PPT 生成器不同，每個輸出元素都是真正的形狀、文字框或圖表——可在 PowerPoint 中點擊和編輯。

## 核心特色

| 功能 | 說明 |
|------|------|
| 原生 PowerPoint | DrawingML 形狀，不是圖片 |
| 動畫 | 頁面轉場 + 每元素進入動畫（OOXML） |
| 旁白與影片 | 每頁語音旁白（edge-tts），嵌入音訊，匯出 MP4 |
| 語音複製 | ElevenLabs / MiniMax / Qwen / CosyVoice |
| 多風格 | Magazine, Academic, Dark Art, Nature, Tech/SaaS, Product Launch |
| 透明成本 | 免費工具，只付 AI 模型使用費 |
| 資料本地 | Pipeline 在本機運行 |

## 與競品比較

| 類型 | 輸出 | 可編輯？ |
|------|------|---------|
| 模板填入 | 固定模板 PPTX | 部分 |
| 圖片式 | 圖片包在 PPTX | 否 |
| HTML 簡報 | 網頁簡報 | 否 |
| **原生可編輯（PPT Master）** | **真正 DrawingML** | **是** |

## 安裝

```bash
pip install -r requirements.txt
```

只需 Python 3.10+。

## 使用方式

作為 AI IDE（Claude Code, Cursor, VS Code Copilot）的工作流程/Skill 運作。對 AI 說「從這個 PDF 做一份簡報」即可產出真正可編輯的 .pptx。

## 相關主題

- [[agent-skills-ecosystem|Agent Skills 生態系]]

## 參考資料

- [GitHub - hugohe3/ppt-master](https://github.com/hugohe3/ppt-master)