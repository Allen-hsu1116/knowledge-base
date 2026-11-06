---
title: "LZ4"
slug: "lz4-lz4"
created: "2026-11-06"
updated: "2026-11-06"
stars: 12384
language: "zh-TW"
topics: ["Token-Optimization", "self-hosted"]
---

# LZ4

> ⭐12.4k · 以壓縮與解壓速度為重點的無損位元組壓縮函式庫與 CLI；不是 LLM token 壓縮。

## 快速導航

- [[Token-Optimization]]
- [[self-hosted]]

## 是什麼

LZ4 是一般用途的無損壓縮演算法，這個 repository 提供 C 參考函式庫與命令列工具。它主要處理檔案、資料區塊與串流的位元組表示，不會理解文件語意，也不是模型量化工具。

本次由 GitHub Trending 收錄作為效能基礎工具。若用於 AI 資料管線，可評估儲存與傳輸成本，但解壓後送給模型的文字並不因此減少 token；不能把 LZ4 壓縮比當成 LLM 費用節省率。

## 核心特色

- **無損壓縮**：還原原始位元組，適合需要完整保存內容的資料處理。

- **速度與比例取捨**：acceleration 可換取更高速度；LZ4_HC 以更多壓縮時間改善比例。

- **字典支援**：API 與 CLI 的 -D 可使用字典，僅使用輸入字典最後 64 KB。

- **Block／Frame 分層**：block 描述基本壓縮；長檔與串流以 frame 組織，互通須遵守 frame 格式。

- **多建置方式**：提供 Makefile，另有 CMake、Meson、Visual Studio 支援。

- **授權分層**：函式庫 BSD-2-Clause，CLI GPL-2.0-or-later，不能用單一 Other 掩蓋差異。

## 怎麼用

### 安裝／準備

```bash
git clone https://github.com/lz4/lz4.git
cd lz4
make
# 安裝至系統位置前先確認路徑與權限
make install
```

### 使用入口

```bash
lz4 --help
```

### 前提與限制

- 需 C 編譯環境與 make；系統安裝可能需要額外權限。
- 官方 benchmark 有指定 CPU、編譯器與測試語料，不能推廣成任何機器的保證速度。
- 本次未編譯或實測效能；選型應用自己的資料量測壓縮比、CPU 與端到端延遲。

## 跟其他方案的關係

以下是依用途整理的選型比較，不代表本次執行了跨專案 benchmark。

| 方案 | 定位 | 選型界線 |
|---|---|---|
| LZ4 | 無損位元組壓縮 | 偏重壓縮與解壓吞吐 |
| Zstandard | 通用壓縮與字典工具 | 官方 README 列為比較對象，也可協助產生字典 |
| [[rtk]] | 減少送入模型的工具輸出 | 工作層不同，不能用位元組壓縮比替代 token 評估 |

## 相關概念

← [[Token-Optimization]] · [[self-hosted]]

## 來源

- [GitHub](https://github.com/lz4/lz4)
- [官方 README](https://github.com/lz4/lz4/blob/dev/README.md)
- README 快照：`raw/2026-11-06-lz4-lz4.md`
- Metadata 快照：`raw/2026-11-06-lz4-lz4.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/lz4/lz4 |
| Stars | 12,384（2026-11-06 快照） |
| License | BSD-2-Clause（library）；GPL-2.0-or-later（CLI） |
| Language | C |
| 收錄日期 | 2026-11-06 |
