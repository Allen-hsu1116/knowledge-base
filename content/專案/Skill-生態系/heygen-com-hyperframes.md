---
title: Hyperframes
slug: heygen-com-hyperframes
created: 2026-03-10
updated: 2026-03-10
stars: 18,926
language: zh-TW
topics: [AI Skills, AI Agent, Prompt Engineering]
---

# Hyperframes

> ⭐18,926 · Write HTML. Render video. Built for agents. HeyGen 開源的影片渲染框架，HTML-native + AI-first，同一份 HTML 即是預覽也是最終渲染。

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/heygen-com/hyperframes |
| Stars | ⭐18,926 |
| Language | TypeScript |
| 建立日期 | 2026-03-10 |
| 授權 | Apache-2.0 |
| 收錄日期 | 2026-05-07 |

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（Hyperframes 是 Agent-first 的影片生成工具）
- 🛠 **AI Skills** → [[AI-Skills]]（以 Skills 格式教 Agent 寫影片 composition）
- 🔌 **MCP** → [[MCP]]（Agent 透過 MCP 操作渲染管線）
- ⚡ **Prompt Engineering** → [[Prompt-Engineering]]（描述即影片的 prompt 設計）

## 是什麼

Hyperframes 是 HeyGen 開源的影片渲染框架，核心理念：composition 就是 HTML 檔案，加 data attribute 標記時間軸。Agent 已經會寫 HTML——所以讓 Agent 寫 HTML 就等於讓 Agent 做影片。同一份 HTML 檔案在瀏覽器預覽，也可確定性渲染成 MP4。相同輸入 = 相同輸出，建構在自動化管線上可靠。

靈感來自 Remotion——HeyGen 在生產環境用過 Remotion，學了很多，保留了他們首創的模式（Chrome launch flags、image2pipe → FFmpeg streaming、frame buffering），在原始碼中保留了 attribution comments。兩者都用 headless Chrome、都是確定性渲染。差異在一個核心決定：作者主要寫什麼。Remotion 賭 React component，Hyperframes 賭純 HTML。

## 核心特色

- **HTML-native Composition** — Composition 就是 HTML 檔案 + data attribute 標記時間軸，不用 React、不用專屬 DSL。Agent 已經會寫 HTML——直接把 HTML 能力變成影片能力
- **AI-first CLI** — CLI 預設非互動模式，專為 Agent 驅動的工作流設計。Agent 用 `/hyperframes` skill 學會寫正確的 composition、GSAP timeline、Tailwind v4 browser-runtime 樣式和第一方 adapter 動畫
- **Frame Adapter 模式** — 帶你自己的動畫 runtime：GSAP、Lottie、CSS、Three.js、anime.js、WAAPI、CSS Animations。每個 adapter 是一個獨立的 skill，Agent 依 composition 需求載入對應 skill
- **Skills 生態系** — 支援 Claude Code、Codex 等多平台安裝，提供 `/hyperframes`、`/hyperframes-cli`、`/hyperframes-media`、`/tailwind`、`/gsap` 等 slash commands，以及 `/animejs`、`/css-animations`、`/lottie`、`/three`、`/waapi` 等 adapter skills
- **確定性渲染** — 相同輸入 = 相同輸出，建構在 headless Chrome + FFmpeg 自動化管線上，適合 CI/CD 環境



## 怎麼用

### 安裝

```bash
npx hyperframes init my-video
cd my-video
npx hyperframes preview   # 瀏覽器預覽
npx hyperframes render    # 渲染 MP4
```

需求：Node.js >= 22、FFmpeg

### 使用流程

1. 初始化專案（自動安裝 skills）
2. 撰寫 HTML composition（用 data attributes 標記時間軸）
3. 瀏覽器預覽（live reload）
4. 渲染成 MP4

### Agent 驅動工作流

**冷啟動** — 描述你想要什麼：
> ⭐18,926 · Write HTML. Render video. Built for agents. HeyGen 開源的影片渲染框架，HTML-native + AI-first，同一份 HTML 即是預覽也是最終渲染。

**熱啟動** — 把現有內容變影片：
> ⭐18,926 · Write HTML. Render video. Built for agents. HeyGen 開源的影片渲染框架，HTML-native + AI-first，同一份 HTML 即是預覽也是最終渲染。

**迭代** — 像影片剪輯師一樣對話：
> ⭐18,926 · Write HTML. Render video. Built for agents. HeyGen 開源的影片渲染框架，HTML-native + AI-first，同一份 HTML 即是預覽也是最終渲染。

## 技術棧

- **TypeScript** — 主要語言
- **HTML + data attributes** — Composition 格式
- **Headless Chrome** — 確定性渲染
- **FFmpeg** — 影片輸出
- **GSAP / Lottie / Three.js** — 動畫 adapter
- **Tailwind v4** — browser-runtime 樣式
- **npm** — `hyperframes` 套件

## 跟其他方案的關係

Hyperframes 把 [[AI-Agent]] 的 HTML 能力直接轉換成影片生成能力，是 [[AI-Skills]] 生態系的影片工具。Agent 透過 skill 學會寫 composition，CLI 非互動設計適合 Agent 驅動的 [[Prompt-Engineering]] 工作流。

跟 Remotion 的核心差異：Remotion 用 React component 寫 composition（需要 React 知識），Hyperframes 用純 HTML（Agent 本來就會）。兩者都用 headless Chrome + 確定性渲染，但 Hyperframes 的「HTML-native」決定讓 AI Agent 的入門門檻降到最低。

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[MCP]] · [[Prompt-Engineering]]

## 來源

- [原始資料](../raw/2026-05-07-heygen-com-hyperframes.md)
- GitHub: https://github.com/heygen-com/hyperframes

---

| 項目 | 值 |
|------|-----|
| GitHub | [heygen-com/hyperframes](https://github.com/heygen-com/hyperframes) |
| Stars | ⭐18,926 |
| License | — |
| 收錄日期 | 2026-03-10 |
