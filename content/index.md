---
title: 知識庫總覽
---

# 知識庫總覽

> AI 工具與工作流的個人知識庫，聚焦 LLM 應用、Agent 設計、知識管理和 Prompt 工程。

📖 **完整專案列表** → [[projects|專案索引]]

---

## 概念

### 🧠 核心

| 概念 | 說明 |
|------|------|
| [[AI-Agent\|AI Agent]] | 能自主執行任務的 AI 系統，含工具使用、記憶、規劃、工作流趨勢。 |
| [[LLM]] | 大語言模型，透過大規模文字資料訓練，能理解與生成自然語言。 |
| [[llm-internals\|LLM 底層技術]] | Flash Attention、KV Cache、Positional Embedding — Transformer 推論的三大加速與最佳化技術。 |
| [[ds4\|DS4]] | antirez 的 DeepSeek V4 Flash 專用本地推論引擎，Metal/CUDA 最佳化。 |
| [[Prompt-Engineering\|Prompt Engineering]] | 設計和優化 LLM 提示詞的技術，包含 token 優化、結構化提示、context engineering 等。 |
| [[Token-Optimization\|Token Optimization]] | 降低 LLM token 消耗的技術，透過精簡輸出、壓縮輸入等方式減少成本和延遲。 |

### 🔌 工具與協議

| 概念 | 說明 |
|------|------|
| [[AI-Skills\|AI Skills]] | 結構化的操作指令格式（SKILL.md），讓 AI coding agent 能以明確上下文和規範執行任務。 |
| [[Coding-Agent-CLI\|Coding Agent CLI]] | 以終端機為主要介面的 AI 程式開發助手，提供完整工作流程。 |
| [[Context-Database\|Context Database]] | 專為 AI Agent 設計的上下文資料庫，以檔案系統範式統一管理上下文。 |
| [[Knowledge-Graph\|Knowledge Graph]] | 以圖結構組織資訊，將實體與關係連結，讓機器能結構化理解與檢索知識。 |
| [[MCP]] | Model Context Protocol — Anthropic 提出的開放協議，讓 LLM 透過統一介面連接外部工具和資料來源。 |

### 🛠 方法論

| 概念 | 說明 |
|------|------|
| [[agent-persona\|AI Agent 人格設計]] | 用 Persona 定義 AI 是誰，用 Skill 定義 AI 會什麼，兩者搭配 = 有方向又有方法的 AI 同事。 |
| [[agent-skills-ecosystem\|Agent Skills 生態系]] | Agent Skills 正在從個人腳本進化成標準化的共享格式，GitHub 上已經出現多個大型 Skill 庫。 |
| [[obra-superpowers\|Superpowers]] | Agentic skills 框架與軟體開發方法論，TDD + subagent 驅動開發（⭐189k）。 |
| [[garrytan-gstack\|gstack]] | Garry Tan 的開源軟體工廠，把 Claude Code 變成 23 人虛擬工程團隊（⭐97k）。 |
| [[github-spec-kit\|Spec Kit]] | GitHub 官方 Spec-Driven Development 工具組，規格驅動 AI coding agent（⭐98k）。 |
| [[K-Dense-AI-scientific-agent-skills\|Scientific Agent Skills]] | 135 個即插即用科學研究技能，支援 100+ 資料庫和 70+ Python 套件（⭐21k）。 |
| [[cl4r1t4s\|CL4R1T4S]] | Prompt 越獄與安全研究：LLM 的 jailbreak 技術和防禦方法。 |
| [[llm-knowledge-base\|LLM 知識庫系統]] | 用 LLM 當「編譯器」，把原始素材編譯成結構化的個人知識庫。人負責找素材，AI 負責整理。 |
| [[llm-knowledge-base-obsidian-claude-code\|LLM 知識庫中文報導]] | Claude Code + Obsidian 整理筆記！Karpathy 系統的中文完整拆解。 |
| [[karpathy-gist-llm-wiki|Karpathy LLM Wiki Gist]] | Karpathy 提出的 LLM Wiki 模式，用 LLM 增量建構個人知識庫。 |
| [[karpathy-skills|Karpathy Skills Skill 版]] | 將 Karpathy 知識庫方法論封裝成 Agent Skill 格式。 |
| [[andrej-karpathy-ai-how|Karpathy 知識庫完整拆解]] | 數位時代報導：Karpathy 的 LLM 知識庫系統中文完整拆解。 |
| [[mempalace-usage-discussion\|MemPalace 使用討論]] | MemPalace 跟 RAG 的差異、改善建議、和我們知識庫的對比。 |
| [[ocr-memory\|OCR-Memory]] | 用視覺模態壓縮 Agent 長期記憶，把歷史軌跡渲染成圖片，透過視覺錨點精確檢索原文。 |
| [[persona-skill-colleague\|Persona + Skill 打造 AI 同事]] | 從「助理」進化成「同事」：Persona 是方向，Skill 是方法，兩者缺一不可。 |
| [[prompt-security\|Prompt 安全與越獄]] | 當 AI Agent 有工具存取權時，prompt 安全不再是理論問題，而是實際風險。 |
| [[self-correction\|Self-Correction 自我修正]] | 語言模型能否在無人工介入下自行發現並修正錯誤？三條路徑：修改 inference、workflow、參數。 |
| [[ai-self-growth|AI 自我成長]] | AI 能否跨越盧比孔河？從自我修正到自我成長的不可逆轉折點。 |

### 📚 應用與研究

| 概念 | 說明 |
|------|------|
| [[AI-Tutoring\|AI Tutoring]] | 利用 AI 技術實現個人化教學，結合 RAG、知識圖譜和 LLM agent。 |
| [[document-parsing\|文件解析]] | PDF、DOCX、圖片等文件的結構化擷取、OCR、版面分析與基準測試。 |
| [[hichunk\|HiChunk]] | 騰訊優圖的階層式文件分塊框架，用微調 LLM 做多層級結構化 + Auto-Merge 檢索。 |
| [[pdfcraft\|PDFCraft]] | 瀏覽器端隱私優先 PDF 工具箱，90+ 工具全在本地運作。 |
| [[rag\|RAG]] | 檢索增強生成（Retrieval-Augmented Generation），結合外部知識檢索與 LLM 生成以提升回答品質。 |
| [[qmd\|QMD]] | 本地優先的混合搜尋引擎，BM25 + 向量 + LLM 重排序，Tobi Lütke 開發（⭐24.9k）。 |
| [[roboflow-supervision\|supervision]] | 電腦視覺可重用工具箱，模型無關的標註、追蹤、區域分析（⭐39k）。 |
| [[ruvnet-RuView\|RuView]] | 用 WiFi 訊號實現穿牆人員偵測、生命體徵監測、姿態估計（⭐56k）。 |
| [[shiyu-coder-Kronos\|Kronos]] | 金融 K 線基礎模型，45+ 交易所資料預訓練，AAAI 2026（⭐25k）。 |
| [[self-rag\|Self-RAG]] | 讓 LLM 自己決定何時檢索、自我審查生成品質 — RAG 的反思進化版。ICLR 2024 Oral。 |

### 🔬 從零理解 LLM

| 概念 | 說明 |
|------|------|
| [[minimind\|MiniMind]] | 64M 參數從零訓練 LLM，2 小時完整流程，純 PyTorch 原生實現。 |
| [[rasbt-LLMs-from-scratch\|LLMs from Scratch]] | 書籍+程式碼，逐章實作 LLM 每個組件，理論教學導向。 |

---

## 🎬 教學影片

全部來自 **李宏毅 (Hung-yi Lee)** — 台大電機系教授。

| 影片 | 主題 | 上傳日期 | 連結 |
|------|------|----------|------|
| [[ai-self-growth|AI 自我成長]] | AI 能否跨越盧比孔河？自我成長的 AI 離我們多遠？ | 2026-05-10 | [YouTube](https://www.youtube.com/watch?v=s06mSAGN4gM) |
| [[flash-attention\|Flash Attention]] | 減少 GPU 記憶體搬運次數加速推論 | 2026-05-03 | [YouTube](https://www.youtube.com/watch?v=vXb2QYOUzl4) |
| [[kv-cache\|KV Cache]] | 儲存 K/V 避免重算 + GQA/MLA/Sliding Window | 2026-05-03 | [YouTube](https://www.youtube.com/watch?v=fDQaadKysSA) |
| [[positional-embedding-evolution\|位置編碼演進]] | Sinusoidal → ALiBi → RoPE 演進歷史 | 2026-05-03 | [YouTube](https://www.youtube.com/watch?v=Ll-wk8x3G_g) |
| [[self-correction]] | AI 能自我修正嗎？從 decoding、workflow 到 reasoning | 2026-04-25 | [YouTube](https://www.youtube.com/watch?v=m3i2mk5hs8U) |
| [[harness-engineering]] | Harness Engineering：語言模型不是不夠聰明，只是沒有人類好好引導 | 2026-04-12 | [YouTube](https://www.youtube.com/watch?v=R6fZR_9kmIw) |
| [[ai-agent-interaction]] | AI Agent (2/3)：AI Agent 之間可以有什麼樣的互動 | 2026-03-15 | [YouTube](https://www.youtube.com/watch?v=mmPmNezjCi0) |
| [[ai-agent-work-impact]] | AI Agent (3/3)：AI Agent 對工作帶來的衝擊 | 2026-03-15 | [YouTube](https://www.youtube.com/watch?v=VqB8zMujdjM) |
| [[context-engineering-basics]] | AI Agent (1/3)：核心技術 Context Engineering 基本概念解說 | 2026-03-15 | [YouTube](https://www.youtube.com/watch?v=urwDLyNa9FU) |
| [[agent-anatomy-openclaw]] | 解剖小龍蝦：以 OpenClaw 為例介紹 AI Agent 運作原理 | 2026-03-09 | [YouTube](https://www.youtube.com/watch?v=2rcJdFuNbZQ) |

---

📖 **完整專案列表** → [[projects|專案索引]]

---

_此頁由 daily-llm-trending 自動維護_