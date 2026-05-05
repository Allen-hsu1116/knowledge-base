# PPT Master

> AI 生成真正可編輯的 PPTX — 不是圖片塞進簡報，而是原生的 DrawingML 形狀、文字和圖表。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（PPT Master 以 Skill 形式整合進 Agent 工作流）
- 🛠️ **AI Skills** → [[AI-Skills]]（PPT Master 是 Claude Code / Cursor 等 Agent 的 skill）
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]（從文件生 PPT 是結構化 prompt 的應用）

## 是什麼

PPT Master 跟其他 AI PPT 生成器最大的差異：它輸出的是真正的 PowerPoint 原生元素（DrawingML 形狀、文字框、圖表），不是把圖片塞進 PPTX 外殼。這意味著生成的簡報在 PowerPoint 裡每個元素都可以點擊、修改、調整。

## 核心特色

- **真正可編輯**：原生 DrawingML，不是圖片
- **動畫支援**：頁面轉場 + 元素進場動畫（真 OOXML）
- **語音旁白**：每頁 TTS 語音（edge-tts），嵌入音訊，匯出 MP4
- **語音克隆**：ElevenLabs / MiniMax / Qwen / CosyVoice
- **多風格模板**：雜誌、學術、暗黑藝術、自然、科技/SaaS、產品發表
- **成本透明**：工具免費，只付 AI 模型費

## 怎麼用

```bash
pip install -r requirements.txt
# 在 Claude Code / Cursor / VS Code Copilot 裡直接說
# "make a deck from this PDF"
```

## 跟其他方案的關係

| 類型 | 輸出 | 可編輯？ |
|------|------|----------|
| 模板填入 | 固定模板 PPTX | 部分 |
| 圖片式 | 圖片包 PPTX | 否 |
| HTML 簡報 | Web deck | 否 |
| **PPT Master** | **原生 DrawingML** | **✅** |

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[Prompt-Engineering]]

## 來源

- raw/2026-05-05-ppt-master.md

---

- **GitHub**: https://github.com/hugohe3/ppt-master
- **Stars**: ⭐11,300
- **License**: MIT
- **收錄日期**: 2026-05-05