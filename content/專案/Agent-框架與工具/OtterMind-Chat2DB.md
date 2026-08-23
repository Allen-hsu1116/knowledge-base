---
title: Chat2DB
slug: OtterMind-Chat2DB
created: 2026-07-25
updated: 2026-07-25
stars: 26327
language: Java
topics:
  - database
  - sql
  - ai
  - mysql
  - postgresql
  - oracle
  - mcp
  - cli
---

# Chat2DB

> ⭐26327 · AI 驅動的資料庫工具和 SQL 客戶端，支援 30+ 資料庫，BYO AI 模型，含 MCP 支援

## 快速導航


- 🔌 **MCP** → [[MCP]]
- 🤖 **AI Agent** → [[AI-Agent]]
- 🏗 **基礎設施** → [[self-hosted]]
- 📊 **資料分析** → [[data-analysis]]

## 是什麼

Chat2DB Community 是一個免費、跨平台的資料庫客戶端，支援 Windows、macOS 和 Linux。它完全在你的機器上運行，將全功能 SQL 工作區與 AI 助手結合在一起，你可以連接自己的 AI 模型來生成、解釋和優化 SQL。

它支援超過 30 種資料庫，包括 MySQL、PostgreSQL、Oracle、SQL Server、ClickHouse、MongoDB、Redis、SQLite、MariaDB、TiDB、Hive、DB2、Snowflake、BigQuery、Elasticsearch 等。除了 SQL 工作區和 AI 助手外，還提供資料庫管理（瀏覽元資料、管理表格和物件）、資料匯入匯出、儀表板和圖表功能，以及一個開源的 CLI 工具，支援 MCP。

Chat2DB Community 5.3.0 及以後版本採用基於 Apache License 2.0 的 source-available 授權。商業 Pro 和 Enterprise 版本在此基礎上增加 託管 AI 服務、使用者帳號、雲端存儲和多設備同步、團隊協作等功能。

## 核心特色

- **30+ 資料庫支援** — MySQL、PostgreSQL、Oracle、SQL Server、ClickHouse、MongoDB、Redis、SQLite、MariaDB、TiDB、Hive、DB2、Snowflake、BigQuery、Elasticsearch 等，通過插件擴展更多
- **BYO AI 模型** — 自帶 AI 模型連接，用自然語言生成、解釋和優化 SQL，不綁定特定 AI 提供者
- **完整 SQL 工作區** — 編輯、自動完成、格式化、執行、保存 SQL 和執行歷史
- **本地優先 + AES-256-GCM 加密** — 單用戶本地應用，資料源密碼和 AI 模型 API 金鑰全部加密存儲
- **MCP 支援** — 開源 CLI 工具支援 MCP，可讓 AI Agent 直接操作資料庫
- **資料視覺化** — 內建儀表板和圖表功能、ER 圖、資料匯入匯出

## 怎麼用

### 方式一：桌面應用

從 GitHub Releases 下載對應平台的安裝包，安裝後直接連接資料庫即可。

### 方式二：Docker

```bash
git clone https://github.com/OtterMind/Chat2DB.git && cd Chat2DB
./script/security/init-community-encryption-key.sh

docker run --detach \
  --name chat2db-community \
  --restart unless-stopped \
  --publish 127.0.0.1:10825:10825 \
  --volume "$HOME/.chat2db-community-docker:/root/.chat2db-community" \
  --env CHAT2DB_COMMUNITY_ENCRYPTION_KEY_FILE=/run/secrets/chat2db-community-encryption.key \
  --volume "$HOME/.config/chat2db-community/encryption.key:/run/secrets/chat2db-community-encryption.key:ro" \
  chat2db/chat2db:latest
```

打開 http://localhost:10825 即可使用。

### 方式三：從原始碼建構

```bash
# 前端
cd Chat2DB/chat2db-community-client
yarn install --frozen-lockfile
yarn run start:community:hot

# 後端
cd Chat2DB
mvn -B clean package -Dmaven.test.skip=true \
    -f chat2db-community-server/pom.xml \
    -pl chat2db-community-start -am
```

## 跟其他方案的關係

| 方案 | Stars | AI 助手 | 資料庫數 | MCP | 自架 |
|------|-------|--------|---------|-----|------|
| **Chat2DB** | ⭐26.3k | ✅ BYO Model | 30+ | ✅ | ✅ Docker |
| [[supabase-supabase\|Supabase]] | ⭐105k | ❌ | PostgreSQL | ❌ | ✅ |
| DBeaver | ⭐40k+ | ❌ | 80+ | ❌ | — |
| [[n8n-io-n8n\|n8n]] | ⭐193k | ✅ | — | ✅ | ✅ |

Chat2DB 的核心差異化在於 AI + 資料庫的深度整合——BYO AI 模型讓你用自然語言操作 SQL，同時保持本地優先和加密安全。MCP 支援使其能與 AI Agent 生態無縫整合，是 AI Agent 操作資料庫的重要工具。

## 相關概念


← [[MCP]] · [[AI-Agent]] · [[self-hosted]] · [[data-analysis]]

## 來源

- GitHub: https://github.com/OtterMind/Chat2DB
- 官網: https://chat2db.ai
- 原始 README: `raw/2026-07-25-ottermind-chat2db.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/OtterMind/Chat2DB |
| Stars | ⭐26327|
| License | Apache 2.0 (source-available) |
| 收錄日期 | 2026-07-25 |
