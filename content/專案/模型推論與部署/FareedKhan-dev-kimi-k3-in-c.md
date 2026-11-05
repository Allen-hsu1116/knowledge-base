---
title: "kimi-k3-in-c"
slug: "FareedKhan-dev-kimi-k3-in-c"
created: "2026-11-05"
updated: "2026-11-05"
stars: 10298
language: "C"
topics: ["avx2", "c99", "cpu-inference", "deep-learning", "from-scratch", "inference-engine", "kimi-k3", "linear-attention", "llm", "llm-inference", "machine-learning", "memory-efficient", "mixture-of-experts", "moe", "mxfp4", "quantization", "simd", "systems-programming", "transformer", "zero-dependencies"]
---

# kimi-k3-in-c

> ⭐10.3k · 以 C99、CPU 與磁碟串流研究大型 MoE 低常駐記憶體推論的專用引擎。

## 快速導航

- [[模型推論與部署]]
- [[LLM]]

## 是什麼

kimi-k3-in-c 是針對 Kimi K3 的 C99 推論實作。專案 README 宣稱可讓 2.78T 參數模型在低 RAM 預算下生成文字，關鍵是將大型 checkpoint 留在儲存裝置，按需串流 dense trunk 與 routed experts，而不是把整個模型壓縮成幾 GB。

這是一個記憶體、磁碟頻寬與延遲的取捨案例，不應把「8.24 GB peak RSS」解讀成一般 8 GB 筆電上的即時聊天保證。README 列出約 1.56 TB checkpoint 與 109 GB packed trunk，並強調測量機器、儲存效能與模式會影響速度；本次僅收錄文件，沒有下載權重或重跑 benchmark。

## 核心特色

- **低常駐記憶體設計**：以 trunk budget、streaming ring 與 expert cache 分配記憶體。

- **Packed experts 運算**：針對既有 MXFP4 權重設計運算路徑，不等於對所有模型通用的壓縮工具。

- **增量生成**：攜帶 KV cache 與 recurrent state，避免每步重算完整 prefix。

- **無權重測試**：make test 使用 repo 內 fixtures 與小模型 oracle 檢查實作，不需先下載 TB 級模型。

- **可調 presets**：以記憶體預算切換吞吐取捨；README 特別指出 preset 必須搭配 packed trunk 才有預期效果。

## 怎麼用

### 安裝與基本入口

```bash
git clone https://github.com/FareedKhan-dev/kimi-k3-in-c.git
cd kimi-k3-in-c
make -j
make test
./bin/k3 --help
```

### 執行流程

1. 先準備相容的 C 編譯器、GNU make 與 OpenMP；不同 OS 的工具鏈要求須核對。

2. 先跑無權重測試，確認小模型 fixture 的結果，再考慮大量下載。

3. 完整推論還需下載 checkpoint、驗證 shards，並用 pack-trunk.sh 產生 packed trunk。

4. 選擇記憶體 preset 時同時提供 --trunk；生成通常需 --incremental，否則會重算 prefix。

### 限制與查核

- 效能與逐 byte 一致性是上游文件及測量的主張，這次未獨立驗證。

- 低 RSS 並未消除大型磁碟需求；README 建議約 1.7 TB 可用儲存空間與快速本地磁碟。

- 低 RAM 示例有每 token 數十秒的代價；不要以參數量或 stars 推論互動速度。

- 程式碼 Apache-2.0 授權不代表外部模型權重使用條款相同，下載前需另外確認。

以上為上游文件提供的使用入口；本次收錄沒有安裝或執行此專案。

## 跟其他方案的關係

以下是依專案定位整理的比較，不代表同硬體實測排名。

| 方案 | 定位 | 選擇重點 |
| --- | --- | --- |
| kimi-k3-in-c | 專用 C99 CPU 推論與磁碟串流 | 適合研究記憶體放置與正確性驗證 |
| 通用本地推論引擎 | 多模型及硬體後端的日常執行 | 模型格式與支援度須逐項核對 |
| GPU serving 框架 | 面向服務的併發、延遲與吞吐 | 解決的資源條件與使用需求不同 |

## 相關概念

← [[模型推論與部署]] · [[LLM]]

## 來源

- GitHub：https://github.com/FareedKhan-dev/kimi-k3-in-c
- README：https://github.com/FareedKhan-dev/kimi-k3-in-c/blob/main/README.md
- 原始快照：`raw/2026-11-05-FareedKhan-dev-kimi-k3-in-c.md`
- metadata 快照：`outputs/2026-11-05-trending/FareedKhan-dev-kimi-k3-in-c.json`

---

| 欄位 | 資訊 |
| --- | --- |
| GitHub | https://github.com/FareedKhan-dev/kimi-k3-in-c |
| Stars | 10,298（2026-11-05 快照） |
| License | Apache-2.0 |
| Language | C |
| 收錄日期 | 2026-11-05 |
