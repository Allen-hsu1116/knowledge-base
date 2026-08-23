---
title: Text-to-CAD
slug: earthtojake-text-to-cad
created: 2026-07-24
updated: 2026-07-24
stars: 9980
language: JavaScript
topics:
  - cad
  - robotics
  - ai-agents
  - agents
  - text-to-cad
  - 3mf
  - dxf
  - glb
  - opencascade
  - step
  - stl
  - urdf
---

# Text-to-CAD

> ⭐9980 · CAD、機器人與硬體設計的 Agent Skills 庫，從自然語言生成 STEP/STL/3MF/GLB/DXF/URDF 等工程檔案

## 快速導航


- 🛠 **AI Skills** → [[AI-Skills]]
- 🤖 **AI Agent** → [[AI-Agent]]
- 🔌 **MCP** → [[MCP]]

## 是什麼

Text-to-CAD（CAD Skills）是一套專為 CAD、機器人與硬體設計打造的 Agent Skills 庫。它讓 AI Agent 能夠從自然語言或圖片請求生成、檢查、採購、切片和交付 CAD 模型及機器人描述檔案。專案由 earthtojake 開發，以 MIT 授權開源。

整個庫包含 11 個獨立 Skills，涵蓋從 CAD 建模到 3D 列印切片的完整工作流。核心的 CAD Skill 可以從純文字或圖片描述生成 3D 模型，以 STEP 為主要輸出格式，同時支援匯出 STL、3MF 和 GLB。CAD Viewer Skill 則提供本地瀏覽器預覽，讓你在不離開終端的情況下查看 CAD、G-code 和機器人檔案。

這些 Skills 遵循 Agent Skills 開放標準（SKILL.md 格式），可以透過 `npx skills install` 一鍵安裝到支援的 Agent 平台，也支援作為 Codex 和 Claude Code 的 Plugin 安裝。專案還包含 10 個基準測試，從簡單的校準塊到複雜的行星齒輪、螺旋樓梯和離心葉輪，驗證 Agent 的 CAD 生成能力。

## 核心特色

- **11 個獨立 Skills** — CAD、CAD Viewer、step.parts、DXF、URDF、SRDF、SDF、SendCutSend、G-code、Bambu Labs、Implicit CAD，覆蓋從設計到製造的完整流程
- **多格式輸出** — STEP（主要 CAD 格式）、STL、3MF、GLB（3D 場景）、DXF（2D 圖紙）、URDF（機器人描述）、SRDF（MoveIt 規劃）、SDF（模擬器模型）、G-code（FDM 切片）
- **自然語言 + 圖片輸入** — CAD Skill 支援從純文字描述或圖片請求生成 3D 模型，降低 CAD 學習門檻
- **本地瀏覽器預覽** — CAD Viewer Skill 在本地瀏覽器中即時預覽 CAD、G-code 和機器人檔案，支援軌道旋轉動畫
- **3D 列印完整流程** — 從 CAD 建模到 G-code 切片再到 Bambu Lab 印表機上傳，一條龍自動化
- **Agent Skills 標準** — 遵循 SKILL.md 格式，支援 `npx skills install` 以及 Codex/Claude Code Plugin 安裝
- **機器人設計支援** — URDF/SRDF/SDF Skills 覆蓋機器人結構描述、MoveIt 規劃和模擬器建模

## 怎麼用

### 安裝 Skills

```bash
npx skills install earthtojake/text-to-cad
```

### 作為 Codex Plugin 安裝

```bash
codex plugin marketplace add earthtojake/text-to-cad
codex plugin add cad@text-to-cad
```

### 作為 Claude Code Plugin 安裝

```bash
claude plugin marketplace add earthtojake/text-to-cad
claude plugin install cad@text-to-cad
```

安裝後重啟 Agent 即可使用新 Skills。本地開發請從 `develop` 分支拉取，PR 也提交到 `develop`。

## 跟其他方案的關係

| 方案 | Stars | 類型 | CAD 建模 | 機器人 | 3D 列印 | Agent Skills |
|------|-------|------|---------|--------|---------|-------------|
| **Text-to-CAD** | ⭐10.0k | Skills 庫 | ✅ | ✅ URDF/SRDF/SDF | ✅ G-code/Bambu | ✅ |
| [[ibelick-ui-skills\|UI Skills]] | ⭐4.3k | Skills 庫 | ❌ | ❌ | ❌ | ✅ |
| [[Nutlope-hallmark\|Hallmark]] | ⭐5.1k | Skills 庫 | ❌ | ❌ | ❌ | ✅ |
| [[CoplayDev-unity-mcp\|MCP for Unity]] | ⭐11.6k | MCP Server | ❌ | ❌ | ❌ | — |

Text-to-CAD 是目前唯一將 Agent Skills 延伸到實體硬體設計與製造領域的專案。其他 Skills 庫主要聚焦軟體（UI、前端、寫作），而 Text-to-CAD 打通了從數位設計到實體製造的完整鏈路。

## 相關概念


← [[AI-Skills]] · [[AI-Agent]] · [[MCP]]

## 來源

- GitHub: https://github.com/earthtojake/text-to-cad
- 文件: https://www.cadskills.xyz
- Demo: https://demo.cadskills.xyz
- 原始 README: `raw/2026-07-24-earthtojake-text-to-cad.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/earthtojake/text-to-cad |
| Stars | ⭐9980|
| License | MIT |
| 收錄日期 | 2026-07-24 |
