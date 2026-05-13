---
title: 整理記錄
---

# 整理記錄

> 知識庫的 append-only 操作日誌，記錄每次 ingest、compile、refactor 和 lint。

## 2026-05-13

**Ingest + Compile**：
1. GitHub: rasbt/LLMs-from-scratch — 從零開始用 PyTorch 實作 ChatGPT 等級的 LLM，Sebastian Raschka 著作官方程式碼庫（⭐93,785）
2. GitHub: datawhalechina/hello-agents — Datawhale 社區出品系統性 AI Agent 學習教程，從理論到實戰（⭐48,233）
3. GitHub: HKUDS/AI-Trader — 100% 全自動 Agent-Native 交易平台，AI Agent 直接參與金融市場（⭐16,611）
4. GitHub: yikart/AiToEarn — 用 AI 賺錢的一站式內容變現平台，支援 10+ 社群平台（⭐11,864）

**Compile**：
- [[rasbt-LLMs-from-scratch]] ← 素材 1
- [[datawhalechina-hello-agents]] ← 素材 2
- [[HKUDS-AI-Trader]] ← 素材 3
- [[yikart-AiToEarn]] ← 素材 4

**排除**：apernet/hysteria（proxy 工具，非 LLM 相關）

---

## 2026-05-11

**Ingest + Compile**：
1. GitHub: anthropics/financial-services — Anthropic 官方金融服務 Agent 庫，10 Agent + 40+ Skill + 11 MCP 連接器（⭐18,951）

**Compile**：
- [[anthropics-financial-services]] ← 素材 1

**Refactor**：
- index.md 新增至「應用」分類
- 回頭更新 virattt-dexter.md 比較表（加入 Anthropic FS 欄位）和定位描述
- 回頭更新 HKUDS-Vibe-Trading.md 比較段落（加入 Anthropic FS 定位差異）和交叉連結

---

**Ingest + Compile**：
2. GitHub: AkariAsai/self-rag — Self-RAG: 讓 LLM 學會自我反思的 RAG 框架，ICLR 2024 Oral（⭐2,377）

**Compile**：
- [[self-rag]] ← 素材 2

**Refactor**：
- index.md 概念區「應用與研究」新增 Self-RAG
- 回頭更新 rag.md 新增「RAG 研究與方法」分類

---

## 2026-05-10

**Lint**（知識庫定期掃描）：

修復問題：
1. **斷掉的 cross-link**：Knowledge-Graph.md 中的 `[[]]` 空連結 → 改為 `[[WikiLink]]`
2. **重複段落**：網頁爬蟲.md 有重複的「爬蟲核心流程」和「AI Agent 的爬蟲需求」→ 合併去重
3. **Stars 欄位更新**：
   - addyosmani-agent-skills：⭐— → ⭐37,914
   - project-golem：— → ⭐590
   - hermes-agent：— → ⭐141,768
   - daily-stock-analysis：⭐— → ⭐34,945
   - gemma4-mtp-drafters：標註為研究文章（非 GitHub 專案）
4. **格式修復**：index.md 中 `[[sgl-project-sglang|SGLang]]` 未跳脫管線 → `[[sgl-project-sglang\|SGLang]]`

未修復（需人工確認）：
1. **重複專案頁**：ppt-master.md vs hugohe3-ppt-master.md、waoowaoo.md vs saturndec-waoowaoo.md、daily-stock-analysis.md vs ZhuLinsen-daily_stock_analysis.md、rtk.md vs rtk-ai-rtk.md、opensandbox.md vs volcengine-OpenSandbox.md — 同一專案有兩頁（一頁是概念/概念頁，一頁是 9 區塊專案頁），建議合併
2. **未整理 raw 素材**：35 個 raw 檔案未被 wiki 引用
3. **Raw 檔名不規範**：13 個 raw 檔案缺少日期前綴
4. **未完成 9 區塊模板**：EvoMap-evolver、HKUDS-Vibe-Trading、LeDat98-NexusRAG、MCP、Narcooo-inkos 等 15+ 專案頁缺少部分區塊
5. **概念頁缺模板**：模型推論與部署、網頁爬蟲、語音辨識（0/7）

---

**Ingest + Compile**（TensorRT-LLM + SGLang）：
1. GitHub: NVIDIA/TensorRT-LLM — NVIDIA 官方 LLM 推論加速框架（⭐13,598）
2. GitHub: sgl-project/sglang — 高效能 LLM 服務框架，RadixAttention（⭐27,589）

**Compile**：
- [[NVIDIA-TensorRT-LLM]] ← 素材 1
- [[sgl-project-sglang]] ← 素材 2

**Refactor**：
- index.md 新增 2 專案至「模型推論與部署」分類
- known-repos.json 新增 NVIDIA-TensorRT-LLM 和 sgl-project-sglang
- 回頭更新 LLM.md、llm-internals.md、Token-Optimization.md、litellm.md、vLLM.md、Ollama.md 的比較表和交叉連結

---

**Ingest + Compile**（歷史知名專案補充）：
1. GitHub: Significant-Gravitas/AutoGPT — 自主 AI Agent 框架，2023 年引爆 Agent 浪潮（⭐184,119）
2. GitHub: langchain-ai/langchain — LLM 應用開發框架，100+ 整合（⭐136,262）
3. GitHub: crewAIInc/crewAI — 多 Agent 角色扮演協作框架（⭐51,031）
4. GitHub: ollama/ollama — 本地一鍵運行 LLM（⭐171,080）
5. GitHub: vllm-project/vllm — 高吞吐 LLM 推論引擎，PagedAttention 發明者（⭐79,515）
6. GitHub: ggerganov/llama.cpp — C/C++ LLM 推論引擎，消費級硬體可跑（⭐109,260）
7. GitHub: huggingface/transformers — 模型定義框架，100 萬+ 模型檢查點（⭐160,425）
8. GitHub: milvus-io/milvus — 高效能雲原生向量資料庫（⭐44,202）
9. GitHub: qdrant/qdrant — Rust 向量搜尋引擎（⭐31,189）
10. GitHub: chroma-core/chroma — 極簡 AI 向量資料庫（⭐27,889）
11. GitHub: openai/whisper — OpenAI 開源語音辨識模型（⭐99,208）
12. GitHub: unclecode/crawl4ai — LLM 友善網頁爬蟲（⭐65,284）

**Compile**：
- [[AutoGPT]] ← 素材 1
- [[LangChain]] ← 素材 2
- [[CrewAI]] ← 素材 3
- [[Ollama]] ← 素材 4
- [[vLLM]] ← 素材 5
- [[llama-cpp]] ← 素材 6
- [[huggingface-transformers]] ← 素材 7
- [[Milvus]] ← 素材 8
- [[Qdrant]] ← 素材 9
- [[Chroma]] ← 素材 10
- [[Whisper]] ← 素材 11
- [[Crawl4AI]] ← 素材 12

**Refactor**：
- index.md 新增 3 個新分類：模型推論與部署、向量資料庫、多媒體與爬蟲
- AutoGPT、LangChain、CrewAI 加入現有「Agent 框架與工具」分類
- known-repos.json 新增 12 repo
- 回頭更新 LLM 頁面（加入推論引擎和模型框架）
- 回頭更新 AI-Agent 頁面（加入 AutoGPT、LangChain、CrewAI）
- 回頭更新 rag 頁面（加入向量資料庫）
- 回頭更新 llm-internals 頁面（加入 vLLM PagedAttention、llama.cpp）
- 回頭更新 Token-Optimization 頁面（加入本地推理降成本）

---

## 2026-05-09

**Ingest + Compile** (手動)：
1. 文章: Printing Press — Markdown 轉書籍 CLI 工具

**Compile**：
- [[printing-press]] ← 素材 1

**Refactor**：
- index.md 新增 printing-press 至「基礎設施」分類
- known-repos.json 新增 printing-press

---

**Ingest + Compile**：
1. GitHub: run-llama/ParseBench — AI Agent 文件解析基準測試，五維度評測（⭐468）
2. GitHub: LeDat98/NexusRAG — 混合式 RAG 系統，向量+知識圖譜+重排序（⭐297）
3. GitHub: aiptimizer/TurboOCR — GPU 加速 OCR 伺服器，270img/s TensorRT（⭐264）
4. GitHub: flamehaven01/Flamehaven-Filesearch — 自架式 RAG 搜尋引擎，34 格式 BM25+混合搜尋（⭐100）

**Compile**：
- [[run-llama-ParseBench]] ← 素材 1
- [[LeDat98-NexusRAG]] ← 素材 2
- [[aiptimizer-TurboOCR]] ← 素材 3
- [[flamehaven01-Flamehaven-Filesearch]] ← 素材 4

**Refactor**：
- index.md 新增 4 專案至「記憶與知識管理」分類
- 新增概念頁：document-parsing（文件解析）、rag（RAG）
- known-repos.json 新增 4 repo + 2 concepts

**Ingest + Compile**：
1. 文章: KOC — Google Gemma 4 MTP Drafters，投機解碼推理加速（Apache 2.0）

**Compile**：
- [[gemma4-mtp-drafters]] ← 素材 1

**Refactor**：
- index.md 新增 gemma4-mtp-drafters 至「效能與壓縮」分類
- 回頭更新 Token-Optimization 頁面加入投機解碼相關概念
- 回頭更新 llm-internals 頁面加入 MTP Drafters 連結

## 2026-05-08

**Ingest + Compile**：
1. GitHub: Imbad0202/academic-research-skills — 學術研究技能套件，13 Agent 研究團隊（⭐4,927）
2. GitHub: anthropics/claude-plugins-official — Anthropic 官方 Claude Code 插件目錄（⭐18,801）
3. GitHub: can1357/oh-my-pi — 終端 AI Coding Agent，hash-anchored 編輯 + LSP（⭐4,108）
4. GitHub: jo-inc/camofox-browser — AI Agent 隱身瀏覽器，繞過反爬蟲（⭐4,203）
5. GitHub: nidhinjs/prompt-master — Claude skill 自動寫精準提示（⭐7,257）

**Compile**：
- [[Imbad0202-academic-research-skills]] ← 素材 1
- [[anthropics-claude-plugins-official]] ← 素材 2
- [[can1357-oh-my-pi]] ← 素材 3
- [[jo-inc-camofox-browser]] ← 素材 4
- [[nidhinjs-prompt-master]] ← 素材 5
- [[pymupdf4llm]] ← 素材 6

**Refactor**：
- index.md 新增 5 篇專案頁，加入「Skill 生態系」「基礎設施」「應用」分類
- 新增 pymupdf4llm 至「記憶與知識管理」分類

## 2026-05-07

**Ingest + Compile**：
1. GitHub: AlexsJones/llmfit — Rust 終端工具，硬體感知 LLM 模型選擇器（⭐25,403）
2. GitHub: RightNow-AI/openfang — Rust Agent 作業系統，7 個 Hands 自治排程（⭐17,219）
3. GitHub: cft0808/edict — 三省六部多 Agent 協作，門下省審核封駁（⭐15,619）
4. GitHub: tirth8205/code-review-graph — Tree-sitter 程式碼圖譜 + MCP，8.2x token 節省（⭐15,581）
5. GitHub: heygen-com/hyperframes — HTML-native 影片渲染框架，AI-first（⭐15,232）
6. GitHub: nexu-io/open-design — 開源版 Claude Design，31 Skills + 129 Design Systems + 16 CLI agent（⭐30,632）

**Compile**：
- [[AlexsJones-llmfit]] ← 素材 1
- [[RightNow-AI-openfang]] ← 素材 2
- [[cft0808-edict]] ← 素材 3
- [[tirth8205-code-review-graph]] ← 素材 4
- [[heygen-com-hyperframes]] ← 素材 5

**Refactor**：
- index.md 新增 5 篇專案頁，llmfit 加入「效能與壓縮」分類，openfang+edict 加入「Agent 框架」，code-review-graph 加入「效能與壓縮」，hyperframes 加入「Skill 生態系」

## 2026-05-06

**Ingest + Compile**：
1. GitHub: lsdefine/GenericAgent — 極簡自演化 Agent，3K 行起家，技能自動結晶（⭐9,199）
2. GitHub: EvoMap/evolver — GEP 驅動的 Agent 自演化引擎，Gene + Capsule + Event（⭐7,241）
3. GitHub: Narcooo/inkos — 自主小說寫作 Agent，33 維度連續性審計 + 去 AI 味（⭐5,672）
4. GitHub: HKUDS/Vibe-Trading — 個人交易 Agent，74 Skill + 27 Tool + 6 資料來源（⭐5,120）
5. GitHub: holaboss-ai/holaOS — 開放 Agent 電腦，環境工程 + 記憶連續性（⭐4,757）

**Compile**：
- [[lsdefine-GenericAgent]] ← 素材 1
- [[EvoMap-evolver]] ← 素材 2
- [[Narcooo-inkos]] ← 素材 3
- [[HKUDS-Vibe-Trading]] ← 素材 4
- [[holaboss-ai-holaOS]] ← 素材 5

**Refactor**：
- index.md 新增「Agent 自演化」分類，加入 5 篇新專案頁

## 2026-05-05

**Ingest + Compile**（第一批）：
1. GitHub: Panniantong/Agent-Reach — AI Agent 網路能力腳手架
2. GitHub: jackwener/OpenCLI — 網站→確定性 CLI
3. GitHub: alibaba/OpenSandbox — 通用 AI 沙箱平台
4. GitHub: hugohe3/ppt-master — AI 生成可編輯 PPT
5. GitHub: saturndec/waoowaoo — AI 影視 Studio

**Ingest + Compile**（第二批）：
6. GitHub: microsoft/markitdown — 文件轉 Markdown（⭐120,637）
7. GitHub: virattt/dexter — 自主式 AI 金融研究 Agent
8. GitHub: openai/codex-plugin-cc — Codex + Claude Code 協作插件
9. GitHub: datalab-to/chandra — 高精確度 OCR（表格/手寫）

**Compile**：
- [[Panniantong-Agent-Reach]] ← 素材 1
- [[jackwener-OpenCLI]] ← 素材 2
- [[volcengine-OpenSandbox]] ← 素材 3
- [[hugohe3-ppt-master]] ← 素材 4
- [[saturndec-waoowaoo]] ← 素材 5

**Refactor**：
- index.md 重寫：概念頁按主題分組，專案頁按功能分組
- SCHEMA.md 更新：專案頁模板固定為 9 個必備區塊
- 13 個專案頁格式全部對齊統一模板
- Quartz Explorer 資料夾分類（概念/專案/影片）
- log.md 重寫：修掉跑版的裸表格，加 frontmatter
- SKILL.md / SCHEMA.md 加入新規則（孤兒頁檢查、WikiLink alias、Stars 必填、影片要標作者連結、compile 後自動部署）

## 2026-05-03 補建

**Ingest + Compile**：
1. GitHub: rtk-ai/rtk — Rust CLI proxy，LLM token 省 60-90%
2. GitHub: ZhuLinsen/daily_stock_analysis — A股/港股/美股 AI 分析系統
3. GitHub: HKUDS/nanobot — 極輕量多 Agent 框架
4. GitHub: HKUDS/DeepTutor — AI 個人化教學系統
5. GitHub: Gitlawb/openclaude — 開源 Claude Code 替代品
6. GitHub: googleworkspace-cli — Google Workspace CLI Agent
7. GitHub: affaan-m/everything-claude-code — Claude Code 資源大全
8. GitHub: JuliusBrussee/caveman — 極簡 token 壓縮
9. GitHub: sickn33/antigravity-awesome-skills — Claude Code Skills 合集
10. GitHub: safishamsi/graphify — 知識圖譜 MCP Server
11. GitHub: volcengine/OpenViking — Context Database
12. YouTube: 李宏毅 AI Agent 課程（6 部整理）

**Compile**：
- [[rtk]] ← 素材 1（token 優化、prompt 工程）
- [[ZhuLinsen-daily_stock_analysis]] ← 素材 2（LLM 應用、AI Agent）
- [[HKUDS-nanobot]] ← 素材 3（AI Agent, MCP）
- [[HKUDS-DeepTutor]] ← 素材 4（AI Tutoring, RAG）
- [[Gitlawb-openclaude]] ← 素材 5（Coding Agent CLI, MCP）
- [[googleworkspace-cli]] ← 素材 6（AI Agent, MCP, AI Skills）
- [[affaan-m-everything-claude-code]] ← 素材 7（AI Agent, AI Skills, Prompt Security）
- [[JuliusBrussee-caveman]] ← 素材 8（Token Optimization, Prompt Engineering）
- [[sickn33-antigravity-awesome-skills]] ← 素材 9（AI Skills, MCP）
- [[safishamsi-graphify]] ← 素材 10（Knowledge Graph, RAG, MCP）
- [[volcengine-OpenViking]] ← 素材 11（Context Database, RAG）
- 教學影片頁 ← 素材 12

**Refactor**：
- 概念頁加入專案精華+連結（雙層結構）
- index.md 分成概念頁和專案頁兩區

## 2026-05-02

**Ingest + Compile**：
1. GitHub: Arvincreator/project-golem — 自主 AI 代理系統
2. GitHub: NousResearch/hermes-agent — 自我改進 Agent
3. GitHub: mempalace — Local-first AI 記憶系統

**Compile**：
- [[project-golem]] ← 素材 1
- [[hermes-agent]] ← 級材 2
- [[mempalace]] ← 素材 3
- 更新 index.md 加入新概念與關係圖

## 2026-04-28

**Ingest（蒐集）**：
1. 數位時代：LLM 知識庫（Obsidian + Claude Code）
2. 數位時代：Karpathy 同款設定拆解
3. 數位時代：Persona + Skill 打造 AI 同事
4. GitHub：CL4R1T4S（越獄安全研究）
5. 區塊客：Agency Agents 144 員工人格
6. GitHub：addyosmani/agent-skills
7. GitHub：forrestchang/andrej-karpathy-skills
8. GitHub：google/skills

**Compile（整理）**：
- [[llm-knowledge-base]] ← 素材 1, 2, 7
- [[AI-Agent]] ← 素材 1, 2, 3, 5
- [[agent-persona]] ← 素材 3, 5
- [[agent-skills-ecosystem]] ← 素材 5, 6, 7, 8
- [[prompt-security]] ← 素材 4

**其他**：
- 補抓 Karpathy 原始 Gist prompt 模板 → raw/
- 補充 prompt 模板到 llm-knowledge-base.md
- 建立 CLAUDE.md Schema + outputs/
- 初始化知識庫結構
## [2026-05-12] lint | 知識庫 lint 修復

### 修復項目

1. **斷掉的 cross-link 修復**：
   - `[[AI-Self-Growth]]` → `[[ai-self-growth|AI 自我成長]]`（大小寫不符檔名）
   - `[[Self-Correction]]` → `[[self-correction|Self-Correction 自我修正]]`（大小寫不符檔名）
   - `[[AI-Agent]]` → `[[AI-Agent|AI Agent]]`（補上 alias）
   - 修正 `ai-self-growth.md` 和 `index.md` 中的 cross-link

2. **重複檔案刪除**：
   - 移除 case-insensitive FS 造成的重複檔（AI-Self-Growth.md、Self-Correction.md）
   - 從 Quartz 快取恢復了 ai-self-growth.md 和 self-correction.md

3. **孤兒頁加入 index.md**：
   - 新增 `karpathy-gist-llm-wiki`、`karpathy-skills`、`andrej-karpathy-ai-how` 到方法論區
   - 其餘 7 個孤兒頁為 alias/redirect 頁，不需要加入 index

4. **重複條目移除**：
   - 移除 `hermes-agent` 在基礎設施表格中的重複行

5. **Alias redirect 頁**（正常，不需修復）：
   - MemPalace-mempalace → mempalace
   - agent-reach → Panniantong-Agent-Reach
   - opencli → jackwener-OpenCLI
   - opensandbox → volcengine-OpenSandbox
   - ppt-master → hugohe3-ppt-master
   - rtk-ai-rtk → rtk
   - waoowaoo → saturndec-waoowaoo

### 未修復項目（需人工判斷或大量工作）

- 27 個 raw 素材未被 wiki 引用（需要 compile）
- 31 個專案頁缺少部分 9 區塊模板欄位
- 43 個 wiki 頁面缺少 raw/ 來源引用（概念頁屬正常，專案頁需要補）
- openclaw.md 缺少「是什麼」「核心特色」「怎麼用」「跟其他方案的關係」區塊
- rag.md、document-parsing.md 缺少大部分 9 區塊模板欄位

## [2026-05-13] ingest | HiChunk 階層式文件分塊框架
- **來源**: https://github.com/TencentCloudADP/hichunk
- **新增概念頁**: hichunk.md（HiChunk 階層式文件分塊框架）
- **新增 raw**: 2026-05-13-hichunk.md
- **更新 index.md**: 應用與研究區新增 HiChunk
- **更新 projects.md**: 記憶與知識管理區新增 HiChunk
- **交叉連結**: RAG、文件解析、Knowledge Graph、cocoindex

## [2026-05-13] ingest | DS4 + PDFCraft
- **來源**: https://github.com/antirez/ds4, https://github.com/PDFCraftTool/pdfcraft
- **新增概念頁**: ds4.md（DeepSeek V4 Flash 專用本地推論引擎）
- **新增概念頁**: pdfcraft.md（瀏覽器端隱私優先 PDF 工具箱）
- **新增 raw**: 2026-05-13-ds4.md, 2026-05-13-pdfcraft.md
- **更新 index.md**: 核心區新增 DS4，應用與研究區新增 PDFCraft
- **更新 projects.md**: 模型推論區新增 DS4，記憶與知識管理區新增 PDFCraft
- **交叉連結**: DS4→LLM/llm-internals/Ollama/llama.cpp/vLLM, PDFCraft→文件解析/RAG/HiChunk/markitdown
