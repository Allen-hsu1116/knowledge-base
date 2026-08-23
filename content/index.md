---
title: 知識庫總覽
slug: index
language: zh-TW
stars: —
created: 2025-06-07
updated: 2026-08-19
---

# 知識庫總覽

> AI 工具與工作流的個人知識庫，聚焦 LLM 應用、Agent 設計、知識管理和 Prompt 工程。

📖 **完整專案列表** → [[projects|專案索引]]

---

## 📚 概念

按建議閱讀順序排列，每層對應一個資料夾分類。

### 第一層：核心

| # | 概念 | 說明 |
|---|------|------|
| 1 | [[LLM]] | 大語言模型——一切的起點 |
| 2 | [[Prompt-Engineering\|Prompt Engineering]] | 設計 LLM 的輸入，含 Prompt 優化工具 |
| 3 | [[AI-Agent\|AI Agent]] | LLM + 工具 + 記憶 + 規劃，含多 Agent 框架與模擬 |
| 4 | [[Token-Optimization\|Token Optimization]] | 優化 token = 優化成本和品質 |
| 5 | [[llm-internals\|LLM 底層技術]] | Flash Attention、KV Cache、Positional Embedding |

### 第二層：方法論

| # | 概念 | 說明 |
|---|------|------|
| 6 | [[harness-engineering\|Harness Engineering]] | 語言模型不是不夠聰明，而是缺乏好的引導 |
| 7 | [[context-engineering-basics\|Context Engineering]] | 管理 LLM 看到的內容 |
| 8 | [[agent-persona\|AI Agent 人格設計]] | Persona 定義 AI 是誰，含助理→同事進化路徑 |
| 9 | [[Coding-Agent-CLI\|Coding Agent CLI]] | 含工具包、Spec-Driven Development、Copilot 生態系 |
| 10 | [[computer-use-agent\|Computer Use Agent]] | 桌面/瀏覽器操控，含 In-page GUI Agent |
| 11 | [[self-correction\|Self-Correction 自我修正]] | AI 能否自行發現並修正錯誤？ |
| 12 | [[prompt-security\|Prompt 安全與越獄]] | 含 CL4R1T4S 越獄技術研究 |
| 13 | [[agent-trading\|Agent 交易]] | AI Agent 在金融交易的應用 |
| 14 | [[llm-knowledge-base\|LLM 知識庫]] | 含 Karpathy 方法、MemPalace、OCR-Memory |
| 15 | [[self-education\|自主學習]] | 透過開源資源和 AI 工具自主獲得知識 |
| 16 | [[frontend-design\|前端設計]] | 含 Design System Spec |

### 第三層：應用與研究

| # | 概念 | 說明 |
|---|------|------|
| 17 | [[generative-AI\|生成式 AI]] | 能生成新內容的 AI 技術 |
| 18 | [[diffusion-model\|擴散模型]] | 漸進去噪生成高品質內容 |
| 19 | [[AI-video-generation\|AI 影片生成]] | 文字到影片的生成模型 |
| 20 | [[world-model\|世界模型]] | 理解和模擬物理世界 |
| 21 | [[content-automation\|內容自動化]] | AI 自動生成和分發內容 |
| 22 | [[語音辨識\|語音辨識 (ASR/TTS)]] | 語音轉文字與文字轉語音 |
| 23 | [[AI-presentation\|AI 簡報]] | 含 PPTX 程式化生成 |
| 24 | [[模型推論與部署\|模型推論與部署]] | 含 LLM 微調（SFT/DPO/LoRA） |
| 25 | [[embedded-AI\|邊緣裝置 AI]] | 資源受限裝置上部署 AI |
| 26 | [[rag\|RAG]] | 含即時 RAG 管線（自動偵測變更） |
| 27 | [[GraphRAG]] | Knowledge Graph + RAG |
| 28 | [[向量資料庫\|向量資料庫]] | 向量嵌入的專用資料庫 |
| 29 | [[document-parsing\|文件解析]] | PDF/DOCX 結構化擷取 |
| 30 | [[code-intelligence\|程式碼智慧]] | 知識圖譜加速程式碼理解 |
| 31 | [[data-analysis\|資料分析]] | 從原始資料提取洞見 |
| 32 | [[visualization\|資料視覺化]] | 數據轉為圖形表示 |
| 33 | [[self-hosted\|自架]] | 含自架 AI 平台完整技術棧 |
| 34 | [[workflow-automation\|工作流自動化]] | 重複任務編排成自動化流程 |
| 35 | [[observability\|可觀測性]] | 日誌、指標和追蹤 |
| 36 | [[privacy\|隱私]] | 保護資料不被未授權存取 |
| 37 | [[open-source-business\|開源商業模式]] | 開源軟體的商業化策略 |
| 38 | [[free-software\|免費軟體]] | 開源或免費的工具 |
| 39 | [[free-domain\|免費域名]] | 免費取得網域名稱 |
| 40 | [[productivity\|生產力]] | 提升效率的工具與方法論 |
| 41 | [[media-streaming\|媒體串流]] | 網路即時傳輸音視訊 |
| 42 | [[AI-Tutoring\|AI Tutoring]] | AI 技術實現個人化教學 |
| 43 | [[computer-vision\|電腦視覺]] | 電腦理解和處理視覺資訊 |
| 44 | [[pentesting\|滲透測試]] | 模擬攻擊者進行安全測試 |
| 45 | [[financial-forecasting\|金融預測]] | 預測金融市場走勢 |
| 46 | [[backtesting\|回測]] | 用歷史數據驗證交易策略 |
| 47 | [[stock-tracking\|股市追蹤]] | 即時監控和分析股市 |
| 48 | [[網頁爬蟲\|網頁爬蟲]] | 含 Crawling/Scraping/社群媒體爬蟲 |

### 第四層：工具與協議

| # | 概念 | 說明 |
|---|------|------|
| 49 | [[AI-Skills\|AI Skills]] | 結構化操作手冊，含 CLAUDE.md 與 Skills 生態系 |
| 50 | [[MCP]] | Agent 連接外部工具的標準協議 |
| 51 | [[AI-Gateway\|AI Gateway]] | 聚合多個 LLM 提供者的統一閘道 |
| 52 | [[Context-Database\|Context Database]] | 以檔案系統範式管理 Agent 上下文 |
| 53 | [[Knowledge-Graph\|知識圖譜]] | 圖結構組織資訊 |
| 54 | [[sandbox\|沙箱]] | 程式碼執行的隔離環境 |

---

### 研究與方法筆記

- [[andrej-karpathy-ai-how|Karpathy AI 知識庫方法]] — 極簡編譯式知識庫的實作思路
- [[claude-code-boris-cherny-advanced-techniques|Claude Code 進階工作法]] — 平行執行、驗證迴圈與委派模式
- [[gemma4-mtp-drafters|MTP 投機解碼]] — 多 Token 預測與推論加速
- [[google-cloud-ai-agent-trends-2026|企業 AI Agent 趨勢]] — 企業導入 Agentic AI 的研究摘要
- [[gsap-ai-skills|GSAP AI 動畫技能]] — AI 前端動畫與設計品味
- [[nvidia-locate-anything|Parallel Box Decoding]] — VLM 視覺定位的平行解碼方法

## 📦 待分類

> 新加入但尚未歸入層次的概念。歡迎協助分類。

（目前無待分類項目）

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
| 8 | [[harness-engineering\|Harness Engineering]] — 語言模型不是不夠聰明 | [YouTube](https://www.youtube.com/watch?v=R6fZR_9kmIw) |

### 🧠 推理與自我成長系列

| # | 主題 | 觀看連結 |
|---|------|----------|
| 9 | [[self-correction\|Self-Correction 自我修正]] — AI 能自我修正嗎？ | [YouTube](https://www.youtube.com/watch?v=m3i2mk5hs8U) |
| 10 | [[llm-reasoning-short\|LLM 推理不用太長]] — 夠用就好 | [YouTube](https://www.youtube.com/watch?v=ip3XnTpcxoA) |
| 11 | [[ai-self-growth\|AI 自我成長（上集）]] — AI 要跨越盧比孔河了嗎？ | [YouTube](https://www.youtube.com/watch?v=s06mSAGN4gM) |
| 12 | [[ai-self-growth-2\|AI 自我成長（下集）]] — 跨越盧比孔河的條件 | [YouTube](https://www.youtube.com/watch?v=cQLKVzbwN7I) |

---

📖 **完整專案列表** → [[projects|專案索引]]

---
