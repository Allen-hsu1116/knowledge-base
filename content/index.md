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
| [[Prompt-Engineering\|Prompt Engineering]] | 設計和優化 LLM 提示詞的技術，包含 token 優化、結構化提示、context engineering 等。 |
| [[Token-Optimization\|Token Optimization]] | 降低 LLM token 消耗的技術，透過精簡輸出、壓縮輸入等方式減少成本和延遲。 |
|| [[chopratejas-headroom\|Headroom]] | AI Agent 上下文壓縮層，60-95% token 節省，Library/Proxy/MCP 三模式，可逆壓縮。 |
|| [[jamwithai-production-agentic-rag-course\|Production Agentic RAG Course]] | 7 週漸進式 RAG 課程：從基礎設施到 Agentic RAG，用 arXiv 論文策展人為載體。 |
|| [[reconurge-flowsint\|Flowsint]] | 開源 OSINT 圖譜調查平台，視覺化探索實體關聯，11 大類自動 enricher。 |
|| [[Open-LLM-VTuber-Open-LLM-VTuber\|Open-LLM-VTuber]] | 開源語音互動 AI 陪伴系統，Live2D 形象、免持語音、完全離線。 |
| [[affaan-m-ECC\|ECC]] | Agent harness 效能優化系統 — 跨 Claude Code/Codex/Cursor 等 7+ 工具的 skills、記憶、安全、持續學習。 |
| [[agent-harness-optimization\|Agent Harness 優化]] | 系統化提升 AI coding agent 的效能：token、記憶、安全、驗證迴圈。 |

### 🔌 工具與協議

| 概念 | 說明 |
|------|------|
| [[AI-Skills\|AI Skills]] | 結構化的操作指令格式（SKILL.md），讓 AI coding agent 能以明確上下文和規範執行任務。 |
|| [[Coding-Agent-CLI\|Coding Agent CLI]] | 以終端機為主要介面的 AI 程式開發助手，提供完整工作流程。 |
| [[anthropics-claude-code\|Claude Code]] | Anthropic 官方終端機 AI 編碼助手，用自然語言指令理解程式碼庫、自動執行任務。 |
| [[Context-Database\|Context Database]] | 專為 AI Agent 設計的上下文資料庫，以檔案系統範式統一管理上下文。 |
| [[Knowledge-Graph|Knowledge Graph]] | 以圖結構組織資訊，將實體與關係連結，讓機器能結構化理解與檢索知識。 |
| [[refactoringhq-tolaria|Tolaria]] | 桌面端 Markdown 知識庫管理工具——Git 原生、離線優先、AI 整合友善。 |
| [[MCP]] | Model Context Protocol — Anthropic 提出的開放協議，讓 LLM 透過統一介面連接外部工具和資料來源。 |
| [[mvanhorn-last30days-skill\|last30days]] | AI Agent 社群搜尋引擎：14 個平台平行搜尋，用 upvote/like/真金評分，智能預研究 + 聚簇合併。 |
| [[revfactory-harness\|Agent 團隊架構]] | 用領域描述自動產生 agent 團隊和 skill，六種架構模式涵蓋管線到階層委派。 |
| [[sandbox\|沙箱]] | 程式碼執行的隔離環境，是 AI Agent 安全基礎。 |
| [[aaif-goose-goose\|Goose]] | 開源通用 AI Agent——桌面 App、CLI、API 三用，Rust 原生，15+ LLM + 70+ MCP 擴充，Linux Foundation AAIF 專案。 |

### 🛠 方法論

| 概念 | 說明 |
|------|------|
| [[agent-persona\|AI Agent 人格設計]] | 用 Persona 定義 AI 是誰，用 Skill 定義 AI 會什麼，兩者搭配 = 有方向又有方法的 AI 同事。 |
| [[CLAUDE-md\|CLAUDE.md]] | 用自然語言定義 AI 編碼助理的行為規範，是 Agent Skill 的核心載體。 |
| [[agent-skills-ecosystem|Agent Skills 生態系]] | Agent Skills 正在從個人腳本進化成標準化的共享格式，GitHub 上已經出現多個大型 Skill 庫。 |
| [[phuryn-pm-skills|PM Skills Marketplace]] | 68 個 PM 技能 + 42 條工作流，9 大插件讓 AI 成為產品決策作業系統。 |
| [[cl4r1t4s\|CL4R1T4S]] | Prompt 越獄與安全研究：LLM 的 jailbreak 技術和防禦方法。 |
| [[llm-knowledge-base\|LLM 知識庫系統]] | 用 LLM 當「編譯器」，把原始素材編譯成結構化的個人知識庫。人負責找素材，AI 負責整理。 |
| [[llm-knowledge-base-obsidian-claude-code\|LLM 知識庫中文報導]] | Claude Code + Obsidian 整理筆記！Karpathy 系統的中文完整拆解。 |
| [[karpathy-gist-llm-wiki|Karpathy LLM Wiki Gist]] | Karpathy 提出的 LLM Wiki 模式，用 LLM 增量建構個人知識庫。 |
| [[karpathy-skills|Karpathy Skills Skill 版]] | 將 Karpathy 知識庫方法論封裝成 Agent Skill 格式。 |
| [[andrej-karpathy-ai-how|Karpathy 知識庫完整拆解]] | 數位時代報導：Karpathy 的 LLM 知識庫系統中文完整拆解。 |
| [[mempalace-usage-discussion\|MemPalace 使用討論]] | MemPalace 跟 RAG 的差異、改善建議、和我們知識庫的對比。 |
| [[ocr-memory\|OCR-Memory]] | 用視覺模態壓縮 Agent 長期記憶，把歷史軌跡渲染成圖片，透過視覺錨點精確檢索原文。 |
| [[persona-skill-colleague\|Persona + Skill 打造 AI 同事]] | 從「助理」進化成「同事」：Persona 是方向，Skill 是方法，兩者缺一不可。 |
| [[prompt-security|Prompt 安全與越獄]] | 當 AI Agent 有工具存取權時，prompt 安全不再是理論問題，而是實際風險。 |
| [[x1xhlol-system-prompts-and-models-of-ai-tools|System Prompts Collection]] | 20+ AI 工具的完整系統提示詞逆向集合——理解 AI 助手如何被指令的第一手素材。 |
| [[self-correction\|Self-Correction 自我修正]] | 語言模型能否在無人工介入下自行發現並修正錯誤？三條路徑：修改 inference、workflow、參數。 |
| [[humanlayer-12-factor-agents\|12-Factor Agents]] | 借鏡 12 Factor Apps，提出 12 條打造可靠 LLM Agent 的工程原則。 |
| [[ai-self-growth|AI 自我成長]] | AI 能否跨越盧比孔河？從自我修正到自我成長的不可逆轉折點。 |
| [[context-engineering-basics\|Context Engineering 基本概念]] | 系統化介紹 AI Agent 核心技術——如何管理語言模型看到的內容，讓輸入長度合適。 |
| [[harness-engineering\|Harness Engineering 駕馭工程]] | 語言模型不是不夠聰明，而是缺乏好的引導。透過認知框架、工具邊界、工作流程三維度駕馭 Agent。 |
| [[compound-engineering\|複利工程]] | 每次工程工作讓下一次更容易，非累積債務。80% 規劃審查 + 20% 執行的 Agent 工作流。 |
| [[claude-code-boris-cherny-advanced-techniques\|Claude Code 進階技巧]] | Boris Cherny 的 Claude Code 進階使用技巧：生產力、自動化和多工具協作。 |
|| [[FareedKhan-dev-train-llm-from-scratch\|Train LLM From Scratch]] | 從下載資料到生成文字，一步步用 PyTorch 從零訓練 LLM，完整可執行教學流程。 |
|| [[pbakaus-impeccable\|Impeccable]] | AI coding agent 的設計語言：7 領域參考 + 23 指令 + 反模式檢查，解決 AI 設計同質化。 |
|| [[dmtrKovalenko-fff\|FFF]] | 專為人與 AI Agent 打造的 Rust 檔案搜尋工具：frecency 排序、模糊容錯、MCP server。 |

### 📚 應用與研究

| 概念 | 說明 |
|------|------|
| [[AI-Tutoring\|AI Tutoring]] | 利用 AI 技術實現個人化教學，結合 RAG、知識圖譜和 LLM agent。 |
| [[microsoft-ai-agents-for-beginners\|AI Agent 教學]] | 微軟出品的 AI Agent 入門課程，12+ 堂課涵蓋設計模式、工具使用、RAG、多 Agent、協議等。 |
| [[PaddlePaddle-PaddleOCR\|PaddleOCR]] | 百度開源 OCR + 文件 AI 引擎，PaddleOCR-VL 0.9B 達 96.3% SOTA，PP-StructureV3 版面解析，100+ 語言。 |
| [[document-parsing\|文件解析]] | PDF、DOCX、圖片等文件的結構化擷取、OCR、版面分析與基準測試。 |
| [[opendataloader-project-opendataloader-pdf\|OpenDataLoader PDF]] | 開源 #1 PDF 解析器，hybrid 模式 0.907 準確率，bounding box 全覆蓋，首個 Tagged PDF 自動化。 |
| [[run-llama-liteparse\|LiteParse]] | LlamaIndex 出品的開源高速文件解析器，Rust 核心、本地運行、支援多語言綁定。 |
| [[rag\|RAG]] | 檢索增強生成（Retrieval-Augmented Generation），結合外部知識檢索與 LLM 生成以提升回答品質。 |
|| [[financial-forecasting\|金融預測]] | 利用統計模型、機器學習和 AI 技術預測金融市場走勢和資產價格。 |
|| [[TauricResearch-TradingAgents\|TradingAgents]] | 多 Agent LLM 金融交易框架，模擬真實交易公司多角色協作決策。 |
|| [[stefan-jansen-machine-learning-for-trading\|ML for Trading]] | 150+ Notebook 的 ML 交易完整教學，從資料到回測的 ML4T 工作流程。 |
| [[computer-vision\|電腦視覺]] | 讓電腦理解和處理視覺資訊的 AI 領域，包括影像辨識、物體偵測和場景理解。旗艦工具：[[opencv-opencv|OpenCV]]。 |
| [[pentesting\|滲透測試]] | 模擬真實攻擊者手法，對系統進行授權的安全測試，找出可被利用的漏洞。 |
| [[arthurpanhku-DocSentinel\|SSDLC 安全評估]] | AI 驅動的安全軟體開發生命週期平台，LangGraph 編排六個安全 Agent 自動化評估。 |
| [[web-crawling\|Web Crawling]] | 系統化瀏覽和收集網頁資料，是搜尋引擎和資料收集的基礎技術。（詳見 [[網頁爬蟲]]） |
| [[web-scraping\|網頁爬取]] | 從網頁自動提取結構化資料，補充 API 不足的資料來源。 |
| [[語音辨識]] | ASR/TTS 技術和模型，語音轉文字與文字轉語音的 AI 應用。 |
| [[OpenBMB-VoxCPM\|VoxCPM]] | 無 tokenizer 的多語言 TTS 系統，支援語音設計、可控克隆與 48kHz 高品質音訊輸出。 |
| [[OpenMOSS-MOSS-TTS\|MOSS-TTS]] | OpenMOSS 開源語音合成模型家族，涵蓋長語音、對話、語音設計、音效和即時串流五大場景。 |
| [[AI-presentation\|AI 簡報]] | 利用 AI 自動生成和設計簡報（PPT/PDF），從大綱、內容到視覺排版全流程自動化。 |
| [[pptx-generation\|PPTX 生成]] | 程式化生成 PowerPoint 簡報檔案，從模板、python-pptx 到 AI 驅動的全自動流程。 |

### 🎨 生成式 AI

| 概念 | 說明 |
|------|------|
| [[embedded-AI|邊緣裝置 AI]] | 在資源受限的邊緣裝置上部署 AI 模型，低延遲、隱私、離線運行。 |
| [[generative-AI|生成式 AI]] | 能夠生成新內容（圖片、影片、音訊、文字等）的 AI 技術，從訓練資料中學習分佈，創造前所未見的輸出。 |
| [[AI-video-generation|AI 影片生成]] | AI 影片生成技術總覽：從文字到影片的生成模型、工具和方法。 |
| [[diffusion-model|擴散模型]] | 透過漸進去噪生成高品質內容的模型架構，Sana 等模型的核心技術。 |
| [[world-model|世界模型]] | 理解和模擬物理世界的 AI 模型，支援可控環境生成與具身智慧。 |

### 🤖 程式碼智慧

| 概念 | 說明 |
|------|------|
| [[code-intelligence|程式碼智慧]] | 用知識圖譜和語意分析加速 AI coding agent 的程式碼理解。 |
| [[simulation|模擬]] | 用多 Agent 社會演化模擬推演未來事件。 |
| [[GraphRAG]] | Knowledge Graph + RAG 結合，沿語義關聯路徑檢索。 |
| [[向量資料庫]] | 儲存和檢索向量嵌入的專用資料庫，是 RAG 和語意搜尋的基礎設施。 |
| [[RyanCodrai-turbovec|TurboVec]] | 基於 TurboQuant 的向量索引——16x 壓縮、超越 FAISS、純本地離線運行。 |

### 🏗 基礎設施概念

| 概念 | 說明 |
|------|------|
| [[self-hosted-AI-platform\|自架 AI 平台]] | 在自有基礎設施上部署和運行 AI 服務，掌控資料隱私、客製化和成本。 |
| [[lfnovo-open-notebook\|Open Notebook]] | NotebookLM 開源替代：隱私自架、18+ AI 供應商、1-4 人 Podcast、Docker 一鍵部署。 |
| [[Crosstalk-Solutions-project-nomad\|Project N.O.M.A.D.]] | 離線優先的全功能知識與 AI 伺服器，打包 Wikipedia、教育平台、地圖與 AI 聊天於一體。 |
| [[workflow-automation\|工作流自動化]] | 將重複性任務編排成自動化流程，減少人工介入、提高效率和一致性。 |
| [[模型推論與部署]] | LLM 從訓練到服務：推論加速、部署架構、成本控制。 |
| [[lyogavin-airllm\|AirLLM]] | 分層推理讓 4GB GPU 跑 70B 模型，無損品質，可選量化 3x 加速。 |
| [[visualization\|資料視覺化]] | 將數據轉為圖形表示，幫助理解趨勢、模式和異常。 |

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
| [[ai-agent-work-impact]] | AI Agent (3/3)：AI Agent 對工作帶來的衝衝擊 | 2026-03-15 | [YouTube](https://www.youtube.com/watch?v=VqB8zMujdjM) |
| [[context-engineering-basics\|Context Engineering 基本概念]] | AI Agent (1/3)：核心技術 Context Engineering 基本概念解說 | 2026-03-15 | [YouTube](https://www.youtube.com/watch?v=urwDLyNa9FU) |
| [[agent-anatomy-openclaw]] | 解剖小龍蝦：以 OpenClaw 為例介紹 AI Agent 運作原理 | 2026-03-09 | [YouTube](https://www.youtube.com/watch?v=2rcJdFuNbZQ) |

---

📖 **完整專案列表** → [[projects|專案索引]]

---

_此頁由 daily-llm-trending 自動維護_