---
title: REA — Reverse Engineer Anything
slug: morluto-rea
created: 2026-10-07
updated: 2026-10-07
stars: 9458
language: TypeScript
topics: [ai-agents, mcp, reverse-engineering, static-analysis]
---

# REA — Reverse Engineer Anything

> ⭐9.5k · TypeScript · 以 CLI、MCP 與可追溯證據，讓 Agent 調查應用程式與原生二進位檔。

## 快速導航

- [[MCP]] — 將分析工具提供給支援本地 MCP 的 Agent。
- [[code-intelligence]] — 從符號、呼叫關係與靜態證據理解程式。
- [[AI-Agent]] — Agent 負責提出假設、使用工具與整理結論。

## 是什麼

REA 是面向 Agent 的逆向工程工具層，將原生二進位檔、JavaScript／Electron 應用、.NET 組件與網站調查串接到同一組 CLI／MCP 工作流程。它讓 Agent 取得反編譯結果、符號、字串與關聯證據，而不是只憑模型猜測程式行為。

原生分析可接上 Hopper、Ghidra 或既有 IDA MCP；靜態 JavaScript 分析則不需要這些原生引擎。REA 本身不是新的反編譯器，也不保證還原原始碼或自動複製完整應用；重要定位是整理調查流程、提供工具介面並保留結論的限制與未知項。

分析在本地主機進行，但若 Agent 使用外部模型，傳給模型的內容仍受該供應商政策影響。執行期 capture 以使用者權限啟動指定程式，並不是安全沙箱；僅應分析有權處理的軟體與資料。

## 核心特色

- **CLI 與 MCP 共用工作流程**：終端操作與 Agent 工具使用一致的證據契約。
- **多種分析來源**：依目標選擇原生引擎、JavaScript 靜態分析或其他專用 provider。
- **Evidence 與限制明示**：結果包含觀察依據、可恢復的關係與尚未解決的問題。
- **可審閱的 setup**：先顯示設定修改，再核准；既有設定會備份，Hopper 安裝另行同意。
- **快照重用**：只有目標位元組、操作、參數、工具與設定吻合時才重用對應分析。
- **不執行 JavaScript 的靜態入口**：可讀取應用目錄或 ASAR，與執行期觀察分開。

## 怎麼用

### 安裝與診斷

先確認 Node.js 符合官方版本範圍：22.x 至少 22.19、24.x 至少 24.11，或 26+，並備有 npm。

```bash
npm install --global rea-agents
rea doctor --json
rea setup
```

`setup` 會修改選定 Agent 的 MCP／workflow 設定；先審閱路徑及變更，核准後再重啟受影響的 Agent。

### 先從靜態 JavaScript 分析開始

以下路徑是使用者自行替換的範例；此操作不執行目標應用。

```bash
rea analyze-javascript-application /absolute/path/to/app --json
rea providers --json
```

若要分析原生程式，先按官方文件準備相應引擎。當次 README 的 Ghidra 路徑要求 Ghidra 12.1.4 與 64-bit JDK 21；其他 provider 和平台的限制各自不同。

### 判讀與安全邊界

- 將反編譯偽碼視為分析產物，不當作原始碼的逐字還原。
- 使用 runtime capture 前，另外確認目標可信度與執行權限。
- repository main 與已發行 npm 套件可能有落差；持久 MCP 註冊宜固定版本。
- 本頁依官方資料整理，未在本機安裝或執行 REA。

## 跟其他方案的關係

| 方案 | 定位 | 與 REA 的關係 |
|------|------|----------------|
| Hopper／Ghidra | 原生分析與反編譯引擎 | REA 使用引擎能力，增加 Agent 工作流程與證據介面 |
| IDA Pro MCP | 將 IDA 能力提供給 MCP client | REA 可接用既有註冊；版本與平台須依 provider 文件確認 |
| 原始碼索引工具 | 分析可取得的 source tree | REA 也處理沒有原始碼的應用 artifacts，資訊可靠度邊界不同 |
| 通用 Coding Agent | 規劃、工具使用與撰碼 | 可透過 REA 調查程式；仍須驗證結論與重建結果 |

## 相關概念

← [[MCP]] · [[code-intelligence]] · [[AI-Agent]]

## 來源

- [GitHub：morluto/rea](https://github.com/morluto/rea)
- [官方 README](https://github.com/morluto/rea/blob/main/README.md)
- 原始快照：`raw/2026-10-07-morluto-rea.md`
- Stars、語言與授權來自收錄當日 GitHub API；功能敘述以 README 快照為準。

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/morluto/rea |
| Stars | 9,458（2026-10-07 快照） |
| License | MIT；外部分析引擎另依各自授權 |
| Language | TypeScript |
| 收錄日期 | 2026-10-07 |
