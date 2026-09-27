---
title: "Visual Studio Code / Code - OSS"
slug: "microsoft-vscode"
created: "2026-09-27"
updated: "2026-09-27"
stars: 193074
language: "TypeScript"
topics: ["editor", "electron", "microsoft", "typescript", "visual-studio-code"]
---

# Visual Studio Code / Code - OSS

> ⭐193.1k · 可擴充的程式編輯器底座；Code - OSS 原始碼與 Microsoft 發行版授權不同。

## 快速導航

- [[Coding-Agent-CLI]] — 對應的背景概念與延伸閱讀。
- [[AI-Agent]] — 對應的背景概念與延伸閱讀。

## 是什麼

microsoft/vscode 是 Code - OSS 的開發 repo，Microsoft 在此與社群維護編輯器原始碼、議題、roadmap 與迭代計畫。Visual Studio Code 產品則是在這個底座上加入 Microsoft 客製內容的發行版。

它提供編輯、程式碼導覽、除錯與擴充介面，可作為 AI 開發工具的工作環境。本頁收錄的是編輯器底座，不把第三方 Agent 擴充功能誤算成 repo 本身的通用保證，也不把 Code - OSS 的 MIT 授權套用到所有 Microsoft 產品元件。

## 核心特色

### 1. 完整開發循環

整合 edit-build-debug 所需的程式編輯、導覽與輕量除錯。

### 2. 擴充模型

以可擴充架構串接開發工具，語言支援與其他能力可分開維護。

### 3. 內建語言擴充

README 區分語法／snippet 與 language-features 等較完整語言功能。

### 4. 跨平台發行

官方提供 Windows、macOS、Linux 版本與日更 Insiders 管道。

### 5. 容器開發入口

repo 提供 Dev Containers／Codespaces，降低參與原始碼開發的環境準備成本。

## 怎麼用

一般使用者從官方下載頁安裝適用平台套件；以下指令是取得 Code - OSS 原始碼，不會安裝 Microsoft 二進位發行版。

```bash
git clone https://github.com/microsoft/vscode.git
cd vscode
# 原始碼建置請依官方 How-to-Contribute 指南
# 已安裝 VS Code 並啟用 code 命令時，可執行：
code .
```

### 使用前檢查

- 可從命令面板選擇 Dev Containers: Clone Repository in Container Volume... 建立開發環境。
- 原始碼容器建置要求至少 4 核心與 6 GB RAM；README 建議 8 GB。
- 外掛、遠端服務與 AI 提供者須分別審閱授權、權限及資料傳送設定。

## 跟其他方案的關係

以下比較為依功能定位的編輯整理，不是實測效能排名。

| 方案 | 定位 | 適用情況 |
|---|---|---|
| Code - OSS | MIT 原始碼底座 | 自行建置或研究編輯器實作 |
| Visual Studio Code 發行版 | Microsoft 客製產品 | 直接安裝使用，遵循產品授權 |
| Coding Agent CLI | 終端機任務代理 | 可與 IDE 互補，不能視為同一產品 |

安裝編輯器不等於已安裝所有 AI 能力；Agent 的模型、工具權限與費用需另外確認。

## 相關概念

← [[Coding-Agent-CLI]] · [[AI-Agent]]

## 來源

- GitHub：https://github.com/microsoft/vscode
- README：https://github.com/microsoft/vscode/blob/main/README.md
- 原始快照：`raw/2026-09-27-microsoft-vscode.md`
- https://code.visualstudio.com/Download
- https://code.visualstudio.com/License/
- https://github.com/microsoft/vscode/wiki/How-to-Contribute

---

| 項目 | 值 |
|---|---|
| GitHub | https://github.com/microsoft/vscode |
| Stars | 193,074（2026-09-27 快照） |
| License | MIT |
| Language | TypeScript（GitHub 主要語言） |
| 收錄日期 | 2026-09-27 |
