---
title: scriptc
slug: vercel-labs-scriptc
created: 2026-09-28
updated: 2026-09-28
stars: 5402
language: zh-TW
topics: ["Coding-Agent-CLI", "free-software"]
---

# scriptc

> ⭐5.4k · 將 TypeScript／JavaScript 編譯為原生與 WebAssembly 產物的實驗性編譯器。

## 快速導航

- [[Coding-Agent-CLI]] — 工程與工具脈絡
- [[free-software]] — 相關概念與實作案例

## 是什麼

scriptc 是 Vercel Labs 的 TypeScript-to-native 實驗專案，使用 TypeScript compiler 進行解析與型別檢查，可輸出 typed IR、C、LLVM IR、組合語言、物件檔、執行檔及 WebAssembly。它是開發基礎設施，不是 LLM 模型或 Coding Agent。

靜態建置帶有小型原生 runtime，不內嵌 Node 或 JavaScript 引擎；不支援靜態編譯的程式會產生診斷。需要 npm 套件或動態程式碼時，可明確啟用 --dynamic，改為內嵌 quickjs-ng；這與純靜態模式必須分開理解。

## 核心特色

### 多階段產物

支援 IR、C、LLVM、asm、obj 與原生執行檔，便於檢查編譯流程。

### 静態涵蓋診斷

scriptc coverage 列出動態或未支援的位置，先判斷程式是否適合。

### 選擇性動態模式

--dynamic 可將 npm JavaScript 嵌入執行檔，不需在執行期讀 node_modules。

### WASI 輸出

支援 WASI Preview 1，但網路、子行程等能力受目標限制。

## 怎麼用

編譯器要求 Node.js 24+；原生執行檔仍需對應 linker driver 與 SDK／sysroot。

```bash
npm install -g scriptc
# 先建立 hello.ts，再檢查與建置
scriptc coverage hello.ts
scriptc build hello.ts -o hello
./hello
```

hello.ts 可使用 console.log("hello"); 作為最小輸入。若只想檢視編譯器產物，可使用 scriptc build hello.ts --emit=ir。

### 使用邊界與注意事項

- Node API 只支援文件列出的子集；不能把任意 Node 應用視為可直接編譯。
- 跨目標與 WASI 建置需 Zig；README 指出 WASI Preview 1 不支援的能力會在連結前報錯。
- 本頁沒有執行效能測試，也不宣稱比 Node 或其他編譯器更快。

## 跟其他方案的關係

以下為依 README 定位整理的分工比較，不是效能實測。

| 方案 | 定位 | 與本專案的差異 |
| --- | --- | --- |
| Node.js | JavaScript 執行環境 | scriptc 靜態產物不需 Node，但編譯時需要 Node 24+。 |
| LLVM／C 工具鏈 | 底層編譯與連結 | scriptc 提供 TypeScript 前端與 runtime，不是所有平台工具鏈的替代品。 |
| Coding Agent | 編寫與驗證程式 | Agent 可以操作編譯器；scriptc 本身不提供模型代理迴圈。 |

## 相關概念

← [[Coding-Agent-CLI]] · [[free-software]]

## 來源

- GitHub：[vercel-labs/scriptc](https://github.com/vercel-labs/scriptc)
- README：https://github.com/vercel-labs/scriptc/blob/main/README.md
- 原始快照：`raw/2026-09-28-vercel-labs-scriptc.md`
- Metadata：`raw/2026-09-28-vercel-labs-scriptc.metadata.json`

---

| 欄位 | 值 |
| --- | --- |
| GitHub | [vercel-labs/scriptc](https://github.com/vercel-labs/scriptc) |
| Stars | 5,402（2026-09-28 快照） |
| License | Apache-2.0 |
| Language | TypeScript（GitHub 倉庫統計） |
| 收錄日期 | 2026-09-28 |
