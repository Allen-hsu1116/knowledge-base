---
title: ai-memory
slug: akitaonrails-ai-memory
created: 2026-08-18
updated: 2026-08-18
stars: 2064
language: Rust
topics: [agent-memory, coding-agent, mcp, long-term-memory, cross-agent-handoff, markdown-wiki, lifecycle-hooks, self-hosted]
---

# ai-memory

> ⭐2.1k · 為 Coding Agent CLI 提供跨 session、跨供應商的長期記憶，以生命週期 hooks 擷取觀察、Markdown wiki 固化知識並交接未完成工作

## 快速導航

- 🧠 **Agent 長期記憶** → [[llm-knowledge-base]] · [[Context-Database]]
- 🤖 **Coding Agent 工作流** → [[Coding-Agent-CLI]] · [[AI-Agent]]
- 🔌 **工具整合** → [[MCP]] · [[harness-engineering]]

## 是什麼

ai-memory 是一個以 Rust 實作的 Coding Agent 長期記憶服務，目標是讓開發者在 Claude Code、Codex、OpenCode、Cursor、Gemini CLI 等不同 harness 之間切換時，不必重新解釋架構、失敗嘗試和待辦事項。它以 lifecycle hooks 擷取經過限制與清理的 prompt、工具事件和 session 邊界，再在結束或壓縮時把觀察編譯成可讀的 Markdown wiki。

它採用「持久 wiki，而不是原始對話堆積」的思路：每個專案依 workspace/project UUID 隔離，頁面可由 Git 版本控制、grep、Obsidian 和 rsync 使用。下一個 Agent 會收到有 token 上限的 handoff；選用 `ai-memory run` 時，還可維持跨 harness 的 managed workstream、可見事件 ledger 與各工具原生 session resume。

系統同時提供 MCP、FTS5、entity match、圖鄰居與選用的向量檢索；LLM 是可選項，零 LLM 模式仍能搜尋與規則式摘要。它不是即時程式碼索引器，而是保存「過去為何這樣決定、哪些方法失敗、下一步做什麼」的歷史層，並要求對當前程式碼狀態回到 checkout、LSP 或結構化程式碼工具驗證。

## 核心特色

- **生命週期自動擷取**：hooks 非同步收集 prompt、tool lifecycle、compaction 和 session boundary，減少手動 `write_note` 儀式
- **跨 Agent handoff**：離開 Claude Code 後可在同一 repo 啟動 Codex，下一個 Agent 取得已整理的進度、疑問與下一步
- **Managed workstreams**：`ai-memory run` 將多個 harness 綁到同一邏輯工作流，保留 portable visible-event ledger 並優先恢復各 harness 原生 session
- **Markdown＋Git wiki**：知識以普通 Markdown 保存，可 grep、Obsidian 瀏覽、rsync 備份，並用 checkpoints 與 Git history 回復單頁
- **混合召回**：FTS5、entity match、graph-neighbor RRF 與可選 vector RRF 共同產生候選，再用 authority-aware 信號調整排序
- **專案隔離與全域偏好**：workspace/project UUID 避免同名衝突，另有 `_global` scope 保存跨專案的長期偏好與規範
- **廣泛 CLI 支援**：支援 Claude Code、Codex、Command Code、Devin CLI、OpenCode、Cursor、Gemini CLI、Kimi Code、Kiro、Pi、OpenClaw 等不同程度的 MCP/hooks/workstream 整合
- **安全與治理**：capture exclusions 在事件進入 spool/server 前排除敏感路徑；非 loopback HTTP 預設 fail closed，並支援 bearer token、OIDC 與 HTTPS proxy
- **可選 LLM**：不設定 provider 仍可用 lexical search；加入 LLM 後可做 session consolidation、矛盾 lint 與 staged auto-improvement
- **維護工具**：提供 lint、curator、forget sweep、backup、restore、purge、session finalize 與 pending-write approval 等管理命令

## 怎麼用

Linux 和 macOS 可使用官方 release；README 的 Docker 快速路徑會啟動 loopback-only server，再把 MCP 與 hooks 安裝到 Coding Agent 設定。

```bash
# 啟動本機服務；未設 token 時只綁定 loopback
# ARM64 與 AMD64 都有官方 image
docker run -d --name ai-memory \
  --restart unless-stopped \
  -p 127.0.0.1:49374:49374 \
  -v ai-memory-data:/data \
  akitaonrails/ai-memory:latest
```

主機端需先依官方文件安裝 `ai-memory` wrapper 或 native binary，接著針對使用的 Agent 安裝 MCP 與 hooks。安裝器是 idempotent，修改設定前會建立 timestamped backup。

```bash
# 以 Claude Code 為例
ai-memory install-mcp --client claude-code --apply
ai-memory install-hooks --agent claude-code --apply

# 讓同一工作流跨 harness 延續
ai-memory run claude
ai-memory run codex --yolo
ai-memory continue
```

若服務要暴露到 LAN 或 Internet，必須設定 `AI_MEMORY_AUTH_TOKEN`、allowed hosts，並透過 Caddy、Cloudflare Tunnel 或其他 HTTPS reverse proxy 加密傳輸；不要把 bearer token 放在明文公開端點。

## 跟其他方案的關係

ai-memory 聚焦 Coding Agent 的 lifecycle capture 與跨 harness 交接。它跟通用 Agent 記憶層、Claude 專用 session 記憶、以及自我維護 wiki 有重疊，但「多供應商 handoff＋原生 session resume＋Git Markdown wiki」的組合較鮮明。

| 方案 | 儲存核心 | 自動擷取 | 跨 Agent CLI | 主要召回 | 主要定位 |
|---|---|---|---|---|---|
| ai-memory | Markdown wiki＋SQLite | lifecycle hooks | ✓，多 harness | FTS/entity/graph/vector | Coding Agent 交接與長期決策記憶 |
| [[thedotmack-claude-mem\|claude-mem]] | session 記憶資料 | Claude hooks | 主要是 Claude Code | 搜尋與摘要 | Claude Code 工作歷史 |
| [[mem0ai-mem0\|Mem0]] | 記憶層＋向量/圖後端 | 應用整合 | 框架層整合 | 向量/圖/語意 | 通用個人化 Agent 記憶 API |
| [[basicmachines-co-basic-memory\|Basic Memory]] | Markdown＋知識圖譜 | MCP 操作 | MCP 客戶端 | 語意與圖關係 | 本地 Markdown 知識庫 |
| [[langchain-ai-openwiki\|OpenWiki]] | 自我維護 wiki | Agent 編譯研究 | 非 session resume 核心 | wiki 搜尋 | 建立與維護文件型知識庫 |

## 相關概念

← [[llm-knowledge-base]] · [[Context-Database]] · [[Coding-Agent-CLI]] · [[AI-Agent]] · [[MCP]] · [[harness-engineering]]

## 來源

- GitHub: <https://github.com/akitaonrails/ai-memory>
- 架構文件: <https://github.com/akitaonrails/ai-memory/blob/main/docs/ARCHITECTURE.md>
- 原始 README 與 metadata: `raw/2026-08-18-akitaonrails-ai-memory.md`

---

| 欄位 | 值 |
|------|-----|
| GitHub | akitaonrails/ai-memory |
| Stars | ⭐2.1k |
| License | MIT |
| Language | Rust |
| 收錄日期 | 2026-08-18 |
