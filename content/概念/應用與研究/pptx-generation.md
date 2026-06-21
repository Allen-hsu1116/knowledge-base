---
title: PPTX 生成
slug: pptx-generation
aliases:
  - PPTX Generation
  - PowerPoint 生成
updated: 2026-06-14
language: zh-TW
---

# PPTX 生成

> ⭐— · 程式化生成 PowerPoint 簡報檔案，從模板、python-pptx 到 AI 驅動的全自動流程。

## 快速導航

- ⚡ [[AI-presentation]] · [[document-parsing]] · [[workflow-automation]] · [[AI-Agent]]
- 🎨 **Presenton** → [[presenton-presenton]]（開源 AI 簡報 API）
- 📊 **PPT Master** → [[hugohe3-ppt-master]]（AI 生成可編輯 PPT）
- 🔧 **文件解析** → [[document-parsing]]（PPTX 生成的內容來源）

## 是什麼

PPTX 生成是程式化建立 PowerPoint 檔案的技術。Office Open XML（ISO 29500）定義了 PPTX 的底層格式，而 python-pptx、Open XML SDK 等函式庫讓開發者能以程式碼控制每一個投影片元素。在 AI 時代，PPTX 生成從手動模板填充進化到 LLM 驅動的全自動流程。

### 技術層次

1. **底層格式**：Office Open XML（.pptx 實為 ZIP 壓縮的 XML 集合）
2. **程式化操作**：python-pptx、Open XML SDK 等函式庫操作 PPTX 結構
3. **模板系統**：基於模板的自動填入，適合結構化內容
4. **AI 生成**：LLM 理解內容後決定版面配置、文案和設計

## 核心特色

- **原生 DrawingML 輸出**：真正的 PowerPoint 形狀和文字框，不是圖片嵌入
- **動畫與轉場支援**：頁面轉場 + 每元素入場動畫，使用標準 OOXML 格式
- **語音旁白與影片匯出**：每頁 TTS 語音旁白、音訊嵌入、MP4 匯出
- **多風格模板**：雜誌風、學術風、深色藝術風、科技/SaaS 風等
- **BYOK 模型選擇**：自由選擇 OpenAI、Gemini、Anthropic 或本地模型
- **MCP 整合**：透過 MCP 協議讓 Agent 直接生成簡報

## 怎麼用

### 使用 python-pptx（底層 API）

```python
from pptx import Presentation
from pptx.util import Inches, Pt

prs = Presentation()
slide = prs.slides.add_slide(prs.slide_layouts[0])
title = slide.shapes.title
title.text = "AI 簡報生成"
title.text_frame.paragraphs[0].font.size = Pt(44)
prs.save("output.pptx")
```

### 使用 PPT Master（AI 生成）

```
# 在 Claude Code / Cursor 中
「從這份 PDF 生成簡報，用科技風格，10 頁」

# 產出內容：
- 原生 DrawingML 形狀（可完全編輯）
- 頁面轉場動畫
- 自動內容與版面配置
```

### PPTX 生成的挑戰

| 挑戰 | 說明 | 解方 |
|------|------|------|
| 排版複雜度 | PPTX 包含定位、樣式、動畫等 | DrawingML 原生渲染 |
| 設計品質 | 生成版面需符合美學 | AI 選擇版面 + 模板系統 |
| 可編輯性 | 生成結果需可自由修改 | 原生 PPTX 元素而非圖片 |
| 資料整合 | 需從文件提取內容 | 文件解析 + AI 理解 |

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[AI-presentation]] | 上層 | AI 簡報是 PPTX 生成的應用層 |
| [[document-parsing]] | 上游 | 文件解析為 PPTX 生成提供內容 |
| [[AI-Agent]] | 驅動 | Agent 是 PPTX 生成流程的智能核心 |
| [[workflow-automation]] | 流程 | PPTX 生成可嵌入自動化工作流 |
| [[self-hosted-AI-platform]] | 平台 | PPTX 生成服務可自架確保隱私 |

## 相關概念

← [[AI-presentation]] · [[document-parsing]] · [[workflow-automation]] · [[AI-Agent]] · [[self-hosted-AI-platform]]

## 來源

- python-pptx 官方文件
- Office Open XML 標準 (ISO 29500)
- [Presenton 專案文件](../raw/2026-05-24-presenton-presenton.md)
- [PPT Master 專案文件](../raw/2026-05-05-ppt-master.md)

---

_此頁由 daily-llm-trending 自動維護_