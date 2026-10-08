---
title: RAD Debugger
slug: EpicGames-raddebugger
created: 2026-10-08
updated: 2026-10-08
stars: 7861
language: C
topics: []
---

# RAD Debugger

> ⭐7.9k · C · 面向原生程式的圖形化、多程序使用者模式除錯器，並包含 RDI 除錯資訊格式與 RAD Linker。

## 快速導航

- [[code-intelligence]] — 靜態程式理解與執行期觀察是不同、互補的證據來源。
- [[Coding-Agent-CLI]] — AI 產生的原生程式仍需編譯、測試與除錯；本專案不是 Coding Agent。

## 是什麼

RAD Debugger 是 EpicGames 組織下的原生圖形化除錯工具，處理使用者模式、多程序的程式執行與觀察。README 將目前支援範圍描述為本機 Windows x64、PDB 除錯資訊，並明確標示仍在 Alpha 階段；不能把未來的 Linux、DWARF 或遠端除錯方向當作已完整支援的能力。

專案不只包含除錯器，也發展 RAD Debug Info（RDI）格式與 RAD Linker。工具鏈產生的 PDB 會按需轉成 RDI，供除錯器載入與查詢；RAD Linker 則針對大型 x64 PE/COFF 可執行檔的連結工作，提供 PDB 或選用的原生 RDI 輸出。

這次候選來源是 GitHub Trending，而非 LLM topic。它是一般開發基礎設施，不是 LLM 框架、MCP server 或自動修復 Agent；與 AI 開發的關係僅是可作為人工驗證原生程式的外部工具，沒有據此宣稱官方 Agent 整合。

## 核心特色

- **原生圖形介面與多程序控制**：以使用者模式除錯為核心，分離前端與程序控制層。
- **RDI 除錯資訊**：將 PDB 轉為專用格式，提供載入、快取及資訊搜尋能力。
- **radbin 工具**：轉換原生除錯資訊、輸出 RDI 內容文字；亦可從除錯器的 `--bin` 入口使用。
- **RAD Linker**：產生 x64 PE/COFF、PDB 與選用 RDI，命令列語法相容 MSVC，主要面向大型連結工作。
- **分層 C 程式碼架構**：程序控制、運算式求值、視覺化、檔案串流與渲染分開；部分 `lib_` 元件可獨立使用。
- **明示成熟度與路線圖**：Alpha 穩定性優先；Linux 原生除錯與 DWARF 轉換仍須依實際版本確認。

## 怎麼用

### 下載或從原始碼建置

若只想試用，可從官方 [Releases](https://github.com/EpicGames/raddebugger/releases) 取得預先建置版本，並閱讀隨附的使用說明。
下列是 Windows x64 原始碼安裝／建置步驟；先安裝 Microsoft C/C++ Build Tools 2017 或更新版本及 Windows SDK。
在 **x64 Native Tools Command Prompt** 執行：

```bat
git clone https://github.com/EpicGames/raddebugger.git
cd raddebugger
cl
build release
build\raddbg.exe
```

`cl` 是確認 MSVC 編譯器可見的檢查，不是建置指令。
`build release` 產生最佳化版本；只執行 `build` 則預設為 debug build，效能可能較差。
使用者操作、快捷鍵與提示以發行包或建置後 `build` 目錄中的 README 為準。

### 選用的工具鏈產物

```bat
build radlink release
build radbin release
```

README 也提供 Linux x64 的 GCC／Clang、圖形函式庫與 `./build.sh release` 建置步驟。
**能在 Linux 建置專案，不等於 Linux 原生除錯支援已完成**；當次 README 的功能定位與 roadmap 仍將其列為後續工作。
本頁只整理官方資料，沒有在本機安裝、編譯或執行 RAD Debugger。

### 使用限制

- Alpha 軟體應先以可重現的小型測試程式驗證，不假設所有語言與編譯選項都可靠。
- RAD Linker 的大型專案效能數字是作者特定測試，不能直接外推到自己的專案。
- `/rad_large_pages` 預設關閉；README 警告一般 Windows 環境可能出現記憶體碎片，不宜為追求速度直接啟用。
- 連結時間最佳化尚屬 roadmap；不可將 MSVC 命令列相容理解為所有功能完全等價。

## 跟其他方案的關係

| 方案 | 證據或工作層次 | 與 RAD Debugger 的關係 |
|------|----------------|-----------------------|
| 原始碼索引／靜態分析 | 程式結構、符號與呼叫關係 | RAD Debugger 補充執行期狀態觀察，不能互相取代 |
| MSVC 工具鏈 | 編譯、連結與 PDB 產生 | 可使用其產物；RAD Linker 是專案內另一個連結器，不表示全功能替代 |
| Coding Agent CLI | 生成程式、規劃與工具協作 | 可在開發流程中另行使用除錯器驗證，但沒有確認官方 MCP／Agent 整合 |
| RDI 與 PDB | 除錯資訊表示 | PDB 可按需轉為 RDI；RDI 不是 LLM 記憶體或向量資料庫 |

## 相關概念

← [[code-intelligence]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub：EpicGames/raddebugger](https://github.com/EpicGames/raddebugger)
- [官方 README](https://github.com/EpicGames/raddebugger/blob/master/README.md)
- 原始快照：`raw/2026-10-08-EpicGames-raddebugger.md`
- Metadata 快照：`outputs/2026-10-08-raddebugger-metadata.json`
- GitHub topics 在本次 API 快照為空；本頁不偽造官方 LLM／Agent 分類標籤。

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/EpicGames/raddebugger |
| Stars | 7,861（2026-10-08 快照） |
| License | MIT |
| Language | C |
| 收錄日期 | 2026-10-08 |
