---
title: AERIS-10 / PLFM_RADAR
slug: NawfalMotii79-PLFM_RADAR
created: '2026-09-29'
updated: '2026-09-29'
stars: 25761
language: zh-TW
topics:
- data-analysis
- visualization
---

# AERIS-10 / PLFM_RADAR

> ⭐25.8k · 以 FPGA、STM32 與 Python GUI 組成的開放相控陣雷達研發專案，非 LLM 工具。

## 快速導航

- [[data-analysis]] — 延伸閱讀與關聯背景。
- [[visualization]] — 延伸閱讀與關聯背景。

## 是什麼

AERIS-10 是工作於 10.5 GHz 的脈衝線性調頻相控陣雷達專案。倉庫涵蓋電路與 PCB、韌體、模擬、零件資料及視覺化介面，面向研究與硬體實驗，而非一般使用者的一鍵軟體。

README 描述 FPGA 訊號處理、STM32 系統管理與 Python GUI 的分工，並宣稱兩個版本的距離規格為 3 km 與 20 km。這些屬上游規格聲明，本次沒有實機量測；頁面亦明確標記 Alpha 與開發中。

此專案由通用 GitHub Trending 來源命中，沒有直接 LLM 能力證據。收錄於應用類作為訊號資料處理與視覺化案例，不將雷達追蹤誤寫為 AI 推論；README 的延伸版本名稱 E／X 亦不完全一致。

## 核心特色

- **模組化硬體**：將電源管理、頻率合成、主板與天線陣列分開描述。

- **FPGA 處理鏈**：README 列出 I/Q 降頻、濾波、脈衝壓縮、Doppler FFT、MTI 與 CFAR。

- **系統管理**：STM32 負責電源時序、周邊設定及 GPS／IMU 整合。

- **可視化介面**：Python GUI 提供目標繪圖、地圖與雷達控制；README 註記 V6 已棄用。

- **文件與製造資料**：提供生產檔案、BOM／CPL、機構圖及上線文件入口。

## 怎麼用

### 取得資料與準備環境

```bash
git clone https://github.com/NawfalMotii79/PLFM_RADAR.git
cd PLFM_RADAR
# 僅取得文件；硬體與韌體需另依官方 bring-up 流程
less README.md
```

### 使用順序與限制

1. 這是原始資料取得指令，不是可用雷達的一鍵安裝。README 沒有完整的通用軟體安裝指令，因此不臆造 pip 套件名稱。
2. 先讀官方 docs 的 architecture、bring-up 與 reports，再評估設備及工程能力。
3. README 提及 Python 3.8+、PCB 組裝經驗及修改 FPGA 所需的 Vivado；各 GUI 實際需求仍應依其版本文件。
4. 射頻硬體操作前須核實所在地頻譜法規及安全條件；本次僅整理公開文件，未製作、發射或驗證硬體。

## 跟其他方案的關係

以下為依專案定位整理的用途比較，不是效能實測。

| 方案 | 重點 | 適用情境 |
|---|---|---|
| 本專案 | 實體雷達硬體與數位訊號處理 | 需要硬體研發與量測環境 |
| 純訊號模擬 | 離線研究演算法 | 不直接證明真實射頻效能 |
| LLM 應用框架 | 語言理解與工具編排 | 不是雷達訊號處理的替代方案 |

## 相關概念

← [[data-analysis]] · [[visualization]]

## 來源

- GitHub：https://github.com/NawfalMotii79/PLFM_RADAR
- 官方補充文件：https://github.com/NawfalMotii79/PLFM_RADAR/blob/main/Licence
- 原始 README 快照：`raw/2026-09-29-NawfalMotii79-PLFM_RADAR.md`
- GitHub metadata：`raw/2026-09-29-NawfalMotii79-PLFM_RADAR.metadata.json`
- 本頁為繁體中文整理；上游規格、授權與操作限制以官方文件為準。

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/NawfalMotii79/PLFM_RADAR |
| Stars | 25,761（2026-09-29 查詢） |
| License | 硬體依 Licence 標示 CERN-OHL-P；軟體依 README 標示 MIT |
| Language | PLSQL（GitHub 偵測） |
| 收錄日期 | 2026-09-29 |
