---
title: 知識庫總覽
---

# 知識庫總覽

> AI 工具與工作流的個人知識庫，聚焦 LLM 應用、Agent 設計、知識管理和 Prompt 工程。

---

## 概念

### 🧠 核心

| 概念 | 說明 |
|------|------|
| [[AI-Agent\|AI Agent]] | 能自主執行任務的 AI 系統，含工具使用、記憶、規劃、工作流趨勢。 |
| [[LLM]] | 大語言模型，透過大規模文字資料訓練，能理解與生成自然語言。 |
| [[llm-internals\|LLM 底層技術]] | Flash Attention、KV Cache、Positional Embedding — Transformer 推論的三大加速與最佳化技術。 |
| [[flash-attention\|Flash Attention]] | 不改變 attention 計算結果的 GPU 記憶體搬運優化，減少 HBM↔SRAM 讀寫次數。 |
| [[kv-cache\|KV Cache]] | 推論時儲存已算好的 K/V 避免重算，衍生出 GQA、MLA、Sliding Window 等節省方法。 |
| [[positional-embedding-evolution\|位置編碼演進]] | Sinusoidal → ALiBi → RoPE：讓 Transformer 知道 token 順序的技術演進。 |
| [[Prompt-Engineering\|Prompt Engineering]] | 設計和優化 LLM 提示詞的技術，包含 token 優化、結構化提示、context engineering 等。 |
| [[Token-Optimization\|Token Optimization]] | 降低 LLM token 消耗的技術，透過精簡輸出、壓縮輸入等方式減少成本和延遲。 |

### 🔌 工具與協議

| 概念 | 說明 |
|------|------|
| [[MCP]] | Model Context Protocol — Anthropic 提出的開放協議，讓 LLM 透過統一介面連接外部工具和資料來源。 |
| [[Context-Database\|Context Database]] | 專為 AI Agent 設計的上下文資料庫，以檔案系統範式統一管理上下文。 |
| [[Knowledge-Graph\|Knowledge Graph]] | 以圖結構組織資訊，將實體與關係連結，讓機器能結構化理解與檢索知識。 |
| [[AI-Skills\|AI Skills]] | 結構化的操作指令格式（SKILL.md），讓 AI coding agent 能以明確上下文和規範執行任務。 |
| [[Coding-Agent-CLI\|Coding Agent CLI]] | 以終端機為主要介面的 AI 程式開發助手，提供完整工作流程。 |

### 🛠 方法論

| 概念 | 說明 |
|------|------|
| [[agent-persona\|AI Agent 人格設計]] | 用 Persona 定義 AI 是誰，用 Skill 定義 AI 會什麼，兩者搭配 = 有方向又有方法的 AI 同事。 |
| [[persona-skill-colleague\|Persona + Skill 打造 AI 同事]] | 從「助理」進化成「同事」：Persona 是方向，Skill 是方法，兩者缺一不可。 |
| [[agent-skills-ecosystem\|Agent Skills 生態系]] | Agent Skills 正在從個人腳本進化成標準化的共享格式，GitHub 上已經出現多個大型 Skill 庫。 |
| [[llm-knowledge-base\|LLM 知識庫系統]] | 用 LLM 當「編譯器」，把原始素材編譯成結構化的個人知識庫。人負責找素材，AI 負責整理。 |
| [[andrej-karpathy-ai-how\|Karpathy 知識庫拆解]] | 不用 Obsidian 也能建 AI 知識庫！三個資料夾加一份文字檔。 |
| [[karpathy-gist-llm-wiki\|Karpathy LLM Wiki Gist]] | LLM Wiki 原始觀念：增量建構持久 wiki，知識編譯一次後持續更新。 |
| [[karpathy-skills\|Karpathy Skills 版]] | Karpathy 知識庫方法封裝成 SKILL.md 格式，任何 Agent 框架都能用。 |
| [[llm-knowledge-base-obsidian-claude-code\|LLM 知識庫中文報導]] | Claude Code + Obsidian 整理筆記！Karpathy 系統的中文完整拆解。 |
| [[mempalace-usage-discussion\|MemPalace 使用討論]] | MemPalace 跟 RAG 的差異、改善建議、和我們知識庫的對比。 |
| [[prompt-security\|Prompt 安全與越獄]] | 當 AI Agent 有工具存取權時，prompt 安全不再是理論問題，而是實際風險。 |
| [[cl4r1t4s\|CL4R1T4S]] | Prompt 越獄與安全研究：LLM 的 jailbreak 技術和防禦方法。 |
| [[self-correction\|Self-Correction 自我修正]] | 語言模型能否在無人工介入下自行發現並修正錯誤？三條路徑：修改 inference、workflow、參數。 |
| [[ocr-memory\|OCR-Memory]] | 用視覺模態壓縮 Agent 長期記憶，把歷史軌跡渲染成圖片，透過視覺錨點精確檢索原文。 |

### 📚 應用與研究

| 概念 | 說明 |
|------|------|
| [[AI-Tutoring\|AI Tutoring]] | 利用 AI 技術實現個人化教學，結合 RAG、知識圖譜和 LLM agent。 |
| [[document-parsing\|文件解析]] | PDF、DOCX、圖片等文件的結構化擷取、OCR、版面分析與基準測試。 |
| [[rag\|RAG]] | 檢索增強生成（Retrieval-Augmented Generation），結合外部知識檢索與 LLM 生成以提升回答品質。 |
| [[LLM\|LLM 底層與生態]] | 推論加速、本地部署、模型框架等 LLM 基礎設施。 |

---

## 專案

### 🤖 Agent 框架與工具

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[openclaw\|OpenClaw]] | — | AI Agent, AI Skills, MCP | 2026-04-28 |
| [[addyosmani-agent-skills\|addyosmani/agent-skills]] | ⭐37,928 | Agent Skills, 開源 Skill 庫 | 2026-04-28 |
| [[google-skills\|google/skills]] | ⭐4,800 | Agent Skills, GCP, 雲端 | 2026-04-28 |
| [[agency-agents-144-personas\|Agency Agents 144 人格]] | ⭐84k+ | Agent Persona, 開源人格庫 | 2026-04-28 |
| [[affaan-m-everything-claude-code]] | ⭐172,098 | AI Agent, AI Skills, Prompt Security, Token Optimization | 2026-05-03 |
| [[HKUDS-nanobot]] | ⭐41,527 | AI Agent, MCP | 2026-05-03 |
| [[googleworkspace-cli]] | ⭐25,672 | AI Agent, MCP, AI Skills | 2026-05-03 |
| [[Gitlawb-openclaude]] | ⭐25,668 | Coding Agent CLI, AI Agent, MCP | 2026-05-04 |
| [[Panniantong-Agent-Reach\|Agent Reach]] | ⭐18,700 | AI Agent, MCP, AI Skills | 2026-05-05 |
| [[jackwener-OpenCLI\|OpenCLI]] | ⭐18,700 | AI Agent, MCP, AI Skills | 2026-05-05 |
| [[openai-codex-plugin-cc]] | ⭐17,527 | AI Agent, AI Skills, Coding Agent CLI | 2026-05-05 |
| [[lsdefine-GenericAgent]] | ⭐9,199 | AI Agent, 自演化, Token Optimization | 2026-05-06 |
| [[holaboss-ai-holaOS]] | ⭐4,757 | AI Agent, 環境工程, 記憶連續性 | 2026-05-06 |
| [[RightNow-AI-openfang]] | ⭐17,219 | AI Agent, MCP, Knowledge Graph | 2026-05-07 |
| [[cft0808-edict]] | ⭐15,619 | AI Agent, AI Skills, MCP | 2026-05-07 |
| [[AutoGPT]] | ⭐184,119 | AI Agent, 自主規劃 | 2026-05-10 |
| [[LangChain]] | ⭐136,262 | AI Agent, LLM, RAG | 2026-05-10 |
| [[CrewAI]] | ⭐51,031 | AI Agent, 多 Agent 協作 | 2026-05-10 |

### 🧠 記憶與知識管理

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[ragflow]] | ⭐79,665 | RAG, AI Agent | 2026-05-03 |
| [[mempalace\|MemPalace]] | ⭐50,787 | AI Agent, MCP, 記憶, RAG, 知識圖譜 | 2026-05-03 |
| [[thedotmack-claude-mem\|claude-mem]] | ⭐73,800 | 記憶, Claude Code, MCP | 2026-05-09 |
| [[docling]] | ⭐59,151 | RAG, 文件解析 | 2026-05-03 |
| [[cocoindex]] | ⭐8,136 | RAG, 增量索引 | 2026-05-03 |
| [[openviking\|OpenViking（概念頁）]] | — | Context Database, 檔案系統範式 | 2026-05-03 |
| [[safishamsi-graphify]] | ⭐41,860 | Knowledge Graph, RAG, MCP | 2026-05-04 |
| [[volcengine-OpenViking]] | ⭐23,398 | Context Database, RAG, AI Agent | 2026-05-04 |
| [[microsoft-markitdown]] | ⭐120,637 | RAG, 文件解析, MCP | 2026-05-05 |
| [[datalab-to-chandra]] | ⭐10,444 | RAG, OCR, 文件解析 | 2026-05-05 |
| [[pymupdf4llm]] | ⭐1,664 | RAG, 文件解析, OCR | 2026-05-08 |
| [[run-llama-ParseBench]] | ⭐468 | 文件解析, AI Agent, 評測基準 | 2026-05-09 |
| [[LeDat98-NexusRAG]] | ⭐297 | RAG, Knowledge Graph, 文件解析 | 2026-05-09 |
| [[aiptimizer-TurboOCR]] | ⭐264 | OCR, 文件解析, GPU 加速 | 2026-05-09 |
| [[flamehaven01-Flamehaven-Filesearch]] | ⭐100 | RAG, 搜尋引擎, 自架式 | 2026-05-09 |

### 🧠 模型推論與部署

| 概念頁 | 說明 |
|--------|------|
| [[模型推論與部署]] | LLM 從訓練到服務：推論優化、部署架構、成本控制 |
| [[flash-attention\|Flash Attention]] | 減少 GPU HBM↔SRAM 搬運次數 |
| [[kv-cache\|KV Cache]] | 避免重算 K/V，衍生 GQA/MLA/Sliding Window |
| [[positional-embedding-evolution\|位置編碼演進]] | Sinusoidal → ALiBi → RoPE |
| [[rtk\|RTK]] | 減少 LLM token 消耗 60-90% |

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[Ollama]] | ⭐171,080 | LLM, 本地部署 | 2026-05-10 |
| [[huggingface-transformers\|Hugging Face Transformers]] | ⭐160,425 | LLM, 模型生態 | 2026-05-10 |
| [[llama-cpp\|llama.cpp]] | ⭐109,260 | LLM, 推論加速, 本地部署 | 2026-05-10 |
| [[vLLM]] | ⭐79,515 | LLM, 推論加速 | 2026-05-10 |
| [[NVIDIA-TensorRT-LLM]] | ⭐13,598 | LLM, 推論加速, GPU 最佳化 | 2026-05-10 |
| [[sgl-project-sglang\|SGLang]] | ⭐27,589 | LLM, 推論加速, 多模態 | 2026-05-10 |

### 🔍 向量資料庫

| 概念頁 | 說明 |
|--------|------|
| [[向量資料庫]] | 儲存和檢索 embeddings 的專用資料庫，RAG 基礎設施 |
| [[rag\|RAG]] | 檢索增強生成 |
| [[mempalace\|MemPalace]] | 本地優先 AI 記憶系統（ChromaDB） |

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[Milvus]] | ⭐44,202 | RAG, 向量資料庫 | 2026-05-10 |
| [[Qdrant]] | ⭐31,189 | RAG, 向量資料庫 | 2026-05-10 |
| [[Chroma]] | ⭐27,889 | RAG, 向量資料庫 | 2026-05-10 |

### 🎯 多媒體與爬蟲

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[Whisper]] | ⭐99,208 | 語音辨識, 多模態 | 2026-05-10 |
| [[語音辨識]] | — | ASR/TTS 技術和模型 | — |
| [[Crawl4AI]] | ⭐65,284 | RAG, 網頁爬蟲, AI Agent | 2026-05-10 |
| [[web-crawling\|Web Crawling]] | — | 系統化瀏覽和收集網頁資料 | — |
| [[web-scraping\|網頁爬取]] | — | 從網頁自動提取資料 | — |
| [[網頁爬蟲]] | — | 網頁爬蟲與爬取技術總覽 | — |

### ⚡ 效能與壓縮

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[gemma4-mtp-drafters]] | ⭐—（研究文章，非 GitHub 專案） | Token Optimization, LLM 推理加速 | 2026-05-09 |
| [[JuliusBrussee-caveman]] | ⭐52,506 | Token Optimization, Prompt Engineering | 2026-05-03 |
| [[rtk\|RTK (Rust Token Killer)]] | ⭐40,072 | Token Optimization, Prompt Engineering | 2026-05-03 |
| [[litellm]] | ⭐45,703 | LLM, AI Gateway | 2026-05-03 |
| [[AlexsJones-llmfit]] | ⭐25,403 | LLM, Token Optimization | 2026-05-07 |
| [[tirth8205-code-review-graph]] | ⭐15,581 | Knowledge Graph, Token Optimization, MCP | 2026-05-07 |

### 📊 應用

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[santifer-career-ops]] | ⭐41,864 | AI Agent | 2026-05-03 |
| [[ZhuLinsen-daily_stock_analysis]] | ⭐33,706 | LLM, AI Agent | 2026-05-03 |
| [[autoresearch]] | ⭐78,500 | AI Agent, AI Skills | 2026-05-03 |
| [[HKUDS-DeepTutor]] | ⭐23,109 | AI Tutoring, RAG, AI Agent | 2026-05-04 |
| [[saturndec-waoowaoo\|waoowaoo AI 影視 Studio]] | ⭐12,000 | AI, 短劇, 影片製作 | 2026-05-05 |
| [[hugohe3-ppt-master\|PPT Master]] | ⭐11,300 | AI, PPT, 可編輯 | 2026-05-05 |
| [[daily-stock-analysis\|Daily Stock Analysis]] | ⭐34,945 | LLM, 股市分析, GitHub Actions | 2026-05-03 |
| [[virattt-dexter]] | ⭐23,560 | LLM, AI Agent, 金融研究 | 2026-05-05 |
| [[HKUDS-Vibe-Trading]] | ⭐5,120 | AI Agent, AI Skills, MCP, 金融交易 | 2026-05-06 |
| [[Narcooo-inkos]] | ⭐5,672 | AI Agent, AI Skills, 小說寫作 | 2026-05-06 |
| [[Imbad0202-academic-research-skills]] | ⭐4,927 | AI Skills, AI Agent, 學術研究 | 2026-05-08 |

### 🔄 Agent 自演化

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[EvoMap-evolver]] | ⭐7,241 | AI Agent, GEP 協議, 自演化引擎 | 2026-05-06 |

### 🛠 Skill 生態系

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[sickn33-antigravity-awesome-skills]] | ⭐36,216 | AI Skills, MCP, Prompt Engineering | 2026-05-04 |
| [[open-design]] | ⭐30,632 | AI Skills, Coding Agent CLI, Prompt Engineering | 2026-05-07 |
| [[heygen-com-hyperframes]] | ⭐15,232 | AI Skills, AI Agent, Prompt Engineering | 2026-05-07 |
| [[nidhinjs-prompt-master]] | ⭐7,257 | Prompt Engineering, Token Optimization | 2026-05-08 |

### 🏗 基礎設施

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[project-golem]] | ⭐590 | AI Agent, 記憶系統, MCP | 2026-05-02 |
| [[hermes-agent]] | ⭐141,768 | AI Agent, 學習閉環, 跨 session 記憶 | 2026-05-02 |
| [[volcengine-OpenSandbox\|OpenSandbox]] | ⭐10,400 | AI Agent, MCP, Context Database | 2026-05-05 |
| [[sandbox\|沙箱]] | — | 程式碼執行的隔離環境，AI Agent 安全基礎 | — |
| [[anthropics-claude-plugins-official]] | ⭐18,801 | AI Skills, MCP, Plugin 生態系 | 2026-05-08 |
| [[jo-inc-camofox-browser]] | ⭐4,203 | AI Agent, 瀏覽器自動化 | 2026-05-08 |
| [[can1357-oh-my-pi]] | ⭐4,108 | Coding Agent CLI, LSP, 自主記憶 | 2026-05-08 |
| [[printing-press]] | ⭐30+ | Prompt Engineering, 文件轉換 | 2026-05-09 |
| [[codeburn\|CodeBurn]] | ⭐5,885 | AI Skills, 程式碼優化 | 2026-05-09 |
| [[cubesandbox\|CubeSandbox]] | ⭐5,184 | 沙箱, Rust, 程式碼執行 | 2026-05-09 |
| [[fireworks-tech-graph\|Fireworks Tech Graph]] | ⭐5,741 | Knowledge Graph, JavaScript | 2026-05-09 |
| [[visualization\|資料視覺化]] | — | 將數據轉為圖形表示 | — |
| [[obscura\|Obscura]] | ⭐11,146 | 隱私, Rust, 瀏覽器 | 2026-05-09 |
| [[openmythos\|OpenMythos]] | ⭐12,286 | AI, 神話, Python | 2026-05-09 |

---

## 🎬 教學影片

全部來自 **李宏毅 (Hung-yi Lee)** — 台大電機系教授，AI Agent 系列課程。

| 影片 | 主題 | 上傳日期 | 連結 |
|------|------|----------|------|
| [[agent-anatomy-openclaw]] | 解剖小龍蝦：以 OpenClaw 為例介紹 AI Agent 運作原理 | 2026-03-09 | [YouTube](https://www.youtube.com/watch?v=2rcJdFuNbZQ) |
| [[context-engineering-basics]] | AI Agent (1/3)：核心技術 Context Engineering 基本概念解說 | 2026-03-15 | [YouTube](https://www.youtube.com/watch?v=urwDLyNa9FU) |
| [[ai-agent-interaction]] | AI Agent (2/3)：AI Agent 之間可以有什麼樣的互動 | 2026-03-15 | [YouTube](https://www.youtube.com/watch?v=mmPmNezjCi0) |
| [[ai-agent-work-impact]] | AI Agent (3/3)：AI Agent 對工作帶來的衝擊 | 2026-03-15 | [YouTube](https://www.youtube.com/watch?v=VqB8zMujdjM) |
| [[harness-engineering]] | Harness Engineering：語言模型不是不夠聰明，只是沒有人類好好引導 | 2026-04-12 | [YouTube](https://www.youtube.com/watch?v=R6fZR_9kmIw) |
| [[self-correction]] | AI 能自我修正嗎？從 decoding、workflow 到 reasoning | 2026-04-25 | [YouTube](https://www.youtube.com/watch?v=m3i2mk5hs8U) |

---

### 🎬 教學影片（2026-05-03 LLM 推論加速系列）

| 影片 | 主題 | 連結 |
|------|------|------|
| [[flash-attention\|Flash Attention]] | 減少 GPU 記憶體搬運次數加速推論 | [YouTube](https://www.youtube.com/watch?v=vXb2QYOUzl4) |
| [[kv-cache\|KV Cache]] | 儲存 K/V 避免重算 + GQA/MLA/Sliding Window | [YouTube](https://www.youtube.com/watch?v=fDQaadKysSA) |
| [[positional-embedding-evolution\|位置編碼演進]] | Sinusoidal → ALiBi → RoPE 演進歷史 | [YouTube](https://www.youtube.com/watch?v=Ll-wk8x3G_g) |

### 🛠 Agent 編排與記憶

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[bytedance-deer-flow\|DeerFlow 2.0]] | ⭐66,100 | Agent 編排, 子Agent, 沙箱 | 2026-05-09 |
| [[ruvnet-ruflo\|Ruflo]] | ⭐47,000 | 多Agent編排, Swarm, 聯邦通訊 | 2026-05-09 |
| [[upstash-context7\|Context7]] | ⭐54,800 | LLM 文件查詢, MCP | 2026-05-09 |
| [[claude-code-boris-cherny-advanced-techniques\|Claude Code 進階技巧]] | — | Claude Code, 生產力, 自動化 | 2026-05-06 |

---

_此頁由 daily-llm-trending 自動維護_