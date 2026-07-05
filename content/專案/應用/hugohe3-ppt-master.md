---
title: PPT Master
slug: hugohe3-ppt-master
created: 2026-05-10
updated: 2026-05-10
stars: 11,300
language: zh-TW
topics: [AI, PPT, 可編輯]
---

# PPT Master

> ⭐11,300 · AI 生成真正可編輯的 PPTX — 原生 DrawingML 形狀、文字和圖表，不是圖片塞進簡報。支援動畫、語音旁白、語音克隆。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（PPT Master 以 Skill 形式整合進 Agent 工作流）
- 🛠️ **AI Skills** → [[AI-Skills]]（PPT Master 是 Claude Code / Cursor 等 Agent 的 skill）
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]（從文件生 PPT 是結構化 prompt 的應用）

## 是什麼

PPT Master 跟其他 AI PPT 生成器最大的差異：它輸出的是真正的 PowerPoint 原生元素（DrawingML 形狀、文字框、圖表），不是把圖片塞進 PPTX 外殼。這意味著生成的簡報在 PowerPoint 裡每個元素都可以點擊、修改、調整。支援 PDF/DOCX/URL/Markdown 當輸入，也能加動畫、語音旁白、語音克隆。Python 3.10+ 即可使用。

## 核心特色

- **真正可編輯** — 輸出原生 DrawingML 形狀（圓角矩形、箭頭、連接線）、文字框（帶格式）、圖表（真 OOXML chart）。在 PowerPoint 裡每個元素都能選取、移動、修改屬性，不像圖片式生成器只能整頁替換
- **動畫支援** — 頁面轉場（fade、push、wipe 等）+ 元素進場動畫（appear、fly、wipe 等），全部是真 OOXML 動畫標記。不是模擬，是 PowerPoint 原生動畫
- **語音旁白** — 每頁用 edge-tts 生成 TTS 語音，嵌入簡報中。可匯出成 MP4 影片（帶旁白的自動播放簡報）
- **語音克隆** — 支援 ElevenLabs、MiniMax、Qwen、CosyVoice 語音克隆。用自己的聲音做旁白
- **多風格模板** — 雜誌風、學術風、暗黑藝術風、自然風、科技/SaaS 風、產品發表風。每個風格有版面配置、色彩、字型系統
- **成本透明** — 工具免費，只付 AI 模型 API 費用。數據留在本地

## 怎麼實現的

PPT Master 的核心是 python-pptx OOXML 生成 + AI 內容提取 + TTS 整合：

1. **OOXML 原生生成**：用 python-pptx 函式庫直接操作 Office Open XML 格式。每個元素（形狀、文字框、圖表、動畫）都是對應的 OOXML 元素，不是圖片。這是跟圖片式生成器的根本差異
2. **內容提取 Pipeline**：用 curl_cffi 抓取網頁/PDF/DOCX 內容，LLM 做結構化提取（標題、要點、圖表數據），然後映射到 PPT 版面配置
3. **風格系統**：每個風格模板定義一套設計 token（色彩、字型、間距、圓角），生成時套用設計 token 到所有元素。確保同一份簡報視覺一致
4. **動畫引擎**：python-pptx 不原生支援動畫，PPT Master 擴展了 OOXML 標記，直接寫入動畫 XML 節點（`<p:timing>`、`<p:anim>`），PowerPoint 原生解析播放
5. **TTS + 音訊嵌入**：edge-tts 生成語音 → 轉換為 WAV/MP3 → 嵌入 PPTX 的 media 目錄 → 在 slide XML 中加入音訊播放節點。匯出 MP4 時用 FFmpeg 合成

## 怎麼用

```bash
pip install -r requirements.txt
# 只需要 Python 3.10+

# 在 Claude Code / Cursor / VS Code Copilot 裡直接說
> ⭐11,300 · AI 生成真正可編輯的 PPTX — 原生 DrawingML 形狀、文字和圖表，不是圖片塞進簡報。支援動畫、語音旁白、語音克隆。
> ⭐11,300 · AI 生成真正可編輯的 PPTX — 原生 DrawingML 形狀、文字和圖表，不是圖片塞進簡報。支援動畫、語音旁白、語音克隆。
> ⭐11,300 · AI 生成真正可編輯的 PPTX — 原生 DrawingML 形狀、文字和圖表，不是圖片塞進簡報。支援動畫、語音旁白、語音克隆。
> ⭐11,300 · AI 生成真正可編輯的 PPTX — 原生 DrawingML 形狀、文字和圖表，不是圖片塞進簡報。支援動畫、語音旁白、語音克隆。
> ⭐11,300 · AI 生成真正可編輯的 PPTX — 原生 DrawingML 形狀、文字和圖表，不是圖片塞進簡報。支援動畫、語音旁白、語音克隆。

# Python API 直接使用
from ppt_master import PPTMaster

pm = PPTMaster(style="tech-saas")
pm.from_pdf("report.pdf")
pm.add_narration(voice="en-US-AriaNeural")
pm.save("output.pptx")
pm.export_mp4("output.mp4")

# 風格選項
# magazine, academic, dark-art, nature, tech-saas, product-launch
```

## 跟其他方案的關係

| 類型 | 輸出 | 可編輯？ | 動畫 | 語音 |
|------|------|----------|------|------|
| 模板填入 | 固定模板 PPTX | 部分 | ❌ | ❌ |
| 圖片式 | 圖片包 PPTX | 否 | ❌ | ❌ |
| HTML 簡報 | Web deck | 否 | ✅ CSS | ❌ |
| **PPT Master** | **原生 DrawingML** | **✅** | **✅ OOXML** | **✅ TTS+克隆** |

- PPT Master 的核心差異化是「原生 DrawingML」— 其他方案要麼用固定模板（不靈活），要麼用圖片（不可編輯），PPT Master 生成的是每個元素都獨立可編輯的 OOXML
- 與 [[saturndec-waoowaoo|waoowaoo]] 互補：PPT Master 做 文件→簡報，waoowaoo做 文本→視頻。都是 AI 把非結構化輸入轉成結構化多媒體輸出

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[Prompt-Engineering]]

## 來源

- raw/2026-05-05-ppt-master.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [hugohe3/ppt-master](https://github.com/hugohe3/ppt-master) | ⭐11,300 | MIT | 2026-05-05 |