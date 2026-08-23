---
title: video-spec-builder
slug: feicaiclub-video-spec-builder
created: 2025-06-07
updated: 2025-06-07
stars: 306
language: JavaScript
topics: [Video-Generation, Spec-Driven, Coding-Agent]
---

# video-spec-builder

> ⭐306 · 一個像導演一樣的 AI Skill，透過反覆提問把模糊的影片想法變成精確到秒的分鏡腳本 (video-spec.md)。

## 快速導航


- 🤖 [[AI-Agent]] — AI 智能體工作流
- 🎬 [[harry0703-MoneyPrinterTurbo]] — AI 短影片生成工具
- 🎞️ [[linyqh-NarratoAI]] — AI 影視解說+剪輯
- ⚙️ [[workflow-automation]] — 工作流程自動化

## 是什麼

**video-spec-builder** 是一個為 Coding Agent（Claude Code、Codex、Cursor 等）設計的 Skill。它的核心功能是像導演一樣，透過反覆提問把模糊的影片想法變成一份精確到秒的分鏡腳本 `video-spec.md`，然後交給 HyperFrames 渲染成真正的影片。

它不解決影片渲染的問題，而是解決更根本的問題：你有一個想法但說不清楚。它會像導演一樣追問：給誰看的？多長？觀眾應該記住的一句話是什麼？哪個鏡頭承載核心？直到你的想法變成可以執行的分鏡腳本。

## 核心特色

- **🎬 導演式提問** — 不接受「高級感」「震撼」等模糊描述，持續追問直到描述具體
- **📝 精確分鏡** — 輸出 shot-by-shot 腳本，每個鏡頭都有時長、內容、轉場
- **🔗 兩段式工作流** — video-spec-builder（上游：想法→腳本）+ HyperFrames（下游：腳本→影片）
- **🛠️ Skills CLI 安裝** — 一條指令安裝，支援 Codex、Claude Code、Cursor
- **✏️ 改稿模式** — 已有腳本時，只改需要改的部分，自動檢查連鎖影響

## 怎麼用

```bash
# 安裝 video-spec-builder 和 HyperFrames（渲染器）
npx skills add heygen-com/hyperframes
npx skills add feicaiclub/video-spec-builder

# 全域安裝（可在任何專案中使用）
npx skills add feicaiclub/video-spec-builder -g

# 在 Claude Code 或 Codex 中使用
# 直接告訴 AI：「我想做一支影片」
# video-spec-builder 會接管對話，引導你完成分鏡腳本

# 已有腳本時，告訴 AI 你想改什麼
# 它會確認改動、修改、檢查連鎖影響
```

## 跟其他方案的關係

| 專案 | 定位 | 輸入 | 輸出 | Agent 整合 | 開源 |
|------|------|------|------|-----------|------|
| **video-spec-builder** | 分鏡腳本生成 | 模糊想法 | video-spec.md | ✅ Skills CLI | ✅ MIT |
| [[harry0703-MoneyPrinterTurbo|MoneyPrinterTurbo]] | 短影片生成 | 主題/關鍵字 | 完整影片 | ❌ 獨立運行 | ✅ MIT |
| [[linyqh-NarratoAI|NarratoAI]] | 影視解說+剪輯 | 影片素材 | 解說影片 | ❌ 獨立運行 | ✅ |

## 相關概念


← [[AI-Agent]] · [[harry0703-MoneyPrinterTurbo]] · [[linyqh-NarratoAI]] · [[workflow-automation]]

## 來源

- **GitHub**: https://github.com/feicaiclub/video-spec-builder
- raw/2025-06-07-feicaiclub-video-spec-builder.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/feicaiclub/video-spec-builder |
| Stars | ⭐306|
| License | MIT License |
| 收錄日期 | 2025-06-07 |
