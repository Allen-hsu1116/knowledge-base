---
title: "Colibrì"
slug: JustVugg-colibri
created: 2026-09-11
updated: 2026-09-11
stars: 27465
language: zh-TW
topics: ["模型推論與部署", "llm-internals"]
---

# Colibrì

> ⭐27.5k · 以 VRAM、RAM、NVMe 分層與專家串流執行大型 MoE 的 C 推論引擎

## 快速導航

- [[模型推論與部署]] — 相關方法與技術背景
- [[llm-internals]] — 相關方法與技術背景

## 是什麼

Colibrì 是大型 Mixture-of-Experts 模型的本地推論引擎與系統研究平台。它利用每個 token 只路由到部分專家的特性，將密集部分保持常駐、專家權重放到儲存裝置，再按需要搬到 RAM 或 VRAM 執行，降低對大型顯存容量的依賴。

核心是把儲存、記憶體與顯存當成不同速度的放置層，而不是要求所有權重一次裝進最快的一層。README 描述逐層 LRU、依路由熱度固定熱門專家、預取，以及 I/O 與運算重疊；不同模型家族有對應 C 引擎，共用 coli 前端。

「零依賴」只針對 C 引擎，不包含 Python launcher、API gateway 與模型轉換程序。有限 RAM 能執行大模型，也不等於快速或免除數百 GB 權重儲存；官方明確表示沒有速度 SLA，效能須以實機端到端測量。

## 核心特色

- **權重分層**：依硬體將專家放在 NVMe、RAM 或 VRAM，容量與吞吐是不同問題。

- **路由感知快取**：使用 LRU、熱門專家 pinned store 與預取；官方也提醒歷史路由可能過擬合。

- **異質硬體路徑**：包含 CPU、CUDA、Metal 與 NUMA 相關能力，支援程度依模型及平台而異。

- **語意正確性優先**：預設政策不默默降低精度或改變 router semantics；最佳化需驗證正確性。

- **共用操作介面**：coli chat、serve、web 提供對話、服務及可視化入口。

- **研究可重現性**：要求記錄模型、硬體、cache 狀態、TTFT、吞吐及品質，而非只報微型 benchmark。

## 怎麼用

原始碼建置需要 gcc（或 clang）與 OpenMP，launcher 需要 Python 3。官方 setup.sh 會檢查環境、編譯並自測；此處僅保存指令，未執行安裝或下載模型。

```bash
git clone https://github.com/JustVugg/colibri
cd colibri/c
./setup.sh
cd ..
# 先依官方文件準備對應模型容器
./coli chat --model /path/to/converted-model
```

### 建議操作順序

1. 先依模型支援表選擇家族、量化容器與對應硬體 backend。
2. 以 GLM-5.2 為例，README 建議 gs64 int4 容器與 int8 MTP head，約需 372 GB 磁碟。
3. README 對 GLM-5.2/5.3 列出最低 16 GB RAM、24 GB 較舒適；其他家族需求不同。
4. 分別測試冷快取、暖快取、長 prompt 與實際工作負載，不把展示速度當成自己的效能。

### 限制與注意事項

慢速磁碟可能只有每秒不到一個 token。GPU 並非所有家族都支援，且快取／投機解碼不一定加速；效能數字均為上游報告，本次未重跑。

## 跟其他方案的關係

以下是依上游功能整理的定位比較，不是同機效能或教學成效測試。

| 方案 | 重點 | 選用考量 |
|---|---|---|
| Colibrì | 專家權重跨儲存層串流 | 適合研究大 MoE 在有限快記憶體的可行性 |
| 一般全常駐推論 | 盡量把權重留在 RAM／VRAM | 減少磁碟 I/O，但需要足夠容量 |
| 雲端模型 API | 將模型執行交給供應商 | 無需本地權重空間，但有外送資料與持續費用 |

## 相關概念

← [[模型推論與部署]] · [[llm-internals]]

## 來源

- [GitHub：JustVugg/colibri](https://github.com/JustVugg/colibri)
- [官方 README](https://github.com/JustVugg/colibri/blob/main/README.md)
- 原始快照：`raw/2026-09-11-JustVugg-colibri.md`
- Metadata 快照：`raw/2026-09-11-JustVugg-colibri-metadata.json`
- [授權檔案](https://github.com/JustVugg/colibri/blob/main/LICENSE)

---

| 欄位 | 內容 |
|---|---|
| GitHub | [JustVugg/colibri](https://github.com/JustVugg/colibri) |
| Stars | 27,465（2026-09-11 快照） |
| License | Apache-2.0 |
| Language | C |
| 收錄日期 | 2026-09-11 |
