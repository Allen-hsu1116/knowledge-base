# 整理記錄

| 日期 | 動作 | 素材來源 | 產出 | 備註 |
|------|------|----------|------|------|
| 2026-04-28 | 初始化知識庫 | — | index.md | 建立知識庫結構 |
| 2026-04-28 | Ingest + Compile | 8 篇文章/專案 | 5 個 wiki 筆記 | 首次大量整理 |

### 2026-04-28 詳細記錄

**Ingest（蒐集）**：
1. 數位時代：LLM 知識庫（Obsidian + Claude Code）
2. 數位時代：Karpathy 同款設定拆解
3. 數位時代：Persona + Skill 打造 AI 同事
4. GitHub：CL4R1T4S（越獄安全研究）
5. 區塊客：Agency Agents 144 員工人格
6. GitHub：addyosmani/agent-skills
7. GitHub：forrestchang/andrej-karpathy-skills
8. GitHub：google/skills

**Compile（整理）**：
- [[llm-knowledge-base]] ← 素材 1, 2, 7
- [[ai-workflow]] ← 素材 1, 2, 3, 5
- [[agent-persona]] ← 素材 3, 5
- [[agent-skills-ecosystem]] ← 素材 5, 6, 7, 8
- [[prompt-security]] ← 素材 4

| 2026-04-28 | Ingest | Karpathy 原始 Gist | raw/2026-04-28-karpathy-gist-llm-wiki.md | 補抓完整 prompt 模板 |
| 2026-04-28 | Compile | 補充 prompt 模板到 llm-knowledge-base.md | 三層架構、Operations 詳解、index/log 設計、進階工具 | Karpathy 原始方法論 |
| 2026-04-28 | Compile | 建立 CLAUDE.md Schema + outputs/ | Schema 品質決定一切 | Nick Spisak 拆解的關鍵洞見 |
| 2026-05-02 | Ingest + Compile | GitHub: project-golem (plus branch) | wiki/project-golem.md | 自主 AI 代理系統，多後端+記憶+技能+Dashboard |
| 2026-05-02 | Ingest + Compile | GitHub: hermes-agent | wiki/hermes-agent.md | Nous Research 自我改進 Agent，學習閉環+跨 session 記憶 |
| 2026-05-02 | Ingest + Compile | GitHub: mempalace | wiki/mempalace.md | Local-first AI 記憶系統，宮殿索引+語意搜尋 |
| 2026-05-03 | Ingest + Compile | GitHub: autoresearch (karpathy) | wiki/autoresearch.md | 自主 AI 研究專案，Agent 自動跑 LLM 訓練實驗 |
| 2026-05-03 | Ingest + Compile | GitHub: docling (docling-project) | wiki/docling.md | IBM 開源文件解析引擎，RAG 管線基礎 |
| 2026-05-03 | Refactor | 概念頁加入專案精華+連結 | agent-persona, agent-skills-ecosystem, llm-knowledge-base, ai-workflow | 雙層結構：概念頁概覽，專案頁詳情 |

**Lint 狀態**：尚未執行

### 2026-05-02 詳細記錄

**Ingest**：
1. GitHub：Arvincreator/project-golem（plus branch）— 自主 AI 代理系統

**Compile**：
- [[project-golem]] ← 素材 1
- 更新 index.md 加入新概念與關係圖