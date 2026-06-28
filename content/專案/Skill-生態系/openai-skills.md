---
title: OpenAI Skills (Codex Skills Catalog)
slug: openai-skills
created: 2026-06-08
updated: 2026-06-08
stars: 21702
language: Python
---

# OpenAI Skills

> ⭐21.7k · OpenAI 官方 Skills Catalog for Codex，包含 Figma 工作流和設計實作的系列 Skill。

## 快速導航

- 🎨 [[Figma-Skills]] · 🤖 [[AI-Skills]] · [[agent-skills-ecosystem]]
- 🖌️ [[frontend-design]] · [[softaworks-agent-toolkit|Design System Starter]]

## 是什麼

OpenAI Skills 是 OpenAI 官方提供的 Agent Skills 目錄，專為 Codex（OpenAI 的 Coding Agent）設計。目錄中最完整的是 **Figma 系列 Skill**，包含四個互補的技能：

1. **figma** — Figma MCP Server 的基礎操作，取得設計脈絡、截圖、變數和資源
2. **figma-use** — Figma Plugin API 的強制前置技能，確保正確使用 `use_figma` 工具
3. **figma-generate-design** — 從需求描述生成 Figma 設計檔（頁面、View、多位面設計）
4. **figma-implement-design** — 將 Figma 設計稿精確翻譯成生產級應用程式碼

這四個 Skill 形成完整的 **Figma → Code** 工作流：取得脈絡 → 正確使用工具 → 生成設計 → 實作程式碼。

## Skill 詳解

### figma — Figma MCP 基礎操作

**觸發條件**：需要從 Figma 取得設計資訊（截圖、變數、Component、資源）

核心整合規則：

1. **Required flow（不可跳過）**：
   - 先執行 `get_design_context` 取得結構化表示
   - 若回應過大或截斷，先執行 `get_metadata` 取得高層節點圖，再精確抓取
   - 執行 `get_screenshot` 取得視覺參考
   - 以上兩步完成後才下載資源並開始實作
   - 將輸出翻譯為專案慣例，複用色彩 Token、元件和排版
   - 對照 Figma 驗證 1:1 視覺一致性

2. **實作規則**：
   - Figma MCP 輸出（React + Tailwind）是設計表示，不是最終程式碼風格
   - 用專案的 design-system tokens 取代 Tailwind 工具類
   - 複用既有元件（buttons、inputs、typography），不做重複實作
   - 追求 1:1 視覺對齊，衝突時優先使用 design-system tokens

3. **資源處理**：
   - Figma MCP 伺服器提供資源端點（圖片和 SVG）
   - 若回傳 localhost 來源，直接使用，不加新圖標套件
   - 不要使用或建立佔位符

4. **連結式提示**：複製 Figma frame/layer 連結給 MCP 客戶端，系統自動從連結提取 node ID

**參考文件**：
- `references/figma-mcp-config.md` — 設定、驗證、除錯
- `references/figma-tools-and-prompts.md` — 工具目錄和 prompt 模式

---

### figma-use — Figma Plugin API 前置技能

**觸發條件**：**每次**呼叫 `use_figma` 前必須載入。跳過會導致常見且難以除錯的失敗。適用於需要透過 Plugin API 執行 JavaScript 的寫入或讀取操作。

**絕對規則（17 條關鍵規則）**：

| # | 規則 | 說明 |
|---|------|------|
| 1 | **用 `return` 回傳資料** | 不要呼叫 `figma.closePlugin()`，回傳值自動 JSON 序列化 |
| 2 | **純 JavaScript + top-level `await`** | 不要包在 async IIFE 裡，自動包裝 |
| 3 | **`figma.notify()` 會拋錯** | 永遠不要用，用 `return` 輸出 |
| 3a | **不支援 `getPluginData()/setPluginData()`** | 改用 `getSharedPluginData()/setSharedPluginData()` |
| 4 | **`console.log()` 不回傳** | 用 `return` 輸出 |
| 5 | **小步增量工作** | 大操作拆成多個 `use_figma` 呼叫，每步驗證 |
| 6 | **色彩 0–1 範圍** | 不是 0–255 |
| 7 | **fills/strokes 是唯讀陣列** | 複製、修改、重新指定 |
| 8 | **字型必須先載入** | `await figma.loadFontAsync({family, style})` |
| 9 | **頁面增量載入** | 用 `await figma.setCurrentPageAsync(page)` 切換 |
| 13 | **新頂層節點遠離 (0,0)** | 避免重疊 |
| 14 | **出錯時不要立即重試** | 先讀懂錯誤訊息，修正後再試。失敗的指令碼是原子性的 |
| 15 | **必須回傳所有建立/修改的 node ID** | 供後續呼叫參考和驗證 |
| 16 | **建立變數時明確設定 `scopes`** | 預設 `ALL_SCOPES` 會污染每個屬性選擇器 |
| 17 | **每個 Promise 都要 `await`** | 未等待的 async 呼叫會造成靜默失敗 |

**頁面規則（關鍵）**：

- `figma.currentPage` 在每次 `use_figma` 呼叫間重置為第一頁
- 用 `await figma.setCurrentPageAsync(page)` 切換頁面（不要用同步 setter）

**增量工作流程**：

1. 先檢查現有檔案（發現頁面、元件、變數、命名慣例）
2. 逐步執行：建立變數 → 驗證 → 建立元件 → 驗證 → 組合佈局
3. 每步回傳 node ID，用 `get_metadata` 和 `get_screenshot` 驗證
4. 發現問題立即修正，不在損壞基礎上繼續

**參考文件（11 份）**：

| 文件 | 用途 |
|------|------|
| `gotchas.md` | 已知陷阱的 WRONG/CORRECT 範例 |
| `common-patterns.md` | 常用程式碼範本 |
| `plugin-api-patterns.md` | 填充、筆觸、Auto Layout、效果等 |
| `api-reference.md` | 完整 API 介面 |
| `validation-and-recovery.md` | `get_metadata` vs `get_screenshot` 驗證工作流 |
| `component-patterns.md` | 元件、變體、屬性 |
| `variable-patterns.md` | 變數建立、綁定、scopes |
| `text-style-patterns.md` | 文字樣式 |
| `effect-style-patterns.md` | 效果樣式（陰影等） |
| `plugin-api-standalone.index.md` | 完整 API 索引 |
| `plugin-api-standalone.d.ts` | TypeScript 完整型別定義 |

---

### figma-generate-design — 從需求生成 Figma 設計

**觸發條件**：需要從需求或程式碼在 Figma 中建立/更新完整頁面、螢幕或多段佈局

**Skill 邊界**：
- 交付物是 **Figma 螢幕**（使用設計系統元件實例）→ 使用此 Skill
- 如果要從 Figma 設計生成**程式碼** → 切換到 figma-implement-design
- 如果要建立**新元件或變體** → 直接使用 figma-use
- 如果要寫 **Code Connect mappings** → 切換到 figma-code-connect-components

**必要工作流程（6 步）**：

1. **理解螢幕**：閱讀原始碼或需求，列出主要區段和使用的 UI 元件
2. **發現設計系統**：
   - **元件**：優先檢查既有螢幕的實例；或用 `search_design_system` 搜尋
   - **變數**（色彩、間距、圓角）：檢視既有螢幕的綁定變數；注意 `getLocalVariableCollectionsAsync()` 只回傳本地變數，必須用 `search_design_system` 檢查遠端庫變數
   - **樣式**（文字和效果）：用 `search_design_system` 搜尋 heading、body、shadow 等
3. **建立頁面包裝框架**：先建立外層 wrapper，定位遠離 (0,0)
4. **逐段建構**：每段在一個 `use_figma` 呼叫中完成，用設計系統元件和變數而非硬編碼值
5. **驗證整體螢幕**：對每個區段截圖驗證，檢查裁切文字、重疊元素、佔位文字
6. **更新既有螢幕**：用 `get_metadata` 檢查結構，定位修改區域，逐步更新

**Web App 平行工作流**：若是可渲染的 web app，可同時執行 `generate_figma_design` 取得像素精準截圖和 `use_figma` 建構元件實例，最後合併兩者優勢。

**手動建構 vs 匯入設計系統**：

| 手動建構 | 從設計系統匯入 |
|----------|----------------|
| 頁面包裝框架 | **元件**：buttons、cards、inputs、nav |
| 區段容器框架 | **變數**：色彩、間距、圓角 |
| 佈局網格 | **文字樣式**：heading、body、caption |
| | **效果樣式**：陰影、模糊 |

**永遠不要在有設計系統變數時使用硬編碼值。**

---

### figma-implement-design — 從 Figma 設計實作程式碼

**觸發條件**：當使用者想要將 Figma 設計翻譯成程式碼（"implement design"、"generate code"、"implement component"、提供 Figma URL）

**Skill 邊界**：
- 交付物是**使用者的程式碼庫中的程式碼** → 使用此 Skill
- 如果要在 Figma 中建立/編輯/刪除節點 → 切換到 figma-use
- 如果要從程式碼在 Figma 中建立/更新螢幕 → 切換到 figma-generate-design
- 如果只要 Code Connect mappings → 切換到 figma-code-connect-components

**必要工作流程（7 步）**：

| 步驟 | 說明 |
|------|------|
| 1. 取得 Node ID | 從 Figma URL 解析 fileKey 和 nodeId，或從 figma-desktop 使用目前選取 |
| 2. 抓取設計脈絡 | `get_design_context(fileKey, nodeId)` 取得結構化資料 |
| 2a. 處理截斷 | 先 `get_metadata` 再逐個子節點抓取 |
| 3. 擷取視覺參考 | `get_screenshot(fileKey, nodeId)` 作為視覺驗證基準 |
| 4. 下載資源 | 使用 MCP 伺服器的 localhost 來源，不加新圖標套件 |
| 5. 翻譯為專案慣例 | 用 design-system tokens 取代 Tailwind，複用既有元件 |
| 6. 達成 1:1 視覺對齊 | 優先 Figma 精準度，避免硬編碼值 |
| 7. 對照 Figma 驗證 | 檢查佈局、排版、色彩、互動狀態、響應式、資源、無障礙 |

**實作原則**：

- **元件組織**：放在專案設計系統目錄，遵循命名慣例
- **設計系統整合**：總是優先使用既有元件，擴展而非建立新的
- **程式碼品質**：避免硬編碼值，保持元件可組合和可複用，加 TypeScript 型別和 JSDoc
- **增量驗證**：實作過程中頻繁驗證，不要等到最後
- **記錄偏差**：如果必須偏離 Figma 設計（如無障礙原因），在程式碼註解中記錄原因

## 核心特色

- **Skill 格式（SKILL.md）** — 每個 Skill 採用 YAML frontmatter + Markdown 格式，定義觸發條件（trigger）、上下文需求（context）、執行步驟（instructions）、約束與品質標準（constraints）、輸出格式（output）
- **完整 Figma 工作流** — 四個互補 Skill 形成 Figma → Code 完整鏈路：figma（取得脈絡）→ figma-use（強制前置，確保 `use_figma` 參數正確）→ figma-generate-design（從需求生成設計）→ figma-implement-design（翻譯成程式碼）
- **figma-use 17 條關鍵規則** — 涵蓋 return 回傳、純 JavaScript + top-level await、色彩 0-1 範圍、fills/strokes 唯讀、字型必須先載入等，避免常見且難以除錯的失敗
- **設計系統合規** — 使用 Figma 變數做 Design Token，維護一致的間距、字體和色彩系統，支援響應式設計（Desktop + Tablet + Mobile），符合 WCAG 2.1 AA 無障礙標準
- **1:1 視覺精確度** — figma-implement-design 要求間距、字體大小、色彩必須與 Figma 設計完全一致，優先使用 design-system tokens，避免硬編碼值

## 怎麼用

### 安裝

```bash
# Clone OpenAI Skills 目錄
git clone https://github.com/openai/skills.git

# Figma 系列 Skill 位於
cd skills/.curated/figma/
```

### Figma 工作流

1. **取得設計脈絡** — 使用 `figma` Skill 取得 Figma 檔案的截圖和變數
2. **正確呼叫工具** — 使用 `figma-use` Skill 確保 `use_figma` 的參數正確
3. **生成設計** — 使用 `figma-generate-design` 從文字需求產生 Figma 設計
4. **實作程式碼** — 使用 `figma-implement-design` 將設計翻譯成前端程式碼

### 在 Codex 中使用

Skills 會自動根據觸發條件載入，不需要手動指定。

## 跟其他方案的關係

| 專案 | Stars | 特色 | 與 OpenAI Skills 的關係 |
|------|-------|------|--------------------------|
| [[anthropics-skills|Anthropic Skills]] | 147.9k | frontend-design Skill | 競爭生態系，不同 Skill 格式 |
| [[vercel-labs-agent-skills|Vercel Skills]] | 27.7k | web-design-guidelines | 互補，Vercel 專注 Web 審查 |
| [[Figma-Skills]] | — | 概念頁 | OpenAI Figma Skills 的概念總覽 |
| [[softaworks-agent-toolkit|Softaworks Toolkit]] | 2k | design-system-starter | 互補，Softaworks 專注設計系統建構 |

## 相關概念

← [[AI-Skills]] · [[Figma-Skills]] · [[agent-skills-ecosystem]] · [[frontend-design]] · [[frontend-design]]

## 來源

- https://github.com/openai/skills
- https://github.com/openai/skills/blob/main/skills/.curated/figma/SKILL.md
- https://github.com/openai/skills/blob/main/skills/.curated/figma-use/SKILL.md
- https://github.com/openai/skills/blob/main/skills/.curated/figma-generate-design/SKILL.md
- https://github.com/openai/skills/blob/main/skills/.curated/figma-implement-design/SKILL.md

---

| 項目 | 資訊 |
|------|------|
| GitHub | [openai/skills](https://github.com/openai/skills) |
| Stars | 21,702 |
| 語言 | Python |
| License | 未指定 |
| 收錄日期 | 2026-06-08 |