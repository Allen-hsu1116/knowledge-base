---
title: "nextlevelbuilder/ui-ux-pro-max-skill"
stars: 88842
license: MIT
language: Python
topics: [AI Skills, Frontend Design, UI/UX]
source: https://github.com/nextlevelbuilder/ui-ux-pro-max-skill
website: https://uupm.cc
slug: nextlevelbuilder-ui-ux-pro-max-skill
created: 2026-06-08
updated: 2026-06-08
---

# nextlevelbuilder/ui-ux-pro-max-skill

> ⭐88.8k · 跨平台 AI 設計技能定義，涵蓋 Design Token、Atomic Design、WCAG 2.1 AA、深色模式和 v2.0 智慧設計系統生成器。

## 快速導航

- 🎨 **前端設計** → [[frontend-design|前端設計]] · [[Frontend-Design-Agent-Skills|Frontend Design Skills]]
- 🛠️ **Agent Skills** → [[AI-Skills|AI Skills]] · [[AI-Skills|Agent Skills 生態系]]
- 📐 **設計工具** → [[anthropics-skills|Anthropic Skills]] · [[vercel-labs-agent-skills|Vercel Agent Skills]] · [[softaworks-agent-toolkit|SoftaWorks Toolkit]]

## 是什麼

**ui-ux-pro-max-skill** 是一個為 AI agent 設計的技能定義（skill），提供跨平台的專業 UI/UX 設計智慧。它以結構化的 markdown 格式定義了完整的設計系統規範，讓 AI 在生成前端程式碼時能遵循一致的高水準設計原則。截至 2026 年 6 月，該專案已獲得 **88,842** 顆星，是目前最受歡迎的 AI 設計技能定義之一。

核心定位：不是 UI 元件庫，而是一套**可被 AI 讀取並遵循的設計決策框架**，涵蓋設計系統 token、元件架構、無障礙標準、動畫規範、排版與色彩系統等全方位指引。

## 核心特色

- **設計系統與 Token**：定義完整的 Design Token 階層（Global → Alias → Component），確保跨平台一致性
- **元件架構**：遵循 Atomic Design 原子設計方法論，從 Atom → Molecule → Organism → Template → Page 分層
- **無障礙優先**：WCAG 2.1 AA 最低標準，涵蓋對比度、鍵盤導航、螢幕閱讀器支援
- **多平台指南**：針對 iOS、Android、Web、Desktop 各平台提供客製化規範
- **深色模式**：原生支援 Dark Mode，包含語義化色彩映射與切換策略
- **動畫與微互動**：定義 easing 曲線、持續時間、可停用動畫的 `prefers-reduced-motion` 處理
- **排版系統**：Modular Scale 排版、8px 基線網格、回應式字體縮放
- **錯誤處理**：統一的驗證模式、錯誤訊息規範與漸進增強策略
- **效能優化**：針對渲染效能、圖片載入、動畫流暢度的最佳實踐
- **🆕 v2.0 設計系統生成器**：AI 驅動推理引擎，分析專案需求並自動生成完整的客製化設計系統

## v2.0 新功能：智慧設計系統生成

v2.0 的旗艦功能是**設計系統生成器**，透過多領域搜索和推理引擎，為特定專案自動推薦最適合的設計系統組合：

1. **使用者提出需求**（如「為我的美容 SPA 建立登入頁」）
2. **五路並行搜索**：產品類型匹配（161 類別）、風格推薦（67 種）、配色選擇（161 配色盤）、登入頁模式（24 種）、字型配對（57 組合）
3. **推理引擎**：匹配產品/UI 類別規則、排序風格優先順序（BM25）、過濾反模式、處理決策規則
4. **輸出完整設計系統**：模式 + 風格 + 色彩 + 字型 + 效果 + 反模式清單 + 交付前檢查表

### 161 條行業特定推理規則

| 類別 | 範例 |
|------|------|
| **Tech & SaaS** | SaaS、Micro SaaS、B2B Service、Developer Tool / IDE、AI/Chatbot Platform、Cybersecurity Platform |
| **Finance** | Fintech/Crypto、Banking、Insurance、Personal Finance Tracker、Invoice & Billing Tool |
| **Healthcare** | Medical Clinic、Pharmacy、Dental、Veterinary、Mental Health、Medication Reminder |
| **E-commerce** | General、Luxury、Marketplace (P2P)、Subscription Box、Food Delivery |
| **Services** | Beauty/Spa、Restaurant、Hotel、Legal、Home Services、Booking & Appointment |
| **Creative** | Portfolio、Agency、Photography、Gaming、Music Streaming、Photo/Video Editor |
| **Lifestyle** | Habit Tracker、Recipe & Cooking、Meditation、Weather、Diary、Mood Tracker |
| **Emerging Tech** | Web3/NFT、Spatial Computing、Quantum Computing、Autonomous Drone Fleet |

每條規則包含：推薦模式、風格優先順序、配色情緒、字型情緒、關鍵效果、反模式（如「銀行業不要用 AI 紫色/粉色漸層」）

### 67 種 UI 風格

分為三大類：通用風格（49 種）、登入頁風格（8 種）、BI/分析儀表板風格（10 種）。

部分亮點：Minimalism、Glassmorphism、Neumorphism、Claymorphism、Brutalism、Dark Mode (OLED)、AI-Native UI、Spatial UI (VisionOS)、Liquid Glass、Bento Grid、HUD/Sci-Fi FUI 等。

### 其他內容

- **161 配色盤**：與 161 種產品類型 1:1 對應
- **57 組字型配對**：含 Google Fonts 匯入
- **25 種圖表類型**：為儀表板和分析場景推薦
- **15 種技術棧**：含 React、Next.js、Astro、Vue、Nuxt.js、SwiftUI、Jetpack Compose、Flutter、Angular、Laravel、shadcn/ui 等
- **99 條 UX 準則**：最佳實踐、反模式和無障礙規則

## 架構與設計

專案本質是一份大型 markdown 文件（~23KB README），加上 v2.0 的搜尋引擎和設計系統生成腳本：

```
ui-ux-pro-max-skill/
├── README.md            # 主技能定義（完整設計系統）
├── src/ui-ux-pro-max/   # 原始碼（資料、腳本、範本）
│   ├── data/*.csv        # 資料庫檔案
│   ├── scripts/*.py      # 搜尋引擎和設計系統生成器
│   └── templates/        # 平台特定範本
├── cli/                  # CLI 安裝器（從範本產生平台檔案）
├── LICENSE               # MIT 授權
└── skill.yml             # 技能元資料（若有）
```

設計 Token 階層：
1. **Global Tokens** — 原始值（如 `color-blue-500: #3B82F6`）
2. **Alias Tokens** — 語義化映射（如 `color-primary: {color-blue-500}`）
3. **Component Tokens** — 元件層級覆寫（如 `button-bg: {color-primary}`）

這種三層架構讓設計決策可追溯、可主題化，且易於跨平台移植。

## 怎麼用

### 使用 Claude Marketplace

```
/plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill
/plugin install ui-ux-pro-max@ui-ux-pro-max-skill
```

### 使用 CLI（推薦）

```bash
# 全域安裝 CLI
npm install -g uipro-cli

# 為你的 AI 助手安裝
uipro init --ai claude      # Claude Code
uipro init --ai cursor      # Cursor
uipro init --ai windsurf    # Windsurf
uipro init --ai codex       # Codex CLI
uipro init --ai gemini      # Gemini CLI
uipro init --ai all         # 所有助手
```

### 全域安裝

```bash
uipro init --ai claude --global   # 安裝到 ~/.claude/skills/
uipro init --ai cursor --global   # 安裝到 ~/.cursor/skills/
```

### 設計系統命令（進階）

```bash
# 產生設計系統（ASCII 輸出）
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "beauty spa wellness" --design-system -p "Serenity Spa"

# 產生設計系統（Markdown 輸出）
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "fintech banking" --design-system -f markdown

# 領域特定搜尋
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "glassmorphism" --domain style
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "elegant serif" --domain typography

# 技術棧特定指引
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "form validation" --stack react
```

### 持久化設計系統（Master + Overrides 模式）

```bash
# 產生並持久化到 design-system/MASTER.md
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "SaaS dashboard" --design-system --persist -p "MyApp"

# 也建立頁面特定覆寫檔案
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "SaaS dashboard" --design-system --persist -p "MyApp" --page "dashboard"
```

產生 `design-system/` 資料夾結構：
```
design-system/
├── MASTER.md           # 全域真實來源（色彩、排版、間距、元件）
└── pages/
    └── dashboard.md    # 頁面特定覆寫（僅偏離 Master 的部分）
```

## 設計系統與 Token

### 排版系統

- 採用 **Modular Scale**（預設比例 1.25 — Major Third）
- 基礎字級 16px，向上產生 scale：16 → 20 → 25 → 31.25 → 39...
- 行高依字級動態調整，確保可讀性
- 回應式斷點下自動縮放（Desktop → Tablet → Mobile）

### 色彩系統

- 基於 **OKLCH** 色彩空間定義，優於傳統 HSL
- 每個色相提供 50–950 完整色階（如 `slate-50` 至 `slate-950`）
- 支援 **動態主題**：透過 CSS 變數或 Design Token 實現執行時期切換
- 深色模式使用語義映射，非簡單反轉亮度

### 間距與網格

- 8px 基線網格，4px 子網格用於小元件
- 間距 token：`space-1`(4px) → `space-2`(8px) → ... → `space-12`(48px) → `space-16`(64px)
- 12 欄網格系統，回應式斷點：640px / 768px / 1024px / 1280px / 1536px

## 無障礙與回應式設計

### WCAG 2.1 AA 合規

| 項目 | 最低要求 | 建議目標 |
|------|----------|----------|
| 對比度（一般文字） | 4.5:1 | 7:1 (AAA) |
| 對比度（大文字） | 3:1 | 4.5:1 (AA) |
| 觸控目標尺寸 | 44×44px | 48×48px |
| 焦點可見性 | 明顯焦點環 | 3px+ 高對比環 |

### 回應式策略

- **Mobile-First** 為預設開發方向
- 流體排版 `clamp()` 函數防止断崖式跳動
- 圖片 `<picture>` 元素配合 `srcset` 適應裝置
- 容器查詢（Container Queries）用於元件級回應式

## 平台指南

針對四大平台提供差異化指引：

- **iOS**：遵循 Human Interface Guidelines，使用 SF Symbols、Dynamic Type、UIKit/SwiftUI 元件映射
- **Android**：遵循 Material Design 3（Material You），支援動態色彩、底部導航、FloatingActionButton 規範
- **Web**：語義化 HTML5、ARIA 屬性、CSS Custom Properties、Progressive Enhancement
- **Desktop**：視窗管理、鍵盤快捷鍵、選單列、對話框空間利用

## 效能與測試

### 效能最佳實踐

- INP（Interaction to Next Paint）< 200ms
- LCP < 2.5s / FID < 100ms / CLS < 0.1
- 圖片 lazy loading + AVIF/WebP 格式優先
- CSS containment (`contain: layout paint`) 隔離重繪範圍
- 動畫限用 `transform` + `opacity` 屬性以觸發 GPU 合成

### 測試策略

- **視覺回歸測試**：Chromatic / Playwright screenshot 比對
- **無障礙測試**：axe-core 自動掃描 + 手動螢幕閱讀器驗證
- **跨瀏覽器**：Chrome / Firefox / Safari / Edge 最新兩版
- **元件單元測試**：Storybook + Testing Library 模式

## 跟其他方案的關係

| 維度 | ui-ux-pro-max-skill | [[anthropics-skills|anthropics/skills frontend-design]] | [[vercel-labs-agent-skills|vercel-labs/web-design-guidelines]] | [[softaworks-agent-toolkit|softaworks/design-system-starter]] |
|------|---------------------|-----|-----|-----|
| 定位 | 全平台 AI 設計技能 | Claude 專用前端技能 | Web 設計指引 | Design System 樣板 |
| 格式 | Markdown skill 定義 | YAML + Markdown | Markdown 文件 | 程式碼樣板 |
| 平台覆蓋 | iOS + Android + Web + Desktop | Web 優先 | Web only | Web 為主 |
| 無障礙 | WCAG 2.1 AA 最低 | 基本涵蓋 | 部分提及 | 視專案而定 |
| 深色模式 | ✅ 完整語義映射 | ⚠️ 基本 | ❌ 未涵蓋 | ⚠️ 需自行實作 |
| 動畫規範 | ✅ easing + duration + reduced-motion | ❌ | ⚠️ 基本過渡 | ❌ |
| Design Token | ✅ 三層架構 | ⚠️ 基礎 | ❌ | ✅ 完整 token |
| 元件架構 | Atomic Design 分層 | ❌ | ❌ | ✅ Element 為主 |
| 星數 | 88,842+ | ~12,000 | ~3,500 | ~1,200 |
| 授權 | MIT | MIT | MIT | MIT |

ui-ux-pro-max-skill 的核心差異化在於：它是**唯一同時涵蓋四大平台且以 AI skill 格式交付**的方案，並在 v2.0 新增了智慧設計系統生成器，適合需要在 AI 輔助開發流程中注入設計智慧的場景。

## 相關概念

← [[frontend-design|前端設計]] · [[AI-Skills|AI Skills]] · [[anthropics-skills|Anthropic Skills]] · [[vercel-labs-agent-skills|Vercel Agent Skills]] · [[softaworks-agent-toolkit|SoftaWorks Toolkit]]

## 來源

- **GitHub**：[nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill)
- **官方網站**：[uupm.cc](https://uupm.cc)
- 📁 raw：`raw/2026-06-08-nextlevelbuilder-ui-ux-pro-max-skill.md`
- 📁 raw：`raw/2026-06-08-nextlevelbuilder-ui-ux-pro-max-skill-README.md`

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/nextlevelbuilder/ui-ux-pro-max-skill |
| **Stars** | ⭐88,842 |
| **License** | MIT |
| **收錄日期** | 2026-06-08 |