---
title: ASP.NET Core
slug: dotnet-aspnetcore
created: 2014-03-11
updated: 2026-06-19
stars: 38097
language: C#
topics: [aspnetcore, dotnet, web-framework, cross-platform, cloud-native]
---

# ASP.NET Core

> ⭐38.1k · 微軟開源跨平台 Web 框架，模組化設計，最小化開銷，支援雲端和本地部署。

## 快速導航
[[freeCodeCamp-freeCodeCamp|freeCodeCamp]] · [[krahets-hello-algo|Hello 算法]] · [[codecrafters-io-build-your-own-x|Build Your Own X]]

## 是什麼

ASP.NET Core 是微軟開源的跨平台 Web 框架，運行在 .NET 之上。它被設計為構建現代雲端網路應用的最佳化開發框架，支援 Web apps、IoT apps 和 mobile backends。整個框架採用模組化組件設計，最小化開銷，讓開發者在建構解決方案時保有最大靈活性。

ASP.NET Core 是 .NET 生態系的核心 Web 框架，由 .NET Foundation 維護。它可以在 Windows、Mac 和 Linux 上跨平台開發和運行，打破了過去 ASP.NET 只能在 Windows 上運行的限制。框架包含 MVC、Web API、Razor Pages、SignalR（即時通訊）、gRPC 等多種 Web 開發模式。

ASP.NET Core 採用 MIT 授權，有活躍的社群參與。每週有 Community Standup 直播，有明確的 Roadmap 和 Triage Process，並提供 Good First Issues 和 Help Wanted 標籤讓新手參與貢獻。相關專案包括 Entity Framework Core（資料存取）、.NET Runtime（執行環境）和 Razor（模板引擎）。

## 核心特色

- **跨平台**：Windows、Mac、Linux 全平台開發和運行
- **模組化設計**：組件最小化開銷，按需引用
- **雲端優先**：為雲端部署最佳化，也支援本地部署
- **多種 Web 模式**：MVC、Web API、Razor Pages、SignalR、gRPC、Minimal APIs
- **.NET Foundation 維護**：微軟官方支援，開源社群參與
- **MIT 授權**：完全開源，商業可用
- **活躍社群**：每週 Community Standup、明確 Roadmap、Good First Issues
- **完整生態**：Entity Framework Core、Razor、SignalR、gRPC、Blazor

## 怎麼用

```bash
# 安裝 .NET SDK（包含 ASP.NET Core）
# https://dot.net

# 建立 Web API 專案
dotnet new webapi -n MyApi
cd MyApi
dotnet run

# 建立 MVC 專案
dotnet new mvc -n MyMvc
cd MyMvc
dotnet run

# 建立 Minimal API
dotnet new web -n MyMinimal
cd MyMinimal
dotnet run

# Docker 部署
docker build -t myapp .
docker run -p 8080:8080 myapp

# 入門指南
# https://learn.microsoft.com/aspnet/core/getting-started
```

## 跟其他方案的關係

| 方案 | 語言 | Stars | 跨平台 | 模組化 | 授權 | 維護方 |
|------|------|-------|--------|--------|------|--------|
| [[dotnet-aspnetcore|ASP.NET Core]] | C# | ⭐38.1k | ✅ | ✅ | MIT | 微軟 |
| Express.js | JavaScript | ⭐65k+ | ✅ | ✅ | MIT | 社群 |
| Spring Boot | Java | ⭐76k+ | ✅ | ✅ | Apache-2.0 | VMware |
| Django | Python | ⭐80k+ | ✅ | — | BSD | 社群 |
| FastAPI | Python | ⭐75k+ | ✅ | ✅ | MIT | 社群 |

ASP.NET Core 與 [[freeCodeCamp-freeCodeCamp|freeCodeCamp]] 和 [[krahets-hello-algo|Hello 算法]] 相關——這些都是程式學習資源，ASP.NET Core 是 .NET 生態的 Web 開發基礎。與 [[codecrafters-io-build-your-own-x|Build Your Own X]] 相關，後者鼓勵從零實作來學習系統。

## 相關概念

← [[freeCodeCamp-freeCodeCamp|freeCodeCamp]] · [[krahets-hello-algo|Hello 算法]] · [[codecrafters-io-build-your-own-x|Build Your Own X]]

## 來源

- GitHub：https://github.com/dotnet/aspnetcore
- 官方文件：https://learn.microsoft.com/aspnet/core
- .NET 首頁：https://dot.net
- Roadmap：https://aka.ms/aspnet/roadmap
- Raw 檔案：`knowledge-base/raw/2026-06-19-dotnet-aspnetcore.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [dotnet/aspnetcore](https://github.com/dotnet/aspnetcore) |
| Stars | ⭐38,097 |
| License | MIT |
| Language | C# |
| 收錄日期 | 2026-06-19 |