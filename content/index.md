---
title: 知識庫總覽
slug: index
language: zh-TW
stars: —
created: 2025-06-07
updated: 2026-07-03
---

# 知識庫總覽

> AI 工具與工作流的個人知識庫，聚焦 LLM 應用、Agent 設計、知識管理和 Prompt 工程。

📖 **完整專案列表** → [[projects|專案索引]]

---

## 📚 學習路徑

以下按建議的閱讀順序排列——前面的概念是理解後面概念的基礎。

### 第一階：基礎認知

| # | 概念 | 說明 |
|---|------|------|
| 1 | [[LLM]] | 大語言模型——一切的起點，先理解 LLM 是什麼 |
| 2 | [[Prompt-Engineering\|Prompt Engineering]] | 設計 LLM 的輸入，從「寫好問題」到「設計操作手冊」 |
| 3 | [[AI-Agent\|AI Agent]] | LLM + 工具 + 記憶 + 規劃 = 自主執行任務的 AI |
| 4 | [[Token-Optimization\|Token Optimization]] | LLM 以 token 計費，優化 token = 優化成本和品質 |

### 第二階：Agent 工程化

| # | 概念 | 說明 |
|---|------|------|
| 5 | [[harness-engineering\|Harness Engineering 駕馭工程]] | 語言模型不是不夠聰明，而是缺乏好的引導 |
| 6 | [[context-engineering-basics\|Context Engineering]] | Harness 的核心：管理 LLM 看到的內容 |
| 7 | [[AI-Skills\|AI Skills]] | 結構化操作手冊（SKILL.md），讓能力可版本控制和分享 |
| 8 | [[agent-persona\|AI Agent 人格設計]] | Persona 定義 AI 是誰，Skill 定義 AI 會什麼 |
| 9 | [[persona-skill-colleague\|Persona + Skill 打造 AI 同事]] | 從「助理」進化成「同事」的配方 |
| 10 | [[MCP]] | Agent 連接外部工具的標準協議 |
| 11 | [[AI-Gateway\|AI Gateway]] | 聚合多個 LLM 提供者的統一閘道 |
| 12 | [[agent-harness-optimization\|Agent Harness 優化]] | Token 效率、記憶管理、安全驗證、持續學習 |

### 第三階：Agent 進階

| # | 概念 | 說明 |
|---|------|------|
| 13 | [[Coding-Agent-CLI\|Coding Agent CLI]] | 從單一 chatbot 到多模型、多工具的整合開發環境 |
| 14 | [[coding-agent-toolkit\|Coding Agent 工具包]] | 搜尋、導航和程式碼理解能力 |
| 15 | [[computer-use-agent\|Computer Use Agent]] | 操作桌面和瀏覽器的 AI Agent |
| 16 | [[In-page-GUI-Agent\|In-page GUI Agent]] | 用自然語言控制網頁，純文字 DOM 操作 |
| 17 | [[self-correction\|Self-Correction 自我修正]] | AI 能否自行發現並修正錯誤？ |
| 18 | [[ai-self-growth\|AI 自我成長（上集）]] | AI 能否跨越盧比孔河？自我成長離我們多遠 |
| 19 | [[ai-self-growth-2\|AI 自我成長（下集）]] | 跨越盧比孔河的條件與時程 |
| 20 | [[prompt-security\|Prompt 安全與越獄]] | Prompt Injection 和越獄攻擊的實際風險 |
| 21 | [[cl4r1t4s\|CL4R1T4S]] | LLM jailbreak 技術和防禦方法 |
| 22 | [[agent-trading\|Agent 交易]] | AI Agent 在金融交易的應用 |

### 第四階：知識管理

| # | 概念 | 說明 |
|---|------|------|
| 23 | [[llm-knowledge-base\|LLM 知識庫系統]] | 用 LLM 當「編譯器」把素材編譯成結構化 wiki |
| 24 | [[karpathy-gist-llm-wiki\|Karpathy LLM Wiki]] | Karpathy 的原始方法論 |
| 25 | [[llm-knowledge-base-obsidian-claude-code\|中文報導]] | 數位時代對 Karpathy 系統的完整拆解 |
| 26 | [[karpathy-skills\|Karpathy Skill 版]] | 封裝成 Agent Skill 格式 |
| 27 | [[mempalace-usage-discussion\|MemPalace 討論]] | 跟 RAG 的差異、改善建議 |
| 28 | [[ocr-memory\|OCR-Memory]] | 用視覺模態壓縮 Agent 長期記憶 |
| 29 | [[Context-Database\|Context Database]] | 以檔案系統範式統一管理 Agent 上下文 |
| 30 | [[Knowledge-Graph\|Knowledge Graph]] | 以圖結構組織資訊，讓機器結構化理解 |
| 31 | [[CLAUDE-md\|CLAUDE.md]] | 用自然語言定義 AI 編碼助理的行為規範 |
| 32 | [[agent-skills-ecosystem\|Agent Skills 生態系]] | 從個人腳本到標準化共享格式 |
| 33 | [[self-education\|自主學習]] | 透過開源資源和 AI 工具自主獲得知識 |

### 第五階：生成式 AI 與多媒體

| # | 概念 | 說明 |
|---|------|------|
| 34 | [[generative-AI\|生成式 AI]] | 能生成新內容的 AI 技術 |
| 35 | [[diffusion-model\|擴散模型]] | 漸進去噪生成高品質內容 |
| 36 | [[AI-video-generation\|AI 影片生成]] | 文字到影片的生成模型 |
| 37 | [[world-model\|世界模型]] | 理解和模擬物理世界的 AI |
| 38 | [[content-automation\|內容自動化]] | AI 自動生成、編輯和分發內容 |
| 39 | [[語音辨識\|語音辨識 (ASR/TTS)]] | 語音轉文字與文字轉語音 |
| 40 | [[AI-presentation\|AI 簡報]] | AI 自動生成和設計簡報 |
| 41 | [[pptx-generation\|PPTX 生成]] | 程式化生成 PowerPoint |
| 42 | [[frontend-design\|前端設計]] | 視覺設計、互動體驗和 UI 實作 |
| 43 | [[Design-System-Spec\|Design System Spec]] | 用 YAML tokens 向 AI 描述視覺身份 |

### 第六階：LLM 底層與推論

| # | 概念 | 說明 |
|---|------|------|
| 44 | [[llm-internals\|LLM 底層技術]] | Flash Attention、KV Cache、Positional Embedding |
| 45 | [[模型推論與部署\|模型推論與部署]] | LLM 從訓練到服務：推論加速、部署架構 |
| 46 | [[LLM-微調\|LLM 微調]] | SFT、DPO、PPO、LoRA/QLoRA 領域適應 |
| 47 | [[embedded-AI\|邊緣裝置 AI]] | 在資源受限裝置上部署 AI |
| 48 | [[sandbox\|沙箱]] | 程式碼執行的隔離環境，Agent 安全基礎 |

### 第七階：資料與檢索

| # | 概念 | 說明 |
|---|------|------|
| 49 | [[rag\|RAG]] | 檢索增強生成，結合外部知識與 LLM |
| 50 | [[GraphRAG]] | Knowledge Graph + RAG，沿語義路徑檢索 |
| 51 | [[即時RAG管線\|即時 RAG 管線]] | 自動偵測資料變更並即時重新索引 |
| 52 | [[向量資料庫\|向量資料庫]] | 儲存和檢索向量嵌入的專用資料庫 |
| 53 | [[document-parsing\|文件解析]] | PDF、DOCX 等文件的結構化擷取 |
| 54 | [[code-intelligence\|程式碼智慧]] | 用知識圖譜加速程式碼理解 |
| 55 | [[simulation\|模擬]] | 多 Agent 社會演化模擬 |
| 56 | [[data-analysis\|資料分析]] | 從原始資料中提取洞見 |
| 57 | [[visualization\|資料視覺化]] | 將數據轉為圖形表示 |

### 第八階：基礎設施與工程實踐

| # | 概念 | 說明 |
|---|------|------|
| 58 | [[self-hosted\|自架]] | 在自有基礎設施上部署運行軟體 |
| 59 | [[self-hosted-AI-platform\|自架 AI 平台]] | 在自有基礎設施上部署 AI 服務 |
| 60 | [[workflow-automation\|工作流自動化]] | 將重複任務編排成自動化流程 |
| 61 | [[Spec-Driven-Development\|Spec-Driven Development]] | 先寫規格再寫碼，四步工作流 |
| 62 | [[多Agent框架\|多 Agent 框架]] | 多角色 Agent 協作處理複雜任務 |
| 63 | [[Copilot生態系\|Copilot 生態系]] | GitHub Copilot 的社群資源生態 |
| 64 | [[Prompt優化工具\|Prompt 優化工具]] | 自動改善 prompt 品質的工具 |
| 65 | [[observability\|可觀測性]] | 日誌、指標和追蹤三大支柱 |
| 66 | [[privacy\|隱私]] | 保護資料不被未授權存取 |
| 67 | [[open-source-business\|開源商業模式]] | 開源軟體的商業化策略 |
| 68 | [[free-software\|免費軟體]] | 開源或免費的工具 |
| 69 | [[free-domain\|免費域名]] | 免費取得網域名稱 |
| 70 | [[productivity\|生產力]] | 提升效率的工具與方法論 |
| 71 | [[media-streaming\|媒體串流]] | 網路即時傳輸音視訊 |

### 第九階：應用領域

| # | 概念 | 說明 |
|---|------|------|
| 72 | [[AI-Tutoring\|AI Tutoring]] | AI 技術實現個人化教學 |
| 73 | [[computer-vision\|電腦視覺]] | 讓電腦理解和處理視覺資訊 |
| 74 | [[pentesting\|滲透測試]] | 模擬攻擊者手法進行安全測試 |
| 75 | [[financial-forecasting\|金融預測]] | 預測金融市場走勢和資產價格 |
| 76 | [[backtesting\|回測]] | 用歷史數據驗證交易策略 |
| 77 | [[stock-tracking\|股市追蹤]] | 即時監控和分析股市數據 |
| 78 | [[web-crawling\|Web Crawling]] | 系統化瀏覽和收集網頁資料 |
| 79 | [[web-scraping\|網頁爬取]] | 從網頁自動提取結構化資料 |
| 80 | [[社群媒體爬蟲\|社群媒體爬蟲]] | 多平台社群數據採集 |

---

## 🎬 教學影片

全部來自 **李宏毅 (Hung-yi Lee)** — 台大電機系教授。按建議觀看順序排列。

### 🔧 LLM 底層技術系列

| # | 主題 | 觀看連結 |
|---|------|----------|
| 1 | [[flash-attention\|Flash Attention]] — 減少 GPU 記憶體搬運加速推論 | [YouTube](https://www.youtube.com/watch?v=vXb2QYOUzl4) |
| 2 | [[kv-cache\|KV Cache]] — 儲存 K/V 避免重算 + GQA/MLA/Sliding Window | [YouTube](https://www.youtube.com/watch?v=fDQaadKysSA) |
| 3 | [[positional-embedding-evolution\|位置編碼演進]] — Sinusoidal → ALiBi → RoPE | [YouTube](https://www.youtube.com/watch?v=Ll-wk8x3G_g) |

### 🤖 AI Agent 系列

| # | 主題 | 觀看連結 |
|---|------|----------|
| 4 | [[context-engineering-basics\|Context Engineering 基本概念]] — AI Agent (1/3) | [YouTube](https://www.youtube.com/watch?v=urwDLyNa9FU) |
| 5 | [[ai-agent-interaction\|AI Agent 之間的互動]] — AI Agent (2/3) | [YouTube](https://www.youtube.com/watch?v=mmPmNezjCi0) |
| 6 | [[ai-agent-work-impact\|AI Agent 對工作的衝擊]] — AI Agent (3/3) | [YouTube](https://www.youtube.com/watch?v=VqB8zMujdjM) |
| 7 | [[agent-anatomy-openclaw\|解剖小龍蝦]] — 以 OpenClaw 為例介紹 Agent 運作原理 | [YouTube](https://www.youtube.com/watch?v=2rcJdFuNbZQ) |
| 8 | [[harness-engineering\|Harness Engineering]] — 語言模型不是不夠聰明，只是沒有人類好好引導 | [YouTube](https://www.youtube.com/watch?v=R6fZR_9kmIw) |

### 🧠 自我修正與成長系列

| # | 主題 | 觀看連結 |
|---|------|----------|
| 9 | [[self-correction\|Self-Correction 自我修正]] — AI 能自我修正嗎？ | [YouTube](https://www.youtube.com/watch?v=m3i2mk5hs8U) |
| 10 | [[ai-self-growth\|AI 自我成長（上集）]] — AI 要跨越盧比孔河了嗎？ | [YouTube](https://www.youtube.com/watch?v=s06mSAGN4gM) |
| 11 | [[ai-self-growth-2\|AI 自我成長（下集）]] — 跨越盧比孔河的條件 | [YouTube](https://www.youtube.com/watch?v=cQLKVzbwN7I) |

---

📖 **完整專案列表** → [[projects|專案索引]]

---