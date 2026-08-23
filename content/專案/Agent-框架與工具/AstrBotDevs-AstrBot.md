---
title: AstrBot
slug: AstrBotDevs-AstrBot
created: 2026-07-20
updated: 2026-07-20
stars: 36702
language: Python
topics: [agent, chatbot, llm, mcp, qq, telegram, discord, docker, plugin]
---

# AstrBot

> ⭐36702 · 開源全能 Agent 聊天機器人平台，整合主流即時通訊應用（QQ、Telegram、Discord、Slack 等），支援 LLM 對話、MCP、Agent Sandbox、1000+ 插件。

## 快速導航


- 🤖 **AI Agent** → [[AI-Agent]]
- 🔌 **MCP** → [[MCP]]
- 📦 **AI Skills** → [[AI-Skills]]
- 🛡️ **沙箱** → [[sandbox]]

## 是什麼

AstrBot 是一個開源的「all-in-one」Agent 聊天機器人平台，目標是讓個人、開發者和團隊都能快速在即時通訊平台上建立生產級 AI 應用。無論是個人 AI 陪伴、智慧客服、自動化助手，還是企業知識庫，AstrBot 都能在你的 IM 工作流中快速部署。

它的核心設計理念是「陪伴與能力不衝突」——既要做能理解情緒、提供真實陪伴的機器人，也要能可靠地完成任務。平台支援多模態對話、Agent 功能、MCP 整合、知識庫、Persona 設定、自動 Context 壓縮等完整能力。

AstrBot 同時也是一個 Agent 開發框架，支援與 Dify、阿里雲百鍊、Coze 等平台整合。社群已提供超過 1000 個插件，可以一鍵安裝擴展功能。

## 核心特色

- **多平台 IM 整合**：支援 QQ、Telegram、Discord、Slack、飛書、釘釘、微信公眾號、企業微信、LINE、KOOK、Misskey、Mattermost 等十多個平台，WhatsApp 即將支援
- **多模型支援**：OpenAI、Anthropic、Google Gemini、DeepSeek、Ollama、LM Studio 等，同時支援 Dify、Coze、阿里雲百鍊等 LLMOps 平台
- **Agent Sandbox**：隔離的沙箱環境，安全執行程式碼和 shell 命令，支援 session 級資源重用
- **1000+ 插件生態**：社群驅動的插件市場，一鍵安裝，涵蓋角色扮演、自動化、工具整合等場景
- **WebUI + ChatUI**：內建網頁管理介面和聊天介面，ChatUI 內建 Agent Sandbox 和網頁搜尋
- **MCP 整合**：支援 Model Context Protocol，可連接外部工具和資料源
- **語音能力**：整合 Whisper、SenseVoice 語音辨識，OpenAI TTS、Gemini TTS、Edge TTS 等文字轉語音
- **國際化（i18n）**：支援多語言，含簡中、繁中、日文、法文、西班牙文、俄文

## 怎麼用

### 一鍵安裝（推薦）

需要先安裝 [uv](https://docs.astral.sh/uv/)：

```bash
uv tool install astrbot --python 3.12
astrbot init    # 首次執行需初始化環境
astrbot run
```

更新：

```bash
uv tool upgrade astrbot --python 3.12
```

### Docker 部署

```bash
docker pull soulter/astrbot
# 詳見官方文件：https://docs.astrbot.app/deploy/astrbot/docker.html
```

### Arch Linux (AUR)

```bash
yay -S astrbot-git
```

### 桌面應用

下載 [AstrBot-desktop](https://github.com/AstrBotDevs/AstrBot-desktop)，適合桌面 ChatUI 場景。

## 跟其他方案的關係

| 專案 | 定位 | IM 整合 | 插件生態 | 沙箱 |
|------|------|---------|----------|------|
| **AstrBot** | IM 優先的 Agent 平台 | 15+ 平台 | 1000+ 插件 | Agent Sandbox |
| [[langgenius-dify\|Dify]] | LLM 應用平台 | 無原生 IM | 插件 + 工作流 | 無 |
| [[open-webui-open-webui\|Open WebUI]] | Web UI 優先 | 無原生 IM | 工具整合 | 無 |
| [[lobehub-lobehub\|LobeHub]] | Agent 營運平台 | 有限 | 10k+ Skills | 無 |
| [[CherryHQ-cherry-studio\|Cherry Studio]] | AI 生產力工作室 | 無原生 IM | 300+ 助手 | 無 |

AstrBot 的最大差異化在於「IM 優先」——它不是把聊天機器人塞進網頁，而是把 AI Agent 塞進你日常使用的通訊軟體。

## 相關概念


← [[AI-Agent]] · [[MCP]] · [[AI-Skills]] · [[langgenius-dify]] · [[open-webui-open-webui]]

## 來源

- [GitHub：專案原始碼](https://github.com/AstrBotDevs/AstrBot-desktop)
- **GitHub**: https://github.com/AstrBotDevs/AstrBot
- **官方文件**: https://astrbot.app/
- **raw 檔案**: `raw/2026-07-20-AstrBotDevs-AstrBot.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/AstrBotDevs/AstrBot-desktop |
| Stars | ⭐36702|
| License | AGPL-3.0 |
| 收錄日期 | 2026-07-20 |
