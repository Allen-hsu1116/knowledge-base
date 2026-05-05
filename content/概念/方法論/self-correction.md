# Self-Correction 自我修正

> 語言模型能否在無人工介入下自行發現並修正錯誤？三條路徑：修改 inference、修改 workflow、修改參數。

## 快速導航
- 🧠 **LLM 知識庫** → [[llm-knowledge-base]]（Contrastive Decoding 涉及模型內部 representation 和 logit 的操作）
- 🛠 **AI 工作流** → [[AI-Agent]]（Generation + Verification 是 Agent 自我修正的 workflow 層實現）

## 核心內容

### 方向一：修改 Inference（Contrastive Decoding）

**核心思想**：製造一個「模型一定答錯」的狀態，把正常輸出跟錯誤輸出相減，把答案推離錯誤方向。

**製造錯誤答案的方法**：
| 方法 | 如何製造錯誤 | 適用場景 |
|------|------------|---------|
| 小模型對比 | 用更小模型的輸出當「錯」 | 通用（2022） |
| DoLa | 用淺層 logit lens 解碼當「錯」 | 通用，低 overhead |
| Layer CD | 用淺層 vision encoder 當「錯」 | 影像模型 |
| ICD | 加降智咒語（「你給錯誤答案」） | 通用 |
| CAD | 不給 retrieved document / 去掉影像 | RAG / VLM |
| MTI | 在末尾加 "Output Error" 兩 token | 可用 KV Cache，低 overhead |

**關鍵洞見**：CAD 在影像上最直觀——去掉圖片後模型憑先入為主概念作答（香蕉=黃色），相減後正確答案浮出。MTI 發現降智咒語必須語義相關（"Output Error" 有效，"Apple" 無效），且利用 KV Cache 只需多算 2 個 token 的 overhead。

### 方向二：修改 Workflow（Generation + Verification）

**核心思想**：模型輸出答案後自動插入反思指令（「再檢查一下」），不需人工介入。

**實驗發現**：
- 自我反思**有時有用但不穩定**，部分模型反思後反而變差
- **外部回饋更穩定有效**：compiler error、checklist feedback、搜尋結果
- 反思的划算性：在有限算力下，多 sample 幾次做 majority vote 比 反思更划算；反思是「奢侈品」，在大量算力投入達到極限後才值得加
- 模型有不同「個性」：confidence level（堅持正確答案）vs critic score（接受批評改錯），兩者互斥。插入的反思指令語氣影響模型行為——肯定它就變固執，質疑它就變有彈性

### 方向三：修改參數（Reasoning / RL）

**核心思想**：用 RLVR（Reinforcement Learning with Verifiable Reward）訓練模型做 reasoning，模型自然學會自我修正。

**為什麼需要 reasoning？**
- 知識≠自我修正能力：模型知道希拉蕊出生在芝加哥，但仍回答她出生在紐約
- 分步 reasoning 降低了學習難度：K^T 種變化拆成 T 步各 K 種，訓練資料需求從指數級降為線性級（parity check 例子：64 筆 vs 20 筆）
- RL 做完 reasoning 後，模型自然展現 verification 和 reflection 行為

**RL 是否教了新能力？** 爭論中：
- 一派說正確路徑本來就存在，RL 只是提高其機率（pass@k 實驗：sample 256 次後有無 RL 差距消失）
- 另一派說 RL 確實教了新推理技巧（COTPath 檢查過程正確性，有 RL 的模型過程更對）
- 折衷：訓練初期利用現有路徑，後期可能學到新能力

**Cost of Thinking**：模型 reasoning token 數與人類解題時間有正比關係——思考本身有代價，有些問題就是很難一次答對。

## 關鍵概念
- **Contrastive Decoding**：正常輸出 - α×錯誤輸出，把答案推離錯誤方向
- **DoLa**：用淺層 logit lens 解碼當錯誤信號，低 overhead
- **CAD (Context-Aware Decoding)**：去掉 context（RAG 文件/影像）製造錯誤狀態
- **MTI (Minimum Test-Time Intervention)**：用降智咒語+KV Cache 實現低 overhead contrastive decoding
- **Confidence Level vs Critic Score**：模型堅持正確答案 vs 接受批評改錯的兩個指標
- **RLVR**：Reinforcement Learning with Verifiable Reward，用明確可驗證的回饋做 RL
- **REVISE**：把自我修正拆成錯誤偵測+錯誤修正兩步分開學

## 相關概念
← [[llm-knowledge-base]] ← [[AI-Agent]]

## 來源
- raw/2026-05-03-m3i2mk5hs8U.md