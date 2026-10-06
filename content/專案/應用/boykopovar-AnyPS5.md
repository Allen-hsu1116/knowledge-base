---
title: AnyPS5
slug: boykopovar-AnyPS5
created: 2026-10-06
updated: 2026-10-06
stars: 4964
language: zh-TW
topics: ["free-software", "self-education"]
---

# AnyPS5

> ⭐5.0k · 透過 relinker 與系統函式庫實作，把 PS5 執行檔移植為 Linux／Windows 原生格式的研究工具。

## 快速導航

- [[free-software]] — GPL-2.0-only 的相容性研究程式。
- [[self-education]] — 以實作學習連結器、執行檔格式及 shader 轉譯。

## 是什麼

AnyPS5 將執行檔轉成目標系統的原生格式，並提供可動態連結的系統 PRX 函式庫實作。官方明確說明它不是以模擬或獨立 runtime process 執行的方案；「自動移植」也不表示任何 PS5 遊戲都能運作。

其 relinker 處理執行檔與隨附模組，shader recompiler 產生 SPIR-V。輸出仍需搭配目標作業系統建置的系統函式庫與合法取得的應用資源，因此不能只把輸出副檔名改成 `.exe` 就期待 Windows 相容。

本次查閱的相容性表只列 Dreaming Sarah，Windows 標為可遊玩、Linux 欄為問號。README 的特定硬體 FPS 是上游展示數據，不是本知識庫實測，也不能外推所有遊戲；本專案不是 LLM 工具。

## 核心特色

### 1. 原生格式 relinking

- 預設輸出 Linux ELF；Windows PE 必須明確指定 `--windows`。

### 2. 系統函式庫重作

- 使用 `core/libs/prx` 中的實作動態連結，不附帶專有韌體或加密金鑰。

### 3. Shader 轉譯

- 將 shader 轉成 SPIR-V，可於建置時啟用 SPIRV-Tools 驗證與最佳化。

### 4. 明確失敗

- 不支援或非預期狀態會丟出 `std::runtime_error`，印出錯誤並終止，不保證降級執行。

### 5. 控制器及輸入映射

- 支援 SDL 映射控制器、類比搖桿與扳機，鍵鼠可透過 `anyps5-input.ini` 配置。

## 怎麼用

需要 x86-64、Git、CMake 3.22.1+、Ninja、C++20；Linux 需要 GCC、G++、binutils。Windows 文件目前只支援指定 WinLibs MinGW-w64 GCC 15.2.0 發行包，並非任意 MSVC 工具鏈。

```bash
git clone https://github.com/boykopovar/AnyPS5.git
cd AnyPS5
git submodule update --init --recursive
cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++
cmake --build build --parallel
cmake --build build --target libs --parallel
```

CMake 設定時會下載 FFmpeg binaries，除非事先設定 `FFMPEG_PREBUILT_DIR`。這些是上游建置指令，本次只查閱資料，未在本機建置或執行任何遊戲。

### 轉換及檔案配置

- 以合法取得的 clean ELF 為輸入，依 USAGE 文件配置 `sce_module/`、`sce_modules/` 或 `prx/`。
- Linux 範例是 `relinker source/input.elf app.elf`。
- Windows 範例是 `relinker --windows source/input.elf app.exe`。
- Intel 主機依文件加入 `--to-intel`，不支援的指令仍會失敗。
- 將目標平台編好的 `build/core/libs/libs/*.prx` 放入輸出旁的 `libs/`，應用資源另放 `app0/`。
- 官方未提供 `--help` 旗標；不可自行假設一般 CLI 旗標存在。

執行檔轉換不是安全沙箱。只使用有權取得與執行的 binaries，不提供或轉載專有遊戲資源。

## 跟其他方案的關係

下表是執行模式的概念性比較，並非上游量測的效能優劣。

| 路線 | 主要方法 | 限制 |
|---|---|---|
| AnyPS5 | relink 原生執行檔，加上系統 PRX 實作 | 相容性取決於已實作功能與 shader 支援 |
| 模擬器路線 | 重現目標平台行為 | 不等同本專案宣稱的執行方式 |
| 有原始碼的原生移植 | 修改程式並為新平台編譯 | 前提是取得程式碼與移植權限 |

## 相關概念

← [[free-software]] · [[self-education]]

## 來源

- [GitHub](https://github.com/boykopovar/AnyPS5)
- [官方 README](https://github.com/boykopovar/AnyPS5/blob/main/README.md)
- README 原始快照：`raw/2026-10-06-boykopovar-AnyPS5.md`
- GitHub metadata：`raw/2026-10-06-boykopovar-AnyPS5.metadata.json`
- [官方 docs/dev/BUILD.md](https://github.com/boykopovar/AnyPS5/blob/main/docs/dev/BUILD.md)
- [官方 docs/user/USAGE.md](https://github.com/boykopovar/AnyPS5/blob/main/docs/user/USAGE.md)
- [官方 docs/user/COMPATIBILITY.md](https://github.com/boykopovar/AnyPS5/blob/main/docs/user/COMPATIBILITY.md)

---

| 欄位 | 值 |
|---|---|
| GitHub | [boykopovar/AnyPS5](https://github.com/boykopovar/AnyPS5) |
| Stars | 4,964（2026-10-06 快照） |
| License | GPL-2.0-only |
| Language | C++（原始碼）；zh-TW（本頁） |
| 收錄日期 | 2026-10-06 |
