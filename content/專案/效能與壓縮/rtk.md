---
title: RTK (Rust Token Killer)
slug: rtk
created: 2026-05-10
updated: 2026-05-10
stars: 40,072
language: zh-TW
---

# RTK (Rust Token Killer)

> ⭐40,072 · 高效能 CLI proxy，攔截 Bash 命令輸出並壓縮，LLM token 消耗降 60-90%。單一二進位檔、零依賴、4 種壓縮策略。

## 快速導航

- ⚡ **Token Optimization** → [[Token-Optimization]]
- 🛠 **AI 工作流** → [[AI-Agent]]
- 🧠 **LLM** → [[LLM]]

## 是什麼

RTK 是一個 Rust 寫的 CLI proxy，安裝在 LLM CLI 工具（Claude Code、Cursor 等）和 shell 之間，自動攔截並壓縮命令輸出。用 Bash hook 重寫命令（如 `git status` → `rtk git status`），LLM 完全不感知重寫，只看到壓縮後的輸出。4 種壓縮策略：Smart Filtering、Grouping、Truncation、Deduplication。

## 核心特色

- **攔截 100+ 命令** — ls、cat、grep、git、test、docker、AWS 等常用命令輸出全部攔截壓縮。覆蓋開發日常的絕大多數命令
- **4 種壓縮策略** — Smart Filtering（過濾冗餘行）、Grouping（同類合併）、Truncation（截斷過長輸出）、Deduplication（去重複內容）。每個命令自動選最佳策略組合
- **顯著 token 節省** — 30 分鐘 Claude Code session 總 token 從 118,000 降至 23,900（省 80%）。git 操作省 92%、test 輸出省 90%
- **單一二進位檔** — Rust 編譯，零依賴，<10ms 額外延遲。Homebrew 或 curl 一行安裝
- **12 AI 工具整合** — Claude Code、Copilot、Gemini CLI、Codex、Cursor、Windsurf、Cline 等。`rtk init` 自動配置
- **Token 分析** — `rtk gain` 顯示節省統計，`rtk discover` 找出還沒攔截的機會

### Token 節省效果（30 分鐘 Claude Code session）

| 操作 | 原始 tokens | rtk 後 | 節省 |
|------|------------|--------|------|
| ls/tree | 2,000 | 400 | 80% |
| cat/read | 40,000 | 12,000 | 70% |
| grep/rg | 16,000 | 3,200 | 80% |
| git status | 3,000 | 600 | 80% |
| git diff | 10,000 | 2,500 | 75% |
| git add/commit/push | 1,600 | 120 | 92% |
| cargo test/npm test | 25,000 | 2,500 | 90% |
| pytest | 8,000 | 800 | 90% |
| **Total** | **118,000** | **23,900** | **80%** |

## 怎麼實現的

RTK 的核心是 Bash Hook + Command-Specific Compressors：

1. **Bash Hook 機制**：`rtk init` 在 `.bashrc`/`.zshrc` 中安裝一個 shell function，攔截所有命令執行。當偵測到受支援的命令時，自動改寫為 `rtk <original_command>`。LLM 工具完全不知道命令被改寫過
2. **Command-Specific Compressors**：每個受支援的命令有自己的壓縮器。例如 `git status` 壓縮器知道哪些行是冗餘的（branch info、staged summary 等），只保留 LLM 需要的關鍵資訊。`pytest` 壓縮器只保留失敗的測試和錯誤訊息
3. **4 種壓縮策略**：Smart Filtering 根據命令語義過濾（如 ls 只留檔名不要 metadata）、Grouping 合併同類項（如 100 個 test passes → "100 tests passed"）、Truncation 截斷過長輸出、Deduplication 去除重複行
4. **Rust 效能**：用 Rust 寫確保壓縮延遲 <10ms。Rust 的零成本抽象讓每個命令的攔截和壓縮幾乎無感
5. **Token 統計**：每次壓縮時計算原始和壓縮後的 token 數，累計後用 `rtk gain` 顯示

## 怎麼用

```bash
# Homebrew 安裝
brew install rtk

# 快速安裝
curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh | sh

# Cargo 安裝
cargo install --git https://github.com/rtk-ai/rtk

# 初始化（安裝 Bash hook）
rtk init -g                     # Claude Code / Copilot (default)
rtk init -g --gemini            # Gemini CLI
rtk init -g --codex             # Codex (OpenAI)
rtk init -g --agent cursor      # Cursor
rtk init -g --agent windsurf    # Windsurf
rtk init -g --agent cline       # Cline

# 初始化後自動生效，不需要額外操作
# LLM 工具執行命令時，RTK 自動攔截和壓縮輸出

# 查看節省統計
rtk gain

# 發現更多壓縮機會
rtk discover

# 多語言文件
# 支援 English、中文、日本語、한국어、Français、Español
```

## 跟其他方案的關係

| 方案 | 方式 | 壓縮範圍 | 延遲 | 整合方式 |
|------|------|---------|------|---------|
| **RTK** | CLI proxy | Input（命令輸出） | <10ms | Bash hook |
| **caveman** | Plugin + MCP | Input + Output | 較高 | MCP |
| **ECC Memory** | Memory 層 | Context 歷史 | N/A | Skill |

- RTK 是 CLI proxy 方式的 token 壓縮，跟 [[JuliusBrussee-caveman|caveman]] 的 Plugin + MCP 方式互補
- RTK 壓縮 input（命令輸出送進 LLM 之前），caveman 同時壓縮 input 和 output
- 兩者都可以降低 [[LLM]] 的 token 開銷，但需注意壓縮可能影響 [[Token-Optimization]] 的指令完整性 — 過度壓縮可能丟失 LLM 需要的資訊
- 與 [[affaan-m-everything-claude-code|ECC]] 的 memory optimization 不同層級：ECC 壓縮的是對話歷史，RTK 壓縮的是命令輸出

## 相關概念

← [[Token-Optimization]] · [[AI-Agent]] · [[LLM]]

## 來源

- raw/2026-05-03-rtk.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [rtk-ai/rtk](https://github.com/rtk-ai/rtk) | ⭐40,072 | MIT | 2026-05-03 |