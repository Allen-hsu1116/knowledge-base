---
title: "wifit3"
slug: "derv82-wifit3"
created: "2026-09-26"
updated: "2026-09-26"
stars: 922
language: "zh-TW"
topics: ["pentesting", "privacy"]
---

# wifit3

> ⭐0.9k · 以使用者空間 USB mini-drivers 實作跨平台 Wi-Fi 授權稽核。

## 快速導航

- [[pentesting]]
- [[privacy]]

## 是什麼

wifit3 是面向 Linux、macOS 與 Windows 的 USB Wi-Fi 稽核工具。它不是 LLM 專案，也不以 AI Agent 為執行核心；收錄價值在於安全工具與跨平台硬體存取架構。

專案以 Python mini-drivers 直接透過 USB 控制支援的無線晶片，繞過作業系統原生 Wi-Fi stack 的部分限制。至少需要一個列在支援清單的 USB adapter，不能把內建 Wi-Fi 或僅外觀相同的 USB 網卡當成必然相容。

## 核心特色

### 跨平台介面

以 PyUSB 和 Textual 等元件提供一致使用流程。

### 使用者空間驅動

移植精簡無線驅動邏輯，直接處理 USB bulk 與 control transfers。

### 多網卡觀測

支援多 adapter 擷取與 2.4／5 GHz 掃描；實際頻段依晶片而定。

### 設備識別與儀表板

顯示 AP、client、訊號、加密資訊與封包流量。

### 資料匯出

可輸出封包或稽核材料供後續分析；本文不展開攻擊操作。

## 怎麼用

以下是依官方文件整理的安裝／起步方式；本次收錄未安裝或執行此專案。

```bash
git clone https://github.com/derv82/wifit3.git
cd wifit3
uv sync
# 僅在自有或明確授權的實驗網路使用
uv run wifit3
```

1. 先用晶片型號核對官方 Supported Hardware 文件，而非只看網卡商品名稱。
2. 依 README 用 uv 安裝依賴並啟動介面；只選擇授權範圍內的設備。
3. 第一次硬體設定可能要求系統權限；在專用測試機上理解改動與官方 Uninstall 流程後再確認。

### 限制與注意事項

Linux 可能修改 udev 與 modprobe 規則，Windows 可能改綁 WinUSB。此處僅整理官方安裝與架構，未安裝、掃描或測試任何網路；不得將主動測試套用到未授權設備。

## 跟其他方案的關係

以下依用途與架構比較，並非效能實測或安全評比。

| 方案 | 定位 | 關係與差異 |
|---|---|---|
| wifit3 | USB Wi-Fi 稽核 | 硬體支援取決於專案 mini-driver 清單。 |
| 系統原生 Wi-Fi 工具 | 作業系統網路操作 | 使用 OS 驅動與權限模型，與直接 USB 控制路徑不同。 |
| AI 滲透測試 Agent | LLM 規劃與工具編排 | wifit3 本身不是 Agent，也不宣稱自主 AI 決策。 |

## 相關概念

← [[pentesting]] · [[privacy]]

## 來源

- [GitHub](https://github.com/derv82/wifit3)
- [官方 README](https://github.com/derv82/wifit3/blob/master/README.md)
- 原始快照：`raw/2026-09-26-derv82-wifit3.md`
- Metadata 快照：`raw/2026-09-26-derv82-wifit3.metadata.json`

---

| 欄位 | 資料 |
|---|---|
| GitHub | [derv82/wifit3](https://github.com/derv82/wifit3) |
| Stars | 922（2026-09-26 快照） |
| License | GPL-2.0（程式碼）；firmware 另依供應商授權 |
| Language | Python |
| 收錄日期 | 2026-09-26 |
