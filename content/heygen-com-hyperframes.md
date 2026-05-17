# Hyperframes

> Write HTML. Render video. Built for agents. HeyGen 開源的影片渲染框架，HTML-native + AI-first，同一份 HTML 即是預覽也是最終渲染。

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/heygen-com/hyperframes |
| Stars | ⭐15,232 |
| Language | TypeScript |
| 建立日期 | 2026-03-10 |
| 授權 | MIT |
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

### HTML-native Composition

Composition 就是 HTML 檔案 + data attribute 標記時間軸。不用 React、不用專屬 DSL。Agent 已經會寫 HTML——直接把 HTML 能力變成影片能力。

```html
<div data-start="0" data-end="5">
  <h1 data-animation="fade-in">Hello World</h1>
  <video data-src="background.mp4" data-loop></video>
</div>
```

### AI-first CLI

CLI 預設非互動模式，專為 Agent 驅動的工作流設計。Agent 用 `/hyperframes` skill 學會寫正確的 composition、GSAP timeline、Tailwind v4 browser-runtime 樣式和第一方 adapter 動畫。

```bash
# 初始化專案（自動安裝 skills）
npx hyperframes init my-video
cd my-video

# 瀏覽器預覽（live reload）
npx hyperframes preview

# 渲染成 MP4
npx hyperframes render
```

### Frame Adapter 模式

帶你自己的動畫 runtime：GSAP、Lottie、CSS、Three.js、anime.js、WAAPI、CSS Animations。每個 adapter 是一個獨立的 skill，Agent 依 composition 需求載入對應 skill。

### Skills 生態系

安裝方式多平台：

```bash
# Claude Code / Codex
npx skills add heygen-com/hyperframes

# Codex plugin（sparse install）
codex plugin marketplace add heygen-com/hyperframes --sparse .codex-plugin --sparse skills --sparse assets

# Claude Code plugin manifest
# 內建 .claude-plugin/plugin.json
```

Slash commands（Claude Code）：
- `/hyperframes` — 撰寫 composition
- `/hyperframes-cli` — init、lint、preview、render
- `/hyperframes-media` — TTS、轉錄、去背
- `/tailwind` — Tailwind v4 專案設定
- `/gsap` — timeline 動畫
- Adapter skills：`/animejs`、`/css-animations`、`/lottie`、`/three`、`/waapi`

### Prompt 模式

**冷啟動** — 描述你想要什麼：
> Using /hyperframes, create a 10-second product intro with a fade-in title, a background video, and background music.

**熱啟動** — 把現有內容變影片：
> Summarize the attached PDF into a 45-second pitch video using /hyperframes.

**迭代** — 像影片剪輯師一樣對話：
> Make the title 2x bigger, swap to dark mode, and add a fade-out at the end.

## 安裝方式

```bash
npx hyperframes init my-video
cd my-video
npx hyperframes preview   # 瀏覽器預覽
npx hyperframes render    # 渲染 MP4
```

需求：Node.js >= 22、FFmpeg

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

- GitHub: https://github.com/heygen-com/hyperframes