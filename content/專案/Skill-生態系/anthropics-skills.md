---
title: Anthropic Skills
slug: anthropics-skills
created: 2026-06-08
updated: 2026-06-08
stars: 147937
language: Python
---

# Anthropic Skills

> ⭐147.9k · Anthropic 官方 Agent Skills 庫，提供結構化的操作指令讓 AI Agent 執行前端設計等任務。

## 快速導航

- 🎨 [[frontend-design]] · 🧪 [[anthropics-skills]] · 🤖 [[AI-Skills]] · [[agent-skills-ecosystem]]

## 是什麼

**Anthropic Skills** 是 Anthropic 官方維護的公開 GitHub 倉庫（[anthropics/skills](https://github.com/anthropics/skills)），旨在為 AI Agent 提供結構化的「技能定義檔」（SKILL.md）。每個技能檔案本質上是一份精心撰寫的 prompt 工程文件，指導 Agent 如何以高品質、可重現的方式完成特定任務。

目前倉庫收錄的核心技能包括 **frontend-design**（前端界面設計指南）和 **webapp-testing**（網頁應用測試工具），涵蓋從設計哲學到測試實作的完整規範。倉庫以 Python 為主要語言，⭐147,937 顆星，是 Agent Skills 領域最具指標性的開源專案之一。

## 核心特色

### 🧠 結構化技能定義

每個 Skill 以 `SKILL.md` 格式呈現，包含：
- **技能描述**：明確定義 Agent 應具備的行為與產出
- **操作指令**：一步步指引 Agent 的決策流程
- **品質標準**：定義產出的驗收門檻，確保一致性

### 🎨 Frontend-Design 技能

品質極高的前端設計規範，核心訴求是「避免 AI 產出的泛型美學」（AI slop），追求令人難忘的差異化設計：

**設計思維流程（Design Thinking）**：

| 步驟 | 說明 |
|------|------|
| Purpose | 界面解決什麼問題？誰在使用？ |
| Tone | 選擇極端美學方向：極簡、混亂極繁、復古未來、有機自然、奢華精緻、趣味玩具、編輯雜誌、粗獷主義、Art Deco、柔和粉彩… |
| Constraints | 技術限制（框架、效能、無障礙） |
| Differentiation | 什麼讓這個設計令人難忘？ |

**美學指南重點**：

| 面向 | 內容 |
|------|------|
| 字型排版 | 選用獨特字體，避免 Arial/Inter/Roboto 等泛型字體；搭配銳利的展示字體與精緻的正文字體 |
| 色彩與主題 | 承諾一個連貫美學方向，用 CSS 變數保持一致性；強烈主色 + 銳利強調色勝過膽怯的均勻配色 |
| 動畫 | CSS-only 為優先；React 用 Motion library；一場精心編排的頁面載入動畫 > 散落的微互動 |
| 空間構成 | 非預期的佈局：不對稱、重疊、對角線流動、打破格線、大量負空間或控制密度 |
| 背景與細節 | 漸層網格、噪點紋理、幾何圖案、透明層疊、戲劇性陰影、裝飾邊框、自訂游標、顆粒疊加 |

**反模式警告**：
- ❌ 泛型 AI 美學：Inter、Roboto、Arial、系統字體
- ❌ 陳腔濫調配色：紫色漸層 + 白色背景
- ❌ 可預測的佈局與元件模式
- ❌ 缺乏情境特色的罐頭設計
- ❌ 跨世代收斂到相同選擇（如 Space Grotesk）

**關鍵原則**：大膽極繁主義和精緻極簡主義都有效——重點是意圖性（Intentionality），而非強度。

### 🧪 Webapp-Testing 技能

網頁應用測試工具，使用 Playwright 進行自動化測試，核心理念是 **Reconnaissance-then-Action**（偵察先行再行動）：

| 功能 | 說明 |
|------|------|
| 決策樹 | 靜態 HTML → 直接讀取找選擇器；動態應用 → 先偵察再操作 |
| 本地應用測試 | 啟動 dev server 並自動執行測試腳本 |
| 多 Server 支援 | `with_server.py` 可同時管理前後端多個伺服器 |
| 偵察先行 | 先等 `networkidle` 再截圖/DOM 分析，避免盲猜選擇器 |

**決策樹流程**：
```
使用者任務 → 是否為靜態 HTML？
    ├─ 是 → 直接讀取 HTML 找選擇器
    │      ├─ 成功 → 用選擇器寫 Playwright 腳本
    │      └─ 失敗 → 視為動態應用處理
    └─ 否（動態 webapp）→ Server 是否已在運行？
        ├─ 否 → 執行 with_server.py --help
        └─ 是 → Reconnaissance-then-Action：
            1. 導航並等待 networkidle
            2. 截圖或檢查 DOM
            3. 從渲染狀態識別選擇器
            4. 用發現的選擇器執行動作
```

**常見陷阱**：
- ❌ 在動態應用上等 `networkidle` 之前就檢查 DOM
- ✅ 先 `page.wait_for_load_state('networkidle')` 再檢查

**最佳實踐**：
- 將內建腳本視為黑盒工具，用 `--help` 查看用法再直接調用
- 使用 `sync_playwright()` 寫同步腳本
- 始終關閉瀏覽器
- 使用描述性選擇器：`text=`、`role=`、CSS selectors、IDs
- 適當加入等待：`page.wait_for_selector()` 或 `page.wait_for_timeout()`

### 🔌 Agent-First 設計理念

Skills 的核心差異化在於：它不是給人類讀的文件，而是**專門為 AI Agent 最佳化**的操作手冊。語句精準、無歧義，讓 Agent 能穩定重現高品質產出。

## 怎麼用

### 1. 直接取用技能檔

```bash
git clone https://github.com/anthropics/skills.git
# 技能檔位於各子目錄的 SKILL.md
```

### 2. 在 Claude 專案中使用

將 `SKILL.md` 加入你的 Claude 專案（`.claude/` 目錄），Agent 會自動讀取並遵循技能規範：

```
your-project/
├── .claude/
│   └── SKILL.md    ← 複製 frontend-design 或 webapp-testing 的 SKILL.md
└── ...
```

### 3. Webapp-Testing 實際操作

```bash
# 單一 server
python scripts/with_server.py --server "npm run dev" --port 5173 -- python your_automation.py

# 多 server（前後端）
python scripts/with_server.py \
  --server "cd backend && python server.py" --port 3000 \
  --server "cd frontend && npm run dev" --port 5173 \
  -- python your_automation.py
```

### 4. 撰寫自定義技能

參考 frontend-design 的結構，你可以撰寫自己的 `SKILL.md`：
- 開頭描述技能目的與適用場景
- 中段列出具體操作步驟與決策判斷
- 結尾定義品質檢核標準

## 跟其他方案的關係

| 方案 | 定位 | 與 Anthropic Skills 的關係 |
|------|------|---------------------------|
| [[AI-Skills|AI Skills 通用概念]] | 概念框架 | Skills 是 AI Skills 概念的官方實作 |
| [[frontend-design]] | 具體技能 | 倉庫中的前端設計技能定義檔 |
| [[anthropics-skills]] | 具體技能 | 倉庫中的網頁測試技能定義檔 |
| [[agent-skills-ecosystem]] | 生態系 | Skills 是該生態系的標竿專案 |
| Cursor Rules | 競爭方案 | 同為 Agent 指令系統，但 Skills 更強調結構化與可複製性 |
| Claude Artifacts | 互補工具 | Skills 定義流程，Artifacts 呈現產出 |

## 相關概念

- **SKILL.md**：技能定義檔的標準格式，是 Agent Skills 生態系的基本單位
- **Prompt Engineering**：Skills 的本質是進階 prompt 工程，將隱性知識顯性化
- **Agent Workflow**：Skills 讓 Agent 能以確定性流程完成開放性任務
- **Production-Grade Design**：frontend-design 技能追求的是可直接上線的設計品質
- **Playwright**：webapp-testing 技能使用的瀏覽器自動化框架
- **Reconnaissance-then-Action**：先偵察再行動的測試模式，避免盲猜選擇器

← [[AI-Skills]] · [[frontend-design]] · [[anthropics-skills]] · [[agent-skills-ecosystem]]

## 來源

- https://github.com/anthropics/skills
- `raw/2026-06-08-anthropics-skills-frontend-design.md`
- `raw/2026-06-08-anthropics-skills-webapp-testing.md`

---

| 項目 | 資訊 |
|------|------|
| GitHub | [anthropics/skills](https://github.com/anthropics/skills) |
| Stars | 147,937 |
| 語言 | Python |
| 技能 | frontend-design, webapp-testing |
| 收錄日期 | 2026-06-08 |