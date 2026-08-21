---
title: OpenLogi
slug: AprilNEA-OpenLogi
created: 2026-08-21
updated: 2026-08-21
stars: 11888
language: Rust
topics:
  - local-first
  - privacy
  - logitech
  - hidpp
  - mouse-remapping
---

# OpenLogi

> ⭐11.9k · 以 Rust 打造的本地優先 Logitech Options+ 替代品，支援滑鼠、鍵盤與攝影機設定且不需帳號或遙測。

## 快速導航

- 🔐 **隱私** → [[privacy]]
- 🏠 **自架與本地優先** → [[self-hosted]]
- 🛠️ **生產力工具** → [[productivity]]

## 是什麼

OpenLogi 是跨 macOS、Linux 與 Windows 的 Logitech 裝置管理工具，透過 HID++ 與 UVC 直接控制滑鼠、鍵盤、燈光和攝影機。它主打原生 Rust、GPUI、本地執行、無帳號與無遙測，定位為較輕量透明的 Options+ 替代方案。

除了 GUI，專案也提供 CLI 與單一 TOML 設定檔，方便把按鍵映射、DPI、SmartShift、手勢與 per-app profile 納入版本控制或跨機同步。Linux 被視為第一級平台，而不是只支援 macOS 與 Windows。

目前專案仍在活躍開發，功能與設定可能變動；使用前要確認裝置支援程度，並關閉 Logi Options+，避免兩個程式競爭同一個 HID++ receiver。

## 核心特色

- **本地優先**：不需 Logitech 帳號、不收集遙測，裝置設定在本機完成。
- **跨平台**：支援 macOS 13+、Linux 與 Windows 11，涵蓋 x86_64 與 arm64 發行包。
- **滑鼠控制**：按鍵重映射、任意按鍵手勢、DPI presets、SmartShift 與滾動反轉。
- **鍵盤與工作流**：F-key 映射、文字輸入、組合鍵與多步驟動作。
- **攝影機控制**：直接調整 UVC webcam 的縮放、曝光、白平衡、對焦和色彩。
- **可攜設定**：以 TOML 保存設定，另有 CLI 適合腳本與自動化。

## 怎麼用

macOS 最簡單的安裝方式是官方 Homebrew cask：

```bash
brew install --cask openlogi
```

Linux 可下載對應套件並啟動 user service：

```bash
sudo dpkg -i openlogi_*.deb
systemctl --user enable --now openlogi-agent.service
```

安裝前先完全退出 Logi Options+。第一次使用時依作業系統授予輸入監控、輔助使用或 hidraw/uinput 權限，再從 GUI 掃描裝置並建立 profile。

## 跟其他方案的關係

| 方案 | 平台 | 資料策略 | 特色 |
|------|------|----------|------|
| OpenLogi | macOS / Linux / Windows | 本地、無帳號、無遙測 | HID++、UVC、GUI、CLI、TOML |
| Logitech Options+ | macOS / Windows | 官方雲端產品 | 官方裝置相容與支援 |
| Solaar | Linux | 本地 | 成熟的開源 HID++ 實作 |
| Mouser | 依專案支援 | 本地 | 精簡的 Options+ 替代方向 |

OpenLogi 使用與承認 Solaar 等開源 HID++ 生態的成果，但加入跨平台 GUI、攝影機 UVC、Actions Ring 和統一設定。它不是 Logitech 官方產品，品牌資產也不在程式碼的 MIT/Apache 雙授權範圍內。

## 相關概念

← [[privacy]] · [[self-hosted]] · [[productivity]]

## 來源

- [GitHub：AprilNEA/OpenLogi](https://github.com/AprilNEA/OpenLogi)
- 原始 README 與 metadata：`raw/2026-08-21-AprilNEA-OpenLogi.md`
- [OpenLogi 官方網站](https://openlogi.org)

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/AprilNEA/OpenLogi |
| Stars | ⭐11,888 |
| License | MIT OR Apache-2.0（品牌資產除外） |
| Language | Rust |
| 收錄日期 | 2026-08-21 |
