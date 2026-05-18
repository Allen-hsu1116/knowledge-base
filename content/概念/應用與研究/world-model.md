# 世界模型

> 理解和模擬物理世界的 AI 模型，支援可控環境生成與具身智慧

## 核心內容

世界模型（World Model）是能理解物理世界動態規律的 AI 系統，不僅能生成視覺內容，還能模擬因果關係、物理互動和時間演進。這類模型對機器人導航、自主駕駛、遊戲 NPC 等應用至關重要。

### 關鍵技術
- **可控生成**：6-DoF 相機控制、物理動作控制等
- **長序列一致性**：維持長時間生成中的場景和物理一致性
- **Embodied AI 整合**：為具身智慧提供環境模擬和預測

## 各框架的做法
- **NVIDIA Sana-WM** → 2.6B 可控世界模型，6-DoF 相機控制生成 720p 1 分鐘影片
  👉 詳見 [[NVlabs-Sana]]
- **DeepMind Genie** → 從單張圖片生成可互動的 2D 遊戲世界
- **Voyager** → Minecraft 中的 LLM 驅動世界探索 Agent

## 相關概念
- [[AI-video-generation]]
- [[generative-AI]]
- [[diffusion-model]]

## 來源
- raw/2026-05-19-NVlabs-Sana.md