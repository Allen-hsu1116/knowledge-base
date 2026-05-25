# CLI-Anything

> Making ALL Software Agent-Native

**Repo:** <https://github.com/HKUDS/CLI-Anything>
**Stars:** ⭐ 36,330
**Language:** Python
**Created:** 2026-03-08

## 一句話

CLI-Anything 讓你用一行指令把任何軟體包成 CLI harness，讓 AI Agent（Claude Code、Pi、OpenClaw、Codex 等）可以直接呼叫操作——從 GIMP、Blender 到 LibreOffice、Zoom 都能 agent-native。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（CLI 是 Agent 操作軟體的通用介面）
- 🧩 **Agent Skills** → [[agent-skills-ecosystem]]（CLI-Hub 作為 skill 生態系中樞）
- 🛠 **Coding Agent** → [[Coding-Agent-CLI]]（支援多種 Coding Agent 平台）

## 核心概念

CLI-Anything 的主張是：**CLI 是人類與 AI Agent 之間的通用介面**。文字指令天然匹配 LLM 的輸入格式，結構化 JSON 輸出消除了解析複雜度，`--help` 自動產生 Agent 可發現的文件。

### 7 階段 Pipeline

1. **Analyze** — 掃描原始碼，將 GUI 動作對應到 API
2. **Design** — 設計指令群組、狀態模型、輸出格式
3. **Implement** — 用 Click 建 CLI（REPL + JSON output + undo/redo）
4. **Plan Tests** — 產生 TEST.md（unit + E2E）
5. **Write Tests** — 實作測試 suite
6. **Document** — 更新文件
7. **Publish** — 建立 `setup.py`，安裝到 PATH

### CLI-Hub

`pip install cli-anything-hub` 即可瀏覽、安裝、管理所有社群建好的 CLI harness，支援 pip / npm / brew / bundled 等多種安裝來源。

### 支援平台

- Claude Code（plugin marketplace）
- Pi Coding Agent
- OpenCode
- OpenClaw（SKILL.md）
- Codex
- GitHub Copilot CLI
- Goose

### 已有 harness

GIMP、Blender、LibreOffice、FreeCAD、Kdenlive、Shotcut、Inkscape、MuseScore、Godot、Zoom、Obsidian、Zotero、Krita、Safari、n8n、QGIS 等超過 18 個應用。2,269 個測試全通過。

## 為什麼重要

傳統 GUI 軟體對 AI Agent 來說幾乎不可操作。CLI-Anything 透過自動化 7 階段 pipeline 來「代理化」這些軟體——Agent 不再只能操作終端和 API，也能操控圖形工具、影音剪輯、3D 建模等。這大幅擴展了 Agent 的實際能動範圍。

## 相關概念

- [[AI-Agent]] — CLI 是 Agent 操作軟體的通用介面
- [[Coding-Agent-CLI]] — 支援多種 Coding Agent 平台
- [[AI-Skills]] — 每個生成的 CLI 都附帶 AI 發現用的 SKILL.md
- [[agent-skills-ecosystem]] — CLI-Hub 作為 skill 生態系的中樞
- [[opencli]] — CLI-Anything 的精神一致：用 CLI 打通一切

## 來源

- raw/2026-05-18-HKUDS-CLI-Anything.md