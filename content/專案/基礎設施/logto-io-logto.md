---
title: Logto
slug: logto-io-logto
created: 2026-06-30
updated: 2026-06-30
stars: 12672
language: TypeScript
topics:
  - authentication
  - authorization
  - oauth2
  - openid-connect
  - sso
  - rbac
  - multi-tenancy
  - mcp
  - ai-apps
  - identity
---

# Logto

> ⭐12.7k · 開源認證與授權基礎設施，為 SaaS 和 AI 應用而生，支援 OIDC、OAuth 2.1、多租戶、企業 SSO 和 RBAC

## 快速導航

- 🔐 **MCP** → [[MCP]]
- 🤖 **AI Agent** → [[AI-Agent]]
- 🏗 **基礎設施** → [[n8n-io-n8n|n8n]] · [[Kong-insomnia|Insomnia]]
- 🛠 **自架平台** → [[self-hosted|自架 AI 平台]]

## 是什麼

Logto 是一個專為現代 SaaS 和 AI 應用設計的開源認證基礎設施。它把 OIDC（OpenID Connect）和 OAuth 2.1 這些複雜的認證協議包裝成開箱即用的方案，讓開發者不需要成為安全協議專家也能快速搭建生產級的認證系統。核心功能包括多租戶管理、企業級 SSO 整合、RBAC（角色權限控制），以及 30+ 框架的 SDK 支援。

特別值得注意的是，Logto 明確支援 Model Context Protocol（MCP）和基於 Agent 的 AI 架構。這意味著當你用 AI Agent 建構產品時，Logto 可以作為認證層，為 Agent 提供安全的身份管理和授權機制。在 AI Agent 逐漸成為應用核心的趨勢下，Agent 本身的認證、Agent 之間的授權、以及 Agent 存取後端服務的安全控制，都成為不可忽視的基礎設施需求。

Logto 提供雲端版和開源版兩種路線。開源版可以透過 Docker Compose 一鍵啟動，也可以用 Node.js 搭配 PostgreSQL 自架。它支援 Google、Facebook、Azure AD、Okta 等主流 IdP 連接，涵蓋 SPA、Web、Mobile、API、M2M、CLI 等所有常見的應用類型。

## 核心特色

- **多租戶與企業 SSO**：原生支援多租戶架構，每個租戶可以獨立配置 SSO 和組織 RBAC，無需 workaround
- **MCP 與 Agent 架構支援**：開箱即用支援 Model Context Protocol 和基於 Agent 的 AI 應用認證，為 AI Agent 提供身份管理
- **30+ 框架 SDK**：涵蓋 React、Next.js、Angular、Vue、Flutter、Go、Python 等主流框架，幾分鐘完成整合
- **OIDC + OAuth 2.1 + SAML**：完整支援三大認證協議，不用自己處理協議層的複雜性
- **預建登入流程**：提供可自訂的登入 UI，支援社交登入、Google One Tap、MFA、密碼less 等多種方式
- **Docker 一鍵部署**：開源版可透過 Docker Compose 快速啟動，也支援 Node.js + PostgreSQL 本地開發
- **RBAC 權限控制**：基於角色的權限管理，支援組織層級的細粒度授權

## 怎麼用

使用 Docker Compose 快速啟動：

```bash
# Docker Compose 一鍵啟動（需要 Docker Desktop）
curl -fsSL https://raw.githubusercontent.com/logto-io/logto/HEAD/docker-compose.yml | \
  docker compose -p logto -f - up
```

使用 Node.js 本地開發（需要 PostgreSQL）：

```bash
# 使用 Logto CLI 初始化
npm init @logto
```

Logto Cloud（託管版，零設定）：

```bash
# 前往 https://cloud.logto.io 註冊即可使用
# 完全託管，無需管理基礎設施
```

整合 SDK（以 React 為例）：

```bash
npm install @logto/react
```

```tsx
import { LogtoProvider } from '@logto/react';

const config = {
  endpoint: 'https://your-logto-endpoint',
  resources: ['https://your-api.com'],
};

function App() {
  return (
    <LogtoProvider config={config}>
      <YourApp />
    </LogtoProvider>
  );
}
```

## 跟其他方案的關係

- **Auth0** → 商業認證服務，Logto 是開源替代，功能相近但可自架
- **Cognito** → AWS 託管認證，Logto 提供跨雲的開源選項
- **Keycloak** → 另一個開源認證方案，Logto 更現代化、開發者體驗更好
- **Supabase Auth** → 附屬於 Supabase 的認證，Logto 專注認證且支援 MCP

← [[MCP]] · [[AI-Agent]] · [[n8n-io-n8n|n8n]] · [[self-hosted|自架 AI 平台]]


## 相關概念

← [[MCP]] · [[AI-Agent]] · [[n8n-io-n8n]] · [[Kong-insomnia]]

## 來源

- GitHub: <https://github.com/logto-io/logto>
- 官網: <https://logto.io>
- 文件: <https://docs.logto.io>
- 原始 README: `raw/2026-06-30-logto-io-logto.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [logto-io/logto](https://github.com/logto-io/logto) |
| Stars | ⭐12,672 |
| License | MPL-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-06-30 |