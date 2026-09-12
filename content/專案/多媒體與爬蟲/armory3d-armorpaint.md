---
title: ArmorPaint
slug: armory3d-armorpaint
created: '2026-09-12'
updated: '2026-09-12'
stars: 4721
language: C
topics:
- 3d
- armorpaint
- painting
- texturing
- tool
---

# ArmorPaint

> ⭐4.7k · C · 以 GPU 進行 3D PBR 材質繪製的創作工具，主要定位不是 LLM。

## 快速導航

- [[free-software]]
- [[productivity]]

## 是什麼

ArmorPaint 是獨立的 3D PBR 材質繪製軟體，使用者可拖入模型、直接在模型表面繪畫，並在 viewport 即時查看結果。它處理的是材質製作與資產輸出，而不是以自然語言進行通用推理。

官方手冊涵蓋網格、材質和貼圖匯入，UV 管理、筆刷、圖層，以及多種遊戲引擎用的輸出預設。此類工具可作為內容製作流程的上下游元件，但不能單憑 Trending 標籤將它稱為 LLM Agent。

原始碼公開，官方分發的 binary 則收費以支持開發。README 特別提醒 Git 版本面向開發者，可能不穩定；手冊的 alpha 警告也應納入選型評估。

## 核心特色

- GPU 材質繪製：邊畫邊在 3D viewport 查看 PBR 結果。

- 多格式匯入：官方手冊列出 OBJ、FBX、BLEND、STL、glTF／GLB 等網格格式。

- PBR 素材工作流：可匯入整組材質貼圖、管理圖層並儲存 .arm 專案。

- 輸出預設：Generic、Unreal、Unity 等預設協助安排貼圖通道。

- 跨平台建置：README 提供 Windows、Linux、macOS、Android、iOS 與 WASM 指令；不表示所有平台同等成熟。

## 怎麼用

下列使用 README 的 macOS arm64 原始碼建置流程，需要 Git 與 Xcode。若不自行編譯，官方提供付費 binary。本文沒有實際安裝或編譯 ArmorPaint。

```bash
git clone https://github.com/armory3d/armorpaint
cd armorpaint/paint
../base/make
# 在 Xcode 開啟 build/ArmorPaint.xcodeproj，接著 Build and Run
```

1. 先用小型、UV 正確的模型測試，再導入正式素材。
2. 匯入網格與材質貼圖，檢查法線、UV 重疊及貼圖方向。
3. 依目標引擎選擇輸出預設，核對 roughness／metallic 等通道配置。
4. 若在 ArmorPaint 修改 UV，須連同網格一起匯出，以免下游贴圖錯位。

### 使用限制與驗證

- 高解析貼圖會增加 GPU 記憶體需求，應按實際模型與硬體測試。

- 公開原始碼不等於官方 binary 免費；授權與付費分發應分開理解。

- 手冊有 Neural 相關選項，但本頁不把這些泛化成 LLM、MCP 或自主 Agent 能力。

## 跟其他方案的關係

下表為依本次來源整理的定位比較，不是實測效能排名。

| 方案 | 主要定位 | 關係與邊界 |
|---|---|---|
| ArmorPaint | 3D 材質繪製與貼圖輸出 | 位於素材製作端 |
| 模型／UV 製作工具 | 網格與 UV 準備 | 與材質繪製互補，需維持 UV 一致 |
| 遊戲引擎 | 使用輸出資產 | 可搭配 Unreal／Unity 通道預設 |

## 相關概念

← [[free-software]] · [[productivity]]

## 來源

- GitHub：https://github.com/armory3d/armorpaint
- README 原始快照：`raw/2026-09-12-armory3d-armorpaint.md`
- https://armorpaint.org/manual
- https://github.com/armory3d/armorpaint/blob/main/license.md
- https://armorpaint.org/download

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/armory3d/armorpaint |
| Stars | 4,721（2026-09-12 快照） |
| License | zlib/libpng License（以 LICENSE 原文為準） |
| Language | C |
| 收錄日期 | 2026-09-12 |
