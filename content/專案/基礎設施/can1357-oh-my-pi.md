# Oh My Pi

> 終端 AI Coding Agent，雜湊錨定編輯 + LSP 整合 + 子代理架構。

## 快速導航

- [[Coding-Agent-CLI|Coding Agent CLI]] — 終端 AI 開發助手
- [[AI-Agent|AI Agent]] — 自主 AI 系統
- [[AI-Skills|AI Skills]] — 技能格式與生態系

## 是什麼

can1357/oh-my-pi 是 badlogic/pi-mono 的 fork，一個功能完整的終端 AI coding agent。特色是雜湊錨定編輯（不用行號）、LSP 整合、持久化 Python kernel、子代理平行執行。

## 核心特色

- **Hash-anchored Edits** — 用雜湊錨點取代行號，確定性檔案編輯
- **LSP 整合** — 11 種 LSP 操作（diagnostics、definition、references、hover、symbols 等），40+ 語言設定
- **Python Kernel** — 持久化 IPython kernel，串流輸出 + 豐富輔助工具
- **Agentic Git Commit** — AI 生成 conventional commit，智慧變更分析、拆分提交
- **Code Review** — /review 指令，P0-P3 優先級分類
- **Subagents** — 6 個內建代理（explore、plan、designer、reviewer、task、quick_task），支援平行執行
- **TTSR Rules** — 零 context-use 規則，按需注入
- **Model Routing** — 角色路由（default、smol、slow、plan、commit）

## 怎麼用

GitHub 取得原始碼後本地安裝運行。支援自訂模型路由。

## 跟其他方案的關係

- 與 [[openclaw|OpenClaw]] 理念相近：都是終端 AI agent，但 oh-my-pi 用 hash-anchored 編輯，OpenClaw 用 skill + context 體系
- 與 [[Coding-Agent-CLI|Coding Agent CLI]] 歸同類：終端為主的 AI 開發助手
- LSP 整合是其差異化優勢

## 相關概念

- [[Coding-Agent-CLI|Coding Agent CLI]]
- [[AI-Agent|AI Agent]]
- [[AI-Skills|AI Skills]]

## 來源

- raw/2026-05-08-can1357-oh-my-pi.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [can1357/oh-my-pi](https://github.com/can1357/oh-my-pi) | ⭐4,108 | — | 2026-05-08 |