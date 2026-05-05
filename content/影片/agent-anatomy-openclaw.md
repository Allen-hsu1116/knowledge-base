# 解剖小龍蝦 — AI Agent 運作原理

> 以 OpenClaw 為例，完整拆解 AI Agent 的運作機制：從語言模型到工具使用、記憶管理、安全防禦（詳細參考頁）

## 快速導航
- 🧠 **AI Agent 架構與身分** → [[agent-persona]]（Agent 不是 LLM，是人與 LLM 之間的介面）
- 🛠 **Context Engineering 核心技術** → [[AI-Agent]]（System Prompt、工具按需載入、記憶壓縮都是 Context Engineering）
- ⚠️ **Prompt Injection 與安全** → [[prompt-security]]（YouTube 留言可修改本地檔案，需要多層防禦）
- 🔧 **Agent Skills 生態** → [[agent-skills-ecosystem]]（Skill 是 SOP 不是程式，按需讀取，可交換但有惡意風險）

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

## 關鍵概念
- **AI Agent ≠ LLM**：Agent 是介面，LLM 是大腦
- **Context Engineering**：管理 LLM 看到的內容，是 Agent 的核心技術
- **System Prompt**：Agent 的靈魂，包含身分、工具、記憶、Skill 路徑
- **工具按需載入**：Skill 和記憶只在需要時讀取，節省 Context Window
- **安全是分層的**：程式端硬限制 > LLM 指令 > 環境隔離

## 相關概念
← [[agent-persona]] · [[AI-Agent]] · [[prompt-security]] · [[agent-skills-ecosystem]]

## 來源
- raw/2026-05-03-2rcJdFuNbZQ.md