# RTK (Rust Token Killer)

> 高效能 CLI proxy，攔截 Bash 命令輸出並壓縮，LLM token 消耗降 60-90%。單一二進位檔、零依賴。

## 快速導航
- 🧠 **LLM 知識庫** → [[llm-knowledge-base]]（Token 優化是知識庫管理的核心問題）
- 🛠 **AI 工作流** → [[AI-Agent]]（CLI proxy 是 Agent 工作流的加速器）
- ⚡ **Prompt 安全** → [[prompt-security]]（Token 壓縮可能影響指令完整性）

## 核心內容

RTK 是一個 Rust 寫的 CLI proxy，安裝在 LLM CLI 工具（Claude Code、Cursor 等）和 shell 之間，自動攔截並壓縮命令輸出。

### 運作原理
1. 攔截 shell 命令輸出（ls, cat, grep, git, test 等 100+ 命令）
2. 智慧壓縮：只保留 LLM 需要的關鍵資訊
3. 壓縮後的輸出送進 LLM context window

### Token 節省效果（30 分鐘 Claude Code session）
| 操作 | 原始 tokens | rtk 後 | 節省 |
|------|------------|--------|------|
| ls/tree | 2,000 | 400 | 80% |
| cat/read | 40,000 | 12,000 | 70% |
| git add/commit/push | 1,600 | 120 | 92% |
| pytest | 8,000 | 800 | 90% |
| **Total** | **118,000** | **23,900** | **80%** |

### 安裝
```bash
# Homebrew
brew install rtk
# 或快速安裝
curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh | sh
```

## 相關概念
← [[llm-knowledge-base]] · [[AI-Agent]] · [[prompt-security]]

## 來源
- raw/2026-05-03-rtk.md