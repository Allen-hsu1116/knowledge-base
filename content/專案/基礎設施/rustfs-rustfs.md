---
title: RustFS
slug: rustfs-rustfs
created: 2026-09-19
updated: 2026-09-19
stars: 33166
language: zh-TW
topics: [object-storage, S3, self-hosted, AI-storage]
---

# RustFS

> ⭐33.2k · Rust 實作的分散式 S3 相容物件儲存，服務資料湖與 AI 資料基礎設施。

## 快速導航

- 🛠 [[self-hosted]] — 自行營運儲存服務與權限邊界。
- 🧠 [[rag]] — 可作為原始文件儲存層，不是檢索引擎。

## 是什麼

RustFS 是以 Rust 開發的物件儲存系統，提供常用 S3 API、Web Console，以及單節點和分散式部署方式。它的定位是保存與管理物件，而不是提供 POSIX 檔案系統、向量相似度搜尋或 LLM 推論。

在 AI 應用中，可以將文件、資料集或模型產物放在 S3 相容儲存，再由獨立管線解析、索引與使用。這是本知識庫對其基礎設施角色的整理，不代表 RustFS 自帶完整 RAG 管線。

官方明確以相容性矩陣限定功能範圍。S3 Tables 與 MinIO 磁碟格式相容仍列為 Preview；不能把「S3 相容」解讀成所有 AWS S3 功能或既有磁碟資料都可直接替換。

## 核心特色

- **Rust 與分散式架構**：以記憶體安全語言建構，支援單節點與多節點拓撲。
- **S3 物件管理**：README 列出版本控制、生命週期、Object Lock 與物件複寫。
- **加密與授權**：提供 IAM／Policies、OIDC／SSO 和伺服器端加密。
- **金鑰管理**：Vault 與 AWS KMS 為官方列出的正式環境後端；Local／Static 僅供開發測試。
- **營運介面**：Web Console、稽核日誌、可觀測性與 Helm charts。
- **多協定擴充**：Swift 與 SFTP 需選用建置功能，不可假設預設映像全開。

## 怎麼用

### 本機 Docker 評估

下列依 README 的固定版本示例整理；僅綁定 loopback，避免測試管理介面直接暴露外網。

```bash
mkdir -p data logs
# 僅調整新建的資料目錄；依主機權限可能需要 sudo
chown -R 10001:10001 data logs
docker run -d --name rustfs \
  -p 127.0.0.1:9000:9000 \
  -p 127.0.0.1:9001:9001 \
  -v "$(pwd)/data:/data" \
  -v "$(pwd)/logs:/logs" \
  rustfs/rustfs:1.0.1
```

1. 開啟 `http://localhost:9001` 管理介面。
2. README 的初始帳密為 `rustfsadmin`／`rustfsadmin`；正式使用前必須更換並設定最小權限。
3. 建立 bucket，透過 Console 或 S3 client 上傳測試物件。
4. 驗證讀回、版本控制與備份還原，再考慮正式資料。

### 拓撲與安全界線

- 單節點單磁碟部署不能直接原地擴充成 Pool；應新建部署並透過 S3 遷移。
- 多磁碟 Pool 應保持既有 endpoints 與 Erasure Set 寬度，追加新 Pool 擴容。
- 接受某種拓撲不等於具備主機故障容忍能力。
- MinIO 磁碟相容需 `rio-v2`，且無法讀取 MinIO 加密物件。
- 本次僅收錄文件，未在本機安裝或執行儲存服務；效能宣稱未自行實測。

## 跟其他方案的關係

| 方案／層次 | 主要職責 | 與 RustFS 的關係 |
|---|---|---|
| S3 相容 client | 透過 S3 API 讀寫物件 | 可整合，但須核對 API 矩陣 |
| MinIO | 物件儲存 | 遷移／共存需驗證格式、加密與拓撲限制 |
| 向量搜尋層 | 依 embedding 檢索片段 | 與物件儲存互補，不能以 RustFS 直接替代 |
| RAG 管線 | 解析、索引、檢索、生成 | 可使用物件作為來源；需額外接線 |

README 中的效能與競品評語屬專案方陳述，不能當作獨立測試或法律合規保證。

## 相關概念

← [[self-hosted]] · [[rag]]

## 來源

- [GitHub：rustfs/rustfs](https://github.com/rustfs/rustfs)
- [S3 相容性矩陣入口](https://github.com/rustfs/rustfs/blob/main/docs/architecture/s3-compatibility-matrix.md)
- 原始 README 與 metadata：`raw/2026-09-19-rustfs-rustfs.md`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/rustfs/rustfs |
| Stars | 33,166（2026-09-19 擷取） |
| License | Apache-2.0 |
| Language | Rust |
| 收錄日期 | 2026-09-19 |
