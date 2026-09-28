---
title: Madeira
slug: willfaust-Madeira
created: 2026-09-28
updated: 2026-09-28
stars: 814
language: zh-TW
topics: ["free-software", "Coding-Agent-CLI"]
---

# Madeira

> ⭐0.8k · 在未越獄 iPhone 上結合 Wine、FEX 與 DXMT 執行 Windows 遊戲的研究專案。

## 快速導航

- [[free-software]] — 相關概念與實作案例
- [[Coding-Agent-CLI]] — 工程與工具脈絡

## 是什麼

Madeira 嘗試在未越獄的 iPhone 上執行 x86-64 Windows PC 遊戲：Wine ARM64EC 提供 Windows 相容層，FEX-Emu 處理 x86-64 到 ARM64 轉譯，DXMT 將 D3D11 轉為 Metal。整體在單一 Mach process 中運作，wineserver 以執行緒而非獨立行程執行。

README 明確稱它是研究專案而非產品。作者回報 Thumper 與 ULTRAKILL 可玩，另有遊戲僅進入遊戲畫面或低幀率運作；這些是上游自述而非本知識庫實測。它並非 LLM 工具，但其 AI 輔助程式碼與上游貢獻政策具有工程參考價值。

## 核心特色

### 跨指令集轉譯

結合 FEX 的 x86-64 → ARM64 轉譯與 Wine ARM64EC。

### 圖形相容層

透過 DXMT 把 D3D11 對應到 Metal，不能推論支援所有 DirectX 遊戲。

### iOS 單行程設計

wineserver 改為執行緒，以適應此實驗的 iOS 執行環境。

### 專用 fork 組合

Wine、FEX 與 DXMT 使用包含 iOS 修改的 submodules，不可直接替換成上游。

## 怎麼用

需未越獄 iPhone、可附加 debugger 的 JIT 流程、Apple ID 與 Xcode 建置環境；README 的開發機為 A15 iPhone 13 Pro。

```bash
git clone --recurse-submodules https://github.com/willfaust/Madeira.git
cd Madeira
```

這是原始碼取得步驟，不是完成安裝。原生元件由 build/*/build.sh 分別建置，iOS app 以 xcodebuild 建置；應先閱讀各建置鏈文件，不能任選腳本就視為完整流程。

### 使用邊界與注意事項

- JIT 需要 debugger attach，README 使用 StikDebug；需側載，不能透過 App Store 發布此 app。
- 免費 Apple 帳號的 provisioning profile 七天到期，需重新建置安裝；保存資料仍應自行備份。
- FEX 上游禁止 AI 生成程式碼貢獻；不要將此 fork 的 AI 產生修改直接送回上游。

## 跟其他方案的關係

以下為依 README 定位整理的分工比較，不是效能實測。

| 方案 | 定位 | 與本專案的差異 |
| --- | --- | --- |
| Wine | Windows 相容層 | Madeira 使用專用 ARM64EC fork，額外整合 iOS 執行方式。 |
| FEX-Emu | 指令集轉譯 | Madeira 結合 Wine 與圖形層，不是單靠 FEX 就能執行遊戲。 |
| 成熟遊戲平台 | 面向日常使用 | Madeira 仍是研究專案，有逐遊戲相容性與側載限制。 |

## 相關概念

← [[free-software]] · [[Coding-Agent-CLI]]

## 來源

- GitHub：[willfaust/Madeira](https://github.com/willfaust/Madeira)
- README：https://github.com/willfaust/Madeira/blob/main/README.md
- 原始快照：`raw/2026-09-28-willfaust-Madeira.md`
- Metadata：`raw/2026-09-28-willfaust-Madeira.metadata.json`

---

| 欄位 | 值 |
| --- | --- |
| GitHub | [willfaust/Madeira](https://github.com/willfaust/Madeira) |
| Stars | 814（2026-09-28 快照） |
| License | GPL-3.0-or-later |
| Language | C（GitHub 倉庫統計） |
| 收錄日期 | 2026-09-28 |
