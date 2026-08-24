---
title: Vaultwarden
slug: dani-garcia-vaultwarden
created: 2026-08-24
updated: 2026-08-24
stars: 65964
language: Rust
topics:
  - bitwarden
  - docker
  - password-manager
  - rust
  - self-hosted
---

# Vaultwarden

> ⭐66.0k · 以 Rust 實作、相容官方 Bitwarden clients 的輕量自架密碼庫伺服器。

## 快速導航

- 🏠 **部署方式** → [[self-hosted]]（掌控服務、備份與更新責任）
- 🔐 **資料保護** → [[privacy]]（理解密碼庫的資料主權價值）
- 🧱 **容器隔離** → [[sandbox]]（理解容器與服務隔離邊界）

## 是什麼

Vaultwarden 是非官方的 Bitwarden Client API 相容伺服器，以 Rust 撰寫，前身為 bitwarden_rs。它讓使用者繼續使用 Bitwarden 官方桌面、手機與瀏覽器客戶端，但把後端資料與服務部署在自己的設備上。

這個專案主要服務個人、家庭與小型組織，特別適合不想運行官方較重服務棧的環境。它實作個人保管庫、附件、Send、組織、集合、群組、事件記錄、管理後台與多種雙因素驗證功能。

Vaultwarden 不隸屬 Bitwarden, Inc.，問題應回報給 Vaultwarden 社群。由於保存的是高敏感度憑證，實際部署必須同時處理 HTTPS、反向代理、更新、備份、權限與災難復原，而不能只把容器啟動就視為完成。

## 核心特色

- **官方 client 相容**：可沿用 Bitwarden 行動、桌面與瀏覽器客戶端，降低遷移成本。
- **輕量 Rust 服務**：相較完整官方服務棧更適合資源有限的家用伺服器、NAS 或小型 VPS。
- **完整保管庫能力**：支援個人 vault、attachments、Send、網站圖示、API key 與緊急存取。
- **組織協作**：提供 collections、密碼共享、角色、群組、政策、事件記錄與目錄同步等功能。
- **多因素驗證**：涵蓋 authenticator、Email、FIDO2 WebAuthn、YubiKey 與 Duo。
- **容器優先部署**：官方建議使用 Docker/Podman image，並把 `/data/` 掛載到持久化 volume。
- **自架控制權**：資料與管理面留在自有環境，但維運和安全責任也由部署者承擔。

## 怎麼用

官方建議使用 container image，先準備正式網域、TLS 與反向代理，再啟動服務：

```bash
docker pull vaultwarden/server:latest
docker run --detach --name vaultwarden \
  --env DOMAIN="https://vw.example.com" \
  --volume /vw-data/:/data/ \
  --restart unless-stopped \
  --publish 127.0.0.1:8000:80 \
  vaultwarden/server:latest
```

`/vw-data/` 必須納入加密備份與還原演練。Web vault 依賴 Web Crypto API，因此正式使用需要 HTTPS；建議只讓容器綁定 localhost，再由 Caddy、Nginx 或其他反向代理終止 TLS。

部署後應立即限制管理介面、設定強密碼與 MFA、固定更新節奏，並確認資料庫與 attachments 都被備份。升級前先讀 release notes，在 staging 或可還原快照上驗證。

## 跟其他方案的關係

Vaultwarden 不是密碼管理 client，而是替代 Bitwarden server 的相容後端。它用較低資源成本換取自行維運的責任；如果不想管理伺服器，官方 Bitwarden 雲端或官方 self-hosted stack 仍是較直接的選擇。

| 方案 | 核心定位 | 優點 | 主要取捨 |
|------|----------|------|----------|
| Vaultwarden | 非官方 Bitwarden 相容後端 | 輕量、Rust、社群自架 | 非官方實作，需自行維運 |
| Bitwarden Cloud | 官方代管密碼服務 | 免維運、官方支援 | 資料與服務依賴供應商 |
| Bitwarden Self-hosted | 官方自架服務棧 | 官方支援與相容性 | 資源需求與維運複雜度較高 |
| [[paperless-ngx-paperless-ngx\|Paperless-ngx]] | 自架文件管理 | OCR 與文件歸檔 | 管理文件而非憑證 |
| [[open-webui-open-webui\|Open WebUI]] | 自架 AI 介面 | 本地 LLM 與聊天資料 | 不提供密碼庫能力 |

## 相關概念

← [[self-hosted]] · [[privacy]] · [[sandbox]] · [[free-software]]

## 來源

- [GitHub：dani-garcia/vaultwarden](https://github.com/dani-garcia/vaultwarden)
- [Vaultwarden Wiki](https://github.com/dani-garcia/vaultwarden/wiki)
- [Raw README + metadata](../raw/2026-08-24-dani-garcia-vaultwarden.md)

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/dani-garcia/vaultwarden |
| Stars | ⭐65,964 |
| License | AGPL-3.0 |
| Language | Rust |
| 收錄日期 | 2026-08-24 |
