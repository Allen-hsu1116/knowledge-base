---
title: "DwarfStar（antirez/ds4）"
slug: "ds4"
created: "2026-05-13"
updated: "2026-10-05"
stars: 23447
language: "C"
topics: []
---

# DwarfStar（antirez/ds4）

> ⭐23.4k · C · 針對少數大型開放權重模型最佳化的原生本地推論引擎。

## 快速導航

- [[模型推論與部署]]
- [[self-hosted]]

## 是什麼

> 2026-10-05 更新：舊頁的單模型定位與 ROCm 分支描述已過時；以下依最新 README 更新。

儲存庫名稱仍是 ds4，但目前 README 使用 DwarfStar 名稱。它以少數模型和特定硬體為優先，整合模型載入、提示模板、工具呼叫、KV 狀態、HTTP server 與原生 Coding Agent。

它刻意不是通用 GGUF runner，需搭配專案提供的 GGUF。README 列出 DeepSeek、GLM 與 Qwen 系列的特定版本支援，各平台能力不同；應以當期模型與硬體文件核對，不能推論所有同系列權重皆可直接使用。

## 核心特色

- 多硬體後端：Metal 為主要目標，另有 CUDA 與 Strix Halo ROCm 路徑。

- SSD streaming：在 RAM 不足時以 SSD 串流支援較大模型，仍受儲存與記憶體頻寬限制。

- 整合工具鏈：同時提供對話 CLI、原生 ds4-agent 與 ds4-server。

- KV 狀態保存：相容本地快照可減少重建 prompt；影像 session 目前不能保存。

- 多機／多卡路徑：README 描述 RDMA tensor parallelism 與 pipeline parallelism，需特定設定。

## 怎麼用

以下是 README 的 Apple Silicon Metal 起步流程；一般建議 96GB 以上記憶體，較小機器須先閱讀 SSD streaming 指南。

```bash
git clone https://github.com/antirez/ds4.git
cd ds4
make
./download_model.sh ds4f-q2
./ds4 -p "Explain Redis streams in one paragraph."
```

### 使用流程

1. 模型下載到 gguf/；需為 context 與 runtime buffers 額外保留記憶體。

2. 啟動 ./ds4-server --ctx 32768 可提供服務，README 的預設位址為 http://127.0.0.1:8000。

3. 使用 ./ds4-agent 可直接執行原生 Agent，不必另開 HTTP server；外部 Coding Agent 則參閱 CLIENTS.md。

### 限制與採用提醒

專案明確標示 beta，版本變化快；README 的速度案例不是跨硬體效能保證。保存的對話與 KV traces 也可能含私密資訊。

以上指令為官方文件範例整理，本次僅完成資料收錄，未執行安裝或產品效能測試。

## 跟其他方案的關係

以下是功能定位比較，不是相同條件的 benchmark。

| 方案 | 定位 | 關係與取捨 |
|---|---|---|
| llama.cpp／GGML | 通用生態與底層工程參考 | ds4 承接相關格式與工程經驗，但不連結 GGML，模型支援較專一 |
| 雲端推論 API | 由供應者管理硬體 | DwarfStar 把執行搬到自有硬體，需自行承擔資源與維運 |
| 通用 GGUF runner | 可涵蓋較廣模型範圍 | 此專案要求使用其產出的特定 GGUF |

## 相關概念

← [[模型推論與部署]] · [[self-hosted]]

## 來源

- [GitHub](https://github.com/antirez/ds4)
- [官方 README](https://github.com/antirez/ds4/blob/main/README.md)
- 原始快照：`raw/2026-10-05-antirez-ds4.md`
- Metadata：`raw/2026-10-05-antirez-ds4-metadata.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/antirez/ds4 |
| Stars | 23,447（2026-10-05 快照） |
| License | MIT |
| Language | C |
| 收錄日期 | 2026-05-13（2026-10-05 更新） |
