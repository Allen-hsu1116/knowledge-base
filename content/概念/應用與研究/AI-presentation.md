---
title: AI 簡報
slug: AI-presentation
language: zh-TW
---

# AI 簡報

> 利用 AI 自動生成和設計簡報（PPT/PDF），從大綱、內容到視覺排版全流程自動化。

## 核心內容

AI 簡報是利用人工智慧技術自動化簡報製作流程的工具和方法。從理解簡報主題和受眾開始，AI 可以自動生成大綱、撰寫文案、選擇視覺設計，最終輸出可編輯的 PPTX 或 PDF 檔案。這不僅是模板填充，而是從內容理解到視覺呈現的全流程自動化。

AI 簡報實現了多層次自動化：內容生成（AI 分析主題，自動生成大綱和文案）、視覺設計（AI 選擇版面配置、配色方案、圖表類型）、媒體整合（自動尋找或生成配圖、圖表、動畫）、格式輸出（生成完整的 PPTX/PDF/HTML 檔案）。使用者只需提供主題描述或來源文件，即可在數分鐘內獲得完整的簡報成品。

相較於傳統簡報製作需要 2-8 小時且需要專業設計技能，AI 簡報將時間縮短到 5-30 分鐘，設計能力由 AI 自動排版承擔，修改只需自然語言指令。生成的 PPTX 是原生 PowerPoint 格式，所有元素可自由修改，不會因為自動化而犧牲可編輯性。

## 關鍵要素

- **LLM 驅動內容生成**：利用大語言模型理解主題和受眾，自動生成有邏輯結構的簡報內容
- **完全可編輯輸出**：生成的 PPTX 是原生 PowerPoint 格式，所有元素可自由修改
- **多媒體整合**：支援 DALL-E、Pexels、ComfyUI 等圖片來源，自動嵌入適當媒體
- **模板與主題客製**：支援 HTML + Tailwind CSS 自訂模板，AI 也能從既有 PPT 學習風格
- **MCP 整合**：透過 MCP 協議讓 AI Agent 直接操控簡報生成
- **語音旁白**：支援 TTS 語音旁白和語音克隆，自動為每頁投影片配上語音

## 程式化 PPTX 生成

除了 AI 驅動的全流程簡報生成，程式化 PPTX 生成是另一條技術路線：**python-pptx** 等程式庫直接以程式碼生成 PowerPoint 檔案，支援版面配置、文字、圖表、圖片的精確控制。**模板式生成**利用既有 PPT 範本定義版面和風格，程式碼只填入資料。**AI 驅動全自動化**則讓 LLM 分析內容主題，自動選擇版面、生成文案、嵌入圖表，結合 python-pptx 輸出完整可編輯的 PPTX。這條路線的優勢是完全可控、可批次處理、適合報表自動化等場景。

## 各框架的做法

- **Presenton** → 開源 AI 簡報 API，支援多 LLM 模型和 Docker 自架部署
  👉 詳見 [[presenton-presenton|Presenton]]
- **PPT Master** → AI 生成可編輯 PPT，產出原生 DrawingML 格式，支援動畫和語音旁白
  👉 詳見 [[hugohe3-ppt-master|PPT Master]]
- **open-slide** → Agent-Native 簡報工具，基於 React 的互動式簡報生成
  👉 詳見 [[1weiho-open-slide|open-slide]]
- **Penpot** → 開源設計平台，透過 MCP Server 支援 AI 驅動的設計和簡報工作流
  👉 詳見 [[penpot-penpot|Penpot]]

## 相關概念

- [[AI-presentation|PPTX 生成]] — PPTX 生成是 AI 簡報的底層技術基礎
- [[content-automation|內容自動化]] — AI 簡報是內容自動化的重要應用
- [[AI-Agent|AI Agent]] — Agent 是簡報生成的智能核心
- [[document-parsing|文件解析]] — 文件解析為簡報提供內容來源
- [[workflow-automation|工作流自動化]] — 簡報生成可整合到自動化工作流

## 來源

- Presenton、PPT Master、open-slide 等 AI 簡報專案文件
- 知識庫內簡報生成相關專案頁面