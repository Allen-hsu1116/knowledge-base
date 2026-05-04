# RTK (Rust Token Killer)

> 高效能 CLI proxy，將 LLM token 消耗降低 60-90%。單一 Rust 二進位檔，零依賴。

RTK 透過透明攔截 Bash 命令，在輸出送達 LLM context 前進行過濾與壓縮。AI 工具不會看到改寫過程，只會收到精簡後的輸出。

## 核心特色

- **60-90% token 減少** — 常見開發指令大幅縮減
- **100+ 支援指令** — git、ls、cat、grep、cargo test、pytest、docker、AWS 等
- **單一 Rust 二進位** — <10ms 延遲，零依賴
- **自動改寫 hook** — 透明攔截 Bash 命令，100% 採用率
- **4 種策略**：智慧過濾、分組、截斷、去重
- **12 種 AI 工具整合** — Claude Code、Copilot、Gemini CLI、Codex、Cursor、Windsurf、Cline 等
- **Token 節省分析** — `rtk gain` 顯示統計、`rtk discover` 找出漏網之魚

## Token 節省範例（30分鐘 Claude Code session）

| 操作 | 原始 | rtk | 節省 |
|------|------|-----|------|
| ls/tree | 2,000 | 400 | -80% |
| git diff | 10,000 | 2,500 | -75% |
| cargo test | 25,000 | 2,500 | -90% |
| **合計** | **~118,000** | **~23,900** | **-80%** |

## 安裝

```bash
brew install rtk
# 或
curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh | sh
```

## 所屬概念

- [[Token Optimization]] — 核心：降低 token 消耗
- [[Prompt Engineering]] — 透過壓縮輸出優化 prompt 效率

---

- **GitHub**: https://github.com/rtk-ai/rtk
- **Stars**: ⭐40,072
- **License**: MIT
- **收錄日期**: 2026-05-03

_此頁由 daily-llm-trending 自動維護_