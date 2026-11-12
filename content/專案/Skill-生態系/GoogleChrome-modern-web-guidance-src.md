---
title: "Modern Web Guidance（Source）"
slug: GoogleChrome-modern-web-guidance-src
created: 2026-11-12
updated: 2026-11-12
stars: 1756
language: zh-TW
topics: ["AI-Skills", "frontend-design", "Coding-Agent-CLI"]
---

# Modern Web Guidance（Source）

> ⭐1.8k · 把現代 Web API、相容性及實務指引送入 Coding Agent 的技能來源專案。

## 快速導航

- [[AI-Skills]] — 延伸概念與相關工具。
- [[frontend-design]] — 延伸概念與相關工具。
- [[Coding-Agent-CLI]] — 延伸概念與相關工具。

## 是什麼

Modern Web Guidance 將 Web 平台專業知識、最佳實務與瀏覽器相容性資料提供給 Coding Agent，減少模型因舊訓練資料而反覆生成過時模式。本 repository 是來源與維護端，包含編寫、校準及評估內容的程式與文件；使用者發行內容則位於 GoogleChrome/modern-web-guidance。

其 CLI 能搜尋及取得特定指南，也提供 legacy-scan 找出待現代化的舊模式。內容強調使用原生瀏覽器能力、效能、無障礙及負責任的 fallback，而不是無條件移除所有舊 API 或 polyfill。

官方 README 指出，專案由 Chrome、Edge、Firefox、MDN 團隊及社群共同維護，並透過 evals 精簡模型本來已熟悉的內容。評估導向與 token-efficient 是設計方向，本頁不把它解讀成任何模型或網站的效果保證。

## 核心特色

- **可查詢指南**：search 找到相關指引，retrieve 以 ID 取回需要的內容。

- **舊模式掃描**：legacy-scan 協助定位可現代化的程式，結果仍需人工判斷。

- **平台能力優先**：涵蓋 CSS layout、表單與 UI、動畫、效能及無障礙。

- **相容性與 fallback**：以實際瀏覽器支援作決策，不盲目採用最新功能。

- **內容維護與評估**：來源 repo 包含編寫、校準及評估所需程式與文件。

## 怎麼用

### 前置條件

需要能執行 npx 的 Node.js/npm 環境。一般使用者可安裝已發布的 CLI／技能，不必先自行建置整個 source repository。

### 安裝與基本使用

```bash
npx modern-web-guidance@latest install
# 也可不先執行安裝精靈，直接查詢指南
npx modern-web-guidance@latest search "animate a dialog modal backdrop"
npx modern-web-guidance@latest retrieve "animate-to-from-top-layer"
npx modern-web-guidance@latest legacy-scan .
```

### 建議流程

1. 先依需求搜尋指南，再把相關內容交給 Coding Agent，避免一次塞入所有文件。
2. 對照產品支援的瀏覽器版本，決定採用原生 API 或保留 fallback。
3. 修改後實際驗證鍵盤操作、螢幕閱讀器需求、行為及效能。

### 使用界線

- source repository 與發行 repository 不同；本頁收錄前者，安裝指令使用發布套件。
- legacy-scan 的建議不是自動確認所有舊模式都有問題。
- 最新 Web 功能不一定符合專案最低瀏覽器版本，仍要做相容性驗收。

## 跟其他方案的關係

以下為依專案定位整理的比較，不是效能排行榜。

| 方案 | 重點 | 與本專案的關係 |
|---|---|---|
| 一般前端生成提示 | 描述畫面與互動目標 | 本專案補上具體平台 API 與相容性知識 |
| 完整 Web 文件網站 | 供開發者查閱完整參考 | 技能提供可直接放入 Agent 上下文的精選指引 |
| modern-web-guidance 發行 repo | 使用者安裝及查閱技能 | 本 source repo 側重內容編寫、校準與評估 |

## 相關概念

← [[AI-Skills]] · [[frontend-design]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub repository](https://github.com/GoogleChrome/modern-web-guidance-src)
- [官方 README](https://github.com/GoogleChrome/modern-web-guidance-src/blob/main/README.md)
- 原始快照：`raw/2026-11-12-GoogleChrome-modern-web-guidance-src.md`
- GitHub metadata：`raw/2026-11-12-GoogleChrome-modern-web-guidance-src.metadata.json`

---

| Metadata | 值 |
|---|---|
| GitHub | https://github.com/GoogleChrome/modern-web-guidance-src |
| Stars | 1,756（2026-11-12 快照） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-11-12 |
