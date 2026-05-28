---
title: Next AI Draw.io
slug: DayuanJiang-next-ai-draw-io
created: 2026-05-28
updated: 2026-05-28
stars: 30250
language: TypeScript
topics:
  - AI-diagram
  - draw.io
  - MCP
  - LLM
  - visualization
---

# Next AI Draw.io

> ⭐30.3k · AI 驅動的繪圖工具，用自然語言建立 draw.io 圖表

快速導航：[[AI-Agent]] · [[AI-Skills]] · [[visualization|資料視覺化]] · [[ChromeDevTools-chrome-devtools-mcp|Chrome DevTools MCP]]

## 是什麼

Next AI Draw.io 是一個基於 Next.js 的網頁應用，整合 AI 能力與 draw.io 圖表。使用者可以透過自然語言指令建立、修改和增強圖表，支援雲架構圖（AWS、GCP、Azure）、流程圖、甚至動畫連接線。

## 核心特色

- 🗣️ **自然語言建圖**：用聊天對話即可產生 draw.io 圖表
- 🖼️ **圖片複製**：上傳現有圖表/圖片讓 AI 自動重建
- 📄 **PDF/文字檔上傳**：從文件提取內容生成圖表
- 🧠 **AI 推理顯示**：支援顯示 AI 思考過程（OpenAI o1/o3、Gemini、Claude 等）
- 📜 **圖表版本控制**：可查看和恢復之前的圖表版本
- ☁️ **雲架構圖支援**：專門優化 AWS、GCP、Azure 圖示
- 🎬 **動畫連接線**：動態連接線提升視覺效果
- 🔌 **MCP Server**：可與 Claude Desktop、Cursor、VS Code 等整合

## 怎麼用

```bash
# 安裝
git clone https://github.com/DayuanJiang/next-ai-draw-io
cd next-ai-draw-io
npm install
cp env.example .env.local
npm run dev
# 開啟 http://localhost:6002

# MCP 整合（Claude Code）
claude mcp add drawio -- npx @next-ai-drawio/mcp-server@latest

# Docker 部署
# 見 docs/en/docker.md

# 桌面應用
# 從 GitHub Releases 下載 Windows/macOS/Linux 安裝包
```

多 LLM Provider 支援：ByteDance Doubao、AWS Bedrock、OpenAI、Anthropic、Google AI、Ollama、DeepSeek、SiliconFlow 等。

## 跟其他方案的關係

| 方案 | Stars | 類型 | AI 建圖 | MCP 支援 | 雲架構圖 |
|------|-------|------|---------|---------|---------|
| **Next AI Draw.io** | ⭐30.3k | 網頁應用 | ✅ | ✅ | ✅ |
| [[presenton-presenton|Presenton]] | ⭐6.4k | PPT 生成 | ✅ | ❌ | ❌ |
| [[hugohe3-ppt-master|PPT Master]] | ⭐11.3k | PPT 生成 | ✅ | ❌ | ❌ |
| Mermaid.js | — | 文字轉圖 | ❌ | ❌ | ❌ |

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[visualization|資料視覺化]] · [[ChromeDevTools-chrome-devtools-mcp|Chrome DevTools MCP]]

## 來源

- GitHub: <https://github.com/DayuanJiang/next-ai-draw-io>
- Demo: <https://next-ai-drawio.jiang.jp/>
- 原始 README: `raw/2026-05-28-DayuanJiang-next-ai-draw-io.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [DayuanJiang/next-ai-draw-io](https://github.com/DayuanJiang/next-ai-draw-io) |
| Stars | ⭐30,250 |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-05-28 |