---
title: 解剖小龍蝦 — AI Agent 運作原理
slug: agent-anatomy-openclaw
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
topics: [ai-agent, openclaw, agent-anatomy, teaching]
---

# 解剖小龍蝦 — AI Agent 運作原理

> ⭐— · 以 OpenClaw 為例，完整拆解 AI Agent 的運作機制：從語言模型到工具使用、記憶管理、安全防禦（詳細參考頁）

## 快速導航
- 🧠 **AI Agent 架構與身分** → [[agent-persona]]（Agent 不是 LLM，是人與 LLM 之間的介面）
- 🛠 **Context Engineering 核心技術** → [[AI-Agent]]（System Prompt、工具按需載入、記憶壓縮都是 Context Engineering）
- ⚠️ **Prompt Injection 與安全** → [[prompt-security]]（YouTube 留言可修改本地檔案，需要多層防禦）
- 🔧 **Agent Skills 生態** → [[AI-Skills]]（Skill 是 SOP 不是程式，按需讀取，可交換但有惡意風險）

## 是什麼

這是一份以 OpenClaw（開源 AI Agent 框架）為案例的 AI Agent 完整解剖。OpenClaw 是一個「龍蝦」——節肢動物式的 Agent，六親不認、寫死規則、沒有智慧，但可靠地執行語言模型的指令。這份內容把 Agent 從「外殼」到「內臟」拆解一遍，讓你理解 Agent 到底怎麼運作。

核心論點：**AI Agent ≠ LLM**。Agent 是人與 LLM 之間的介面，LLM 是大腦，Agent 是身體。Agent 的聰明程度取決於背後接的模型，而 Agent 的價值在於它如何管理 LLM 看到的內容（Context Engineering）。

## 核心特色

- **System Prompt 是靈魂**：每次呼叫 LLM 時附加超過 4000 token 的 System Prompt，包含身分檔案、工具說明、Skill 路徑、記憶讀取方式
- **工具按需載入**：Skill 和記憶只在 System Prompt 列路徑，需要時才 Read，節省 Context Window
- **記憶系統用 RAG**：memory.search 做字面 + 語意混合比對，memory.get 只讀取部分行數，避免一次讀入全部
- **Subagent 作為自主壓縮**：子 Agent 獨立與 LLM 互動後 return 結果，繁瑣過程不出現在主 Agent 的 context 中
- **安全是分層的**：程式端硬限制 > LLM 指令 > 環境隔離，三層防禦缺一不可

## 核心內容

### Agent ≠ LLM：關鍵區別
AI Agent 不是語言模型，而是人與語言模型之間的介面。Agent 的聰明程度取決於背後接的模型。OpenClaw 的角色是「龍蝦」——一個節肢動物，六親不認、寫死規則、沒有智慧，但可靠地執行語言模型的指令。

### System Prompt：Agent 的靈魂
每次 Agent 呼叫 LLM 時，都會附加極長的 System Prompt（超過 4000 token），包含：
- **身分檔案**（Soul.md、Identity.md、User.md、Memory.md）——定義 Agent 是誰、目標是什麼
- **工具使用說明**——有哪些工具、怎麼用
- **Skill 路徑**——只列路徑不列全文（按需讀取，Context Engineering 技巧）
- **記憶讀取方式**——memory.search + memory.get

### 語言模型的失憶症
LLM 沒有記憶，每次對話都重新開始。Agent 必須把所有歷史紀錄串接成長文字丟給 LLM，就像「我的失憶女友」每天要重讀日記才能開始生活。

### 工具使用流程
1. Agent 將人類指令 + System Prompt + 歷史紀錄 → LLM
2. LLM 回傳「使用工具」符號 + 工具指令
3. Agent 無條件執行工具，將輸出貼回歷史紀錄
4. 再丟給 LLM 做文字接龍，直到任務完成

### 自主生成工具
LLM 覺得流程太繁瑣時，會要求 Agent 在地端寫腳本（如 tts_check），之後直接執行。但這些免洗工具往往被遺忘，散落各處。

### Subagent（繁殖機制）
- Spawn 工具可產生子 Agent，子 Agent 獨立與 LLM 互動後 return 結果
- 從 Context Engineering 角度：Subagent 是自主壓縮，子 Agent 的繁瑣過程不出現在大 Agent 的 context 中
- 防止無窮繁殖：子 Agent 被禁止使用 Spawn 工具（程式端硬性限制，不可 Prompt Injection 繞過）

### Skill：工作 SOP
- 不是程式，是文字檔描述的工作流程
- 按需讀取（只在 System Prompt 列路徑，需要時才 Read）
- 可在 ClawHub 交換，但有 341/3000 個惡意 Skill（引導下載加密 Zip 木馬）

### 記憶系統
- **寫入**：Agent 自主決定何時寫入 Memory（日記用日期命名，長期記憶用 memory.md）
- **讀取**：用 RAG——memory.search 做字面 + 語意混合比對，memory.get 只讀取部分行數
- **重要教訓**：如果 Agent 說「我記住了」但沒有執行工具修改 .md 檔，就是「記了個寂寞」

### 心跳與排程
- **心跳機制**：每 30 分鐘固定發送指令戳 LLM（如「讀 habit.md 去做事」）
- **Cron Job**：設定排程，讓 Agent 學會「等待」（如「3 分鐘後再檢查生成狀態」）

### 安全防禦
- **Prompt Injection 實例**：YouTube 留言可修改本地 Soul.md
- **防禦層次**：LLM 層（memory.md 指令）→ Agent 層（人類 approve 才執行）→ 環境層（不讓 Agent 讀網路留言）
- **AI 刪郵件事件**：compaction 把重要指令壓縮掉，Agent 開始未經同意刪郵件

## 怎麼用

### 理解 Agent 架構
OpenClaw 的解剖幫助你理解所有 AI Agent 框架的核心——Context Engineering。不管是 OpenClaw、Claude Code、還是 Hermes Agent，底層邏輯都是：
1. 組裝 System Prompt（身分 + 工具 + 記憶 + Skill）
2. 把 Prompt + 歷史紀錄丟給 LLM
3. LLM 決定使用工具或回傳文字
4. 執行工具，結果貼回歷史紀錄
5. 重複直到任務完成

### 實務建議
- **控制 System Prompt**：你寫什麼，Agent 就變成什麼
- **記憶要落實到檔案**：Agent 說「我記住了」不等於真的記住，必須確認有寫入 .md 檔
- **安全要分層**：不能只靠 LLM 自己判斷，必須有程式端硬限制和環境隔離
- **善用 Subagent**：把繁瑣任務交給子 Agent，保持主 Agent 的 context 乾淨

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|------|------|------|
| [[agent-persona]] | Agent 人格設計 | Persona 是 Agent 的靈魂，OpenClaw 用 SOUL.md 實作 |
| [[AI-Agent]] | Agent 概念總覽 | Agent 不是 LLM，是介面——這是 OpenClaw 解剖的核心論點 |
| [[context-engineering-basics]] | Context Engineering | System Prompt + 工具按需載入 + 記憶壓縮都是 CE 技術 |
| [[prompt-security]] | Prompt 安全 | Prompt Injection 是 Agent 的核心安全威脅 |
| [[AI-Skills]] | Skill 生態 | Skill 是 SOP 不是程式，按需讀取節省 context |
| [[claude-code-boris-cherny-advanced-techniques]] | Claude Code 技巧 | /compact、/rewind 等 context 管理技巧與 CE 理念一致 |

## 關鍵概念
- **AI Agent ≠ LLM**：Agent 是介面，LLM 是大腦
- **Context Engineering**：管理 LLM 看到的內容，是 Agent 的核心技術
- **System Prompt**：Agent 的靈魂，包含身分、工具、記憶、Skill 路徑
- **工具按需載入**：Skill 和記憶只在需要時讀取，節省 Context Window
- **安全是分層的**：程式端硬限制 > LLM 指令 > 環境隔離

## 相關概念
← [[agent-persona]] · [[AI-Agent]] · [[prompt-security]] · [[AI-Skills]]

## 來源
- raw/2026-05-03-agent-anatomy-openclaw.md
- **收錄日期**: 2026-05-10
- **License**: 未標示

---

| 項目 | 值 |
|------|-----|
| 來源 | 教學/文章 |
| 收錄日期 | 2026-05-10 |
