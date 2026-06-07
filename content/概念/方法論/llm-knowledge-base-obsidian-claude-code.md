---


title: LLM 知識庫系統：Karpathy 的方法（中文報導版）
slug: llm-knowledge-base-obsidian-claude-code
source: https://www.bnext.com.tw/article/90530/llm-knowledge-base-obsidian-claude-code
date: 2026-04-28


updated: TODO
language: zh-TW
topics: []
---

# LLM 知識庫系統：Karpathy 的方法（中文報導版）

> OpenAI 共同創辦人 Andrej Karpathy 公開了他的 LLM 知識庫系統：讓 AI 代替人做知識整理工作。核心概念是 LLM 作為「編譯器」，把原始文件編譯成結構化的 markdown wiki。

**來源**: 數位時代 BusinessNext
**日期**: 2026.04.07
**作者**: 李先泰

## 是什麼

這是數位時代對 Karpathy LLM Wiki 系統的中文報導。Karpathy 的核心概念是讓 LLM 作為「編譯器」，把原始文件編譯成結構化的 markdown wiki。傳統知識管理工具把整理苦工甩給人做，LLM 知識庫把這個成本轉移給 AI：人負責找素材、定方向、問好問題；AI 負責摘要、交叉連結、一致性維護。

跟原始 Gist 的關係：本頁是中文解讀版，核心方法論在 [[karpathy-gist-llm-wiki]] 和 [[llm-knowledge-base]] 中有更完整的說明。

## 核心特色

- **人類策展 + AI 書記**：人找素材定方向，AI 做摘要和交叉連結
- **三層架構**：raw/（不可改）→ wiki/（AI 擁有）→ schema（共同演化）
- **四個 Phases**：Ingest → Compile → Query → Lint，持續循環
- **知識複利**：每次提問都讓知識庫更強，好的答案回存 wiki
- **不需要 RAG**：在中等規模（~100 來源）效果很好

## 快速導航

- 📝 **原始 Gist** → [[karpathy-gist-llm-wiki]]（Karpathy 的完整 prompt）
- 🔧 **Skill 版** → [[karpathy-skills]]（標準化 SKILL.md 格式）
- 🧠 **知識庫方法論** → [[llm-knowledge-base]]（通用知識庫方法論）
- 🛠️ **Agent 技能** → [[agent-skills-ecosystem]]（Skill 標準生態）

## 核心內容

LLM 知識庫系統的核心概念是讓 LLM 作為「編譯器」，把原始文件編譯成結構化的 markdown wiki。傳統知識管理工具（Notion、Roam、Obsidian）把整理苦工甩給人做，LLM 知識庫把這個成本轉移給 AI：

- **人負責**：找素材、定方向、問好問題
- **AI 負責**：摘要、交叉連結、一致性維護

### 系統組成

| 區域 | 說明 |
|------|------|
| `raw/` | 原始資料夾：所有素材只進不改 |
| `wiki/` | 知識庫：AI 整理好的筆記，每個概念一篇，互相連結 |
| `index.md + log.md` | 目錄與整理記錄，AI 自動維護 |

### 四個 Phases

1. **Ingest（蒐集）**：Obsidian Web Clipper 把網頁文章存成乾淨 `.md`，arXiv 論文、GitHub repos 收集進 `raw/`
2. **Compile（整理/編譯）**：LLM 讀取 `raw/` 並建立結構化 wiki——Index & Summaries、Concept Articles、Derived Outputs、Backlinks & Cross-links
3. **Query & Enhance（提問與增強）**：Obsidian IDE 瀏覽 wiki，Q&A Agent 回答研究問題，搜尋引擎查詢 wiki。關鍵洞察：查詢輸出回存到 wiki
4. **Lint & Maintain（清理與維護）**：掃描不一致、補充缺失、建立新連結、建議探索方向。Linting 完成後回到 Phase 2

### 回饋迴圈

```
Q&A Agent 輸出 → 回存到 wiki（Derived Outputs）
Linting 結果 → 增強 wiki
Phase 4 → 循環回到 Phase 2 持續運作
```

## 各框架的做法

### 實作版本

- 👉 [[karpathy-gist-llm-wiki]] — Karpathy 原始 Gist，完整 prompt 和流程定義
- 👉 [[karpathy-skills]] — 標準化 SKILL.md 版本，可透過 `npx skills add` 安裝
- 👉 [[thedotmack-claude-mem]] — Claude Code 記憶壓縮系統，session 級別的知識持久化
- 👉 [[project-golem]] — Golem 的 lancedb-pro 向量記憶，另一種知識持久化方案
- 👉 [[tinyhumansai-openhuman]] — OpenHuman 的 Memory Tree + Obsidian Wiki，直接受 Karpathy 方法啟發

### 需要的工具

1. **Obsidian**（免費）— 筆記桌面應用
2. **Obsidian Web Clipper**（免費）— 瀏覽器擴充功能
3. **Claude Code**（需 Anthropic 帳號，Pro 方案約 $20/月）— 核心 AI

## 怎麼用

### 快速建立方式

- **方法一**：把 Karpathy 的 GitHub Gist 餵給 Claude Code
- **方法二**：使用 Elvis Saravia 整理的完整架構說明文件

### 核心 LLM 操作

```bash
# Ingest：將新素材放入 raw/
# LLM 自動讀取 raw/ 並更新 wiki/

# Query：對 wiki 提問
# LLM 搜尋相關頁面、綜合回答
# 好的回答可以回存為新頁面

# Lint：健康檢查
# LLM 掃描 wiki 中的矛盾、過時聲明、孤立頁面、缺失交叉引用
```

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|------|------|------|
| [[karpathy-gist-llm-wiki]] | 原始 Gist | 本頁是其中文報導版 |
| [[karpathy-skills]] | Skill 標準版 | 將方法論封裝成可安裝的 Skill |
| [[thedotmack-claude-mem]] | 記憶壓縮 | 互補：claude-mem 做 session 級記憶，wiki 做持久知識 |
| [[project-golem]] | Agent 系統 | Golem 的記憶系統可參考此方法論 |
| [[tinyhumansai-openhuman]] | 桌面助手 | OpenHuman 的 Memory Tree 直接受 Karpathy 方法啟發 |

## 相關概念

← [[karpathy-gist-llm-wiki]] · [[karpathy-skills]] · [[llm-knowledge-base]] · [[agent-skills-ecosystem]]

## 來源

- [數位時代 BusinessNext](https://www.bnext.com.tw/article/90530/llm-knowledge-base-obsidian-claude-code)
- [Karpathy GitHub Gist](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)
- [Karpathy X 貼文](https://x.com/karpathy/status/2039805659525644595)
- [Elvis Saravia / dair.ai](https://academy.dair.ai/blog/llm-knowledge-bases-karpathy)

---

GitHub: [karpathy/gist](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) · Stars: 5,000+ · 收錄日期: 2026-04-28