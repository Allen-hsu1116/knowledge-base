---
title: "LLVM Project"
slug: "llvm-llvm-project"
created: "2026-09-27"
updated: 2026-09-27
stars: 40750
language: "LLVM"
topics: ["llm-internals", "Coding-Agent-CLI"]
---

# LLVM Project

> ⭐40.8k · 模組化編譯器、最佳化與執行期工具鏈；屬底層建置基礎設施而非 LLM 應用。

## 快速導航

- [[llm-internals]] — 對應的背景概念與延伸閱讀。
- [[Coding-Agent-CLI]] — 對應的背景概念與延伸閱讀。

## 是什麼

LLVM Project 是編譯器與工具鏈的 monorepo。LLVM 核心提供中介表示的處理、最佳化及目標檔產生；Clang 則處理 C、C++、Objective-C 與 Objective-C++ 等語言前端。

同一 repo 還包含 LLD、libc++、LLDB、MLIR 等子目錄，不能把 LLVM 一詞只理解成單一編譯指令。對 AI 工程的價值主要在原生擴充、低階程式生成與工具鏈研究；本頁不宣稱它本身提供聊天模型、Agent loop 或現成推論服務。

## 核心特色

### 1. 可重用中介層

提供 IR／bitcode 相關組譯、反組譯、分析及最佳化工具。

### 2. Clang 前端

把 C 系語言轉入 LLVM 編譯流程，再產生目標檔。

### 3. 工具鏈組合

LLD linker、libc++ 等元件可配合專案需求選擇。

### 4. 模組化建置

CMake 的 LLVM_ENABLE_PROJECTS 控制要建置的子專案。

### 5. 回歸測試

官方文件提供 check-all／check-llvm 等測試目標，能驗證自建工具鏈。

## 怎麼用

先備妥相容編譯器、CMake、Ninja 與足夠 RAM／磁碟；以下依官方指南組合建置及使用者目錄安裝步驟。

```bash
git clone --depth 1 https://github.com/llvm/llvm-project.git
cd llvm-project
cmake -S llvm -B build -G Ninja \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_PROJECTS="clang;lld" \
  -DCMAKE_INSTALL_PREFIX="$HOME/.local/llvm"
cmake --build build
cmake --build build --target check-all
cmake --install build
```

### 使用前檢查

- 平行連結可能大量消耗記憶體；必要時設定 LLVM_PARALLEL_LINK_JOBS。
- 此處從 HEAD 示範，正式環境應選定 release／commit，保存建置參數。
- GitHub API 的授權偵測為 Other；本頁授權以根目錄 LICENSE.TXT 核對，第三方元件仍可能採其他條款。

## 跟其他方案的關係

以下比較為依功能定位的編輯整理，不是實測效能排名。

| 方案 | 定位 | 適用情況 |
|---|---|---|
| LLVM Project | 編譯器與工具鏈元件 | 需要原生程式編譯、IR 與最佳化 |
| 機器學習框架 | 模型與張量運算介面 | 位於不同抽象層，不能直接互換 |
| 程式編輯器／Agent | 編写程式與操作開發流程 | 可呼叫工具鏈，但不取代編譯器 |

GitHub 主要語言欄位顯示 LLVM 是統計標籤，不代表所有實作檔案都使用同一種語言。

## 相關概念

← [[llm-internals]] · [[Coding-Agent-CLI]]

## 來源

- raw/2026-09-27-llvm-llvm-project.metadata.json

- GitHub：https://github.com/llvm/llvm-project
- README：https://github.com/llvm/llvm-project/blob/main/README.md
- 原始快照：`raw/2026-09-27-llvm-llvm-project.md`
- https://llvm.org/docs/GettingStarted.html
- https://github.com/llvm/llvm-project/blob/main/LICENSE.TXT

---

| 項目 | 值 |
|---|---|
| GitHub | https://github.com/llvm/llvm-project |
| Stars | 40,750（2026-09-27 快照） |
| License | Apache-2.0 WITH LLVM-exception |
| Language | LLVM（GitHub 主要語言） |
| 收錄日期 | 2026-09-27 |
