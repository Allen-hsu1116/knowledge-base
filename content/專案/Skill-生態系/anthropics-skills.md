---
title: Anthropic Skills
slug: anthropics-skills
created: 2026-06-08
updated: 2026-06-08
stars: 147937
language: Python
topics: [AI Skills, Frontend Design, Web Testing]
---

# Anthropic Skills

> ⭐147.9k · Anthropic 官方 Agent Skills 庫，提供結構化的操作指令讓 AI Agent 執行前端設計等任務。

## 快速導航

- 🎨 [[frontend-design]] · 🧪 [[anthropics-skills]] · 🤖 [[AI-Skills]] · [[AI-Skills]]

## 是什麼

**Anthropic Skills** 是 Anthropic 官方維護的公開 GitHub 倉庫（[anthropics/skills](https://github.com/anthropics/skills)），旨在為 AI Agent 提供結構化的「技能定義檔」（SKILL.md）。每個技能檔案本質上是一份精心撰寫的 prompt 工程文件，指導 Agent 如何以高品質、可重現的方式完成特定任務。

目前倉庫收錄的核心技能包括 **frontend-design**（前端界面設計指南）和 **webapp-testing**（網頁應用測試工具），涵蓋從設計哲學到測試實作的完整規範。倉庫以 Python 為主要語言，⭐147,937 顆星，是 Agent Skills 領域最具指標性的開源專案之一。

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
| [[AI-Skills]] | 生態系 | Skills 是該生態系的標竿專案 |
| Cursor Rules | 競爭方案 | 同為 Agent 指令系統，但 Skills 更強調結構化與可複製性 |
| Claude Artifacts | 互補工具 | Skills 定義流程，Artifacts 呈現產出 |

## 相關概念

- **SKILL.md**：技能定義檔的標準格式，是 Agent Skills 生態系的基本單位
- **Prompt Engineering**：Skills 的本質是進階 prompt 工程，將隱性知識顯性化
- **Agent Workflow**：Skills 讓 Agent 能以確定性流程完成開放性任務
- **Production-Grade Design**：frontend-design 技能追求的是可直接上線的設計品質
- **Playwright**：webapp-testing 技能使用的瀏覽器自動化框架
- **Reconnaissance-then-Action**：先偵察再行動的測試模式，避免盲猜選擇器

← [[AI-Skills]] · [[frontend-design]] · [[anthropics-skills]] · [[AI-Skills]] · [[agentskills-agentskills|Agent Skills]]

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
| **License** | 未標示 |
