---
title: esp32-c3-adblock
slug: M-Abozaid-esp32-c3-adblock
created: 2026-10-06
updated: 2026-10-06
stars: 1347
language: zh-TW
topics: ["privacy", "self-hosted"]
---

# esp32-c3-adblock

> ⭐1.3k · 以 flash 中排序的 40-bit domain hashes 在無 PSRAM 的 ESP32-C3 實作 DNS 廣告封鎖。

## 快速導航

- [[privacy]] — DNS 反追蹤與其能力邊界。
- [[self-hosted]] — 自有區網上的微控制器 DNS 服務。

## 是什麼

esp32-c3-adblock 是低成本 ESP32-C3 DNS sinkhole，不是 LLM 或邊緣 AI 模型。它把網域轉成固定 5-byte 的 FNV-1a hash，排序後存入 flash，查詢時二分搜尋，避免把完整 domain strings 放進 RAM。

查詢命中時回應封鎖位址，未命中則轉送上游 DNS。README 的硬體價格、約 50 KB RAM 與約 10 ms 查詢時間均為專案描述，會受板子、名單、網路及測試方式影響；本次沒有硬體實測。

標題宣傳的 537k 網域不是所有分割配置都支援。4 MB flash 若保留雙 app slots 以提供 firmware OTA，名單空間約 1.3 MB、上限約 250k；537k aggressive 名單需要單 app partition，犧牲 firmware OTA。

## 核心特色

### 1. Hash-in-flash

- 用排序的 40-bit hashes 與二分搜尋降低 RAM 需求，不需 PSRAM。
- 雜湊碰撞可能誤封，不能把短 hash 當成無碰撞的精確名稱集合。

### 2. 多種名單格式

- 接受 hosts、純網域列表與基本 AdGuard／Adblock 規則。
- regex、wildcard、修飾符與 cosmetic rules 不屬於這種 DNS hash 表能完整表達的範圍。

### 3. Web 管理與更新

- 提供 dashboard、mDNS、名單上傳與排程更新。
- 支援 firmware OTA，但需符合 partition 容量配置。

### 4. 區網存取控制

- 修改狀態端點需要 Basic Auth，network OTA 另有密碼。
- 修改端點亦要求 `X-Requested-With: c3-adblock`，降低瀏覽器自動附帶憑證的 CSRF 風險。

### 5. Wi-Fi 初始設定

- 未能連線時建立 captive portal；初始 AP 仍是不加密的，應在可信環境完成設定。

## 怎麼用

需要合適的 ESP32-C3（官方測試 C3 SuperMini，4 MB flash）、穩定 USB 電源與新版 PlatformIO。以下僅供閱讀，收錄過程未刷寫裝置或變更區網 DNS。

```bash
git clone https://github.com/M-Abozaid/esp32-c3-adblock.git
cd esp32-c3-adblock
cp src/secrets.example.h src/secrets.h
# 先編輯 secrets.h，設定真正的 WEB_USER、WEB_PASS、OTA_PASS
python3 tools/build_blocklist.py data/blocklist.bin
pio run -t upload
pio run -t uploadfs
pio device monitor
```

- 透過 `http://c3adblock.local` 查看 dashboard，再以單一測試裝置指向板子的 DNS 位址。
- 可用 `dig @<c3-ip> doubleclick.net` 與 `dig @<c3-ip> github.com` 分別驗證封鎖及轉送。
- 若用戶端改用其他 resolver、DoH 或不受控的備用 DNS，封鎖可能被繞過；加入「secondary DNS」不等於所有查詢一定受控。

### 安全與功能限制

管理介面是 HTTP，不是 HTTPS；Basic Auth 並不加密憑證，不應對公網開放。唯讀 dashboard 與 stats 仍可被存取，初始 Wi-Fi portal 也有本地無線鏈路風險。

DNS 封鎖不能隱藏來源 IP、代替 VPN 或移除所有與主內容共用網域的廣告。官方 README 對 browser installer 有「尚在準備」與「完成」的矛盾描述，因此本文只採用明確的 PlatformIO 流程。

## 跟其他方案的關係

以下依 README 的儲存策略比較，並非同條件實測。

| 路線 | 名單儲存 | 權衡 |
|---|---|---|
| 本專案 | flash 中的固定長度 hashes | 省 RAM，但需接受碰撞與規則表達限制 |
| domain strings 放 RAM | RAM／PSRAM 內保存名稱 | 容量受 RAM 限制，與 flash hash 方法不同 |
| 瀏覽器內容過濾 | 頁面層級規則 | 可處理 DNS 層看不到的頁面元素；用途互補 |

## 相關概念

← [[privacy]] · [[self-hosted]]

## 來源

- [GitHub](https://github.com/M-Abozaid/esp32-c3-adblock)
- [官方 README](https://github.com/M-Abozaid/esp32-c3-adblock/blob/main/README.md)
- README 原始快照：`raw/2026-10-06-M-Abozaid-esp32-c3-adblock.md`
- GitHub metadata：`raw/2026-10-06-M-Abozaid-esp32-c3-adblock.metadata.json`

---

| 欄位 | 值 |
|---|---|
| GitHub | [M-Abozaid/esp32-c3-adblock](https://github.com/M-Abozaid/esp32-c3-adblock) |
| Stars | 1,347（2026-10-06 快照） |
| License | MIT |
| Language | C++（原始碼）；zh-TW（本頁） |
| 收錄日期 | 2026-10-06 |
