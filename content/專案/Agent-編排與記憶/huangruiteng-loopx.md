---
title: LoopX
slug: huangruiteng-loopx
created: 2026-08-07
updated: 2026-08-07
stars: 2865
language: zh-TW
topics: [Agent, Loop Engineering, Control Plane, Codex, Claude Code, Quota, Evidence]
---

# LoopX

> ⭐2.9k · 長時間運行 AI Agent 的本地控制平面——目標、關卡、待卡、待辦、證據、配額、交接的持久狀態核心

## 快速導航

- 🤖 [[AI-Agent]] — Agent 需要控制平面來管理長時間運行的多回合任務
- 🧠 [[Coding-Agent-CLI]] — 支援 Codex CLI、Claude Code、Cursor 等多種 Coding Agent
- 🔄 [[AI-Agent]] — Peer Agent 團隊協作，所有權、租約和交接的狀態管理

## 是什麼

LoopX 是一個輕量級的狀態核心和 Agent 無關的本地控制平面，專為 Loop Engineering（迴圈工程）設計。它解決的核心問題是：當 AI Agent 需要執行長時間運行的工作時（可能跨越數天、數百小時），如何保持目標、關卡、待辦事項、證據、配額和交接的穩定性和可審查性。

傳統的聊天記憶和定時器不足以治理這類工作。目標會變化、需要人類決策的關卡會出現、證據會過時、Agent 之間需要交接工作，而排程器可能會在沒有有效進展時繼續消耗資源。LoopX 將這些控制狀態保存在一個緊湊的層中，讓整個過程變得可審查、可重啟、可交接。

LoopX 不是一個 Agent 運行時，也不會取代你的 Agent 框架。它是一個控制平面層，在 Agent 之上管理持久狀態和治理邏輯。目前已驗證的案例包含 OpenViking Issue-Fix 和 Auto ML 實驗，各跨越 200+ 小時的迴圈生命週期。

## 核心特色

- **Agent 無關設計**：支援 Codex App、Codex CLI、Claude Code、OpenCode、Cursor 和自訂 Runner，不綁定特定 Agent 框架。Agent 作為 peer 註冊，透過 claim、lease、typed continuation 決定誰來執行下一個動作
- **持久狀態核心**：目標（objective）、關卡（gates）、待辦（todos）、範圍（scope）、證據（evidence）、配額（quota）全部保存在本地狀態中，跨回合持久化。狀態以 `.loopx/` 目錄存儲，不會被 commit 到 repo
- **配額感知排程**：`loopx quota should-run` 決定 Agent 是否應該執行，避免在無有效進展時浪費 token。配額只在驗證後的 writeback 完成後才扣除，靜默跳過和預檢失敗不消耗配額
- **人類判斷關卡**：用具體的使用者關卡（concrete user gates）取代模糊的「等待 owner」，Agent 在需要人類判斷時提出具體問題並等待
- **證據鏈與交接**：每次回合都產生 compact run history，記錄驗證結果、阻礙和已接受的 writeback。Agent 間交接有證據背書，確保可追溯性
- **五大控制平面問題**：目標是什麼？下一步是什麼？需要人類判斷嗎？證據如何變化？迴圈可以繼續嗎？LoopX 將所有控制邏輯歸納為這五個問題

## 怎麼用

### 安裝

```bash
# 免 clone 安裝（需要 Python 3.11+, curl, tar）
curl -fsSL https://raw.githubusercontent.com/huangruiteng/loopx/main/scripts/install-from-github.sh | bash
export PATH="$HOME/.local/bin:$PATH"
loopx doctor
```

### 連接專案

```bash
cd /path/to/your-project
loopx connect
loopx status
```

### 引導式啟動目標

```bash
loopx start-goal --guided --project . --goal-text "Your long-running objective"
```

### 核心 Tick 操作

```bash
loopx quota should-run      # 這個註冊 Agent 現在應該行動嗎？
loopx todo claim            # 誰擁有這個工作切片？
loopx todo update           # 發生了什麼變化？
loopx refresh-state         # 下一回合應該看到什麼？
loopx quota spend-slot      # 記錄一個已完成的、已驗證的切片
```

### 從你的 Agent 啟動

```bash
# Claude Code
# 安裝 opt-in adapter 後執行：
/loopx <task>
/loop

# Codex CLI
# 在專案中啟動 codex，要求它連接並診斷 LoopX
$loopx <complex task>
```

## 跟其他方案的關係

LoopX 與其他 Agent 治理/編排方案的比較：

- **LoopX** — 本地控制平面，持久狀態核心，Agent 無關，配額感知，適合長時間運行
- **OpenHands** — 自主 Agent 平台，內建運行時，LoopX 不取代運行時而是管理狀態
- **AutoGPT** — 自主目標達成，但缺乏配額治理和證據鏈
- **LangGraph** — Agent 工作流編排，圖結構，LoopX 更注重持久狀態和配額
- **Claude Code 原生** — Claude Code 有自己的 session 管理，LoopX 在其之上加入跨回合狀態

LoopX 的獨特定位是「Agent-native Kanban」——像看板管理一樣管理長時間運行的 Agent 工作，但狀態始終以 LoopX 為權威來源，外部投影（如 Lark Kanban）只是視覺化層。

## 相關概念

← [[AI-Agent]] · [[Coding-Agent-CLI]] · [[AI-Skills]]

## 來源

- raw/2026-08-07-huangruiteng-loopx.md
- GitHub: https://github.com/huangruiteng/loopx
- 官方網站: https://huangruiteng.github.io/loopx/

---

- **GitHub**: https://github.com/huangruiteng/loopx
- **Stars**: ⭐2,865
- **License**: MIT
- **Language**: Python
- **收錄日期**: 2026-08-07