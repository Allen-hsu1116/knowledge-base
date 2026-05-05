# OpenCLI

> 把網站、瀏覽器 session 和本地工具變成確定性 CLI 介面 — 同指令同結果，零 LLM 成本。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（OpenCLI 讓 Agent 用 CLI 操作網站和 App）
- 🔌 **MCP** → [[MCP]]（OpenCLI 透過 browser extension + CDP 連接瀏覽器）
- 🛠️ **AI Skills** → [[AI-Skills]]（OpenCLI 內建 adapter authoring 等 Agent skills）

## 是什麼

OpenCLI 把網站、瀏覽器 session、Electron app 和本地工具轉成確定性的 CLI 介面。關鍵詞是「確定性」— 同一個指令永遠得到相同結果，不需要 LLM 在 runtime 做判斷。這讓 Agent 操作網站時既快又可靠。

## 核心特色

- **100+ 內建 adapters**：預建好的網站 CLI（HackerNews、B 站等）
- **Desktop App Control**：透過 CDP 驅動 Electron app（Cursor、Codex、ChatGPT、Notion）
- **Browser Automation for Agents**：透過已登入的 Chrome 做導航、點擊、提取
- **Multi-profile**：多個 Chrome profile 路由
- **Adapter Authoring**：AI Agent 可以自建新 adapter
- **CLI Hub**：發現、安裝、passthrough 外部 CLI

## 怎麼用

```bash
npm install -g @jackwener/opencli
opencli doctor

# 使用內建 adapter
opencli hackernews top --limit 5
opencli bilibili hot --limit 5

# 瀏覽器操作
opencli browser open https://example.com
opencli browser click "button.submit"
opencli browser extract "div.content"
```

## 跟其他方案的關係

- **vs [[Panniantong-Agent-Reach]]**：Agent Reach 裝工具讓 Agent 能存取平台，OpenCLI 把平台變成確定性 CLI。兩者互補。
- **vs 瀏覽器自動化**：OpenCLI 不依賴 LLM 做即時判斷，用 CDP 直操 DOM，更快更穩。
- **vs [[volcengine-OpenSandbox]]**：OpenSandbox 是沙箱執行環境，OpenCLI 是 CLI 介面層，層級不同。

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[AI-Skills]]

## 來源

- raw/2026-05-05-opencli.md

---

- **GitHub**: https://github.com/jackwener/OpenCLI
- **Stars**: ⭐18,700
- **License**: Apache-2.0
- **收錄日期**: 2026-05-05