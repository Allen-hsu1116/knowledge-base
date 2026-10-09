---
title: ArtCraft
slug: storytold-artcraft
created: 2026-10-09
updated: 2026-10-09
stars: 7972
language: zh-TW
topics: [generative-AI, AI-video-generation, 3d-graphics]
---

# ArtCraft

> ⭐8.0k · 結合 2D 畫布、3D 場景與多供應商模型的 AI 影像創作桌面工具。

## 快速導航

- 🎨 [[generative-AI]] — 以視覺編輯控制生成內容。
- 🎬 [[AI-video-generation]] — 從構圖與圖片延伸到影片生成。

## 是什麼

ArtCraft 將自己定位為「藝術家的 IDE」，面向藝術家、設計師與電影創作者。它不只提供文字提示輸入，而是讓使用者先用 2D 圖層、3D 場景、角色姿勢與攝影機位置表達意圖，再選擇模型生成圖片或影片。

README 展示的工作方式是先構圖、再生成、再修改。開發文件指出桌面應用使用 Rust／Tauri，前端採用 JavaScript、TypeScript、React 與 Vite；後端服務與網站建置另置於 `artcraft-services`，不能把這個 repository 當成完整可離線自架的雲端生成服務。

授權是自訂的 ArtCraft License（WIP），作者自稱 fair source，並明列商業轉售、競爭產品及移除特定服務連結等限制。它是原始碼可讀的創作工具，不應標示成 MIT、Apache 或 OSI 認可的開源專案。

## 核心特色

- **2D 圖層構圖**：結合背景移除、繪圖、遮罩與 inpainting 控制畫面。
- **3D 場景規劃**：把前景、背景、道具和 mesh 放進場景，調整深度及攝影機。
- **角色與鏡頭控制**：提供角色擺姿、身份轉移與 kitbashing 的示範流程。
- **圖片到影片**：以既有圖片及所選影片模型進行動畫生成。
- **多供應商入口**：README 列出 ArtCraft、Grok、Midjourney、Sora 與 World Labs 等整合。
- **桌面原始碼工作流**：官方文件提供 Windows、macOS 與 Linux 開發路徑。

## 怎麼用

### 一般使用者

從 [官方下載頁](https://getartcraft.com/) 取得 Windows 或 macOS 穩定版本；GitHub Releases 提供其他最新建置。模型可用性、登入、費用與供應商條款須另行確認，免費應用不代表模型呼叫免費。

### 從原始碼啟動

先依官方開發文件準備 Rust、Node.js／npm 與 Tauri CLI。文件要求 Unix launcher 使用 Node.js 20+，並列出曾可用的版本供參考。

```bash
git clone https://github.com/storytold/artcraft.git
cd artcraft
# 已備妥 Rust、Node.js/npm 與 Tauri 平台相依套件後：
cargo install tauri-cli --version 2.10.0 --locked
./script/artcraft/unix_dev.sh
```

這是供讀者參考的安裝／開發指令；本次收錄沒有安裝或啟動 ArtCraft。

### 開發注意事項

1. Unix launcher 將 Vite 綁在 `127.0.0.1`，從 5193 起尋找可用埠。
2. 若本機缺少 Vite，launcher 會安裝前端相依套件，再協同啟動 Tauri。
3. 前端可熱更新；Rust 修改則會重新編譯與重啟，未儲存的記憶體狀態不保留。
4. 不同開發埠並不等於不同帳號／資料隔離；不要把多開視為安全沙箱。

### 能力與授權界線

- README 的模型目錄含停用與受限項目，不代表桌面版全部可選。
- 已規劃的供應商整合不能當作已上線功能。
- 授權允許私人用途的複製、修改及編譯，但限制競爭產品及商業轉售軟體。
- 生成資產權利仍應併看模型服務條款；本頁不是法律意見。

## 跟其他方案的關係

比較依產品定位整理，沒有進行生成品質或速度實測：

| 方案 | 核心操作 | 適用差異 |
|------|----------|----------|
| ArtCraft | 2D／3D 視覺構圖後選模型生成 | 重點在創作者對角色、鏡頭與構圖的直接控制 |
| [[Comfy-Org-ComfyUI\|ComfyUI]] | 節點圖組合生成流程 | 偏向可重用管線；與場景式創作介面不同 |
| 單一模型服務介面 | 直接輸入提示或參考圖片 | 功能與帳號集中於該服務，不等於跨供應商工作台 |

## 相關概念

← [[generative-AI]] · [[AI-video-generation]]

## 來源

- [GitHub](https://github.com/storytold/artcraft)
- [開發環境文件](https://github.com/storytold/artcraft/blob/main/_docs/dev_setup.md)
- [授權原文](https://github.com/storytold/artcraft/blob/main/LICENSE.md)
- README 快照：`raw/2026-10-09-storytold-artcraft.md`
- Metadata 快照：`raw/2026-10-09-storytold-artcraft.metadata.json`
- 補充文件快照：`raw/2026-10-09-storytold-artcraft-dev.md`、`raw/2026-10-09-storytold-artcraft-license.md`

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/storytold/artcraft |
| Stars | 7,972（2026-10-09 快照） |
| License | ArtCraft License（WIP，自訂 fair-source 限制，非 OSI 開源） |
| Language | Rust（GitHub 主要語言）；另含前端技術棧 |
| 收錄日期 | 2026-10-09 |
