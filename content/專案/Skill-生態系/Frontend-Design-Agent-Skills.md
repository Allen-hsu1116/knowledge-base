---
title: Frontend Design Agent Skills
slug: Frontend-Design-Agent-Skills
created: 2026-06-08
updated: 2026-06-08
stars: —
language: zh-TW
topics: [frontend-design, agent-skills, design-system, web-testing, accessibility, ui-ux]
---

# Frontend Design Agent Skills

> ⭐— · 四個專注前端設計品質的 Agent Skill 總覽：從設計哲學（frontend-design）到規範審查（web-design-guidelines），從設計系統建構（design-system-starter）到自動化測試（webapp-testing），涵蓋前端設計的完整生命週期。

## 快速導航

- 🎨 **設計哲學** → [[anthropics-skills|Anthropic Skills]] — frontend-design Skill
- 📐 **規範審查** → [[vercel-labs-agent-skills|Vercel Agent Skills]] — web-design-guidelines Skill
- 🛠️ **設計系統** → [[softaworks-agent-toolkit|SoftaWorks Toolkit]] — design-system-starter Skill
- 🧪 **自動化測試** → [[anthropics-skills|Anthropic Skills]] — webapp-testing Skill
- 🤖 **Agent 生態系** → [[AI-Skills]] · [[AI-Skills]]
- 🖌️ **Figma 整合** → [[Figma-Skills]]

## 是什麼

Frontend Design Agent Skills 是四個專注前端設計品質的 Agent Skill 總覽，涵蓋從設計哲學到規範審查、從設計系統建構到自動化測試的完整生命週期。這些 Skill 來自 Anthropic、Vercel 和 SoftaWorks 三個團隊，組合起來形成一個端到端的前端設計工作流。

它們不是單一工具，而是一組可執行的操作手冊（SKILL.md），讓 AI Agent 在編碼前先確立設計方向、在編碼後審查品質、在完成後自動化測試。

## 核心特色

- **設計哲學引導** — frontend-design Skill 要求 Agent 拒絕「通用 AI 美學」，選擇獨特字體、銳利配色、非預期佈局
- **規範動態取得** — web-design-guidelines 每次審查都從 GitHub 取得最新規則，不依賴本地快取
- **完整設計系統** — design-system-starter 從 Token 到元件到主題到文件，一次產出生產級設計系統
- **Playwright 自動化測試** — webapp-testing 用 Reconnaissance-then-Action 模式，先截圖識別 DOM 再操作
- **四階段協作流程** — 設計構想 → 系統建立 → 品質審查 → 測試驗證，每階段對應一個 Skill

## 怎麼用

```bash
# 1. 設計方向（frontend-design）
# 將 Skill 安裝到 Claude Code / Codex / Cursor
cp -r skills/frontend-design ~/.claude/skills/

# 2. 規範審查（web-design-guidelines）
cp -r skills/web-design-guidelines ~/.claude/skills/
# Agent 會自動從 GitHub 取得最新審查規則

# 3. 設計系統建構（design-system-starter）
cp -r skills/design-system-starter ~/.claude/skills/

# 4. 自動化測試（webapp-testing）
cp -r skills/webapp-testing ~/.claude/skills/
# 需要先安裝 Playwright: pip install playwright && playwright install
```

## 核心內容

### 四個 Skill 的一覽

| Skill | 來源倉庫 | Stars | 定位 | 核心功能 |
|-------|----------|-------|------|----------|
| **frontend-design** | [[anthropics-skills|Anthropic Skills]] | 147.9k | 設計哲學 | 定義非通用 AI 美學的設計方針，產出令人印象深刻的 UI |
| **web-design-guidelines** | [[vercel-labs-agent-skills|Vercel Agent Skills]] | 27.7k | 規範審查 | 審查 UI 程式碼是否符合 Web Interface Guidelines |
| **design-system-starter** | [[softaworks-agent-toolkit|SoftaWorks Toolkit]] | 2k | 系統建構 | 從零建立生產級設計系統（Token、元件、主題、文件） |
| **webapp-testing** | [[anthropics-skills|Anthropic Skills]] | 147.9k | 自動化測試 | 用 Playwright 測試本地 Web 應用的功能與 UI 行為 |

### frontend-design — 設計哲學與實作品質

來自 Anthropic Skills，是目前最被廣泛使用的前端設計 Agent Skill。

**核心理念**：AI 產出的 UI 常落入「通用 AI 美學」（AI slop）——過度使用 Inter/Roboto、紫色漸層白底、千篇一律的排版。frontend-design Skill 要求 Agent 在編碼前先確立 **大膽的設計方向**：

| 設計面向 | 指導原則 |
|----------|----------|
| **排版（Typography）** | 選擇獨特、有特色的字體，拒絕 Arial/Inter/Roboto |
| **色彩（Color）** | 主色調 + 銳利強調色，CSS 變數保持一致性，避免均勻分布的膽怯配色 |
| **動畫（Motion）** | CSS 優先，React 用 Motion 庫，聚焦高影響力時刻（頁面載入、交錯顯示） |
| **空間構成（Spatial）** | 非預期佈局：不對稱、重疊、對角線流動、大量留白或受控密度 |
| **背景細節（Detail）** | 漸層網格、噪點紋理、幾何圖案、戲劇性陰影、裝飾性邊框 |

**反模式清單**：
- ❌ 過度使用的字型（Inter、Roboto、Arial、系統字型）
- ❌ 陳腔濫調的配色（紫色漸層白底）
- ❌ 可預測的佈局和元件模式
- ❌ 缺乏上下文特徵的千篇一律設計
- ❌ 跨次生成趨同（如每次都用 Space Grotesk）

**關鍵原則**：實作複雜度必須匹配設計野心——極繁設計需要精緻程式碼，極簡設計需要精確間距和細節注意力。

### web-design-guidelines — UI 規範審查

來自 Vercel Agent Skills，定位為 **審查工具** 而非設計工具。

**工作流程**：
1. 從 Vercel 的 Web Interface Guidelines 取得最新規則
2. 讀取使用者指定的檔案
3. 逐條檢查合規性
4. 以 `file:line` 格式輸出違規項目

**審查範圍**涵蓋：
- 無障礙設計（ARIA 標籤、鍵盤導航、色彩對比）
- 效能最佳化（Core Web Vitals：LCP、FID、CLS）
- 語意化 HTML（正確的 header/nav/main/section/footer）
- UX 反模式（缺少 loading 狀態、破壞使用者預期的動線）

**特點**：規則是動態取得的（`https://raw.githubusercontent.com/vercel-labs/web-interface-guidelines/main/command.md`），每次審查都使用最新版本。

### design-system-starter — 設計系統建構

來自 SoftaWorks Agent Toolkit，定位為 **從零建立設計系統的完整指南**。

**五大核心領域**：

| 領域 | 內容 |
|------|------|
| **Design Tokens** | 色彩（50–950 尺度）、字體、間距（4px/8px 基準）、圓角、陰影 |
| **元件架構** | Atomic Design：Atom → Molecule → Organism → Template → Page |
| **無障礙** | WCAG 2.1 AA（4.5:1 正常文字、3:1 大文字）、鍵盤操作、ARIA |
| **主題系統** | CSS 變數 / Tailwind dark mode / Styled Components ThemeProvider |
| **文件產出** | 元件用途、Props API、無障礙說明、使用範例 |

**設計哲學四原則**：
1. **一致性優於創意**：可預測的模式降低認知負擔
2. **無障礙為預設**：WCAG 2.1 AA 為最低標準
3. **可擴展且可維護**：Design Token 讓全域修改一致
4. **開發者友善**：清晰的 API 合約和文件

**整合工具鏈**：React/TypeScript、Style Dictionary、Tailwind CSS、Styled Components、Storybook、Figma。

### webapp-testing — Web 應用自動化測試

來自 Anthropic Skills，用 Playwright 進行本地 Web 應用測試。

**決策樹**：
```
靜態 HTML → 直接讀取檔案
動態 Webapp → Server 已在跑？→ 否 → 用 with_server.py 啟動
                                    → 是 → Reconnaissance-then-Action
```

**核心模式：Reconnaissance-then-Action**
1. 導航並等待 `networkidle`
2. 截圖或檢查 DOM
3. 從渲染狀態識別選擇器
4. 用發現的選擇器執行操作

**常見陷阱**：永遠在 `page.wait_for_load_state('networkidle')` 之後才檢查 DOM，不要在動態應用中提早檢查。

**輔助腳本**：
- `with_server.py` — 管理多個 Server 生命週期（前後端同時啟動）
- `element_discovery.py` — 發現頁面上的按鈕、連結和輸入框
- `console_logging.py` — 擷取自動化過程中的 Console 日誌

### 四個 Skill 的协作关系

```
設計構想 ────────────────────────────────── 程式碼實作 ──── 測試驗證
   │                                           │              │
   │  frontend-design                          │              │
   │  (設計方針 + 避免AI slop)                 │              │
   │         │                                  │              │
   │         ▼                                  │              │
   │  design-system-starter                     │              │
   │  (Token + 元件 + 主題 + 文件)              │              │
   │         │                                  │              │
   │         ▼                                  │              │
   │  web-design-guidelines ──── 審查 ──────────┘              │
   │  (合規性檢查)                              │              │
   │                                            │              │
   │                                            ▼              │
   │                                     webapp-testing ───────┘
   │                                     (Playwright 自動化測試)
```

| 工作流階段 | 推薦 Skill | 輸出 |
|------------|------------|------|
| 設計方向決策 | frontend-design | 大膽美學的 UI 程式碼 |
| 設計系統建立 | design-system-starter | Token 定義 + 元件架構 + 主題 |
| 程式碼品質審查 | web-design-guidelines | `file:line` 格式的違規報告 |
| 功能與 UI 測試 | webapp-testing | Playwright 測試腳本 + 截圖驗證 |

## 跟其他方案的關係

| 方案 | Stars | 特色 | 與前端設計 Agent Skills 的關係 |
|------|-------|------|-------------------------------|
| [[Figma-Skills]] | — | Figma 雙向工作流 | 互補：Figma Skills 處理設計工具整合，前端設計 Skills 處理程式碼品質 |
| [[nextlevelbuilder-ui-ux-pro-max-skill|UI UX Pro Max]] | 88.8k | 完整 UI/UX 設計參考 | 互補：UI UX Pro Max 是參考手冊，Agent Skills 是可執行的操作指令 |
| [[Figma-Skills]] | — | Figma 概念總覽 | 上位概念頁 |

## 相關概念

← [[frontend-design]] · [[AI-Skills]] · [[AI-Skills]] · [[frontend-design]] · [[Figma-Skills]] · [[anthropics-skills]] · [[nexu-io-open-design]] · [[gsap-ai-skills|GSAP AI Skills]]

## 來源

- https://github.com/anthropics/skills/blob/main/skills/frontend-design/SKILL.md
- https://github.com/vercel-labs/agent-skills/blob/main/skills/web-design-guidelines/SKILL.md
- https://github.com/softaworks/agent-toolkit/blob/main/skills/design-system-starter/README.md
- https://github.com/anthropics/skills/blob/main/skills/webapp-testing/SKILL.md

---

| 項目 | 資訊 |
|------|------|
| 類型 | 概念頁 |
| 收錄日期 | 2026-06-08 |
| **License** | 未標示 |
