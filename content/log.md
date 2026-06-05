---
title: 整理記錄
---

# 整理記錄

> 知識庫的 append-only 操作日誌，記錄每次 ingest、compile、refactor 和 lint。

## 2026-06-01

### [2026-06-01] ingest | 每日 LLM 熱門專案搜尋 — 新增 3 個 repo

新增 repo：
1. **D4Vinci/Scrapling** ⭐56.6k — 自適應網頁爬蟲框架 → wiki/D4Vinci-Scrapling.md → projects.md「🎯 多媒體與爬蟲」
2. **supermemoryai/supermemory** ⭐23.3k — AI 記憶引擎 → wiki/supermemoryai-supermemory.md → projects.md「🧠 記憶與知識管理」
3. **nesquena/hermes-webui** ⭐10k — Hermes Agent Web 介面 → wiki/nesquena-hermes-webui.md → projects.md「🤖 Agent 框架與工具」

排除：
- `developer-portfolios`：純 awesome-list
- `github/docs`：GitHub 官方文件，非 LLM/AI 工具

更新：
- known-repos.json：新增 3 個 repo + 3 個概念
- projects.md：3 個分類區各新增 1 筆

## 2026-05-31

### [2026-05-31] lint | 知識庫 lint 修復

修復項目：
- **frontmatter tags 殘留**：移除 `anthropics-knowledge-work-plugins.md` 和 `Leonxlnx-taste-skill.md` 的 `tags:` 欄位，改用 `topics:`（符合 Quartz 規範）
- **projects.md 日期排序**：修正基礎設施區塊中 `arthurpanhku-DocSentinel`（2026-05-29）和 `iii-hq-iii`（2026-05-28）的排序
- **斷掉的 cross-links 修復**：
  - `[[擴散模型]]` → `[[diffusion-model|擴散模型]]`（OpenBMB-VoxCPM）
  - `[[LLMs-from-scratch]]` → `[[rasbt-LLMs-from-scratch|LLMs from Scratch]]`（FareedKhan-dev-train-llm-from-scratch）
  - `[[n8n-mcp]]` → `[[czlonkowski-n8n-mcp|n8n MCP]]`（iii-hq-iii）
  - `[[raw/...]]` raw 連結格式修正（Donchitos-Claude-Code-Game-Studios）
  - `[[CRM]]` `[[DNS]]` `[[NAS]]` — 拆掉非頁面 wikilink
  - `[[Vibe-Coding]]` → 純文字 "Vibe Coding"
  - `[[coding-agent-toolkit]]` → `[[Coding-Agent-CLI|Coding Agent CLI]]`
- **孤兒頁修復**：
  - 新增 `向量資料庫` 到 index.md 概念區
  - index.md 的 web-crawling 條目加上 `[[網頁爬蟲]]` 引用
  - 新增 `anthropics-knowledge-work-plugins` 和 `Leonxlnx-taste-skill` 到 projects.md Skill 生態系
  - 新增 `openclaw` 到 projects.md 基礎設施
- **index.md 無日期堆積區段** ✅
- **概念區無帶 Stars 的專案條目** ✅
- 同步部署到 Quartz/GitHub Pages ✅

## 2026-05-29

### [2026-05-29] ingest | daily-llm-trending 自動收錄 4 個新專案

- **EveryInc/compound-engineering-plugin** ⭐17,771 — Claude Code/Codex/Cursor 複利工程插件，讓每次工作都讓下一次更容易
- **revfactory/harness** ⭐3,887 — Claude Code 的團隊架構工廠，六種 agent 團隊模式自動生成
- **OpenMOSS/MOSS-TTS** ⭐2,241 — 開源語音合成模型家族，五合一涵蓋長語音、對話、設計、音效、即時串流
- **arthurpanhku/DocSentinel** ⭐88 — AI 驅動的 SSDLC 安全評估平台，LangGraph 編排六個安全 Agent

## 2026-05-28

### [2026-05-28] ingest | daily-llm-trending 自動收錄 5 個新專案

- **harry0703/MoneyPrinterTurbo** ⭐62,027 — AI 一鍵生成高清短視頻，自動文案+素材+字幕+配樂
- **byoungd/English-level-up-tips** ⭐46,667 — 離譜的英語學習指南，全方位方法論+AI輔助方案
- **p-e-w/heretic** ⭐22,010 — 全自動移除語言模型審查機制，directional ablation + Optuna 優化
- **iii-hq/iii** ⭐16,876 — 即時組合擴展觀測服務的統一平台，Worker/Function/Trigger 三原語
- **hardikpandya/stop-slop** ⭐5,700 — 移除 AI 寫作痕跡的 skill 檔案，5 維度評分系統

## 2026-05-27

### [2026-05-27] ingest | daily-llm-trending 自動收錄 5 個新專案

- **DigitalPlatDev/FreeDomain** ⭐167,376 — 免費域名註冊服務，5 種免費頂級網域，50 萬+域名已註冊
- **jellyfin/jellyfin** ⭐52,381 — 開源媒體串流系統，Plex/Emby 的完全免費替代
- **twentyhq/twenty** ⭐46,861 — 排名第一的開源 CRM，Salesforce 替代，程式碼定義 + AI 整合
- **Open-Dev-Society/OpenStock** ⭐12,114 — 開源股市追蹤平台，即時報價 + 個人化警報
- **Axorax/awesome-free-apps** ⭐5,268 — 免費 PC/行動 App 策展清單，數十大分類

新增概念：free-domain、self-hosted、media-streaming、CRM、open-source-business、AI-integration、stock-tracking、free-software

## 2026-05-26

### [2026-05-26] ingest | daily-llm-trending 自動收錄 5 個新專案（第二批）

- **anthropics/claude-cookbooks** ⭐44,023 — Anthropic 官方 Claude 實戰食譜集，Jupyter Notebook 格式，涵蓋 RAG、Tool Use、多模態、子代理
- **paperless-ngx/paperless-ngx** ⭐41,336 — 開源文件管理系統，OCR + 全文搜尋 + 自動分類
- **moeru-ai/airi** ⭐39,726 — 開源 AI 虛擬夥伴（Neuro-sama 替代），WebGPU/WebAudio 建構，可遊戲、聊天、直播
- **Leonxlnx/taste-skill** ⭐19,717 — 反模板 AI 前端技能框架，多種風格變體 + 可調參數，讓 AI 生成更好的 UI
- **anthropics/knowledge-work-plugins** ⭐15,460 — Anthropic 官方知識工作者插件集，11 角色插件 for Claude Cowork/Code

新增概念頁：OCR、AI-companion、VTuber、frontend-design、Claude-Cowork（已有概念補強連結）

### [2026-05-26] ingest | daily-llm-trending 自動收錄 5 個新專案

- **codecrafters-io/build-your-own-x** ⭐504k — 從零重建技術的教學合集（28 類技術）
- **666ghj/MiroFish** ⭐62k — 多 Agent 群體智慧預測引擎（GraphRAG + 社會模擬）
- **earendil-works/pi** ⭐54k — AI agent harness monorepo（coding agent CLI + 統一 LLM API + TUI）
- **blakeblackshear/frigate** ⭐33k — 本地即時物件偵測 NVR（Home Assistant 整合）
- **manaflow-ai/cmux** ⭐19k — Ghostty-based macOS 終端機（為 AI coding agent 工作流設計）

新增概念頁：simulation、GraphRAG、coding-agent-toolkit（已有則補強連結）

## 2026-05-25

### [2026-05-25] lint | 知識庫 lint 待辦處理

#### 處理 5/24 lint 待辦項目

**斷掉的 cross-links（原 30 個 → 0 個）**:
1. ✅ 建立 8 個概念頁：pentesting、financial-forecasting、computer-vision、workflow-automation、agent-harness-optimization、self-hosted-AI-platform、AI-presentation、pptx-generation
2. ✅ 建立專案頁：ZhuLinsen-alphasift、ZhuLinsen-alphaevo
3. ✅ 修正 10 個連結重定向：LLMs-from-scratch→rasbt-LLMs-from-scratch、AI-Agent-Tutorial→microsoft-ai-agents-for-beginners、AI-Trader→HKUDS-AI-Trader、12-factor-agents→humanlayer-12-factor-agents 等
4. ✅ 轉純文字 8 個外部軟體名：Blender、Synfig Studio、Baileys、whatsapp-web.js、mem0、Letta/MemGPT 等
5. ✅ 修正 index.md ECC→affaan-m-ECC

**缺區塊頁面（原 58 個 → 0 個）**:
1. ✅ 補齊 30+ 專案頁的快速導航和來源區塊（三批處理）
2. ✅ 補齊 17 個概念頁的核心和來源區塊
3. ✅ 含別名頁（sandbox、waoowaoo、web-scraping 等）指向主頁

**Missing Stars（10 個概念頁，不需 Stars）**:
- openclaw、claude-code-boris-cherny、openviking、web-crawling、web-scraping、網頁爬蟲、語音辨識、sandbox、visualization、gemma4-mtp-drafters — 皆為概念頁或文章，— 標註合理

**raw 素材未整理（1 個 → 0 個）**:
1. ✅ compile 2026-05-22-abmedia-claude-md-12-rules.md → CLAUDE-md.md（新增 Karpathy 4 條 + Mnilax 8 條區塊）

#### 最終驗證
- 斷掉的 cross-links: 0
- 缺區塊頁面: 0
- raw 素材未整理: 0
- 總 wiki 頁數: 210

## [2026-05-24] lint | 知識庫 lint 掃描與修復

### 發現問題
1. **斷掉的 cross-links**: 30 個連結指向不存在的頁面（概念頁如 pentesting、LLMs-from-scratch 等）
2. **孤兒頁**: 3 個頁面不在 index.md 或 projects.md（Alishahryar1-free-claude-code、CLAUDE-md、frappe-erpnext）
3. **index.md 概念區混入專案條目**: 6 個帶 Stars 的條目出現在概念區（multica-ai-multica、mukul975-Anthropic-Cybersecurity-Skills 等）
4. **WikiLink 大小寫不一致**: 2 個（log.md 中 AI-Self-Growth→ai-self-growth、Self-Correction→self-correction）
5. **缺區塊頁面**: 58 個頁面缺少必要區塊（36 個專案頁缺快速導航/來源等，22 個概念頁缺核心內容/來源）
6. **Missing Stars**: 10 個專案頁有 GitHub 連結但缺 Stars 欄位
7. **raw 素材未整理**: 1 個（2026-05-22-abmedia-claude-md-12-rules.md）
8. **缺交叉連結**: web-scraping 未連回 web-crawling

### 修復動作
1. ✅ 移除 index.md 概念區的 6 個帶 Stars 專案條目（改列於 projects.md）
2. ✅ 新增 7 個專案到 projects.md（multica-ai-multica、mukul975、presenton-presenton、ChromeDevTools、affaan-m-ECC、msitarzewski-agency-agents、trimstray-the-book-of-secret-knowledge）
3. ✅ 新增 2 個孤立專案到 projects.md（Alishahryar1-free-claude-code、frappe-erpnext）
4. ✅ 新增 CLAUDE-md 到 index.md 概念區
5. ✅ 修正 log.md 中的 WikiLink 大小寫問題
6. ✅ 新增 web-scraping → web-crawling 交叉連結

### 待辦（需手動處理）
- 30 個斷掉的 cross-links 需要建立缺失的 wiki 頁面或修正連結
- 58 個頁面缺區塊需補齊
- 10 個專案頁需查詢 GitHub Stars
- 1 個 raw 素材未整理


**Ingest + Compile**：
1. GitHub: multica-ai/multica ⭐31,926 — 開源 managed agents 平台，把 coding agents 變成真正的隊友
2. GitHub: mukul975/Anthropic-Cybersecurity-Skills ⭐7,418 — 754 個結構化網安技能 for AI agents，5 框架對映
3. GitHub: presenton/presenton ⭐6,369 — 開源 AI 簡報產生器與 API，Gamma/Beautiful AI 自架替代

- 新增 wiki/multica-ai-multica.md
- 新增 wiki/mukul975-Anthropic-Cybersecurity-Skills.md
- 新增 wiki/presenton-presenton.md
- 更新 known-repos.json（+3 repos, +5 concepts: managed-agents, cybersecurity-skills, MITRE-ATT&CK, AI-presentation, pptx-generation）
- 更新 wiki/index.md

排除：yt-dlp/yt-dlp（影片下載工具，非 LLM/AI 相關）、odoo/odoo（ERP 系統，非 LLM/AI 相關）

## 2026-05-23

**Ingest + Compile**：
1. GitHub: Fincept-Corporation/FinceptTerminal ⭐22,646 — 機構級金融智慧平台，37 個 AI Agent + 100+ 數據連接器
2. GitHub: karpathy/nn-zero-to-hero ⭐22,343 — Karpathy 神經網路課程，從 micrograd 到 GPT
3. GitHub: Lum1104/Understand-Anything ⭐18,628 — 程式碼/知識庫轉互動式知識圖譜，多 Agent 流水線

- 新增 wiki/FinceptTerminal.md
- 新增 wiki/nn-zero-to-hero.md
- 新增 wiki/Understand-Anything.md
- 更新 known-repos.json（+3 repos, +3 concepts）
- 更新 wiki/index.md
- 更新 wiki/projects.md

排除：yt-dlp/yt-dlp（影片下載工具，非 LLM/AI 相關）、odoo/odoo（ERP 系統，非 LLM/AI 相關）

## 2026-05-22（下午 batch）

**Ingest**：
1. GitHub: trimstray/the-book-of-secret-knowledge ⭐222,443 — 系統管理/DevOps/資安工具與知識大全集
2. GitHub: affaan-m/ECC ⭐188,164 — AI agent harness 性能優化 OS，跨 7+ harness
3. GitHub: multica-ai/andrej-karpathy-skills ⭐143,191 — 單一 CLAUDE.md 把 Karpathy 的 LLM coding 觀察化為四條原則
4. GitHub: msitarzewski/agency-agents ⭐103,672 — 100+ 專業 AI agent 角色庫（含中國平台）
5. GitHub: ChromeDevTools/chrome-devtools-mcp ⭐40,488 — Google 官方 Chrome DevTools MCP server

- 新增 wiki/trimstray-the-book-of-secret-knowledge.md
- 新增 wiki/affaan-m-ECC.md
- 新增 wiki/multica-ai-andrej-karpathy-skills.md
- 新增 wiki/msitarzewski-agency-agents.md
- 新增 wiki/ChromeDevTools-chrome-devtools-mcp.md
- 更新 known-repos.json（+5 repos, +3 concepts）
- 更新 wiki/index.md

## 2026-05-22

|| 動作 | 標題 | 摘要 |
||------|------|------|
|| ingest | rohitg00/agentmemory | AI coding agent 持久化記憶系統，95.2% R@5，53 MCP tools，⭐15,140 |
|| ingest | rohitg00/ai-engineering-from-scratch | 435 課 20 階段 AI 工程課程，四語言，每課產出 artifact，⭐9,567 |
|| ingest | opentoonz/opentoonz | 吉卜力工作室客製化開源 2D 動畫軟體，⭐6,347 |
|| ingest | HKUDS/ViMax | Agentic 影片生成框架，Director/Screenwriter/Producer 四合一，⭐6,064 |
|| ingest | rmyndharis/OpenWA | 開源 WhatsApp API Gateway，pluggable 架構，⭐4,864 |
|| compile | projects.md | +5 repos |
|| compile | known-repos.json | +5 repos, +3 concepts |
|| update | ZhuLinsen/daily_stock_analysis | 更新知識庫頁面：stars 33.7k→38.1k，新增 15 種策略（原 11 種）、Agent 問股（Web/Bot/API）、Web/桌面工作台、社交輿情、智能導入補全、AlphaSift/AlphaEvo 相關專案 |

## 2026-05-20

| 動作 | 標題 | 摘要 |
|------|------|------|
| ingest | affaan-m/ECC | Agent harness 效能優化系統，60+ agents / 232+ skills，跨 7+ 工具，⭐187,193 |
| ingest | multica-ai/andrej-karpathy-skills | Karpathy 觀點啟發的 Claude Code 四大原則（思考先行、簡單優先、精準修改、目標驅動），⭐138,023 |
| ingest | msitarzewski/agency-agents | 144+ 專業 AI agent 人格集合，跨 10+ 工具支援，⭐101,621 |
| ingest | frappe/erpnext | 100% 開源 ERP 系統，涵蓋會計/訂單/製造/資產/專案，⭐34,279 |
| ingest | Alishahryar1/free-claude-code | Claude Code 免費代理，10 個 provider 後端路由，⭐26,376 |
| compile | index.md | 新增 ECC、Agent Harness 優化概念 |
| compile | known-repos.json | +5 repos, +4 concepts |

## 2026-05-19

| 動作 | 標題 | 摘要 |
|------|------|------|
| ingest | NVlabs-Sana | NVIDIA/MIT 高效擴散模型系列，4K 影像+影片生成，⭐6361 |
| ingest | BigBodyCobain-Shadowbroker | 開源即時 OSINT 情報平台，60+ 情報源+AI Agent 通道，⭐7555 |
| compile | index.md | 新增擴散模型、世界模型概念 |
| compile | known-repos.json | +2 repos, +2 concepts |

## 2026-05-18

**Ingest**：
1. GitHub: microsoft/ai-agents-for-beginners ⭐62,542 — 微軟 AI Agent 入門課程，12+ 堂課涵蓋設計模式、工具使用、RAG、多 Agent、MCP/A2A 協議
2. GitHub: KeygraphHQ/shannon ⭐42,711 — 自主白箱 AI 滲透測試工具，原始碼分析 + 動態攻擊驗證
3. GitHub: HKUDS/CLI-Anything ⭐36,330 — 一行指令把任何軟體包成 CLI harness，讓 AI Agent 直接操控
4. GitHub: plausible/analytics ⭐25,755 — 開源隱私優先網站分析工具，無 Cookie 的 Google Analytics 替代
5. GitHub: humanlayer/12-factor-agents ⭐20,278 — 借鏡 12 Factor Apps 的 Agent 工程化 12 條原則
6. GitHub: CloakHQ/CloakBrowser ⭐14,651 — C++ 原始碼層級隱形 Chromium，通過 30+ 偵測服務

- 新增 wiki/HKUDS-CLI-Anything.md
- 新增 wiki/plausible-analytics.md
- 新增 wiki/humanlayer-12-factor-agents.md
- 新增 wiki/CloakHQ-CloakBrowser.md
- 更新 known-repos.json（+4 repos, +3 concepts: CLI-Anything, 12-factor-agents, CloakBrowser）
- 更新 wiki/index.md

排除：ggml-org/llama.cpp（已收錄為 ggerganov-llama-cpp）

## 2026-05-17

**Ingest**：
1. GitHub: Anil-matcha/Open-Generative-AI ⭐14,436 — 開源 AI 影片工作室，200+ 模型、4 大工作室、本地推論
2. GitHub: colbymchenry/codegraph ⭐2,530 — Claude Code 的語意程式碼知識圖譜 MCP server，92% 更少工具呼叫

- 新增 wiki/Anil-matcha-Open-Generative-AI.md
- 新增 wiki/colbymchenry-codegraph.md
- 更新 known-repos.json（+2 repos, +3 concepts: generative-AI, AI-video-generation, code-intelligence）
- 更新 wiki/index.md

## 2026-05-16

**Ingest**：
1. GitHub: czlonkowski/n8n-mcp ⭐20,896 — MCP server for n8n，讓 AI 助手存取 1,650 個工作流節點 + 2,352 模板
2. GitHub: tinyhumansai/openhuman ⭐9,051 — 開源個人 AI 助手桌面應用，118+ 整合 + Memory Tree + TokenJuice
3. GitHub: supertone-inc/supertonic ⭐6,043 — 裝置端多語言 TTS 系統，ONNX Runtime 本機推論，31 種語言

- 新增 wiki/czlonkowski-n8n-mcp.md
- 新增 wiki/tinyhumansai-openhuman.md
- 新增 wiki/supertone-inc-supertonic.md
- 更新 known-repos.json（+3 repos, +3 concepts）
- 更新 wiki/index.md

## 2026-05-15

**Ingest + Compile**：
1. GitHub: garrytan/gstack ⭐96,762 — Garry Tan 的開源軟體工廠，把 Claude Code 變成 23 人虛擬工程團隊，支援 10 種 AI coding agent
2. GitHub: ruvnet/RuView ⭐56,007 — 用 WiFi CSI 訊號實現穿牆人員偵測、生命體徵監測、姿態估計，ESP32-S3 邊緣裝置
3. GitHub: roboflow/supervision ⭐38,878 — 電腦視覺可重用工具箱，模型無關的標註、追蹤、區域分析
4. GitHub: shiyu-coder/Kronos ⭐24,824 — 金融 K 線基礎模型，在 45+ 全球交易所資料上預訓練，AAAI 2026
5. GitHub: tobi/qmd ⭐24,863 — 本地優先的混合搜尋引擎 CLI，BM25 + 向量 + LLM 重排序，支援 MCP Server
6. GitHub: langchain-ai/langchain ⭐136,755 — 更新 Stars 數和 Deep Agents 資訊
7. GitHub: run-llama/llama_index ⭐49,422 — LLM 資料框架，專注資料攝取、索引和查詢

- 新增 wiki/qmd.md（概念頁）
- 新增 wiki/llama-index.md（概念頁）
- 更新 wiki/LangChain.md（Stars 更新 + Deep Agents + llama-index 比較）
- 更新 wiki/rag.md 比較表和相關概念
- 更新 wiki/index.md 概念區
- 更新 wiki/projects.md Agent 框架區塊
- 修復 Quartz 重複檔名問題（qmd、self-correction）
- 修復 sync 腳本 4 個孤兒頁分類
- 修復 projects.md 日期排序
- 所有首頁連結驗證通過

**Compile**：
- [[garrytan-gstack]] ← 素材 1
- [[ruvnet-RuView]] ← 素材 2
- [[roboflow-supervision]] ← 素材 3
- [[shiyu-coder-Kronos]] ← 素材 4
- 更新 index.md：新增 4 個專案和相關概念
- 更新 known-repos.json：新增 4 個 repo 和 6 個概念

排除：Genymobile/scrcpy（非 AI/LLM 相關，純 Android 螢幕投影工具）

## 2026-05-14

**Ingest + Compile**：
1. GitHub: jingyaogong/minimind — 從零開始訓練 64M 參數的小型 LLM，單卡 3090 兩小時可復現，完整覆蓋 Pretrain→SFT→RLHF 全流程（⭐49,797）

**Compile**：
- [[minimind]] ← 素材 1
- 更新 [[LLM]]：新增「從零學 LLM」區塊，加入 MiniMind 連結
- 更新 [[rasbt-LLMs-from-scratch]]：新增「跟其他方案的關係」比較表，加入 MiniMind
- 更新 index.md：新增「從零理解 LLM」區塊
- 更新 projects.md：新增 MiniMind 到學習資源分類

---

## 2026-05-14

**Ingest + Compile**：
1. GitHub: obra/superpowers — Agentic skills 框架與軟體開發方法論，TDD + subagent 驅動開發（⭐189,521）
2. GitHub: github/spec-kit — GitHub 官方 Spec-Driven Development 工具組，規格驅動 AI coding agent（⭐98,382）
3. GitHub: K-Dense-AI/scientific-agent-skills — 135 個科學研究技能，100+ 資料庫 + 70+ Python 套件（⭐21,122）

**Compile**：
- [[obra-superpowers]] ← 素材 1
- [[github-spec-kit]] ← 素材 2
- [[K-Dense-AI-scientific-agent-skills]] ← 素材 3

**排除**：imthenachoman/How-To-Secure-A-Linux-Server（純 Linux 安全指南，非 LLM 相關）、apernet/hysteria（代理工具，非 LLM 相關）

---

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
1. **斷掉的 cross-link**：Knowledge-Graph.md 中的空連結 → 改為文字說明（非 WikiLink）
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
   - `[[ai-self-growth]]` → `[[ai-self-growth|AI 自我成長]]`（大小寫不符檔名）
   - `[[self-correction]]` → `[[self-correction|Self-Correction 自我修正]]`（大小寫不符檔名）
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

## 2026-05-16 jieba + NLTK 新增
- 新增 jieba（⭐34,952）中文分詞套件
- 新增 NLTK（⭐14,500）自然語言處理工具包
- 新增到 projects.md（效能與壓縮分類）、index.md（工具與協議）
- 更新 known-repos.json、sync-wiki-to-quartz.sh
- 將 cron 搜尋門檻從 ⭐100 提高到 ⭐500
- 統一 wiki 格式（進行中，子代理處理 25 個 cron 格式頁面）

## [2026-05-17] lint 全面修復

### P0 修復（斷掉的 cross-links）

1. **建立 5 個缺失 wiki 頁面**：
   - LeDat98-NexusRAG.md（混合式 RAG，向量+知識圖譜+重排序，⭐297）
   - aiptimizer-TurboOCR.md（GPU 加速 OCR，270img/s TensorRT FP16，⭐264）
   - flamehaven01-Flamehaven-Filesearch.md（自架式 RAG 搜尋引擎，BM25+混合搜尋，⭐100）
   - printing-press.md（Markdown 轉書籍 CLI 工具，⭐30+）
   - embedded-AI.md（邊緣裝置 AI 概念頁）

2. **修復 LlamaIndex 大小寫**：run-llama-ParseBench.md 中 `LlamaIndex` 連結 → `llama-index|LlamaIndex`

3. **AI-video-generation 加入 index.md**：加入生成式 AI 區塊

4. **確認 WikiLink 為範例**：Knowledge-Graph.md 中的 WikiLink 連結是代碼格式的範例說明，非斷連結

### P1 修復（摘要補齊）
- AI-video-generation.md ✅
- Anil-matcha-Open-Generative-AI.md ✅
- code-intelligence.md ✅
- colbymchenry-codegraph.md ✅
- generative-AI.md ✅

### P2 修復（9 區塊模板）
- 為缺少最多區塊的頁面補齊模板

### P3 修復（Stars & sync）
- hermes-agent ⭐141,768 ✅
- project-golem ⭐590 ✅
- sync-wiki-to-quartz.sh 改用 rsync 全量同步 ✅

### 部署
- Quartz sync 成功，push 到 GitHub Pages ✅

## [2026-05-17] 概念頁修復 — 移除專案條目

從 index.md 概念區移除 21 個帶 ⭐ Stars 的專案條目（它們已在 projects.md 中）：

**🧠 核心（移除 1 個）：**
- DS4（⭐8.3k）→ 已在 projects.md 模型推論區

**🔌 工具與協議（移除 4 個）：**
- n8n-MCP（⭐21k）、OpenHuman（⭐9.1k）、jieba 結巴分詞（⭐35k）、NLTK（⭐14.5k）

**🛠 方法論（移除 4 個）：**
- Superpowers（⭐189k）、gstack（⭐97k）、Spec Kit（⭐98k）、Scientific Agent Skills（⭐21k）

**📚 應用與研究（移除 8 個）：**
- HiChunk（⭐96）、PDFCraft（⭐5.8k）、QMD（⭐24.9k）、LlamaIndex（⭐49k）
- supervision（⭐39k）、Supertonic（⭐6k）、RuView（⭐56k）、Kronos（⭐25k）、Self-RAG（⭐2.4k）

**🎨 生成式 AI（移除 1 個）：**
- Open Generative AI（⭐14.4k）

**🤖 程式碼智慧（移除 1 個）：**
- CodeGraph（⭐2.5k）

**🔬 從零理解 LLM（整區移除，2 個條目都是專案）：**
- MiniMind（⭐49.8k）、LLMs from Scratch（⭐93.8k）

保留純概念：CL4R1T4S（有 GitHub 但概念頁無 Stars）、Karpathy 相關頁（方法論/教學）、generative-AI 和 AI-video-generation（純概念頁）。

概念區現在只有純概念條目，零 ⭐ Stars。

## 2026-05-18 新增 3 個專案

新增來源：
- raw/2026-05-18-cua-computer-use-agents.md → wiki/trycua-cua.md（CUA：開源 Computer-Use Agent 基礎設施，⭐16,887）
- raw/2026-05-18-mattpocock-skills.md → wiki/mattpocock-skills.md（Matt Pocock Skills：工程師實戰 Skills 庫，⭐89,433）
- raw/2026-05-18-codex-complexity-optimizer.md → wiki/Kappaemme-git-codex-complexity-optimizer.md（Codex Complexity Optimizer：演算法複雜度分析 Skill，⭐648）

更新既有頁面：
- sandbox.md：加入 CUA 到沙箱比較表和相關主題
- AI-Skills.md：加入 Matt Pocock Skills 和 Codex Complexity Optimizer 到相關專案
- agent-skills-ecosystem.md：加入 Matt Pocock Skills 和 Codex Complexity Optimizer 到相關專案
- codeburn.md：加入 Matt Pocock Skills 和 Codex Complexity Optimizer 到比較表
- projects.md：Agent 框架與工具（+CUA）、Skill 生態系（+Matt Pocock Skills +Codex Complexity Optimizer）、基礎設施（+CUA）

## [2026-05-18] lint | 知識庫 lint 檢查與修復

### 發現的問題
1. ❌ 斷掉的 cross-links: CloakHQ-CloakBrowser → [[pentesting]]（不存在）、andrej-karpathy-ai-how → [[claude-code-boris-cherny-advanced-techniques]]（拼字錯誤 cheny→cherny）
2. ❌ 孤兒頁 7 個：CloakHQ-CloakBrowser, HKUDS-CLI-Anything, KeygraphHQ-shannon, embedded-AI, humanlayer-12-factor-agents, microsoft-ai-agents-for-beginners, plausible-analytics
3. ❌ projects.md 日期排序錯誤 3 處
4. ❌ index.md 表格格式不一致（|| 和 ||| 混用）
5. ❌ projects.md 表格格式不一致（|| 行）
6. ⚠️ 專案頁 29 個缺區塊（底部 metadata 最常見）
7. ⚠️ 概念頁 28 個缺區塊
8. ⚠️ Stars 欄位 16 個問題（缺 Stars 或數值偏低）
9. ⚠️ 未整理 raw 素材 4 個（AlexsJones-llmfit 有 wiki 但 raw 未被引用；CloakHQ-CloakBrowser, HKUDS-CLI-Anything, KeygraphHQ-shannon 的 raw 尚未編譯）

### 已修復
1. ✅ 修復 CloakHQ-CloakBrowser 的斷 link → [[KeygraphHQ-shannon]]
2. ✅ 修復 andrej-karpathy-ai-how 拼字錯誤 cheny→cherny
3. ✅ 移除 index.md 幽靈概念 [[pentesting]]（無對應 wiki 頁）
4. ✅ 補齊 7 個孤兒頁到 index.md 或 projects.md
5. ✅ 修復 projects.md 3 處日期排序
6. ✅ 統一 index.md 表格格式
7. ✅ 統一 projects.md 表格格式

### 待處理
- 29 個專案頁缺區塊（下一次 compile 時補齊）
- 28 個概念頁缺區塊
- 16 個 Stars 需更新（下次 lint 時批次查 GitHub API）
- 4 個 raw 素材待 compile

## [2026-05-20] ingest | Mano-P

手動加入老綸提供的 GitHub 連結：

- 新增 raw/2026-05-20-Mininglamp-AI-Mano-P.md
- 新增 wiki/Mininglamp-AI-Mano-P.md（專案頁）
- 更新 wiki/AI-Agent.md（加入相關專案連結）
- 更新 wiki/AI-Skills.md（加入 Mano-Skill 相關專案連結）
- 更新 wiki/projects.md（新增 Mano-P 條目）
- 更新 known-repos.json（+1 repo, +3 concepts: GUI-VLA, edge-AI, computer-use-agent）

## 2026-05-22

### 更新：multica-ai-andrej-karpathy-skills（Karpathy CLAUDE.md 12 條規則）

- 來源：abmedia.io 報導 Mnilax 擴充版（4+8 條）
- 更新 wiki/multica-ai-andrej-karpathy-skills.md（從 4 條擴充到 12 條完整版）
- 新增 wiki/CLAUDE-md.md（概念頁）
- 更新 known-repos.json（+1 concept: CLAUDE-md）


---

## 2026-05-24 — Ingest 2 repos

- **open-webui/open-webui** (⭐100k+) — 自架式 AI 平台，支援 Ollama + OpenAI API，內建 RAG
  - 新增：`raw/2026-05-24-open-webui-open-webui.md`
  - 新增：`wiki/open-webui-open-webui.md`
  - Backlinks：AI-Agent.md, Chroma.md, Milvus.md
- **walkinglabs/learn-harness-engineering** (⭐1k+) — Harness Engineering 課程，12 講 + 6 專案
  - 新增：`raw/2026-05-24-walkinglabs-learn-harness-engineering.md`
  - 新增：`wiki/walkinglabs-learn-harness-engineering.md`
  - Backlinks：AI-Agent.md, harness-engineering.md, Coding-Agent-CLI.md, agent-persona.md, context-engineering-basics.md

## 2026-05-26 — Ingest 3 repos + Update 1 repo

- **datawhalechina/easy-vibe** (⭐14,776) — Vibe Coding 教程，三階段從零到 AI-Native 開發者，10 語言
  - 新增：`raw/2026-05-26-datawhalechina-easy-vibe.md`
  - 新增：`wiki/datawhalechina-easy-vibe.md`
  - Backlinks：AI-Tutoring.md
- **teng-lin/notebooklm-py** (⭐15,157) — Google NotebookLM 非官方 Python API × AI Skill
  - 新增：`raw/2026-05-26-teng-lin-notebooklm-py.md`
  - 新增：`wiki/teng-lin-notebooklm-py.md`
  - Backlinks：AI-Agent.md, AI-Skills.md
- **Donchitos/Claude-Code-Game-Studios** (⭐20,021) — Claude Code 遊戲開發工作室，49 agents × 73 skills
  - 新增：`raw/2026-05-26-Donchitos-Claude-Code-Game-Studios.md`
  - 新增：`wiki/Donchitos-Claude-Code-Game-Studios.md`
  - Backlinks：AI-Agent.md, AI-Skills.md, Coding-Agent-CLI.md
- **jo-inc/camofox-browser** (⭐5,829，原 ⭐4,203) — 更新：stars + frontmatter + 新功能
  - 新增：`raw/2026-05-26-jo-inc-camofox-browser.md`
  - 更新：`wiki/jo-inc-camofox-browser.md`（加 frontmatter、更新 stars、加 Cookie Import/YouTube Transcripts/Proxy+GeoIP）
  - 更新：projects.md（stars 4,203→5,829）


## 2026-05-28

- **ingest** `yichuan-w-LEANN` — LEANN 低儲存向量索引（⭐11.8k），RAG on Everything, 97% 空間節省, MCP 原生整合
  - raw: `raw/2026-05-28-yichuan-w-LEANN.md`
  - wiki: `wiki/yichuan-w-LEANN.md`
  - backlinks: 向量資料庫.md, rag.md

- **ingest** `DayuanJiang-next-ai-draw-io` — Next AI Draw.io AI 驅動繪圖工具（⭐30.3k），自然語言建 draw.io 圖表, MCP Server
  - raw: `raw/2026-05-28-DayuanJiang-next-ai-draw-io.md`
  - wiki: `wiki/DayuanJiang-next-ai-draw-io.md`
  - backlinks: projects.md 應用區

- **ingest** `microsoft-SkillOpt` — SkillOpt 文字空間技能優化器（⭐1.4k），用訓練神經網路方式優化 LLM Agent 技能文件
  - raw: `raw/2026-05-28-microsoft-SkillOpt.md`
  - wiki: `wiki/microsoft-SkillOpt.md`
  - backlinks: AI-Skills.md, projects.md (Skill 生態系區)


## 2026-06-03

- **ingest** `Open-LLM-VTuber/Open-LLM-VTuber` — 開源語音互動 AI 陪伴系統（⭐8.4k），Live2D 虛擬形象、免持語音、完全離線跨平台
  - raw: `raw/2026-06-03-Open-LLM-VTuber-Open-LLM-VTuber.md`
  - wiki: `wiki/Open-LLM-VTuber-Open-LLM-VTuber.md`
  - projects.md: 多媒體與爬蟲區
  - index.md: 核心概念區

- **ingest** `chopratejas/headroom` — AI Agent 上下文壓縮層（⭐6.4k），60-95% token 節省、可逆壓縮、Library/Proxy/MCP 三模式
  - raw: `raw/2026-06-03-chopratejas-headroom.md`
  - wiki: `wiki/chopratejas-headroom.md`
  - projects.md: Agent 框架與工具區
  - index.md: 核心概念區

- **ingest** `jamwithai/production-agentic-rag-course` — 7 週漸進式 RAG 課程（⭐6.4k），從基礎設施到 Agentic RAG，arXiv 論文策展人
  - raw: `raw/2026-06-03-jamwithai-production-agentic-rag-course.md`
  - wiki: `wiki/jamwithai-production-agentic-rag-course.md`
  - projects.md: 學習資源區
  - index.md: 核心概念區

- **ingest** `reconurge/flowsint` — 開源 OSINT 圖譜調查平台（⭐4.5k），視覺化探索實體關聯、11 大類自動 enricher
  - raw: `raw/2026-06-03-reconurge-flowsint.md`
  - wiki: `wiki/reconurge-flowsint.md`
  - projects.md: 基礎設施區
  - index.md: 核心概念區

known-repos.json: +4 repos, +4 concepts (VTuber, OSINT-graph-investigation, context-compression, agentic-RAG-course)

---

### 2026-06-05

- **ingest** `1weiho/open-slide` — Agent-native 簡報框架（⭐4.7k），TypeScript/React，1920×1080 固定畫布，內建 Claude Code 技能，Inspector comment loop
  - raw: `raw/2026-06-05-1weiho-open-slide.md`
  - wiki: `wiki/1weiho-open-slide.md`
  - projects.md: Agent 框架與工具區
  - backlinks: AI-Agent.md, AI-presentation.md, Coding-Agent-CLI.md

- **ingest** `Google Cloud AI Agent Trends 2026` — 企業 agentic AI 五大趨勢報告（3,466 家企業調查），Agents for Employee/Workflow/Customers/Security/Scale
  - raw: `raw/2026-06-05-google-cloud-ai-agent-trends-2026.md`
  - wiki: `wiki/google-cloud-ai-agent-trends-2026.md`
  - projects.md: 學習資源區
  - backlinks: AI-Agent.md

- **ingest** `NVIDIA LocateAnything` — 統一視覺定位框架，Parallel Box Decoding 一次解碼 box，138M+ 訓練樣本，speed-accuracy frontier 推進
  - raw: `raw/2026-06-05-nvidia-locate-anything.md`
  - wiki: `wiki/nvidia-locate-anything.md`
  - projects.md: 模型推論與部署區
  - backlinks: AI-Agent.md

known-repos.json: +1 repo, +9 concepts (Presentation, Agent-Native, Agentic-AI, Agent-Workflow, Enterprise-AI, Vision-Language-Model, Parallel-Box-Decoding, Visual-Grounding, NVIDIA-Research)
