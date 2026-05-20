# Mano-P

> 開源 GUI-VLA 邊緣代理，純視覺驅動跨平台桌面自動化，資料全留本地

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（Mano-P 是 GUI 自動化方向的 Agent）
- 👁️ **Computer Vision** → [[computer-vision]]（純視覺理解驅動 GUI 操作）
- 🔧 **AI Skills** → [[AI-Skills]]（Mano-Skill 作為 ClawHub Skill 供其他 Agent 調用）

## 是什麼

Mano-P 是明略科技（Mininglamp）開源的 GUI-VLA（Vision-Language-Action）邊緣代理專案。"Mano" 西班牙語意為「手』，"P" 代表 Private。核心定位是讓大型 GUI 操作模型在本地 Apple Silicon 裝置上運行，所有截圖和任務描述留在設備上不外傳。OSWorld specialized 榜單排名第一（58.2%）。

## 核心特色

- **OSWorld #1**：72B 模型在 OSWorld specialized 榜單 58.2% 成功率，超越第二名 13.2 個百分點
- **WebRetriever 領先**：41.7 NavEval，超越 Gemini 2.5 Pro CU 和 Claude 4.5 CU
- **完全本地推理**：M4 晶片 + 32GB RAM 即可跑 4B 模型；72B 透過算力棒（USB 4.0）運行
- **純視覺 GUI 操作**：不走 DOM/CDP/HTML，用螢幕截圖理解介面，適用桌面軟體、3D 應用、非標準 GUI
- **think-act-verify 循環**：三階段漸進訓練（SFT → Offline RL → Online RL）+ 雙向自強化學習
- **Cider INT8 加速**：W8A8/W4A8 激活量化 SDK，1.4x–2.2x prefill 加速，適用任何 MLX 模型
- **Mano-AFK 自主建構**：從一句自然語言到完整部署測試修 bug 的應用，全程本地閉環

## 怎麼用

**CLI 工具（mano-cua）**：
```bash
# 安裝
brew tap Mininglamp-AI/tap && brew install mano-cua

# 雲端模式（預設）
mano-cua run "Open WeChat and tell FTY the meeting is postponed"

# 本地模式
mano-cua run "Open Safari and search for Python" --local
```

**ClawHub Skill（給 AI Agent 用）**：
```bash
clawhub install mano-cua
```

**硬體需求**：
- Mac mini / MacBook（M4 晶片 + 32GB RAM）— 跑 4B 模型
- 任何 Mac + Mano-P 算力棒（USB 4.0+）— 跑 72B 模型

## 跟其他方案的關係

| | Mano-P | OpenClaw | Manus | 傳統 RPA |
|---|---|---|---|---|
| **模型來源** | ✅ 內建邊緣模型 | ⚠️ 用戶自配 | ⚠️ 雲端 API | ❌ 無模型 |
| **隱私** | ✅ 完全本地 | ⚠️ 雲端調用 | ⚠️ 雲端推理 | ✅ 可本地 |
| **操控方式** | ✅ 純視覺 | ⚠️ CDP+CLI | ❌ HTML 解析 | ❌ 系統 API |
| **適用範圍** | ✅ 所有 GUI 類型 | ✅ 多種應用 | ⚠️ 僅 Web | ⚠️ 特定系統 |

Mano-P 的差異化在於「內建模型 + 純視覺 + 完全本地」三角組合。OpenClaw 需要使用者自己配模型，Manus 只能在 Web 上操作且走雲端，傳統 RPA 無法適應 UI 變化。Mano-P 特別適合高隱私場景（金融、醫療、企業內網）。

👉 詳見 [[AI-Agent]]（Agent 架構總覽）

## 相關概念

← [[AI-Agent]] · [[computer-vision]] · [[AI-Skills]]

## 來源

- raw/2026-05-20-Mininglamp-AI-Mano-P.md

---

- **GitHub**: https://github.com/Mininglamp-AI/Mano-P
- **Stars**: ⭐2,063
- **License**: Apache-2.0
- **收錄日期**: 2026-05-20