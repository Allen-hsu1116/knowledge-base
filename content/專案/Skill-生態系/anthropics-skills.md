---
title: Anthropic Skills
slug: anthropics-skills
created: 2026-06-08
updated: 2026-09-30
stars: 179132
language: zh-TW
topics: [AI Skills, Frontend Design, Web Testing]
---

# Anthropic Skills

> ⭐179,132 · Anthropic 官方 Agent Skills 庫，提供結構化的操作指令讓 AI Agent 執行前端設計等任務。

## 快速導航

- 🤖 [[AI-Skills]] — Agent Skills 的操作知識封裝
- 🎨 [[frontend-design]] — 前端設計技能
- 📐 [[agentskills-agentskills]] — Agent Skills 開放規格

## 是什麼

**Anthropic Skills** 是 Anthropic 官方維護的公開 GitHub 倉庫（[anthropics/skills](https://github.com/anthropics/skills)），旨在為 AI Agent 提供結構化的「技能定義檔」（SKILL.md）。每個技能檔案本質上是一份精心撰寫的 prompt 工程文件，指導 Agent 如何以高品質、可重現的方式完成特定任務。

這不是只有前端設計與測試的 Prompt 清單：每個 Skill 是包含指令、腳本與資源的獨立資料夾，Claude 可依任務動態載入。官方範例涵蓋創意設計、開發測試、MCP 建置、企業溝通與文件處理；文件技能包含 `docx`、`pdf`、`pptx`、`xlsx`，另有 `skill-creator` 等範例。

**授權需逐技能確認**：官方 README 說明許多範例採 Apache-2.0；文件建立／編輯技能屬 source-available，並非開源授權。不能將整個倉庫一概視為 Apache-2.0 或可任意再散布。範例主要供展示與教育，正式使用前仍須在自己的環境測試。

## 核心特色

- **結構化技能定義（SKILL.md）** — 每個 Skill 以標準格式呈現，包含技能描述、操作指令、品質標準，讓 Agent 能穩定重現高品質產出
- **Frontend-Design 技能** — 品質極高的前端設計規範，核心訴求是「避免 AI 產出的泛型美學」（AI slop），追求令人難忘的差異化設計，涵蓋字型排版、色彩主題、動畫、空間構成、背景細節等面向
- **Webapp-Testing 技能** — 使用 Playwright 進行自動化測試，核心理念是 Reconnaissance-then-Action（偵察先行再行動），支援多 Server 管理、決策樹流程、source-map 支援
- **Agent-First 設計理念** — Skills 不是給人類讀的文件，而是專門為 AI Agent 最佳化的操作手冊，語句精準、無歧義，讓 Agent 能穩定重現高品質產出
- **反模式警告清單** — 明確列出泛型 AI 美學陷阱（Inter/Roboto/Arial 字體、紫色漸層白底、可預測佈局），幫助 Agent 避開常見設計陷阱

## 怎麼用

### 1. 直接取用技能檔

```bash
git clone https://github.com/anthropics/skills.git
# 技能檔位於各子目錄的 SKILL.md
```

### 2. 使用官方 Claude Code Plugin marketplace

以下為官方 README 的安裝方式，指令在 Claude Code 中執行；本次僅收錄文件，沒有安裝任何插件。

```text
/plugin marketplace add anthropics/skills
/plugin install document-skills@anthropic-agent-skills
/plugin install example-skills@anthropic-agent-skills
```

依需求選擇 document-skills 或 example-skills，不必全部安裝。安裝後可在任務中直接要求使用 PDF 等技能。不要把「隨便放一份 `.claude/SKILL.md`」當作官方安裝流程。

Claude.ai 的上傳與使用方式、Claude API 的預建與自訂技能，請以 README 連結的產品文件為準；不能假設不同宿主會自動採用相同路徑與載入規則。

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
| [[AI-Skills\|AI Skills 通用概念]] | 操作知識封裝 | 本倉庫是 Anthropic 的實作與範例，不等同所有 Agent Skills 的標準本身 |
| [[agentskills-agentskills\|Agent Skills 規格]] | 開放格式與互通規範 | 定義格式；anthropics/skills 提供具體技能內容 |
| [[frontend-design]] | 設計方法論 | 本倉庫包含可用於前端設計的 Skill |
| [[stanfordnlp-dspy\|DSPy]] | 宣告式 LLM 程式與資料驅動最佳化 | Skills 封裝流程與知識；DSPy 以 metric 搜尋改善，兩者可以互補 |
| Cursor Rules | Agent 規則設定 | 用途有交集，但技能資料夾還可封裝脚本與參考資源 |
| Claude Artifacts | 產出呈現工具 | Skills 定義操作方式，Artifacts 用於呈現部分產出 |

## 相關概念


- **SKILL.md**：技能定義檔的標準格式，是 Agent Skills 生態系的基本單位
- **Prompt Engineering**：Skills 的本質是進階 prompt 工程，將隱性知識顯性化
- **Agent Workflow**：Skills 讓 Agent 能以確定性流程完成開放性任務
- **Production-Grade Design**：frontend-design 技能追求的是可直接上線的設計品質
- **Playwright**：webapp-testing 技能使用的瀏覽器自動化框架
- **Reconnaissance-then-Action**：先偵察再行動的測試模式，避免盲猜選擇器

← [[AI-Skills]] · [[frontend-design]] · [[agentskills-agentskills]] · [[Prompt-Engineering]]

## 來源

- raw/2026-09-30-anthropics-skills.md — 最新 README 快照，含官方安裝流程與混合授權說明。

- https://github.com/anthropics/skills
- `raw/2026-06-08-anthropics-skills-frontend-design.md`
- `raw/2026-06-08-anthropics-skills-webapp-testing.md`
- raw/2026-06-08-anthropics-skills.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/anthropics/skills |
| Stars | ⭐179,132|
| License | 混合授權：多數範例 Apache-2.0；文件技能 source-available，依各子目錄條款 |
| 收錄日期 | 2026-06-08 |
