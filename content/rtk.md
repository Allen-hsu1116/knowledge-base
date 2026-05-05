# RTK (Rust Token Killer)

> 高效能 CLI proxy，攔截 Bash 命令輸出並壓縮，LLM token 消耗降 60-90%。單一二進位檔、零依賴。

## 快速導航

- 🧠 **LLM 知識庫** → [[llm-knowledge-base]]
- 🛠 **AI 工作流** → [[AI-Agent]]
- ⚡ **Prompt 安全** → [[prompt-security]]

## 是什麼

RTK 是一個 Rust 寫的 CLI proxy，安裝在 LLM CLI 工具（Claude Code、Cursor 等）和 shell 之間，自動攔截並壓縮命令輸出。只保留 LLM 需要的關鍵資訊，讓 token 消耗降低 60-90%。

## 核心特色

- **攔截 100+ 命令** — ls, cat, grep, git, test 等常用命令輸出全部攔截
- **智慧壓縮** — 只保留 LLM 需要的關鍵資訊，捨棄冗餘
- **顯著 token 節省** — 30 分鐘 Claude Code session 總 token 從 118,000 降至 23,900（省 80%）
- **單一二進位檔** — 零依賴，Homebrew 或 curl 一行安裝

### Token 節省效果（30 分鐘 Claude Code session）

| 操作 | 原始 tokens | rtk 後 | 節省 |
|------|------------|--------|------|
| ls/tree | 2,000 | 400 | 80% |
| cat/read | 40,000 | 12,000 | 70% |
| git add/commit/push | 1,600 | 120 | 92% |
| pytest | 8,000 | 800 | 90% |
| **Total** | **118,000** | **23,900** | **80%** |

## 怎麼用

```bash
# Homebrew
brew install rtk
# 或快速安裝
curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh | sh
```

## 跟其他方案的關係

RTK 是 CLI proxy 方式的 token 壓縮，跟 [[caveman]] 的 Plugin + MCP 方式互補。RTK 壓縮 input，caveman 同時壓縮 input 和 output。兩者都可以降低 [[llm-knowledge-base]] 的 token 開銷，但需注意壓縮可能影響 [[prompt-security]] 的指令完整性。

## 相關概念

← [[llm-knowledge-base]] · [[AI-Agent]] · [[prompt-security]]

## 來源

- raw/2026-05-03-rtk.md

---

- **GitHub**: https://github.com/rtk-ai/rtk
- **Stars**: —
- **License**: —
- **收錄日期**: 2026-05-03