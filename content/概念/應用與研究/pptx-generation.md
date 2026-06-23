---
title: PPTX 生成
slug: pptx-generation
language: zh-TW
---

# PPTX 生成

> 程式化生成 PowerPoint 簡報檔案，從模板、python-pptx 到 AI 驅動的全自動流程。

## 核心內容

PPTX 生成是程式化建立 PowerPoint 檔案的技術。Office Open XML（ISO 29500）定義了 PPTX 的底層格式——.pptx 實為 ZIP 壓縮的 XML 集合，而 python-pptx、Open XML SDK 等函式庫讓開發者能以程式碼控制每一個投影片元素。在 AI 時代，PPTX 生成從手動模板填充進化到 LLM 驅動的全自動流程。

技術層次從底層到應用分為四級：底層格式（Office Open XML）、程式化操作（python-pptx 等函式庫）、模板系統（基於模板的自動填入）、AI 生成（LLM 理解內容後決定版面配置、文案和設計）。AI 驅動的 PPTX 生成能從一份 PDF 或一段文字描述出發，自動產出包含原生 DrawingML 形狀、動畫轉場和語音旁白的完整簡報。

PPTX 生成的核心挑戰在於排版複雜度（PPTX 包含定位、樣式、動畫等）、設計品質（生成版面需符合美學）、可編輯性（生成結果需可自由修改）和資料整合（需從文件提取內容）。現代工具透過 DrawingML 原生渲染、AI 選擇版面和模板系統來解決這些問題。

## 關鍵要素

- **原生 DrawingML 輸出**：真正的 PowerPoint 形狀和文字框，不是圖片嵌入，完全可編輯
- **動畫與轉場支援**：頁面轉場和每元素入場動畫，使用標準 OOXML 格式
- **語音旁白與影片匯出**：每頁 TTS 語音旁白、音訊嵌入、MP4 匯出
- **多風格模板**：雜誌風、學術風、深色藝術風、科技/SaaS 風等預設風格
- **BYOK 模型選擇**：自由選擇 OpenAI、Gemini、Anthropic 或本地模型
- **MCP 整合**：透過 MCP 協議讓 AI Agent 直接生成簡報

## 各框架的做法

- **PPT Master** → AI 生成原生 DrawingML PPTX，支援動畫、語音旁白和 MP4 匯出
  👉 詳見 [[hugohe3-ppt-master|PPT Master]]
- **Presenton** → 開源 AI 簡報 API，支援多 LLM 和多媒體整合
  👉 詳見 [[presenton-presenton|Presenton]]
- **open-slide** → Agent-Native 簡報工具，基於 React 的互動式投影片生成
  👉 詳見 [[1weiho-open-slide|open-slide]]

## 相關概念

- [[AI-presentation|AI 簡報]] — AI 簡報是 PPTX 生成的應用層
- [[document-parsing|文件解析]] — 文件解析為 PPTX 生成提供內容來源
- [[語音辨識]] — TTS 語音合成為簡報提供旁白能力
- [[AI-Agent|AI Agent]] — Agent 是 PPTX 生成流程的智能核心
- [[workflow-automation|工作流自動化]] — PPTX 生成可嵌入自動化工作流

## 來源

- python-pptx 官方文件與 Office Open XML 標準 (ISO 29500)
- PPT Master、Presenton 等 PPTX 生成專案文件