---
title: OfficeCLI
slug: iOfficeAI-OfficeCLI
created: 2026-07-08
updated: 2026-07-08
stars: 9959
language: C#
topics:
  - agent
  - ai
  - claude-code
  - cli
  - docx
  - excel
  - office
  - pptx
  - skills
  - word
---

# OfficeCLI

> ⭐10k · 世界首個為 AI Agent 量身打造的 Office 套件——一行指令讓任何 AI Agent 讀寫編輯 Word、Excel、PowerPoint

## 快速導航
- [[AI-Skills]]
- [[Coding-Agent-CLI]]
- [[productivity]]
- [[presenton-presenton]]


快速導航：[[AI-Skills]] · [[Coding-Agent-CLI]] · [[productivity]]

## 是什麼

OfficeCLI 是一個開源的命令列工具，讓 AI Agent 能夠完整操控 Word (.docx)、Excel (.xlsx) 和 PowerPoint (.pptx) 檔案。它是單一二進位檔案，不需要安裝 Office，沒有任何依賴，在所有平台上都能運行。你只需要一行指令就能讓 Claude Code、Cursor、Windsurf、GitHub Copilot 等 AI Coding Agent 立即建立、讀取和編輯 Office 文件。

核心亮點是內建的 HTML 渲染引擎——它能將 .docx/.xlsx/.pptx 渲染成 HTML 或 PNG，讓 AI Agent 能「看見」文件內容。這閉合了「渲染 → 觀看 → 修復」迴圈，使 AI Agent 能像人類一樣視覺檢查文件品質。所有上面展示的簡報、文件、試算表都是由 AI Agent 使用 OfficeCLI 完全自動生成的，沒有範本，沒有手動編輯。

OfficeCLI 採用 XPath 風格的路徑語法操作文件元素，例如 `/slide[1]/shape[1]`。支援建立、讀取、修改、分析、重組所有元素——文字、字型、顏色、版面、公式、圖表、圖片等。它還提供 `watch` 即時預覽功能，每次修改都會在瀏覽器中即時更新。

## 核心特色

- **單一指令操作**：取代過去 50 行 Python + 3 個庫的複雜操作。`officecli add deck.pptx / --type slide --prop title="Q4 Report"` 一行搞定
- **HTML/PNG 渲染引擎**：內建渲染引擎將 Office 文件渲染為 HTML 或 PNG，讓 AI Agent 能視覺檢查文件，閉合「渲染 → 觀看 → 修復」迴圈
- **完整三格式支援**：Word、Excel、PowerPoint 全部支援讀取、修改、建立。Word 支援 i18n/RTL、方程式、Mermaid 圖表；Excel 支援 350+ 公式、樞紐表、條件格式；PowerPoint 支援動畫、轉場、3D 模型
- **AI Skill 自動安裝**：`officecli install` 會自動偵測所有 AI Coding Agent（Claude Code、Cursor、Windsurf、GitHub Copilot 等）並安裝 officecli skill，Agent 立即可用
- **即時預覽**：`officecli watch` 開啟瀏覽器即時預覽，每次 `add`/`set`/`remove` 都會即時更新畫面，作為即時反饋迴圈
- **結構化 JSON 輸出**：`get` 命令可取得任何元素的結構化 JSON，方便 Agent 程式化處理
- **LaTeX 方程式輸入**：Word 和 PowerPoint 都支援用 LaTeX 輸入方程式，自動轉換為原生 Office 方程式格式
- **Mermaid 圖表**：Mermaid 流程圖/時序圖可轉換為原生可編輯形狀，或作為高保真 PNG 嵌入

## 怎麼用

### 安裝

```bash
# macOS / Linux
curl -fsSL https://raw.githubusercontent.com/iOfficeAI/OfficeCLI/main/install.sh | bash
# 或
brew install officecli
# 或
npm install -g @officecli/officecli

# Windows (PowerShell)
irm https://raw.githubusercontent.com/iOfficeAI/OfficeCLI/main/install.ps1 | iex
```

### AI Agent 一鍵啟用

```
curl -fsSL https://officecli.ai/SKILL.md
```

將這行貼進 AI Agent 的聊天視窗，Agent 會讀取 skill 檔案並自動安裝一切。

### 快速開始

```bash
# 建立簡報並加入內容
officecli create deck.pptx
officecli add deck.pptx / --type slide --prop title="Q4 Report"
officecli add deck.pptx '/slide[1]' --type shape \
  --prop text="Revenue grew 25%" --prop x=2cm --prop y=5cm

# 以大綱模式檢視
officecli view deck.pptx outline

# 以 HTML 渲染預覽
officecli view deck.pptx html

# 取得結構化 JSON
officecli get deck.pptx '/slide[1]/shape[1]' --json

# 即時預覽
officecli watch deck.pptx
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | AI Agent 原生 | 無需 Office | 渲染引擎 | 三格式 |
|------|-------|------|-------------|------------|---------|--------|
| **OfficeCLI** | ⭐10k | CLI | ✅ | ✅ | ✅ HTML/PNG | ✅ |
| python-pptx | ⭐3k | Python 庫 | ❌ | ✅ | ❌ | 部分 |
| openpyxl | ⭐1.5k | Python 庫 | ❌ | ✅ | ❌ | Excel only |
| docx4j | ⭐1.7k | Java 庫 | ❌ | ✅ | ❌ | Word only |
| [[presenton-presenton\|Presenton]] | ⭐6.4k | AI 簡報 | 部分 | ✅ | ❌ | PPT only |

← [[AI-Skills]] · [[Coding-Agent-CLI]] · [[productivity]]

## 相關概念

← [[AI-Skills] · [[Coding-Agent-CLI] · [[productivity] · [[presenton-presenton]

## 來源

- GitHub: <https://github.com/iOfficeAI/OfficeCLI>
- 官方網站: <https://officecli.ai>
- 原始 README: `raw/2026-07-08-iOfficeAI-OfficeCLI.md`
- 授權: Apache-2.0

---

| 項目 | 值 |
|------|-----|
| GitHub | [iOfficeAI/OfficeCLI](https://github.com/iOfficeAI/OfficeCLI) |
| Stars | ⭐9,959 |
| License | Apache-2.0 |
| Language | C# |
| 收錄日期 | 2026-07-08 |