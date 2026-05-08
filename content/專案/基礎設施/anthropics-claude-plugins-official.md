# Claude Plugins Official

> Anthropic 官方維護的 Claude Code 高品質插件目錄。

## 快速導航

- [[AI-Skills|AI Skills]] — 技能格式與生態系
- [[MCP]] — Model Context Protocol
- [[Coding-Agent-CLI|Coding Agent CLI]] — 終端 AI 開發助手

## 是什麼

anthropics/claude-plugins-official 是 Anthropic 官方管理的 Claude Code 插件目錄，分為內部插件和第三方插件兩大類，品質與安全都有把關。

## 核心特色

- **內部插件** — Anthropic 自行開發維護
- **外部插件** — 合作夥伴和社群提交，需通過品質與安全審核
- **統一結構** — 每個插件遵循標準目錄結構（plugin.json、commands、agents、skills）
- **簡易安裝** — `/plugin install {plugin-name}@claude-plugins-official`
- **MCP 支援** — 插件可附帶 `.mcp.json` 設定

## 怎麼用

```bash
/plugin install {plugin-name}@claude-plugins-official
```

第三方開發者可提交插件，但需通過品質與安全標準審核。

## 跟其他方案的關係

- 與 [[sickn33-antigravity-awesome-skills|antigravity-awesome-skills]] 互補：前者是官方精選，後者是社群合集
- 與 [[AI-Skills|AI Skills]] 概念相關：插件生態的基礎設施
- 與 [[openclaw|OpenClaw]] 的 skill 系統理念相似，但 Claude Code 用 plugin 格式

## 相關概念

- [[AI-Skills|AI Skills]]
- [[MCP]]
- [[Coding-Agent-CLI|Coding Agent CLI]]

## 來源

- raw/2026-05-08-anthropics-claude-plugins-official.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official) | ⭐18,801 | — | 2026-05-08 |