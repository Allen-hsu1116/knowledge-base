---
title: Omarchy
slug: basecamp-omarchy
created: 2026-08-24
updated: 2026-08-24
stars: 29141
language: Shell
topics:
  - arch-linux
  - developer-environment
  - linux
  - productivity
  - terminal
---

# Omarchy

> ⭐29.1k · DHH 與 Basecamp 推出的現代、強烈預設、面向開發者與 AI 工具的 Linux 發行版。

## 快速導航

- ⚡ **工作環境** → [[productivity]]（理解整合式開發桌面的效率目標）
- 🆓 **開源工具** → [[free-software]]（理解可修改與可分享的軟體基礎）
- 💻 **AI 終端工具** → [[Coding-Agent-CLI]]（理解內建 AI 開發工作流的角色）

## 是什麼

Omarchy 是 DHH 推出的 opinionated Linux distribution，以 Arch Linux 為基礎，提供整套預先設計的桌面、終端、開發與日常應用環境。它不是只交付套件清單，而是把主題、快捷鍵、導航、剪貼簿、通知、螢幕錄製、系統更新與 dotfiles 等體驗整合成一套一致工作流。

專案 README 本身很精簡，主要把使用者導向 52 章 Omarchy Manual。手冊涵蓋 terminal、Neovim、AI、開發工具、shell、TUI、GUI、瀏覽器、遊戲、Windows VM、硬體驗證、系統快照、安全與 unattended install。

Omarchy 與 LLM 的關聯不是模型或 Agent 框架，而是提供可直接使用 Coding Agent、終端工具與開發環境的作業系統底座。它適合願意接受強烈預設、以鍵盤和終端為主的開發者；不適合只想在現有 OS 上安裝單一 AI 工具的人。

## 核心特色

- **強烈預設**：整合桌面外觀、快捷鍵、應用與 shell，減少從零挑選和配置的決策成本。
- **開發者優先**：手冊獨立涵蓋 Terminal、Neovim、Development Tools、Shell Tools、TUIs 與 dotfiles。
- **AI 工具入口**：將 AI 納入正式應用章節，讓 Coding Agent 與其他開發工具成為 OS 工作流的一部分。
- **完整操作手冊**：52 章文件涵蓋入門、應用、配置、安全、快照、雙系統與無人值守安裝。
- **鍵盤導向工作流**：導航、hotkeys、unified clipboard 與命令列工具形成一致的操作模式。
- **可調整主題**：提供 themes、extra themes、backgrounds、fonts、branding 與自行建立主題的流程。
- **系統維運涵蓋**：文件包含更新、故障排除、網路、休眠、硬體驗證、快照與安全實務。

## 怎麼用

Omarchy 是完整作業系統，應先閱讀硬體需求、備份與安裝手冊，再使用官方 installer。依官方常見安裝方式可從 live Arch 環境取得安裝程式：

```bash
curl -fsSL https://omarchy.org/install | bash
```

安裝作業系統會改動磁碟分割與 bootloader，不能像普通套件一樣在生產機器上盲目執行。先確認官方目前指令與 checksum，完整備份資料，最好先在虛擬機或備用設備試跑。

安裝後從 Omarchy Manual 的 Getting Started、Navigation、Hotkeys、AI、Development Tools、Updates 與 Security 章節依序熟悉環境，再逐步修改 dotfiles 和主題，避免一次移除過多預設導致升級困難。

## 跟其他方案的關係

Omarchy 是「整套開發者 Linux 體驗」，與單一 Coding Agent、IDE 或 dotfiles repo 不在同一層。它透過預裝與預設把工具串起來，代價是使用者要接受 Arch Linux 與發行版的整體維運方式。

| 方案 | 核心定位 | 預設程度 | 適合對象 |
|------|----------|----------|----------|
| Omarchy | Opinionated 開發者 Linux 發行版 | 高，桌面與工具整合 | 想要完整鍵盤導向環境的開發者 |
| Arch Linux | 通用 rolling-release Linux | 低，使用者自行組裝 | 想完全控制系統元件者 |
| macOS + Homebrew | 商業桌面 OS 加套件管理 | 中 | 需要 Apple 生態與 Unix 工具者 |
| [[openai-codex\|OpenAI Codex CLI]] | Coding Agent | 只處理 AI 編碼任務 | 可運行於 Omarchy 之上的工具 |
| [[anthropics-claude-code\|Claude Code]] | Coding Agent CLI | 只處理 Agent 工作流 | 可作為 Omarchy AI 工具鏈一員 |

## 相關概念

← [[productivity]] · [[free-software]] · [[Coding-Agent-CLI]] · [[self-hosted]]

## 來源

- [GitHub：basecamp/omarchy](https://github.com/basecamp/omarchy)
- [Omarchy 官網](https://omarchy.org/)
- [Raw README + metadata](../raw/2026-08-24-basecamp-omarchy.md)

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/basecamp/omarchy |
| Stars | ⭐29,141 |
| License | MIT |
| Language | Shell |
| 收錄日期 | 2026-08-24 |
