# CLI-Anything

> Making ALL Software Agent-Native

**Repo:** <https://github.com/HKUDS/CLI-Anything>
**Stars:** ⭐ 36,330
**Language:** Python
**Created:** 2026-03-08

## 一句話

CLI-Anything 讓你用一行指令把任何軟體包成 CLI harness，讓 AI Agent（Claude Code、Pi、OpenClaw、Codex 等）可以直接呼叫操作——從 GIMP、Blender 到 LibreOffice、Zoom 都能 agent-native。

## 快速導航

- ⚡ [[AI-Agent]] · [[agent-skills-ecosystem]] · [[Coding-Agent-CLI]]

## 是什麼

CLI-Anything 是一個自動化工具，能把任何 GUI 軟體或服務轉換成 AI Agent 可操作的 CLI harness。它的核心主張是：**CLI 是人類與 AI Agent 之間的通用介面**。文字指令天然匹配 LLM 的輸入格式，結構化 JSON 輸出消除了解析複雜度，`--help` 自動產生 Agent 可發現的文件。

它透過 7 階段 Pipeline（Analyze → Design → Implement → Plan Tests → Write Tests → Document → Publish）自動生成 CLI，支援 GIMP、Blender、LibreOffice、FreeCAD、Kdenlive、Zoom、Obsidian、Zotero 等 18+ 應用，2,269 個測試全通過。同時提供 CLI-Hub 套件管理器，讓 Agent 可以瀏覽、安裝、管理社群建好的 CLI。

## 核心特色

- **7 階段自動化 Pipeline** — Analyze → Design → Implement → Plan Tests → Write Tests → Document → Publish
- **CLI-Hub 套件管理** — `pip install cli-anything-hub` 即可瀏覽和安裝所有社群 CLI
- **SKILL.md 自動生成** — 每個生成的 CLI 都附帶 AI 可發現的技能定義文件
- **結構化 JSON 輸出** — 消除解析複雜度，Agent 友好
- **REPL 模式 + Undo/Redo** — 互動式操作，支援步驟回溯
- **跨平台 Agent 支援** — Claude Code（plugin marketplace）、Pi、OpenClaw、OpenCode、Codex、Copilot CLI、Goose、Qodercli
- **18+ 應用 harness** — GIMP、Blender、LibreOffice、FreeCAD、Kdenlive、Shotcut、Inkscape、MuseScore、Godot、Zoom、Obsidian、Zotero、Krita、Safari、n8n、QGIS 等
- **2,269 個測試全通過** — 含 unit 和 E2E 測試

## 怎麼用

### Claude Code

```bash
# 安裝 marketplace
/plugin marketplace add HKUDS/CLI-Anything
# 安裝 plugin
/plugin install cli-anything
# 生成 CLI
/cli-anything ./gimp
# 精煉現有 CLI
/cli-anything:refine ./gimp
```

### Pi Coding Agent

```bash
git clone https://github.com/HKUDS/CLI-Anything.git
bash .pi-extension/cli-anything/install.sh
# 在 Pi 中使用
/cli-anything ./gimp
```

### OpenCode

```bash
cp CLI-Anything/opencode-commands/*.md ~/.config/opencode/commands/
cp CLI-Anything/cli-anything-plugin/HARNESS.md ~/.config/opencode/commands/
/cli-anything ./gimp
```

### CLI-Hub

```bash
pip install cli-anything-hub
cli-hub install <name>  # 瀏覽、安裝社群 CLI
```

## 跟其他方案的關係

| 特性 | CLI-Anything | AgentQL | Browser Use | OpenCLI |
|------|------------|---------|-------------|---------|
| 目標 | 把 GUI 軟體包成 CLI | 網頁數據提取 | 瀏覽器自動化 | 把網站/工具包成 CLI |
| 自動化程度 | 7 階段全自動 | 半自動 | 半自動 | 半自動 |
| 支援平台數 | 18+ | 網頁 | 瀏覽器 | 100+ 網站 |
| Agent 支援 | 6+ 平台 | 部分 | 部分 | 多平台 |
| SKILL.md | ✅ 自動生成 | ❌ | ❌ | ✅ |
| CLI-Hub | ✅ 套件管理 | ❌ | ❌ | ✅ CLI Hub |
| 測試覆蓋 | 2,269 tests | ? | ? | ? |

## 相關概念

← [[AI-Agent]] · [[Coding-Agent-CLI]] · [[AI-Skills]] · [[agent-skills-ecosystem]] · [[opencli]]

## 為什麼重要

傳統 GUI 軟體對 AI Agent 來說幾乎不可操作。CLI-Anything 透過自動化 7 階段 pipeline 來「代理化」這些軟體——Agent 不再只能操作終端和 API，也能操控圖形工具、影音剪輯、3D 建模等。這大幅擴展了 Agent 的實際能動範圍。

## 來源

- [原始資料](../raw/2026-05-18-HKUDS-CLI-Anything.md)