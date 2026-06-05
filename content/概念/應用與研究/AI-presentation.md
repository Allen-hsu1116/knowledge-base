---
title: AI 簡報
aliases:
  - AI Presentation
  - AI PPT
---

# AI 簡報

> 利用 AI 自動生成和設計簡報（PPT/PDF），從大綱、內容到視覺排版全流程自動化。

## 快速導航

- ⚡ [[pptx-generation]] · [[self-hosted-AI-platform]] · [[AI-Agent]] · [[workflow-automation]]
- 🎨 **Presenton** → [[presenton-presenton]]（開源 AI 簡報 API）
- 📊 **PPT Master** → [[hugohe3-ppt-master]]（AI 生成可編輯 PPT）
- 🔧 **PPTX 生成** → [[pptx-generation]]（簡報生成的底層技術）

## 是什麼

AI 簡報是利用人工智慧技術自動化簡報製作流程的工具和方法。從理解簡報主題和受眾開始，AI 可以自動生成大綱、撰寫文案、選擇視覺設計，最終輸出可編輯的 PPTX 或 PDF 檔案。這不僅是模板填充，而是從內容理解到視覺呈現的全流程自動化。

### AI 簡報的多層次自動化

1. **內容生成**：AI 分析主題，自動生成大綱和文案
2. **視覺設計**：AI 選擇版面配置、配色方案、圖表類型
3. **媒體整合**：自動尋找或生成配圖、圖表、動畫
4. **格式輸出**：生成完整的 PPTX/PDF/HTML 檔案

## 核心特色

- **LLM 驅動內容生成**：利用大語言模型理解主題和受眾，自動生成有邏輯結構的簡報內容
- **多 LLM 支援**：支援 OpenAI、Gemini、Anthropic、Ollama 等多家模型，可自選或混合使用
- **完全可編輯輸出**：生成的 PPTX 是原生 PowerPoint 格式，所有元素可自由修改
- **多媒體整合**：支援 DALL-E、Pexels、ComfyUI 等圖片來源，自動嵌入適當媒體
- **模板與主題客製**：支援 HTML + Tailwind CSS 自訂模板，AI 也能從既有 PPT 學習風格
- **MCP 整合**：透過 MCP 協議讓 AI Agent 直接操控簡報生成
- **語音旁白**：支援 TTS 語音旁白和語音克隆（ElevenLabs）

## 怎麼用

### 使用 Presenton 生成簡報

```bash
# Docker 部署（最簡單）
docker compose up -d

# 或源碼部署
git clone https://github.com/presenton/presenton.git
cd presenton
pip install -r requirements.txt
python app.py
```

### 使用 PPT Master 生成可編輯 PPT

```bash
pip install -r requirements.txt
# 在 Claude Code / Cursor / VS Code Copilot 中
# 直接對話：「從這份 PDF 生成簡報」
# 產出原生 DrawingML 格式的可編輯 PPTX
```

### AI 簡報 vs 傳統簡報

| 維度 | 傳統方式 | AI 簡報 |
|------|----------|---------|
| 時間 | 2-8 小時 | 5-30 分鐘 |
| 設計能力 | 需要專業技能 | AI 自動排版 |
| 一致性 | 難以維持 | 模板保證一致 |
| 修改 | 大量手動調整 | 自然語言指令修改 |
| 成本 | 人力成本高 | API 費用低 |

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[pptx-generation]] | 底層 | PPTX 生成是 AI 簡報的技術基礎 |
| [[self-hosted-AI-platform]] | 平台 | AI 簡報可運行在自架平台上保護隱私 |
| [[AI-Agent]] | 驅動 | Agent 是簡報生成的智能核心 |
| [[workflow-automation]] | 流程 | 簡報生成可整合到自動化工作流中 |
| [[document-parsing]] | 上游 | 文件解析為簡報提供內容來源 |

## 相關概念

← [[pptx-generation]] · [[self-hosted-AI-platform]] · [[AI-Agent]] · [[workflow-automation]] · [[document-parsing]] · [[1weiho-open-slide|open-slide]]

## 來源

- [Presenton 專案文件](../raw/2026-05-24-presenton-presenton.md)
- [PPT Master 專案文件](../raw/2026-05-05-ppt-master.md)

---

_此頁由 daily-llm-trending 自動維護_