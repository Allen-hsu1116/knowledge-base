---
title: Garden Skills
slug: ConardLi-garden-skills
created: 2026-08-27
updated: 2026-08-27
stars: 10925
language: CSS
topics: [AI Skills, Agent Skills, web design, image generation, local knowledge base, RAG, presentation, content automation]
---

# Garden Skills

> ⭐10.9k · 面向 Claude Code、Cursor、Codex 等 Coding Agent 的 production-ready Skill 集，涵蓋網頁簡報、前端設計、圖片生成、本地知識檢索與文章出版

## 快速導航

- 🛠️ **Agent Skill 生態** → [[AI-Skills]]
- 🎨 **前端設計** → [[frontend-design]]
- 🧠 **知識檢索** → [[rag]] · [[llm-knowledge-base]]
- 🖼️ **生成式內容** → [[generative-AI]] · [[content-automation]]

## 是什麼

Garden Skills 是 ConardLi 維護的開源 Agent Skills 集合，提供五個可獨立安裝的技能：web-video-presentation、web-design-engineer、gpt-image-2、kb-retriever 與 beautiful-article。每個技能都以標準 `SKILL.md` 為核心，並可搭配 reference、script、asset 與人類可讀 README，讓 Agent 按需載入，而不是把整套文件一次塞進 context。

它不只收集提示詞，也把技能當成可發布的軟體工件：支援 `npx skills`、Claude Code plugin marketplace、帶 SHA-256 的固定版 ZIP、手動複製與 Git submodule。正式 release 可釘選版本，因此適合個人互動，也能在 CI、Docker 或 air-gapped 環境中重現相同能力。

五個技能橫跨內容生產鏈。web-video-presentation 產生可錄製的 React 16:9 簡報；web-design-engineer 用 design read 與 style recipe 改善前端；gpt-image-2 供應結構化圖片 prompt 與多執行模式；kb-retriever 以漸進搜尋查本地知識庫；beautiful-article 則把多種來源編輯成可分享的自包含文章。

## 核心特色

- **五個 production-ready Skills**：簡報、前端、圖片、本地檢索與文章出版可各自安裝
- **跨 Agent 相容**：README 列出 Claude Code、Claude.ai、Cursor、Codex CLI、Gemini CLI 與 OpenCode
- **多種發佈路徑**：`npx skills`、Claude marketplace、固定版 ZIP、手動複製、Git submodule
- **可重現版本**：Release ZIP 附 SHA-256 checksum，CI 與離線環境可釘選不可變工件
- **Web Video Presentation**：固定 1920×1080 舞台、章節步驟游標、23 種主題與可插拔 TTS
- **Web Design Engineer**：Design Read、六種設計方向、25 組有具體錨點的 style recipes 與 browser acceptance
- **GPT Image 2**：三種 runtime mode、18 類視覺方向、79 結構化模板及生成／編輯 workflow
- **漸進式知識檢索**：kb-retriever 先走階層索引，再做有限輪次搜尋與局部讀取，回答附來源
- **文章編輯 Harness**：beautiful-article 以明確 checkpoint、文章類型、主題契約與最小修復切片控制品質

## 怎麼用

```bash
# 安裝整個集合
npx skills add ConardLi/garden-skills

# 只安裝前端設計 Skill
npx skills add ConardLi/garden-skills -s web-design-engineer

# 全域安裝圖片生成 Skill
npx skills add ConardLi/garden-skills -s gpt-image-2 --global

# 指定 Claude Code 為目標 Agent
npx skills add ConardLi/garden-skills -s kb-retriever -a claude-code
```

Claude Code 使用者也可以訂閱 marketplace 中的技能包；這種方式可把 presentation、web design、knowledge base、image generation 分開管理。

```bash
/plugin marketplace add ConardLi/garden-skills
/plugin install presentation-skills@garden-skills
/plugin install web-design-skills@garden-skills
/plugin install knowledge-base-skills@garden-skills
/plugin install image-generation-skills@garden-skills

# 開發或驗證此 repo
npm run list
npm run validate
```

## 跟其他方案的關係

Garden Skills 與 Anthropic 官方 Skills、[[kepano-obsidian-skills|Obsidian Skills]]、[[VoltAgent-awesome-agent-skills|Awesome Agent Skills]] 都使用可攜式 Skill 思路，但定位不同：它不是大型索引，也不是單一產品專用格式，而是少量、深入、附資產與 release 工程的內容生產工具箱。

| 方案 | 定位 | 與 Garden Skills 的關係 |
|------|------|-------------------------|
| Garden Skills | 五個深度內容工作流 | 提供可直接安裝、固定版本與驗證的完整 Skill 工件 |
| [[anthropics-skills\|Anthropic Skills]] | 官方參考 Skill 集 | 格式與生態基準，Garden 擴充更多內容生產場景 |
| [[kepano-obsidian-skills\|Obsidian Skills]] | Obsidian 開放格式技能 | 專注 Markdown、Bases、Canvas 與 Obsidian CLI |
| [[VoltAgent-awesome-agent-skills\|Awesome Agent Skills]] | 大型 Skills 策展索引 | 適合發現項目；Garden 適合直接採用少量深度技能 |
| [[freestylefly-awesome-gpt-image-2\|Awesome GPT-Image-2]] | GPT Image 2 案例與模板 | 與 Garden 的 gpt-image-2 同屬圖片生成工作流，可互相參考 |

## 相關概念

← [[AI-Skills]] · [[frontend-design]] · [[rag]] · [[llm-knowledge-base]] · [[generative-AI]] · [[content-automation]]

## 來源

- GitHub: <https://github.com/ConardLi/garden-skills>
- Agent Skills specification: <https://agentskills.io>
- 原始 README: `raw/2026-08-27-ConardLi-garden-skills.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/ConardLi/garden-skills |
| Stars | ⭐10,925 |
| License | MIT |
| Language | CSS |
| 收錄日期 | 2026-08-27 |
