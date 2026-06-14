---
title: AI Agent 人格與角色設計
slug: agent-persona
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# AI Agent 人格與角色設計

> 用 Persona 定義 AI 是誰，用 Skill 定義 AI 會什麼，兩者搭配 = 有方向又有方法的 AI 同事。

## 快速導航
- 🧠 **Persona 四要素** → 角色定位、溝通風格、決策偏好、經驗背景
- 🛠 **Skill 與 Persona 的關係** → Persona 決定為什麼，Skill 決定怎麼做
- 🏢 **三個層次** → 工具 → 助理 → 同事，層次越高自主性越高
- 👥 **144 個 AI 員工人格** → Agency Agents 開源專案提供的預設人格庫

## 是什麼

Agent Persona 是 AI Agent 的角色設計方法論。核心概念很簡單：**只告訴 AI 做什麼是「工具」，告訴 AI 是誰才是「同事」**。Persona 定義 AI 的身分、風格、價值觀，Skill 定義 AI 的流程和品質標準。兩者搭配，讓 AI 在特定領域像真正的專業同事一樣工作，而不是泛泛的通才助理。

這不是純理論——OpenClaw 用 SOUL.md 實作 Persona，Hermes Agent 用 Honcho 做跨 session 使用者建模，Agency Agents 提供 144 個預設人格，Project Golem 用多個 Persona 做圓桌討論。

## 核心特色

- **Persona 四要素**：角色定位（做什麼）、溝通風格（怎麼說話）、決策偏好（怎麼取捨）、經驗背景（「經歷」過什麼）
- **三層次進化**：工具（你下指令，AI 執行）→ 助理（AI 有基本角色）→ 同事（AI 有明確 Persona + 多個 Skill）
- **Skill 與 Persona 互補**：只有 Persona 沒有 Skill = 有方向沒方法；只有 Skill 沒有 Persona = 有方法沒立場
- **開源人格庫降低門檻**：Agency Agents 8.4 萬星的專案提供 144 個預設人格，不需要從頭設計

## 核心內容

### 三個層次：工具 → 助理 → 同事

**層次 1：工具（Tool）**
- 你下指令，AI 執行
- 每次都要從頭說明背景
- 例：幫我翻譯、幫我摘要

**層次 2：助理（Assistant）**
- AI 有基本角色，能主動追問
- 角色太泛，專業度不夠
- 例：你是一個翻譯助理

**層次 3：同事（Colleague）**
- AI 有明確 Persona + 多個 Skill
- 能自主判斷情境、選擇正確 Skill
- 像真正的同事一樣需要 onboarding
- 例：你是一位有 10 年經驗的資深前端工程師

### Persona 四要素

1. **角色定位**：AI 的工作是什麼？（資深前端工程師、產品經理、安全審計員）
2. **溝通風格**：AI 怎麼說話？（直接、用代碼說話、不廢話）
3. **決策偏好**：面對取捨時怎麼選？（偏好簡單方案勝過完美方案）
4. **經驗背景**：AI「經歷」過什麼？（10 年大型系統經驗、踩過效能地雷）

### Skill 與 Persona 的關係

| | Persona | Skill |
|--|---------|-------|
| 回答的問題 | 為什麼這樣做？ | 怎麼做？ |
| 定義的東西 | 身分、風格、價值觀 | 流程、步驟、品質標準 |
| 類比 | 一個人的性格和經歷 | 一個人的專業技能 |

兩者缺一不可：只有 Persona 沒有 Skill = 有方向沒方法；只有 Skill 沒有 Persona = 有方法沒立場。

### Agency Agents：144 個 AI 員工人格

開源專案 Agency Agents（GitHub 8.4 萬星）提供了 144 個預設人格，涵蓋：

| 領域 | 範例角色 |
|------|----------|
| 工程 | 前端/後端工程師、DevOps、SRE、QA |
| 設計 | UI/UX 設計師、品牌設計師、插畫師 |
| 行銷 | 成長駭客、內容行銷、SEO 專家 |
| 產品 | 產品經理、產品分析師、用戶研究員 |
| 營運 | 財務分析師、法務顧問、HR 專員 |
| 數據 | 資料科學家、資料工程師、ML 工程師 |

每個人格包含：角色描述、專業背景、溝通風格、工作流程、產出標準。

### 各框架的實作方式

**OpenClaw** — 用檔案系統實作 Persona + Skill：

| 檔案 | 對應概念 | 內容 |
|------|----------|------|
| SOUL.md | Persona | 身分、個性、價值觀 |
| SKILL.md | Skill | 任務的操作手冊 |
| AGENTS.md | 工作規範 | 流程和安全規則 |
| MEMORY.md | 長期記憶 | 跨會話的知識 |
| USER.md | 用戶畫像 | 了解服務對象 |

👉 詳見 [[openclaw]]

**Hermes Agent** — Honcho dialectic user modeling：跨 session 建立使用者深層模型。Agent 不只記住你說過什麼，還建立對你的理解模型，隨著互動越來越精準。👉 詳見 [[hermes-agent]]

**Project Golem** — InteractiveMultiAgent 多代理圓桌討論：多個人格角色同時參與討論，產出共識摘要。這是「AI 團隊協作」的具體實作。👉 詳見 [[project-golem]]

**AutoResearch** — program.md 定義研究策略：人類寫 Markdown 指令，Agent 在策略內自主實驗。這是「Persona 給方向，Skill 給方法」的最簡範例。👉 詳見 [[autoresearch]]

## 怎麼用

### 設計 Persona
1. **定義角色定位**：你的 AI 在團隊中扮演什麼角色？不要說「萬能助理」
2. **設定溝通風格**：直接用代碼回答？還是要詳細解釋？
3. **明確決策偏好**：面對取捨時，AI 偏好簡單還是完美？
4. **描述經驗背景**：讓 AI 有「踩過坑」的感覺，回答更有深度

### 選擇框架
- **OpenClaw**：最靈活，用檔案系統完全自定義
- **Hermes Agent**：注重使用者建模，跨 session 理解使用者
- **Agency Agents**：最快上手，144 個預設人格直接用

### 避免的陷阱
- Persona 太泛 = 沒有 Persona（「你是一個有用的助手」等於沒說）
- 只有 Persona 沒有 Skill = AI 有立場但沒方法
- Persona 不一致 = Agent 行為不可預測

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|------|------|------|
| [[agent-skills-ecosystem]] | Skill 生態 | Skill 是 Persona 的搭配，定義 AI 怎麼做 |
| [[AI-Agent]] | Agent 概念總覽 | Persona 是 Agent 的靈魂 |
| [[agent-anatomy-openclaw]] | Agent 解剖 | SOUL.md 是 Persona 在 OpenClaw 中的實作 |
| [[claude-code-boris-cherny-advanced-techniques]] | Claude Code 技巧 | CLAUDE.md 是 Claude Code 版的 Persona |
| [[llm-knowledge-base]] | 知識庫方法 | Persona 影響知識庫整理的風格和深度 |

## 關鍵洞見

1. **好的 Persona 讓 AI 有立場**——不只是回答問題，而是像專業人士一樣給建議
2. **好的 Skill 讓 AI 有流程**——不只是隨機回答，而是按步驟產出一致品質
3. **多個 Persona 可以組成「AI 團隊」**——行銷 + 工程 + 產品協作
4. **開源 Persona 庫降低門檻**——不需要從頭設計，拿模板改就好

## 相關概念
- [[llm-knowledge-base]] — 知識庫是 Persona + Skill 的應用場景之一
- [[agent-skills-ecosystem]] — Skill 的標準化格式和生態系
- [[AI-Agent]] — AI 工作流整體趨勢
- [[walkinglabs-learn-harness-engineering]] — Harness 課程，AGENTS.md 是 Harness 的認知框架部分
- [[hermes-agent]] — Honcho 跨 session 使用者建模
- [[project-golem]] — 多代理圓桌討論
- [[autoresearch]] — program.md 策略驅動
- [[AI-Agent]] — AI Agent 概念總覽
- [[AI-Skills]] — SKILL.md 格式詳解
- [[MCP]] — Agent 使用工具的標準介面

## 相關專案
- [[affaan-m-everything-claude-code]] — 140K+ stars，Agent harness 效能優化系統
- [[sickn33-antigravity-awesome-skills]] — 1,443+ SKILL.md 格式技能庫
- [[HKUDS-nanobot]] — 超輕量 Agent，多頻道支援

## 相關影片
- [[agent-anatomy-openclaw]] — 解剖小龍蝦：AI Agent 運作原理
- [[ai-agent-interaction]] — AI Agent 之間的互動
- [[ai-agent-work-impact]] — AI Agent 對工作的衝擊
- [[harness-engineering]] — Harness Engineering：駕馭工程

## 來源
- raw/2026-04-28-persona-skill-colleague.md
- raw/2026-04-28-agency-agents-144-personas.md