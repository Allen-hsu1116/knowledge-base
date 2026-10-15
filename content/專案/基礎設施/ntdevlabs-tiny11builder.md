---
title: "Tiny11 Builder"
slug: ntdevlabs-tiny11builder
created: 2026-10-15
updated: 2026-10-15
stars: 20230
language: zh-TW
topics: ["self-hosted", "sandbox"]
---

# Tiny11 Builder

> ⭐20.2k · 用 WinUI／C# 製作客製 Windows 11 ISO；非 LLM，Core 模式不適合日常主機。

## 快速導航

- [[self-hosted]] — 相關概念與配套背景
- [[sandbox]] — 相關概念與配套背景

## 是什麼

Tiny11 Builder 是 Windows 安裝映像製作工具，現行介面為 WinUI 3，映像處理由 C# 引擎執行。官方文件明確說明它不是把舊 PowerShell 腳本包一層 GUI；原始腳本仍保留供相容用途。

使用者可以下載官方 Windows ISO 或提供自己的來源，選擇 Tiny11、Tiny11 Core 或 Custom 模式，再輸出新 ISO。它處理工作副本，不是用來直接清理正在運作的 Windows，也不是作業系統安裝程式。

它可作為測試環境的映像準備工具，因此歸為基礎設施；並不提供 AI 功能，也不構成 Agent 安全沙箱。移除元件可能影響可開機性、更新及防護，必須在隔離 VM 驗證。

## 核心特色

### 1. 三種裁剪策略

Tiny11 保留更新、Defender 與復原；Core 移除 servicing／復原並停用 Defender；Custom 可逐項選擇。

### 2. 官方或本地映像來源

支援官方下載、既有 ISO 與解壓後安裝媒體，依映像判斷架構與版本。

### 3. 原生 C# 引擎

WinUI 呈現步驟，核心邏輯與測試分離，不依賴執行舊腳本。

### 4. 可追蹤與恢復

recipe、磁碟 log、JSON report 及 checkpoint 保存建置證據；符合條件才可恢復。

### 5. 明確輸出與邊界

輸出雜湊且拒絕覆寫既有 ISO；成功建置不等於已通過 VM 開機驗證。

## 怎麼用

一般使用者從官方 Releases 下載符合 x64／ARM64 的 ZIP，完整解壓後開啟 Tiny11Builder.exe，需管理員批准。以下是開發者的原始碼建置／部署指令，不是在 macOS 執行。

```powershell
git clone https://github.com/ntdevlabs/tiny11builder.git
cd tiny11builder
dotnet build .\Tiny11Builder.sln -c Release
dotnet publish .\src\Tiny11Builder.App\Tiny11Builder.App.csproj -c Release -r win-x64 -p:Platform=x64 -o .\artifacts\Tiny11Builder-x64
.\artifacts\Tiny11Builder-x64\Tiny11Builder.exe
```

### 操作與驗證重點

1. 官方建置要求 Windows 10 2004+、.NET 8 SDK、相容 Windows SDK 與映像 servicing 工具；工作區需 NTFS 及足夠空間。
2. 優先在測試 VM 驗證 Tiny11 或保守 Custom 設定；Core 僅供測試，無更新／復原能力且停用防毒。
3. 保留官方原始 ISO、recipe 與輸出雜湊；不把社群映像當成 Microsoft 認證產品，也不繞過 Windows 授權。

以下內容依官方文件整理；安裝指令僅為讀者參考，本次未安裝或實測候選軟體。

## 跟其他方案的關係

| 方案 | 定位 | 使用邊界 |
| --- | --- | --- |
| Tiny11 | 固定裁剪組合 | 保留主要維護與防護能力，仍需測試 |
| Tiny11 Core | 更激進的不可逆裁剪 | 無法正常 servicing，僅適合測試 VM |
| Custom | 逐項保留／移除 | 沒有完整依賴求解保證，刪除關鍵元件可使系統失效 |

### 限制與選擇提醒

- 公開 repo 不代表有再散布授權：NOTICE 明確指出沒有獨立 LICENSE，重發程式或衍生物前應確認權利。
- 本次只收錄文件，未執行管理員程式、下載 Windows ISO、裁剪映像或修改作業系統。

## 相關概念

← [[self-hosted]] · [[sandbox]]

## 來源

- [GitHub：ntdevlabs/tiny11builder](https://github.com/ntdevlabs/tiny11builder)
- README 快照：`raw/2026-10-15-ntdevlabs-tiny11builder.md`
- GitHub metadata：`raw/2026-10-15-ntdevlabs-tiny11builder-metadata.json`
- [官方 usage／建置文件](https://github.com/ntdevlabs/tiny11builder/blob/main/docs/usage.md)
- [授權與散布說明](https://github.com/ntdevlabs/tiny11builder/blob/main/NOTICE.md)

---

| Metadata | 值 |
| --- | --- |
| GitHub | [ntdevlabs/tiny11builder](https://github.com/ntdevlabs/tiny11builder) |
| Stars | 20,230（2026-10-15 快照） |
| License | 未明確授權（NOTICE 指出無獨立 LICENSE） |
| Language | C#（程式）；zh-TW（本頁） |
| 收錄日期 | 2026-10-15 |
