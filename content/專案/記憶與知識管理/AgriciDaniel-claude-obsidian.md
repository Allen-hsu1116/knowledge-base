---
title: claude-obsidian
slug: AgriciDaniel-claude-obsidian
created: 2026-08-25
updated: 2026-08-25
stars: 11903
language: zh-TW
topics: [LLM 知識庫, AI Skills, Knowledge Graph, self-hosted]
---

# claude-obsidian

> ⭐11.9k · 以 Claude Code 與 Agent Skills 維護 Obsidian 的本地優先第二大腦，保留來源、證據、連結與可復原交易。

## 快速導航

- 🧠 [[llm-knowledge-base]] — 理解 Raw → Wiki → Schema 的知識編譯循環
- 🛠 [[AI-Skills]] — 查看 15 個可攜技能所採用的能力封裝方式
- 🕸 [[Knowledge-Graph]] — 理解 Markdown wikilink 與視覺知識圖的關係

## 是什麼

claude-obsidian 是一套給 Claude Code 與 Agent Skills 相容宿主使用的本地知識系統。它把來源素材轉成有引用、彼此連結的 Obsidian 頁面，也能從 vault 既有證據回答問題、執行研究、檢索、lint 與視覺地圖維護。

它延續 Andrej Karpathy 的 LLM Wiki 模式，但把來源留存、claim ledger、矛盾標記、交易式寫入與多 Agent 併發安全做得更明確。Vault 仍是使用者擁有的 Markdown、JSON 與來源檔案，不藏在插件快取或專有雲端資料庫。

專案刻意區分產品程式碼與使用者 vault。初始化或採用既有 vault 時先產生變更計畫，操作者核對 `approved_plan_sha256` 後才套用；若檔案在審查後漂移，操作會失敗而不是靜默覆寫。

## 核心特色

- **來源與主張溯源**：保存 content-addressed 原始資料，並記錄 authority、freshness、support、contradiction、confidence 與 review state。
- **15 個協作 Skills**：涵蓋 wiki 初始化、ingest、query、lint、retrieve、research、Canvas、Obsidian CLI 與方法論模式。
- **本地優先與明確外連**：本地檔案處理為預設；網頁研究、遠端模型或 contextual prefix 需要明確 egress 同意。
- **交易式知識寫入**：讀取目標雜湊、彙整 worker 草稿、檢查 bundle、原子套用；搭配 lock、journal 與 rollback。
- **並行 Agent 安全**：平行 worker 只能產生草稿與證據，唯一 orchestrator 負責 canonical merge，避免競爭寫入 vault。
- **多種筆記方法**：支援 Generic、LYT、PARA、Zettelkasten，新模式只改變新筆記路由，不偷偷搬動舊內容。
- **確定性檢索降級**：提供 BM25，遠端 embedding 或 reranking 不可信時會回退到本地確定性檢索。
- **誠實能力邊界**：PDF、EPUB、URL、YouTube、OCR 等未內建的能力會清楚回報需要外部 runner，不假裝已完成。

## 怎麼用

先複製產品程式碼；產品 checkout 不應直接當成你的知識 vault：

```bash
git clone https://github.com/AgriciDaniel/claude-obsidian.git
cd claude-obsidian
```

建立獨立 vault 時，先跑預覽計畫，再以計畫回傳的雜湊套用同一操作：

```bash
export GENERATED_AT="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
export OPERATION_ID="init-reviewed"
python3 scripts/claude-obsidian.py init "$HOME/Documents/MyKnowledgeVault" \
  --generated-at "$GENERATED_AT" \
  --operation-id "$OPERATION_ID"
```

審查 JSON 計畫後，再執行：

```bash
python3 scripts/claude-obsidian.py init "$HOME/Documents/MyKnowledgeVault" \
  --generated-at "$GENERATED_AT" \
  --operation-id "$OPERATION_ID" \
  --approved-plan-sha256 "<sha256-from-the-plan>" \
  --apply
```

從 vault 目錄啟動 Claude Code，載入本地插件並執行 `/claude-obsidian:wiki`。之後可把來源放進 `inbox/`，用 `wiki-ingest` 編譯頁面、`wiki-query` 查詢、`wiki-lint` 檢查健康度。

## 跟其他方案的關係

claude-obsidian 比單純的 Obsidian Skill 集更接近一套完整知識作業系統；相較雲端 RAG 記憶服務，它優先選擇可閱讀、可 Git 管理的本地檔案與明確交易。

| 方案 | 主要儲存 | 核心方法 | 適合情境 |
|------|----------|----------|----------|
| claude-obsidian | 本地 Markdown、JSON、來源檔 | 證據導向知識編譯與交易式寫入 | 個人第二大腦、研究 vault |
| [[kepano-obsidian-skills\|Obsidian Skills]] | 既有 Obsidian vault | Markdown、Bases、Canvas、CLI 格式技能 | 讓 Agent 正確操作 Obsidian |
| [[langchain-ai-openwiki\|OpenWiki]] | Wiki 工作空間 | Deep Agent 自我維護 wiki | 程式碼或個人 wiki 自動化 |
| [[akitaonrails-ai-memory\|ai-memory]] | Markdown、Git、SQLite 索引 | Coding Agent lifecycle 記憶與 handoff | 跨 session 程式開發記憶 |
| [[supermemoryai-supermemory\|Supermemory]] | 服務式記憶層 | 使用者畫像與 RAG | 應用程式整合長期記憶 |

如果只需要正確產生 Obsidian Markdown，較輕量的 Obsidian Skills 已足夠；若重視 claim-level provenance、審批雜湊與可復原 canonical merge，claude-obsidian 的控制較完整。

## 相關概念

← [[llm-knowledge-base]] · [[AI-Skills]] · [[Knowledge-Graph]] · [[self-hosted]]

## 來源

- GitHub：https://github.com/AgriciDaniel/claude-obsidian
- 原始 README 快照：`raw/2026-08-25-AgriciDaniel-claude-obsidian.md`
- 方法來源：Andrej Karpathy LLM Wiki pattern、kepano/obsidian-skills

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/AgriciDaniel/claude-obsidian |
| Stars | ⭐11,903 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-08-25 |
