---
title: fmt
slug: fmtlib-fmt
created: 2026-09-03
updated: 2026-09-03
stars: 24260
language: C++
topics: [cpp, formatting, performance, unicode, cross-platform]
---

# fmt

> ⭐24.3k · 現代 C++ 格式化函式庫，以型別安全、編譯期檢查與高效能取代 printf 與 iostream。

## 快速導航

- 💻 **開發工具** → [[Coding-Agent-CLI]]（Agent 修改 C++ 專案時常見的基礎依賴）
- 🧠 **程式碼理解** → [[code-intelligence]]（型別安全 API 與靜態檢查有利於自動化分析）
- ⚡ **效率工具** → [[productivity]]（簡潔且一致的格式化 API 降低維護成本）

## 是什麼

fmt 是一套開源 C++ 格式化函式庫，提供比 C stdio 與 C++ iostream 更安全、簡潔的文字格式化介面。它的格式字串語法接近 Python，並實作了 C++20 `std::format` 與 C++23 `std::print` 的核心能力。

專案把效能、可攜性與可靠性放在同一層考量：浮點格式化使用 Dragonbox，支援 Unicode、日期時間、容器、自訂型別與彩色輸出，也能在 C++20 中於編譯期發現格式字串型別錯誤。

fmt 不是 LLM 或 Agent 框架，但它是 PyTorch、MongoDB、Windows Terminal、spdlog 等大型系統使用的底層函式庫。對 Coding Agent 而言，清楚的型別契約與可自動測試的格式化行為能降低修改 C++ 程式碼時的風險。

## 核心特色

- **型別安全格式化**：格式參數與格式規格不相容時，可在 C++20 編譯期直接報錯。
- **現代標準基礎**：提供 C++20 `std::format` 與 C++23 `std::print` 的成熟實作來源。
- **高效能**：README 基準測試中 `fmt::print` 優於受測的 printf、iostream 與 Boost Format。
- **浮點正確性**：Dragonbox 演算法兼顧正確捨入、最短表示與 round-trip 保證。
- **廣泛資料型別**：支援 chrono、ranges、容器、自訂型別、顏色與文字樣式。
- **可攜且低依賴**：跨平台、無外部依賴，並可用 `FMT_HEADER_ONLY` 切換 header-only 模式。
- **安全與可靠性**：自動記憶體管理避免 buffer overflow，測試完整且持續接受 OSS-Fuzz。

## 怎麼用

可用系統套件管理器或 CMake FetchContent 安裝；以下示範從原始碼建置：

```bash
git clone https://github.com/fmtlib/fmt.git
cd fmt
cmake -B build -DFMT_TEST=OFF
cmake --build build
cmake --install build
```

最小使用方式：

```cpp
#include <fmt/base.h>

int main() {
  fmt::print("Hello, {}!\n", "world");
  auto answer = fmt::format("The answer is {}.", 42);
}
```

若希望不另外連結函式庫，可在專案設定 `FMT_HEADER_ONLY`，但仍應評估大型專案的編譯時間與二進位大小。

## 跟其他方案的關係

| 方案 | API 風格 | 型別安全 | 標準需求 | 主要取向 |
|------|----------|----------|----------|----------|
| fmt | Python-like `{}` | 是，支援編譯期檢查 | 支援較舊編譯器 | 成熟、可攜、功能完整 |
| `std::format` / `std::print` | `{}` | 是 | C++20 / C++23 | 標準函式庫原生方案 |
| `printf` | `%` 格式字串 | 弱 | C / C++ | 小型、傳統、ABI 普及 |
| iostream | `operator<<` | 是 | C++ | 串流組合，但語法較冗長 |
| Boost Format | `%` 佔位 | 是 | Boost | 舊有 Boost 生態整合 |

fmt 與標準庫不是單純競爭關係：它既是標準格式化設計的重要來源，也持續為尚未完整支援新標準的編譯器提供一致介面。新專案可優先評估標準庫；需要跨版本、擴充功能或一致輸出時，fmt 仍有明確價值。

## 相關概念

← [[Coding-Agent-CLI]] · [[code-intelligence]] · [[productivity]]

## 來源

- [GitHub：fmtlib/fmt](https://github.com/fmtlib/fmt)
- [官方文件](https://fmt.dev)
- [Raw README + metadata](../raw/2026-09-03-fmtlib-fmt.md)

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/fmtlib/fmt |
| Stars | ⭐24,260 |
| License | MIT |
| Language | C++ |
| 收錄日期 | 2026-09-03 |
