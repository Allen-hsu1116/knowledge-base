---

title: 知識庫總覽

slug: index
language: zh-TW
topics: ["知識庫", "總覽"]
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
| [[affaan-m-ECC\|ECC]] | Agent harness 效能優化系統 — 跨 Claude Code/Codex/Cursor 等 7+ 工具的 skills、記憶、安全、持續學習。 |
| [[agent-harness-optimization\|Agent Harness 優化]] | 系統化提升 AI coding agent 的效能：token、記憶、安全、驗證迴圈。 |

### 🔌 工具與協議

| 概念 | 說明 |
|------|------|
| [[AI-Skills\|AI Skills]] | 結構化的操作指令格式（SKILL.md），讓 AI coding agent 能以明確上下文和規範執行任務。 |
| [[anthropics-claude-code\|Claude Code]] | Anthropic 官方終端機 AI 編碼助手，用自然語言指令理解程式碼庫、自動執行任務。 |
| [[Context-Database\|Context Database]] | 專為 AI Agent 設計的上下文資料庫，以檔案系統範式統一管理上下文。 |
| [[Knowledge-Graph\|Knowledge Graph]] | 以圖結構組織資訊，將實體與關係連結，讓機器能結構化理解與檢索知識。 |
| [[MCP]] | Model Context Protocol — Anthropic 提出的開放協議，讓 LLM 透過統一介面連接外部工具和資料來源。 |
| [[mvanhorn-last30days-skill\|last30days]] | AI Agent 社群搜尋引擎：14 個平台平行搜尋，用 upvote/like/真金評分，智能預研究 + 聚簇合併。 |
| [[aaif-goose-goose\|Goose]] | 開源通用 AI Agent，桌面 + CLI + API，支援 15+ LLM 提供商和 70+ MCP 擴展。 |
| [[revfactory-harness\|Agent 團隊架構]] | 用領域描述自動產生 agent 團隊和 skill，六種架構模式涵蓋管線到階層委派。 |
| [[sandbox\|沙箱]] | 程式碼執行的隔離環境，是 AI Agent 安全基礎。 |
| [[Coding-Agent-CLI\|Coding Agent CLI]] | 以終端機為介面的 AI 程式開發助手，整合多模型、MCP、Skills 和 Agent Routing。 |
| [[coding-agent-toolkit\|Coding Agent 工具包]] | 為 coding agent 提供搜尋、導航和程式碼理解能力的工具集合。 |
| [[Figma-Skills\|Figma Skills]] | AI Agent Skill 系列，涵蓋 Figma 設計脈絡取得、工具使用、設計生成和程式碼實作的完整工作流。 |
| [[Frontend-Design-Agent-Skills\|Frontend Design Agent Skills]] | 前端設計 Agent Skill 總覽：Anthropic frontend-design、Vercel web-design-guidelines、SoftaWorks design-system-starter、Anthropic webapp-testing。 |

### 🛠 方法論

| 概念 | 說明 |
|------|------|
| [[agent-persona\|AI Agent 人格設計]] | 用 Persona 定義 AI 是誰，用 Skill 定義 AI 會什麼，兩者搭配 = 有方向又有方法的 AI 同事。 |
| [[CLAUDE-md\|CLAUDE.md]] | 用自然語言定義 AI 編碼助理的行為規範，是 Agent Skill 的核心載體。 |
| [[agent-skills-ecosystem\|Agent Skills 生態系]] | Agent Skills 正在從個人腳本進化成標準化的共享格式，GitHub 上已經出現多個大型 Skill 庫。 |
| [[cl4r1t4s\|CL4R1T4S]] | Prompt 越獄與安全研究：LLM 的 jailbreak 技術和防禦方法。 |
| [[llm-knowledge-base\|LLM 知識庫系統]] | 用 LLM 當「編譯器」，把原始素材編譯成結構化的個人知識庫。人負責找素材，AI 負責整理。 |
| [[llm-knowledge-base-obsidian-claude-code\|LLM 知識庫中文報導]] | Claude Code + Obsidian 整理筆記！Karpathy 系統的中文完整拆解。 |
| [[karpathy-gist-llm-wiki\|Karpathy LLM Wiki Gist]] | Karpathy 提出的 LLM Wiki 模式，用 LLM 增量建構個人知識庫。 |
| [[karpathy-skills\|Karpathy Skills Skill 版]] | 將 Karpathy 知識庫方法論封裝成 Agent Skill 格式。 |
| [[andrej-karpathy-ai-how\|Karpathy 知識庫完整拆解]] | 數位時代報導：Karpathy 的 LLM 知識庫系統中文完整拆解。 |
| [[mempalace-usage-discussion\|MemPalace 使用討論]] | MemPalace 跟 RAG 的差異、改善建議、和我們知識庫的對比。 |
| [[ocr-memory\|OCR-Memory]] | 用視覺模態壓縮 Agent 長期記憶，把歷史軌跡渲染成圖片，透過視覺錨點精確檢索原文。 |
| [[persona-skill-colleague\|Persona + Skill 打造 AI 同事]] | 從「助理」進化成「同事」：Persona 是方向，Skill 是方法，兩者缺一不可。 |
| [[prompt-security\|Prompt 安全與越獄]] | 當 AI Agent 有工具存取權時，prompt 安全不再是理論問題，而是實際風險。 |
| [[self-correction\|Self-Correction 自我修正]] | 語言模型能否在無人工介入下自行發現並修正錯誤？三條路徑：修改 inference、workflow、參數。 |
| [[danielmiessler-Personal_AI_Infrastructure\|Personal AI Infrastructure]] | Life Operating System：用 AI 放大人的能力，Ideal State 驅動，文字優先、無 RAG。 |
| [[humanlayer-12-factor-agents\|12-Factor Agents]] | 借鏡 12 Factor Apps，提出 12 條打造可靠 LLM Agent 的工程原則。 |
| [[ai-self-growth\|AI 自我成長]] | AI 能否跨越盧比孔河？從自我修正到自我成長的不可逆轉折點。 |
| [[context-engineering-basics\|Context Engineering 基本概念]] | 系統化介紹 AI Agent 核心技術——如何管理語言模型看到的內容，讓輸入長度合適。 |
| [[harness-engineering\|Harness Engineering 駕馭工程]] | 語言模型不是不夠聰明，而是缺乏好的引導。透過認知框架、工具邊界、工作流程三維度駕馭 Agent。 |
| [[EveryInc-compound-engineering-plugin\|複利工程]] | 每次工程工作讓下一次更容易，非累積債務。80% 規劃審查 + 20% 執行的 Agent 工作流。 |
| [[claude-code-boris-cherny-advanced-techniques\|Claude Code 進階技巧]] | Boris Cherny 的 Claude Code 進階使用技巧：生產力、自動化和多工具協作。 |
| [[self-education\|自主學習]] | 不依賴傳統教育體系，透過開源資源和 AI 工具自主獲得知識和技能。 |
| [[frontend-design\|前端設計]] | 網頁和應用程式的視覺設計、互動體驗和 UI 實作，涵蓋設計系統、排版、色彩、動畫和無障礙。 |
| [[computer-use-agent\|Computer Use Agent]] | 能操作桌面應用和瀏覽器的 AI Agent，模擬人類的鍵盤滑鼠操作。 |
| [[agent-trading\|Agent 交易]] | AI Agent 在金融交易領域的應用：自動化策略執行、多 Agent 協作和風險管理。 |

### 📚 應用與研究

| 概念 | 說明 |
|------|------|
| [[luongnv89-claude-howto\|Claude HowTo]] | 視覺化範例驅動的 Claude Code 學習指南，10 個模組從新手到進階。 |
| [[AI-Tutoring\|AI Tutoring]] | 利用 AI 技術實現個人化教學，結合 RAG、知識圖譜和 LLM agent。 |
| [[microsoft-ai-agents-for-beginners\|AI Agent 教學]] | 微軟出品的 AI Agent 入門課程，12+ 堂課涵蓋設計模式、工具使用、RAG、多 Agent、協議等。 |
| [[PaddlePaddle-PaddleOCR\|PaddleOCR]] | 百度開源 OCR + 文件 AI 引擎，PaddleOCR-VL 0.9B 達 96.3% SOTA，PP-StructureV3 版面解析，100+ 語言。 |
| [[document-parsing\|文件解析]] | PDF、DOCX、圖片等文件的結構化擷取、OCR、版面分析與基準測試。 |
| [[opendataloader-project-opendataloader-pdf\|OpenDataLoader PDF]] | 開源 #1 PDF 解析器，hybrid 模式 0.907 準確率，bounding box 全覆蓋，首個 Tagged PDF 自動化。 |
| [[run-llama-liteparse\|LiteParse]] | LlamaIndex 出品的開源高速文件解析器，Rust 核心、本地運行、支援多語言綁定。 |
| [[rag\|RAG]] | 檢索增強生成（Retrieval-Augmented Generation），結合外部知識檢索與 LLM 生成以提升回答品質。 |
| [[computer-vision\|電腦視覺]] | 讓電腦理解和處理視覺資訊的 AI 領域，包括影像辨識、物體偵測和場景理解。 |
| [[pentesting\|滲透測試]] | 模擬真實攻擊者手法，對系統進行授權的安全測試，找出可被利用的漏洞。 |
| [[financial-forecasting\|金融預測]] | 利用統計模型、機器學習和 AI 技術預測金融市場走勢和資產價格。 |
| [[backtesting\|回測]] | 用歷史數據驗證交易策略或模型的表現，是量化交易的必要步驟。 |
| [[stock-tracking\|股市追蹤]] | 即時監控和分析股票市場數據的技術與工具。 |
| [[data-analysis\|資料分析]] | 從原始資料中提取洞見、模式和結論的方法與工具。 |
| [[arthurpanhku-DocSentinel\|SSDLC 安全評估]] | AI 驅動的安全軟體開發生命週期平台，LangGraph 編排六個安全 Agent 自動化評估。 |
| [[web-crawling\|Web Crawling]] | 系統化瀏覽和收集網頁資料，是搜尋引擎和資料收集的基礎技術。（詳見 [[網頁爬蟲]]） |
| [[web-scraping\|網頁爬取]] | 從網頁自動提取結構化資料，補充 API 不足的資料來源。 |
| [[content-automation\|內容自動化]] | 使用 AI 自動生成、編輯和分發各類內容（影片、文字、簡報等）。 |
| [[語音辨識]] | ASR/TTS 技術和模型，語音轉文字與文字轉語音的 AI 應用。 |
| [[microsoft-VibeVoice\|VibeVoice]] | 微軟開源前沿語音 AI 家族：60 分鐘長語音辨識 ASR + 90 分鐘多語者 TTS + 即時串流語音合成。 |
| [[OpenBMB-VoxCPM\|VoxCPM]] | 無 tokenizer 的多語言 TTS 系統，支援語音設計、可控克隆與 48kHz 高品質音訊輸出。 |
| [[OpenMOSS-MOSS-TTS\|MOSS-TTS]] | OpenMOSS 開源語音合成模型家族，涵蓋長語音、對話、語音設計、音效和即時串流五大場景。 |
| [[AI-presentation\|AI 簡報]] | 利用 AI 自動生成和設計簡報（PPT/PDF），從大綱、內容到視覺排版全流程自動化。 |
| [[pptx-generation\|PPTX 生成]] | 程式化生成 PowerPoint 簡報檔案，從模板、python-pptx 到 AI 驅動的全自動流程。 |

### 🎨 生成式 AI

| 概念 | 說明 |
|------|------|
| [[embedded-AI\|邊緣裝置 AI]] | 在資源受限的邊緣裝置上部署 AI 模型，低延遲、隱私、離線運行。 |
| [[generative-AI\|生成式 AI]] | 能夠生成新內容（圖片、影片、音訊、文字等）的 AI 技術，從訓練資料中學習分佈，創造前所未見的輸出。 |
| [[AI-video-generation\|AI 影片生成]] | AI 影片生成技術總覽：從文字到影片的生成模型、工具和方法。 |
| [[diffusion-model\|擴散模型]] | 透過漸進去噪生成高品質內容的模型架構，Sana 等模型的核心技術。 |
| [[world-model\|世界模型]] | 理解和模擬物理世界的 AI 模型，支援可控環境生成與具身智慧。 |

### 🤖 程式碼智慧

| 概念 | 說明 |
|------|------|
| [[code-intelligence\|程式碼智慧]] | 用知識圖譜和語意分析加速 AI coding agent 的程式碼理解。 |
| [[simulation\|模擬]] | 用多 Agent 社會演化模擬推演未來事件。 |
| [[GraphRAG]] | Knowledge Graph + RAG 結合，沿語義關聯路徑檢索。 |
| [[向量資料庫]] | 儲存和檢索向量嵌入的專用資料庫，是 RAG 和語意搜尋的基礎設施。 |

### 🏗 基礎設施概念

| 概念 | 說明 |
|------|------|
| [[self-hosted-AI-platform\|自架 AI 平台]] | 在自有基礎設施上部署和運行 AI 服務，掌控資料隱私、客製化和成本。 |
| [[lfnovo-open-notebook\|Open Notebook]] | NotebookLM 開源替代：隱私自架、18+ AI 供應商、1-4 人 Podcast、Docker 一鍵部署。 |
| [[Crosstalk-Solutions-project-nomad\|Project N.O.M.A.D.]] | 離線優先的全功能知識與 AI 伺服器，打包 Wikipedia、教育平台、地圖與 AI 聊天於一體。 |
| [[workflow-automation\|工作流自動化]] | 將重複性任務編排成自動化流程，減少人工介入、提高效率和一致性。 |
| [[refactoringhq-tolaria\|Tolaria]] | 開源 Markdown 知識庫管理桌面應用，Git-first、離線優先，支援 AI Agent 整合。 |
| [[self-hosted\|自架]] | 在自有基礎設施上部署和運行軟體，掌控隱私、客製化與成本。 |
| [[open-source-business\|開源商業模式]] | 開源軟體的商業化策略：如何讓開源專案持續生存並獲利。 |
| [[free-software\|免費軟體]] | 開源或免費的軟體工具，降低技術門檻、促進普及。 |
| [[productivity\|生產力]] | 提升個人和團隊效率的工具、方法論和框架。 |
| [[free-domain\|免費域名]] | 免費取得和管理網域名稱，降低自架服務的基礎設施門檻。 |
| [[media-streaming\|媒體串流]] | 透過網路即時傳輸音視訊內容，支援隨選和直播場景。 |
| [[privacy\|隱私]] | 保護個人資料和線上行為不被未授權存取的技術與原則。 |
| [[observability\|可觀測性]] | 系統的日誌、指標和追蹤三大支柱，確保系統健康可診斷。 |
| [[模型推論與部署]] | LLM 從訓練到服務：推論加速、部署架構、成本控制。 |
| [[lyogavin-airllm\|AirLLM]] | 分層推理讓 4GB GPU 跑 70B 模型，無損品質，可選量化 3x 加速。 |
| [[visualization\|資料視覺化]] | 將數據轉為圖形表示，幫助理解趨勢、模式和異常。 |

## 🎬 教學影片

全部來自 **李宏毅 (Hung-yi Lee)** — 台大電機系教授。

| 影片 | 主題 | 上傳日期 | 連結 |
|------|------|----------|------|
| [[ai-self-growth\|AI 自我成長]] | AI 能否跨越盧比孔河？自我成長的 AI 離我們多遠？ | 2026-05-10 | [YouTube](https://www.youtube.com/watch?v=s06mSAGN4gM) |
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