---
aliases:
  - ppt-master
  - PPT Master
---

# PPT Master

> AI 生成原可編輯 PPTX，從任何文件（PDF/DOCX/URL/Markdown）生成真正的 PowerPoint。⭐ 11.3k

## 快速導航
- ⚡ [[AI-presentation]] · [[generative-AI]] · [[MCP]]

## 是什麼

PPT Master 是一個開源 AI 簡報生成工具，從 PDF、DOCX、URL 或 Markdown 輸入生成**原生的、可編輯的** PowerPoint 檔案。跟市面上的圖片式 PPT 生成器不同，PPT Master 輸出的是真正的 DrawingML 形狀、文字框和圖表——每一個元素都可以在 PowerPoint 裡點擊和編輯。還支援動畫、轉場、AI 語音旁白和語音克隆。

Python 3.10+ 即可使用，MIT 開源授權。

## 核心特色

- **真正可編輯的 PPTX** — 輸出原生 DrawingML 形狀，不是圖片，可以在 PowerPoint 裡自由編輯
- **動畫 + 轉場** — 頁面轉場和每元素進入動畫，都是原生 OOXML
- **語音旁白 + 視頻** — 每頁語音旁白（edge-tts），可嵌入音訊，可匯出 MP4
- **語音克隆** — ElevenLabs / MiniMax / Qwen / CosyVoice 克隆語音支援
- **多風格模板** — Magazine、Academic、Dark Art、Nature、Tech/SaaS、Product Launch
- **免費工具，只付 AI 模型費** — 透明成本，不鎖定平台
- **資料留在本地** — pipeline 在你的機器上跑
- **多 Agent 支援** — Claude Code、Cursor、VS Code Copilot、Codebuddy 都能用
- **技術棧透明** — python-pptx（OOXML 生成）、edge-tts / cloud TTS、curl_cffi（網頁內容擷取）

## 怎麼用

```bash
# 安裝依賴
pip install -r requirements.txt
```

主要作為 AI IDE 的 workflow/skill 使用：
- 在 Claude Code、Cursor、VS Code Copilot 中安裝
- 對話式使用：「從這個 PDF 做一份簡報」
- AI 會產生真正的 .pptx 原生可編輯檔案

只支援 Python 3.10+。

跟其他簡報工具的分類對比：
| 類別 | 輸出格式 | 可編輯？ |
|------|----------|----------|
| 模板填充 | 固定模板 PPTX | 部分 |
| 圖片式 | 圖片包裝在 PPTX | 否 |
| HTML 簡報 | Web 格式 | 否 |
| **PPT Master（原生可編輯）** | **真正 DrawingML** | **是** |

## 跟其他方案的關係

| 特色 | PPT Master | [[presenton-presenton|Presenton]] | Gamma | Beautiful AI |
|------|-----------|----------------------------------|-------|-------------|
| 輸出格式 | 原生 PPTX（DrawingML） | PPTX + Web | Web 為主 | Web 為主 |
| 可編輯性 | ✅ 完全可編輯 | ✅ 可編輯 | ⚠️ 有限 | ⚠️ 有限 |
| 開源 | ✅ MIT | ✅ Apache 2.0 | ❌ SaaS | ❌ SaaS |
| 動畫支援 | ✅ 原生 OOXML | ✅ | ✅ | ✅ |
| 語音旁白 | ✅ edge-tts + 克隆 | ❌ | ❌ | ❌ |
| 自架 | ✅ 本地跑 | ✅ Docker/桌面 | ❌ | ❌ |
| MCP Server | ❌ | ✅ 內建 | ❌ | ❌ |

PPT Master 和 [[presenton-presenton|Presenton]] 是唯二的開源 AI 簡報方案。PPT Master 專注在原生 PPTX 生成品質和語音旁白，Presenton 則強調 MCP 整合和自架 API。兩者互補而非競爭。

## 相關概念
← [[AI-presentation]] · [[generative-AI]] · [[MCP]] · [[pptx-generation]]

## 來源
- [原始資料](../raw/2026-05-05-ppt-master.md)
- **GitHub**: https://github.com/hugohe3/ppt-master
- **Stars**: ⭐11,300
- **License**: MIT