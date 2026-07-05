---
title: Expo Skills
slug: expo-skills
created: 2026-06-08
updated: 2026-06-08
stars: 2038
language: JavaScript
topics: [AI Skills, Mobile, React Native]
---

# Expo Skills

> ⭐2k · Expo 官方 AI Agent 技能集合，讓 Agent 能高效建構、部署和除錯 React Native / Expo 應用，從開發到上架一站式覆蓋。

## 快速導航
[[AI-Skills]] · [[AI-Skills]] · [[expo-skills]] · [[expo-skills]]

## 是什麼

Expo Skills 是 Expo 團隊官方推出的 AI Agent 技能庫，專門為使用 React Native 和 Expo 框架的開發者設計。這些技能讓 AI Agent（如 Claude Code、Cursor 等）能理解 Expo 的開發模式、最佳實踐和常見陷阱，從而產出更高品質的行動應用程式碼。

與通用 Skills 庫不同，Expo Skills 深度綁定 Expo 生態——從 `npx expo start` 到 EAS Build & Submit，Agent 都能給出準確的指令和建議，而不是泛泛的 React Native 猜測。

## 核心特色

- 📱 **Expo 原生開發流程**：涵蓋 Expo Router、開發伺服器、OTA 更新的正確使用方式
- 🏗️ **EAS Build & Submit**：從本機開發到 TestFlight 和 Google Play 上架的完整部署技能
- 🐛 **除錯技能**：常見錯誤模式識別（Metro bundler 問題、原生模組衝突、權限設定）
- 🧪 **測試與預覽**：Expo Go、開發建置（development build）和預覽部署的正確流程
- 📦 **原生模組整合**：何時用 expo-modules-core，何時用 expo-prebuild-config 的指引
- 🔧 **SKILL.md 標準格式**：遵循 AI Skills 規範，任何支援 SKILL.md 的平台都能直接使用

## 安裝方式

### Claude Code

```bash
# 加入 marketplace
/plugin marketplace add expo/skills

# 安裝技能
/plugin install expo
```

### Codex

```bash
codex plugin marketplace add expo/skills --ref main
```

然後在 Codex 中開啟 `/plugins` 並從 Expo Skills marketplace 安裝 `expo`。

### Cursor

1. 開啟 Cursor Settings（Cmd+Shift+J / Ctrl+Shift+J）
2. 導航到 `Rules & Command` → `Project Rules` → Add Rule → Remote Rule (GitHub)
3. 輸入：`https://github.com/expo/skills.git`

> **注意**：Skills 不會出現在 `/` 斜線指令選單中。Skills 透過自動發現運作——當你的問題匹配 Skill 描述時，Agent 會自動使用相關的 Skill。

**驗證安裝**：安裝後，試著問 Agent Expo 相關問題：
- 「How do I build a UI with Expo Router?」
- 「How do I make API calls in my Expo app?」
- 「How do I deploy my Expo app to the App Store?」

### 任何 Agent

```bash
bunx skills add expo/skills
```

> 這會個別解壓 Skill，需要手動升級。

## 怎麼用

```bash
# 建立新專案
npx create-expo-app@latest my-app

# 啟動開發伺服器
npx expo start

# EAS Build & Submit
eas build --platform ios
eas submit --platform ios
```

日常使用情境：
1. **新建專案**：讓 Agent 依 Expo Skills 建議正確的專案結構和路由配置
2. **部署上架**：Agent 給出 EAS Build + Submit 的正確指令序列
3. **除錯**：Agent 能辨識 Expo 特有的錯誤模式並給出精準修復
4. **原生整合**：Agent 知道什麼場景該用 expo-modules-core 而非直接寫原生程式碼

## 跟其他方案的關係

| 方案 | 定位 | 與 Expo Skills 的關係 |
|------|------|----------------------|
| [[vercel-labs-agent-skills|Vercel Agent Skills]] | 前端設計審查 | Vercel 聚焦 Web 前端品質，Expo 聚焦行動開發流程 |
| [[softaworks-agent-toolkit|SoftaWorks Agent Toolkit]] | 設計系統 Skills | SoftaWorks 建構設計系統，Expo Skills 聚焦行動應用開發 |
| [[mattpocock-skills|Matt Pocock Skills]] | 工程實踐 Skills | Matt Pocock 偏通用工程實踐，Expo Skills 專精 Expo 生態 |
| [[addyosmani-agent-skills|addyosmani/agent-skills]] | 通用開發 Skills | addyosmani 全流程，Expo Skills 深度聚焦 React Native 行動開發 |
| [[AI-Skills]] | 概念層 | Expo Skills 是 AI Skills 在行動開發領域的官方實作 |

## 相關概念

← [[AI-Skills]] · [[AI-Skills]] · [[expo-skills]] · [[expo-skills]]

## 來源

- GitHub: <https://github.com/expo/skills>
- 原始 README: `raw/2026-06-08-expo-skills-README.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [expo/skills](https://github.com/expo/skills) |
| Stars | ⭐2,038 |
| Language | JavaScript |
| License | MIT |
| 收錄日期 | 2026-06-08 |