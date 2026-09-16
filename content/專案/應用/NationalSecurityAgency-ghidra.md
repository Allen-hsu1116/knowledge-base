---
title: "Ghidra"
slug: NationalSecurityAgency-ghidra
created: 2026-09-16
updated: 2026-09-16
stars: 76710
language: zh-TW
topics: ["pentesting", "free-software"]
---

# Ghidra

> ⭐76.7k · NSA 開源逆向工程框架；非 LLM 專案，提供二進位分析與腳本擴充

## 快速導航

- [[pentesting]] — 相關背景與其他實作。
- [[free-software]] — 相關背景與其他實作。

## 是什麼

Ghidra 是 NSA Research Directorate 維護的軟體逆向工程框架，針對編譯後的程式提供反組譯、反編譯、圖形分析與腳本操作。它支援 Windows、macOS、Linux，以及多種處理器指令集和可執行檔格式。

它的定位是讓分析人員理解二進位程式、研究惡意程式與潛在弱點，不是聊天模型或自主 AI Agent。本次由一般 GitHub Trending 候選收錄，歸入安全分析應用；若要接上 LLM，仍需額外整合，不能把第三方整合能力視為本體內建。

## 核心特色

### 多種分析能力

反組譯、組譯、反編譯、圖形化與 scripting 集中在同一平台。

### 多平台與多指令集

官方提供跨 Windows、macOS、Linux 的預編譯發行包。

### 互動與自動化

支援互動分析以及自動化執行，適合重複分析流程。

### 可擴充工具鏈

可用 Java 或 Python 撰寫腳本和擴充，並提供 Eclipse／VS Code 開發支援。

## 怎麼用

官方 README 此次快照要求 JDK 25（64-bit）。一般使用者應下載 Releases 的正式 ZIP，而不是 Source Code 壓縮檔；不要解壓覆蓋舊安裝。

```bash
unzip ghidra_<version>_<release>_<date>.zip
cd ghidra_<version>_<release>
./ghidraRun
```

1. 將上方占位符替換成實際發行檔名與解壓後目錄；Windows 改用 ghidraRun.bat。
2. 先在隔離環境以可信測試二進位熟悉匯入、分析與反編譯，不要直接執行未知樣本。
3. Python 整合另可從 ./support/pyghidraRun 啟動。

### 限制與注意事項

官方明示部分版本存在已知漏洞；使用前查看 Security Advisories。逆向分析能力不代表樣本可安全執行，也不等於自動完成滲透測試。

## 跟其他方案的關係

| 方案 | 定位 | 關係與選擇 |
|---|---|---|
| Ghidra | 二進位與可執行檔分析 | 本頁主角；重點是程式行為還原。 |
| 一般原始碼編輯器 | 編輯可讀原始碼 | 互補，不等同反編譯器。 |
| LLM Coding Agent | 依指令讀寫程式及呼叫工具 | 可作上層協作，但本次來源未宣稱內建模型。 |

比較為功能定位整理，並非效能、安全性或分析準確度排名。

## 相關概念

← [[pentesting]] · [[free-software]]

## 來源

- [GitHub](https://github.com/NationalSecurityAgency/ghidra)
- [官方 README](https://github.com/NationalSecurityAgency/ghidra/blob/master/README.md)
- [補充官方文件](https://github.com/NationalSecurityAgency/ghidra/security/advisories)
- README 快照：`raw/2026-09-16-NationalSecurityAgency-ghidra.md`
- Metadata 快照：`raw/2026-09-16-NationalSecurityAgency-ghidra.metadata.json`

本頁根據收錄當日官方文件整理；安裝指令為使用說明，非本次實機安裝驗證。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/NationalSecurityAgency/ghidra |
| Stars | 76,710（2026-09-16 快照） |
| License | Apache-2.0 |
| Language | Java（頁面語言：繁體中文） |
| 收錄日期 | 2026-09-16 |
