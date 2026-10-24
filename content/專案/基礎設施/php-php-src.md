---
title: PHP Interpreter
slug: php-php-src
created: 2026-10-24
updated: 2026-10-24
stars: 41564
language: zh-TW
topics: [Coding-Agent-CLI, self-hosted]
---

# PHP Interpreter

> ⭐41.6k · PHP 語言直譯器與擴充開發底座；通用 Web 基礎設施，不是 LLM 或 Agent 框架。

## 快速導航

- [[Coding-Agent-CLI]] — 生成程式仍須交由真實工具鏈測試。
- [[self-hosted]] — 自架 PHP 應用的語言執行環境。

## 是什麼

php/php-src 是 PHP 直譯器的官方原始碼倉庫。PHP 是偏重 Web 開發的通用腳本語言；本倉庫提供語言實作、內建擴充與測試套件，而不是網站應用範本。

一般使用者可以取得預編譯套件或二進位檔，不必自行編譯。只有修改直譯器、研究內部行為或驗證特定建置選項時，才需要本頁的原始碼建置流程。

本次由 GitHub Trending 發現，歸入基礎設施。它與 LLM 的關係是可供開發工具或自架應用使用的外部執行層；本頁不主張官方內建模型推論、RAG 或 Agent 整合。

## 核心特色

### 1. 官方語言實作

提供 PHP 原始碼及內部開發文件入口，方便追蹤語言實作，而非只依賴第三方封裝。

### 2. 可選的建置模式

README 區分開發用 `--enable-debug` 與一般建置，其他選項可用 `./configure --help` 檢視。

### 3. 原始碼測試套件

建置成功後可執行 `make test`，也能指定目錄及平行 worker 數，讓修改有可重現的驗證步驟。

### 4. 擴充生態

核心包含多種 bundled extensions；其他擴充可從 PIE 清單取得，README 將 PECL 標示為已棄用的舊管道。

### 5. 明確的貢獻流程

新功能需經 RFC 與開發者接受，修正 bug 則不必先建立 RFC；提交仍應遵循專案規範。

## 怎麼用

以下整理官方 README 的 Ubuntu 原始碼建置與安裝流程。這些是讀者參考指令，本次收錄沒有安裝 PHP、執行 sudo 或實測其測試套件。

```bash
sudo apt install -y pkg-config build-essential autoconf bison re2c libxml2-dev libsqlite3-dev
git clone https://github.com/php/php-src.git
cd php-src
./buildconf
./configure --enable-debug
make -j4
make TEST_PHP_ARGS=-j4 test
# 確認安裝 prefix、權限與測試結果後才執行
make install
```

### 使用前確認

- 日常部署優先依官方安裝文件選取適合的平台套件，而非直接使用開發分支。
- 建置前固定要研究的 commit 或 release；預設分支快照不代表穩定發行版。
- `make install` 可能需要額外權限，應先檢查 prefix，避免覆蓋既有環境。
- Coding Agent 產生的 PHP 程式與直譯器原始碼測試是不同層次，兩者不要混為一談。

## 跟其他方案的關係

| 方案 | 定位 | 使用邊界 |
| --- | --- | --- |
| php/php-src | PHP 語言實作與測試 | 開發直譯器或需要客製建置時使用 |
| PHP 預編譯套件 | 直接取得執行環境 | 日常開發部署通常不必重建直譯器 |
| PIE | PHP 擴充安裝工具 | 補充擴充功能，不取代 PHP 本身 |
| [[rust-lang-rust\|Rust]] | 另一套語言與編譯工具鏈 | 不是 PHP 替代套件，也不是 LLM 框架 |

## 相關概念

← [[Coding-Agent-CLI]] · [[self-hosted]]

## 來源

- [GitHub：php/php-src](https://github.com/php/php-src)
- [官方 README](https://github.com/php/php-src/blob/master/README.md)
- [授權原文](https://github.com/php/php-src/blob/master/LICENSE)
- [PHP 安裝文件](https://www.php.net/install)
- README 快照：`raw/2026-10-24-php-php-src.md`
- GitHub metadata：`raw/2026-10-24-php-php-src-metadata.json`

---

| Metadata | 值 |
| --- | --- |
| GitHub | [php/php-src](https://github.com/php/php-src) |
| Stars | 41,564（2026-10-24 快照） |
| License | BSD-3-Clause（本次預設分支 LICENSE；歷史版本應另查） |
| Language | C（程式）；zh-TW（本頁） |
| 收錄日期 | 2026-10-24 |
