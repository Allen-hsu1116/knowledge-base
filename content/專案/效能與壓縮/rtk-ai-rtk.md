---
source: https://github.com/rtk-ai/rtk
date: 2026-05-09
---

# RTK (Rust Token Killer) — LLM Token 消耗削減 60-90%

> 高效能 CLI proxy，減少 LLM token 消耗 60-90%。單一 Rust 二進位，零依賴。

**GitHub**: https://github.com/rtk-ai/rtk
**Stars**: 40,072 | **License**: MIT

## 什麼是 RTK

RTK 在命令輸出到達 LLM context 之前過濾和壓縮。透過 Bash hook 透明攔截命令（如 `git status` → `rtk git status`），AI 助手看不到改寫，只收到壓縮後的輸出。

## 核心特色

- **60-90% token 削減** — 常見開發命令
- **100+ 支援命令** — git, ls, cat, grep, cargo test, pytest, docker, AWS 等
- **單一 Rust 二進位** — <10ms 額外延遲，零依賴
- **自動改寫 hook** — 透明攔截 Bash 命令
- **4 種策略**：Smart Filtering, Grouping, Truncation, Deduplication
- **Token 節省分析** — `rtk gain` 顯示統計，`rtk discover` 發現遺漏機會
- **12 種 AI 工具整合** — Claude Code, Copilot, Gemini CLI, Codex, Cursor, Windsurf, Cline 等

## Token 節省（30 分鐘 Claude Code session）

| 操作 | 標準 | rtk | 節省 |
|------|------|-----|------|
| ls/tree | 2,000 | 400 | -80% |
| cat/read | 40,000 | 12,000 | -70% |
| grep/rg | 16,000 | 3,200 | -80% |
| git status | 3,000 | 600 | -80% |
| git diff | 10,000 | 2,500 | -75% |
| cargo test/npm test | 25,000 | 2,500 | -90% |
| **Total** | **~118,000** | **~23,900** | **-80%** |

## 安裝

```bash
brew install rtk
# 或
curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh | sh
```

## 快速開始

```bash
rtk init -g                     # Claude Code / Copilot
rtk init -g --gemini            # Gemini CLI
rtk init -g --codex             # Codex (OpenAI)
rtk init -g --agent cursor      # Cursor
```

## 相關主題

- [[Token-Optimization|Token 優化]]
- [[claude-code-boris-cherny-advanced-techniques|Claude Code 進階技巧]]

## 參考資料

- [GitHub - rtk-ai/rtk](https://github.com/rtk-ai/rtk)