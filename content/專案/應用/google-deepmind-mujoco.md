---
title: MuJoCo
slug: google-deepmind-mujoco
created: 2026-11-09
updated: 2026-11-09
stars: 16420
language: zh-TW
topics: ["world-model", "AI-Agent"]
---

# MuJoCo

> ⭐16.4k · 用於機器人、控制與機器學習研究的多關節接觸物理引擎；不是 LLM。

## 快速導航

- [[world-model]] — 相關研究與應用脈絡
- [[AI-Agent]] — 技術定位與整合邊界

## 是什麼

MuJoCo 是 Multi-Joint dynamics with Contact 的縮寫，由 Google DeepMind 維護，面向機器人、生物力學、圖形動畫與機器學習等需要關節結構和環境互動模擬的領域。它以物理模型與數值計算提供環境動態，不是透過語言模型生成回答。

核心提供 C API，模擬運行資料結構由內建 XML compiler 預先配置，另有 Python bindings、Unity 整合及瀏覽器視覺化。它可作為具身智慧或策略研究的環境層，但不會自動提供 LLM 規劃器、任務獎勵或完整訓練管線。

## 核心特色

- **關節與接觸模擬**
  針對 articulated structures 與環境互動提供通用物理引擎。

- **C API 與 Python bindings**
  原生函式庫供開發者嵌入；Python 套件隨附 MuJoCo。

- **互動式視覺化**
  提供原生桌面與 WebAssembly 瀏覽器入口，能檢視自己的模型。

- **模型編輯與 rollout**
  官方 Notebook 示範程序式建模、多執行緒 rollout、LQR 與非線性最小平方求解。

- **MJX 研究路線**
  另有 JAX 實作與可微物理教學；其能力與原生引擎應依各自文件確認。

## 怎麼用

### 安裝或建置起點

以下是官方文件的操作路線，並非本次收錄已完成安裝的紀錄。

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install mujoco
```

### 使用入口

```bash
python -c "import mujoco; print(mujoco.__version__)"
```

### 前置條件與限制

- 目前 README 要求 Python 3.11 以上。安裝後先確認可匯入，再循官方入門 Notebook 載入模型並模擬。

- 不寫程式也能先用 live.mujoco.org 查看模型；WebAssembly 版本不應視為與原生 C 同速。

- 原始碼為 Apache-2.0，doc 目錄文件、影像與影片為 CC BY 4.0。main 分支可能不穩定，研究重現應固定版本與模型參數。

## 跟其他方案的關係

以下按用途比較，不代表效能評測或功能等價。

| 方案 | 定位 | 選用與邊界 |
|---|---|---|
| MuJoCo | 明確物理模型與數值模擬 | 適合關節、接觸與控制研究 |
| 學習式世界模型 | 由資料學習或生成環境動態 | 兩者可互補；物理引擎不等同生成式世界模型 |
| LLM Agent | 語言理解、規劃與工具使用 | 若串接模擬器，仍需自行設計觀測與動作介面 |

## 相關概念

← [[world-model]] · [[AI-Agent]]

## 來源

- [GitHub](https://github.com/google-deepmind/mujoco)
- [官方補充文件](https://mujoco.readthedocs.io/)
- README 原始快照：`raw/2026-11-09-google-deepmind-mujoco.md`
- Metadata 快照：`raw/2026-11-09-google-deepmind-mujoco.metadata.json`
- Stars 為 2026-11-09 擷取值；功能以該日 README 為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [google-deepmind/mujoco](https://github.com/google-deepmind/mujoco) |
| Stars | 16,420 |
| License | Apache-2.0（細節與例外見本文） |
| Language | C++ |
| 收錄日期 | 2026-11-09 |
