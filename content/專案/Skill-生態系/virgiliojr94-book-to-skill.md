---
title: book-to-skill
slug: virgiliojr94-book-to-skill
created: 2026-07-29
updated: 2026-07-29
stars: 11380
language: Python
topics: [AI Skills, Agent Skills, PDF, EPUB, Claude Code, GitHub Copilot, Token Optimization]
---

# book-to-skill

> ⭐11.4k · Python · Turn any technical book PDF into a Claude Code skill — ready to study, reference, and use while you work.

## 快速導航

- 🧠 **AI Skills 標準** → [[agentskills-agentskills|Agent Skills]]
- 🛠 **Token 優化原理** → [[Token-Optimization|Token Optimization]]
- 📚 **知識庫管理** → [[llm-knowledge-base|LLM 知識庫]]
- 📝 **文件解析** → [[document-parsing|文件解析]]

## 是什麼

book-to-skill 是一個將技術書籍、文件資料夾或任何結構化文件集合轉換為統一 Agent Skill 的工具。它不是做摘要——而是提煉框架、決策規則、反模式，並為每個章節生成獨立的按需載入檔案。一旦安裝完成，你只需輸入 `/your-book-slug replication`，Agent 就會讀取對應章節並從實際內容回答，不會產生幻覺。

這解決了一個常見痛點：你買了一本好書，讀了一次，三個月後連第七章叫什麼都記不得。直接搜 PDF 只得到頁碼不是答案；把 PDF 丟進 Agent context 要嘛幻覺要嘛說沒有內容；自己記筆記最後變成再也不打開的 200 行文件。book-to-skill 把書變成 Agent 工作流的一部分，用結構化的方式讓知識隨時可查。

它支援開放的 [[agentskills-agentskills|Agent Skills]] 標準，因此 GitHub Copilot CLI、Amp 和 Claude Code 都能讀取同一份 `SKILL.md` 格式，跨平台無縫使用。

## 核心特色

- **24×–51× Token 節省**：比起把整本書丟進 context，book-to-skill 只載入 ~5,000 tokens（核心 SKILL.md + 一個章節檔），而非每次對話都消耗 100K+ tokens
- **按需章節載入**：每個章節是獨立檔案（~1,000 tokens each），只有被詢問時才載入，平時不佔 context 預算
- **結構化提煉而非摘要**：生成 SKILL.md（核心心智模型）、chapters/（逐章）、glossary.md（術語表）、patterns.md（模式集）、cheatsheet.md（速查表）
- **多格式支援**：PDF、EPUB、DOCX、TXT、Markdown、reStructuredText、AsciiDoc、HTML、RTF、MOBI/AZW/AZW3
- **Discovery Loop Tax 消除**：傳統 PDF Agent 需要多輪導航（翻目錄、找術語、回頭翻頁），每一步都進入對話歷史並重複處理；book-to-skill 在編譯時一次性支付導航成本
- **超越書籍**：同樣的提取流程適用於內部文件、品牌設計系統、研究論文集合、RFC/API 規範——任何你會反覆查閱的結構化文件
- **跨 Agent 平台**：同一份 Skill 可被 Copilot CLI（`~/.copilot/skills/`）、Amp（`~/.agents/skills/`）、Claude Code（`~/.claude/skills/`）使用

## 怎麼用

```bash
# 基本用法：將一本書轉成 skill
/book-to-skill ./my-book.pdf

# 指定 skill 名稱
/book-to-skill ~/papers/paper1.pdf ~/notes/export.txt unified-research

# 處理整個資料夾
/book-to-skill ~/workspace/project-docs/ project-knowledge

# 用 glob 模式批次處理
/book-to-skill "~/books/*.epub" my-library

# 將新材料合併到現有 skill
/book-to-skill ~/articles/new-paper.pdf ~/.claude/skills/project-knowledge
```

安裝需求（PDF 範例）：
```bash
# 文字型書籍
sudo apt install poppler-utils  # 或 pip3 install pypdf

# 技術型書籍（含程式碼、表格、公式）
pip3 install docling  # ~1.5s/page，保留 markdown 表格和程式碼區塊
```

轉換完成後使用：
```bash
/designing-data-intensive-apps                  # 載入核心心智模型
/designing-data-intensive-apps replication      # 查詢某個主題
/designing-data-intensive-apps ch05             # 深入第五章
```

## 跟其他方案的關係

| 方案 | 做法 | Token 成本 | 幻覺風險 | 按需載入 |
|------|------|-----------|---------|---------|
| **book-to-skill** | 編譯時提煉為結構化 Skill | ~5K/次 | 低（從原文回答） | ✅ |
| PDF 丟入 context | 整本書塞入對話 | 100K+/每次對話 | 中 | ❌ |
| PDF Agent 導航 | 多輪翻頁搜尋 | 12K–78K/次 | 中（壓縮後降質） | ❌ |
| 手動筆記 | 自己整理重點 | 視筆記大小 | 低 | ❌ |
| [[rag|RAG]] 系統 | 向量搜尋 + 生成 | 視 chunk 大小 | 低 | ✅ |

## 相關概念

← [[agentskills-agentskills|Agent Skills]] · [[Token-Optimization|Token Optimization]] · [[document-parsing|文件解析]] · [[llm-knowledge-base|LLM 知識庫]]

## 來源

- GitHub: https://github.com/virgiliojr94/book-to-skill
- raw/2026-07-29-virgiliojr94-book-to-skill.md

---

| 欄位 | 值 |
|------|-----|
| GitHub | https://github.com/virgiliojr94/book-to-skill |
| Stars | ⭐11,380 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-07-29 |