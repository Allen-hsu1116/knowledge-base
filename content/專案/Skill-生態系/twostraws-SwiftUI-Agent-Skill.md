---
title: SwiftUI Agent Skill（SwiftUI Pro）
slug: twostraws-SwiftUI-Agent-Skill
created: 2026-10-10
updated: 2026-10-10
stars: 5431
language: 未標示（GitHub primary language 為 null）
topics: [agent-skills, swiftui, coding-agent, accessibility]
---

# SwiftUI Agent Skill（SwiftUI Pro）

> ⭐5.4k · Paul Hudson 為 Coding Agent 製作的 SwiftUI 專業技能，聚焦現代 API、效能與無障礙常見錯誤。

## 快速導航

- [[AI-Skills]] — 可安裝、可重用的領域操作知識。
- [[Coding-Agent-CLI]] — Claude Code、Codex 等技能宿主。
- [[AI-Agent]] — Skill 擴充 Agent 的工作方法，不取代執行環境。

## 是什麼

SwiftUI Agent Skill 的技能名稱是 SwiftUI Pro，由 Hacking with Swift 的 Paul Hudson 建立。它把 SwiftUI 開發與審查經驗整理為 Agent Skills 格式，協助 Claude Code、Codex、Gemini、Cursor 等 AI coding 工具避免實務中常見的錯誤。

專案關注的是 API 使用、設計、效能與 accessibility，包含 navigation、layout、animation、state management、VoiceOver 及 deprecated API。它延伸作者既有 AGENTS.md 的知識，但以可選擇安裝及按需觸發的 Skill 形式提供。

這是給 Agent 閱讀的領域指引，不是 SwiftUI runtime、編譯器或新的語言模型。README 的版本目標標示為 iOS 26+ 與 Swift 6.4+；既有 App 仍需依 deployment target、SDK 與編譯結果逐項核對建議。

## 核心特色

- **鎖定 LLM 常犯錯誤**：針對過時 API、意外效能問題及 VoiceOver 可及性缺陷。
- **跨 Coding Agent 格式**：採 Agent Skills 格式，讓同一份領域知識可供多種宿主使用。
- **聚焦 SwiftUI 工程細節**：涵蓋導覽、佈局、動畫與狀態管理，而不只產生 UI 外觀。
- **支援局部審查**：可指定只檢查 deprecated API 或 accessibility 等範圍。
- **多種安裝入口**：README 提供 skills CLI、Claude marketplace 與 clone 路徑。
- **重視 token 成本**：貢獻指南要求精簡 Markdown，優先補充邊界案例與容易忽略的知識。

## 怎麼用

### 安裝技能

需先具備 Node.js／npx 與支援的 Coding Agent。以下保留官方 README 指令的 URL 大小寫。

```bash
npx skills add https://github.com/twostraws/swiftui-agent-skill --skill swiftui-pro
```

安裝器可選宿主，以及只供單一專案使用或全域使用。安裝前應審閱技能內容與目標目錄，避免覆蓋既有規則。

### 在 Claude Code 觸發

```text
/swiftui-pro Check for deprecated API
```

### 在 Codex 觸發

```text
$swiftui-pro Focus on accessibility
```

也能以自然語言要求使用 SwiftUI Pro 檢查專案的效能問題。

### 建議驗收方式

- 先限定需要檢查的檔案或問題，避免把局部審查擴大成無關重構。
- 檢查 API 是否符合 App 的 deployment target，而不只符合技能目標版本。
- 透過 Xcode build、現有測試與真機／模擬器操作驗證修改。
- VoiceOver 問題應搭配實際無障礙操作驗收，不能只採信 Agent 回覆。
- 技能指令不構成沙箱；宿主的檔案、終端機與網路權限仍要自行管理。

本次僅收錄與核對官方 README，沒有在本機安裝此技能或測試 SwiftUI 專案。

## 跟其他方案的關係

| 方案或層次 | 角色 | 與 SwiftUI Pro 的關係 |
|---|---|---|
| SwiftUI Pro | SwiftUI 領域知識與審查指引 | 本專案的核心能力 |
| 通用 AGENTS.md | 專案常駐規則與工作約定 | 可共存；本技能源於作者既有規則的經驗 |
| Claude Code／Codex | Agent 執行宿主 | 負責模型、工具與實際程式碼修改 |
| SwiftData／Concurrency／Testing Pro | 作者其他 Swift 專門技能 | README 列為相關專案，不應假設本技能已全部包含 |
| Xcode 與測試工具 | 編譯、執行及行為驗證 | 是品質驗收手段，不由技能文字取代 |

比較依據是职责與使用層次，並非不同 Agent 的品質排名。

## 相關概念

← [[AI-Skills]] · [[Coding-Agent-CLI]] · [[AI-Agent]]

## 來源

- [GitHub：twostraws/SwiftUI-Agent-Skill](https://github.com/twostraws/SwiftUI-Agent-Skill)
- [官方 README](https://github.com/twostraws/SwiftUI-Agent-Skill/blob/main/README.md)
- 原始快照：`raw/2026-10-10-twostraws-SwiftUI-Agent-Skill.md`
- Metadata 快照：`raw/2026-10-10-twostraws-SwiftUI-Agent-Skill.metadata.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/twostraws/SwiftUI-Agent-Skill |
| Stars | 5,431（2026-10-10 快照） |
| License | MIT |
| Language | GitHub 未標示主要程式語言；內容為技能文件 |
| 收錄日期 | 2026-10-10 |
