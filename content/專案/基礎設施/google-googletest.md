---
title: GoogleTest
slug: google-googletest
created: 2026-08-28
updated: 2026-08-28
stars: 39046
language: C++
topics: [C++, unit testing, xUnit, mocking, test automation, CMake]
---

# GoogleTest

> ⭐39.0k · Google 維護的 C++ 單元測試與 Mock 框架，提供自動測試探索、豐富斷言、參數化測試與 death test

## 快速導航

- 🔄 **自動化驗證流程** → [[workflow-automation]]
- 🤖 **Coding Agent 的完成驗證** → [[Coding-Agent-CLI]]
- 🧱 **相同基礎設施脈絡** → [[protocolbuffers-protobuf]]

## 是什麼

GoogleTest 是 Google 維護的 C++ 測試框架，將原本分開的 Googletest 與 GoogleMock 合併在同一個 repository 中。它採用 xUnit 架構，讓測試案例能被自動探索、執行與回報，不必自行建立註冊機制。

框架涵蓋一般斷言、自訂斷言、fatal 與 non-fatal failure、例外檢查、death test，以及依值或型別參數化的測試。這些能力讓低階函式、錯誤路徑、模板與跨型別行為都能以一致語法驗證。

它常被 Chromium、LLVM、Protocol Buffers 與 OpenCV 等大型 C++ 專案採用。對 Coding Agent 工作流而言，GoogleTest 可作為「修改後必須跑過」的客觀驗證門，而不是讓 Agent 只根據程式碼外觀宣稱完成。

## 核心特色

- **xUnit 測試模型**：使用成熟的 fixture、suite 與 assertion 結構組織 C++ 測試
- **自動測試探索**：測試會自動註冊與執行，不需要維護另一份案例清單
- **豐富斷言**：涵蓋相等、不等、例外、浮點數、字串與使用者自訂條件
- **GoogleMock 整合**：可建立 mock object、期待呼叫次數、參數與回傳行為
- **Death tests**：驗證程式是否以預期方式終止，適合錯誤處理與 assertion 路徑
- **參數化測試**：同一組邏輯可套用不同輸入值或不同 C++ 型別
- **大型專案實證**：被 Chromium、LLVM、Protobuf、OpenCV 等專案使用

## 怎麼用

以 CMake 的 FetchContent 取得固定版本，並連結 `GTest::gtest_main`：

```cmake
include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/refs/tags/v1.18.0.zip
)
FetchContent_MakeAvailable(googletest)

enable_testing()
add_executable(example_test example_test.cc)
target_link_libraries(example_test GTest::gtest_main)
include(GoogleTest)
gtest_discover_tests(example_test)
```

```bash
cmake -S . -B build
cmake --build build
ctest --test-dir build --output-on-failure
```

GoogleTest 1.18.x 至少需要 C++17；實際支援的編譯器與平台應以官方 Foundational C++ support matrix 為準。

## 跟其他方案的關係

GoogleTest 是 C++ 生態最常見的全功能測試方案之一；Catch2 偏向單一 header 起家與簡潔語法，doctest 強調極低編譯成本，Boost.Test 則適合已深度採用 Boost 的專案。若 CI 使用 GitHub Actions，通常會先由 [[actions-checkout]] 取得程式碼，再編譯並執行 GoogleTest。

| 方案 | 定位 | 優勢 | 適合情境 |
|------|------|------|----------|
| GoogleTest | C++ xUnit + Mock | 生態成熟、GoogleMock、參數化與 death test | 中大型 C++ 專案 |
| Catch2 | 現代 C++ 測試框架 | 語法易讀、上手快速 | 應用與函式庫測試 |
| doctest | 輕量 C++ 測試框架 | 編譯負擔低、可嵌入 | 編譯時間敏感專案 |
| Boost.Test | Boost 測試元件 | 與 Boost 生態整合 | 既有 Boost codebase |

## 相關概念

← [[workflow-automation]] · [[Coding-Agent-CLI]] · [[protocolbuffers-protobuf]] · [[actions-checkout]]

## 來源

- GitHub: <https://github.com/google/googletest>
- 官方文件: <https://google.github.io/googletest/>
- 原始 README 與 metadata: `raw/2026-08-28-google-googletest.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/google/googletest |
| Stars | ⭐39,046 |
| License | BSD-3-Clause |
| Language | C++ |
| 收錄日期 | 2026-08-28 |
