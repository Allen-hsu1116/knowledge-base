---
title: open-slide
slug: 1weiho-open-slide
created: 2026-06-05
updated: 2026-06-05
stars: 4744
language: TypeScript
license: MIT
---

# open-slide

> ⭐4.7k · The slide framework built for agents — describe your deck in natural language, your coding agent writes the React.

## 快速導航

- 🤖 [[AI-Agent]] — Agent 框架與工具
- 🎨 [[AI-presentation]] — AI 簡報生成
- 💻 [[Coding-Agent-CLI]] — Coding Agent 工具

## 是什麼

open-slide 是一個專為 AI coding agent 設計的簡報框架。它讓使用者可以用自然語言描述簡報內容，由 coding agent 撰寫 React 程式碼來生成簡報。每張投影片渲染在固定的 1920×1080 畫布上，頁面是任意 React 元件，不是受限的 DSL。

核心理念：**Slides are visual code. Agents are great at writing code.** open-slide 是把「make slides about X」變成精緻簡報的 runtime，使用者完全不需要離開聊天介面。

## 核心特色

- **🤖 Agent-native authoring** — 支援任何 coding agent（Claude Code、Codex、Cursor 等），內建 `/create-slide` 和 `/slide-authoring` 技能，一個 prompt 就能生成整份簡報
- **🎯 In-browser inspector** — 點擊任何元素加留言（如「make this red」），執行 `/apply-comments` 由 agent 批次套用修改，形成「present → comment → apply → repeat」的工作循環
- **🖼️ Assets manager + svgl logo search** — 內建素材管理面板，整合 svgl 品牌圖示目錄，可直接搜尋拖放 SVG
- **🎬 Professional present mode** — 全螢幕播放、鍵盤導航、簡報者模式（含下一頁預覽、備註、計時器）
- **📦 Export to static HTML & PDF** — 一鍵匯出為自包含靜態 HTML 或可列印 PDF，無需伺服器即可分享
- **📁 Slide manager** — 用資料夾 + emoji 組織多份簡報，拖放排序
- **🚀 Deploy-friendly** — 純靜態輸出，一鍵部署到 Vercel / Cloudflare Pages / Zeabur / Netlify

## 怎麼用

```bash
# 初始化專案
npx @open-slide/cli init my-slide
cd my-slide
pnpm dev
```

腳手架自帶 Claude Code 的 agent skills 設定。之後可以透過 agent 驅動簡報，或直接編輯 `slides/<id>/index.tsx`。

**Agent 工作流程：**
1. 用 `/create-slide` 描述主題（4 個範圍問題：主題與美學、頁數、文字密度、動態 vs 靜態）
2. Agent 自動規劃結構並寫出頁面
3. 在 dev server 點擊元素加 comment
4. 執行 `/apply-comments` 讓 agent 批次修改

**開發：**
```bash
pnpm install
pnpm dev      # 對本地 @open-slide/core 跑 demo
pnpm build    # 建置所有包
pnpm check    # 型別檢查
pnpm lint     # biome lint
```

## 跟其他方案的關係

| 專案 | 語言 | Agent 原生 | 互動式 Comment Loop | 固定畫布 | 匯出格式 |
|------|------|-----------|---------------------|---------|---------|
| **open-slide** | TypeScript/React | ✅ 內建技能 | ✅ Inspector + comment markers | ✅ 1920×1080 | HTML, PDF |
| Slidev | Vue/Markdown | ❌ | ❌ | ❌ 自適應 | PDF, SPA |
| Marp | Markdown | ❌ | ❌ | ✅ 16:9/4:3 | PDF, HTML, PPTX |
| reveal.js | HTML/JS | ❌ | ❌ | ❌ 自適應 | PDF |
| Gamma | 商業產品 | ❌ | ❌ | ❌ | PPTX, PDF |

**開放 vs 封閉的關鍵差異：** open-slide 的核心差異是 **agent-native** — 不是把 AI 當附加功能，而是把整個工作流設計為 agent-first。Inspector comment loop 讓人類可以直接在視覺稿上標註修改意圖，再由 agent 批次執行，這是現有簡報工具都沒有的互動模式。

## 相關概念

← [[AI-Agent]] · [[AI-presentation]] · [[Coding-Agent-CLI]]

## 來源

- GitHub: https://github.com/1weiho/open-slide
- Raw: `raw/2026-06-05-1weiho-open-slide.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [1weiho/open-slide](https://github.com/1weiho/open-slide) |
| Stars | ⭐4,744 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-06-05 |
