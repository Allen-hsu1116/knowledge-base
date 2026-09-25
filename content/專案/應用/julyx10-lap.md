---
title: "Lap"
slug: julyx10-lap
created: 2026-09-25
updated: 2026-09-25
stars: 2874
language: zh-TW
topics: ["computer-vision", "privacy"]
---

# Lap

> ⭐2.9k · 離線優先的相片管理器，結合本地 AI 搜尋、人臉分群與資料夾工作流。

## 快速導航

- [[computer-vision]] — 技術與使用情境。
- [[privacy]] — 延伸閱讀與實務取捨。

## 是什麼

Lap 是 macOS、Windows 與 Linux 的桌面相片管理工具，直接處理既有資料夾中的相片與影片。它的目標是瀏覽、搜尋及整理大型個人媒體庫，不要求把原始照片上傳到雲端。

技術架構為 Tauri／Rust 核心、Vue／Vite 前端與 SQLite 資料庫，並以 ONNX Runtime 執行本地 AI。README 列出 CLIP 圖文相似度與 InsightFace 人臉功能，因此應歸為電腦視覺應用，而不是聊天 LLM 或 Agent 框架。

「不鎖住原檔」不代表所有整理資訊都能隨檔案搬移。Collections、標籤、評分、評論、人臉及索引等資料存在 Lap 的本地資料庫或設定，並不自動寫入 EXIF／IPTC／XMP。

## 核心特色

- **本地 AI 搜尋**
  以文字、視覺相似度、主體與人臉分群找照片，另有可選多語搜尋。

- **資料夾優先**
  支援多個媒體庫、檔案系統同步及搬移／複製操作。

- **地圖與智慧相簿**
  可依 GPS 瀏覽照片，或保存規則式篩選、群組及排序。

- **照片組合處理**
  支援 Live Photos、Motion Photos，以及 RAW＋JPEG／HEIC 配對呈現。

- **挑片與整理**
  含四格比較、重複檔案整理及基本裁切／旋轉等編輯工具。

## 怎麼用

### 安裝與準備

```bash
brew tap julyx10/lap
brew install --cask lap
```

1. macOS 可用上方官方 Homebrew 指令；其他平台由 releases 下載對應架構套件。
2. 先選少量測試照片建立媒體庫，確認索引、格式解碼及本地搜尋的品質。
3. 依賴 Lap 標籤或 Collections 時，盡量從 Lap 內搬移檔案；並在 Settings → Storage 備份資料庫。

### 最小操作入口

```bash
# 開發者取得含 submodules 的原始碼；不是完整建置流程
git clone --recursive https://github.com/julyx10/lap.git
```

### 限制與驗證

正式使用前應備份原檔與 Lap 資料庫。離線優先不等於所有選配服務都不連網；README 另連結 Privacy Policy。模型權重與附帶元件也需另看授權。

上述指令整理自官方文件，作為讀者操作入口；本次收錄只驗證文件與知識庫建置，未安裝候選專案。

## 跟其他方案的關係

以下是用途定位比較，不是效能排行榜。

| 方案 | 主要角色 | 適用情境 |
|---|---|---|
| Lap | 桌面本地 AI 搜尋與整理 | 希望保留普通資料夾並離線使用 |
| 檔案管理器 | 直接瀏覽與搬移檔案 | 不需要專用視覺索引 |
| 雲端相簿服務 | 以供應商功能管理與同步 | 需另外評估上傳、帳號及隱私條款 |

## 相關概念

← [[computer-vision]] · [[privacy]]

## 來源

- [GitHub](https://github.com/julyx10/lap)
- [README](https://github.com/julyx10/lap/blob/main/README.md)
- 原始快照：`raw/2026-09-25-julyx10-lap.md`
- Metadata：`outputs/2026-09-25-julyx10-lap-metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | [julyx10/lap](https://github.com/julyx10/lap) |
| Stars | 2,874（2026-09-25 快照） |
| License | GPL-3.0-or-later（README 宣告） |
| Language | Vue（GitHub 主語言；本文為繁體中文） |
| 收錄日期 | 2026-09-25 |
