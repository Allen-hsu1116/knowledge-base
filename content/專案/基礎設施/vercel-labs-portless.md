---
title: portless
slug: vercel-labs-portless
created: 2026-09-03
updated: 2026-09-03
stars: 11765
language: TypeScript
topics: [local-development, reverse-proxy, https, monorepo, git-worktree, agent]
---

# portless

> ⭐11.8k · 以穩定、具名的本機 HTTPS 網址取代開發伺服器 port number，讓人與 Agent 都更容易操作。

## 快速導航

- 💻 **Agent 開發環境** → [[Coding-Agent-CLI]]（穩定 URL 可減少多工作樹與多 Agent 的端口混亂）
- ⚡ **開發生產力** → [[productivity]]（以具名路由降低本地服務的認知成本）
- 🔒 **本地基礎設施** → [[self-hosted]]（proxy、CA 與 route state 都在本機管理）

## 是什麼

portless 是 Vercel Labs 的本機開發代理工具，把 `localhost:3000` 之類易變的 port number 換成 `https://myapp.localhost`。它啟動子程序時配置隨機可用 port，再由本機 reverse proxy 依 hostname 路由。

工具預設建立並信任本地 CA，以 HTTPS 與 HTTP/2 提供穩定網址；也能處理 WebSocket/HMR。它認得 Next.js、Express、Nuxt、Vite、Astro、Angular、Expo 等框架，會透過 `PORT` 或適當 CLI flags 注入實際端口。

對平行 Coding Agent 與 git worktree 特別實用：linked worktree 會自動把 branch 名稱加到 subdomain，例如 `fix-ui.myapp.localhost`，避免多個 Agent 同時啟動開發伺服器時互撞或使用錯誤 URL。

## 核心特色

- **穩定具名網址**：以 `<name>.localhost` 取代需要記憶和協調的數字 port。
- **預設 HTTPS + HTTP/2**：自動產生本地 CA、加入信任庫，並支援 WebSocket/HMR。
- **框架感知注入**：自動設定 `PORT`，對不遵循環境變數的框架注入 `--port` 與 `--host`。
- **Monorepo 支援**：讀取 pnpm workspace 或 package.json workspaces，一次啟動多個 package。
- **Worktree 隔離**：branch 自動成為 subdomain，適合多 Agent 平行修改與驗證。
- **分享選項**：支援 LAN/mDNS、Tailscale、Tailscale Funnel 與 ngrok。
- **可診斷與清理**：`doctor` 檢查 proxy、DNS 與 CA；`clean` 移除狀態與信任設定。

## 怎麼用

全域安裝後，在專案目錄直接執行，或指定應用名稱與啟動命令：

```bash
npm install -g portless

# 推斷 package name，執行 package.json 的 dev script
portless

# 明確指定名稱與命令
portless myapp next dev
# -> https://myapp.localhost
```

也可放入 `package.json`：

```json
{
  "scripts": {
    "dev": "portless run next dev"
  }
}
```

第一次在 macOS/Linux 綁定 443 與信任 CA 可能要求 sudo。CI 或無 TTY 環境不會互動詢問，而是帶著可診斷訊息提前失敗。

## 跟其他方案的關係

| 方案 | 主要工作 | 自動配置 app port | 本地 HTTPS | Worktree 命名 |
|------|----------|-------------------|------------|---------------|
| portless | 具名本機 URL + process runner | 是 | 預設 | 自動 branch subdomain |
| mkcert | 建立本地可信憑證 | 否 | 提供憑證 | 否 |
| Caddy | 通用 Web server / reverse proxy | 需設定 | 是 | 需手動設定 |
| nginx | 通用 reverse proxy | 需設定 | 需設定 | 需手動設定 |
| ngrok | 公開 tunnel | 不主打 | 是 | 否 |

portless 可以與 mkcert、Tailscale 或 ngrok 互補：前者可提供自訂憑證，後兩者負責跨裝置或公開分享。若需要生產環境反向代理、複雜流量規則或正式憑證生命週期，仍應選 Caddy、nginx 或雲端 ingress。

## 相關概念

← [[Coding-Agent-CLI]] · [[productivity]] · [[self-hosted]]

## 來源

- [GitHub：vercel-labs/portless](https://github.com/vercel-labs/portless)
- [Raw README + metadata](../raw/2026-09-03-vercel-labs-portless.md)

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/vercel-labs/portless |
| Stars | ⭐11,765 |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-09-03 |
