---
repo: "volcengine/OpenViking"
first_seen: 2026-09-15
last_seen: 2026-09-15
recommend_score: 9.7
trending_count: 1
stars_today: 950
category: ["AI", "Agent", "RAG", "Context Engineering"]
tags: ["github/agent", "github/rag", "github/memory", "github/context", "github/python"]
---
# volcengine/OpenViking

## 项目定位
自演进 Context Database，统一 Agent Memory、Knowledge RAG 与 Skills。

## 核心功能 / 实现特点
- `viking://` 虚拟文件系统；L0/L1/L2 分层上下文；目录递归检索；可观察 retrieval trajectory；session-to-memory。
- Python/AGPL-3.0。近期提交集中于 QueueFS 生命周期、storage 写锁和 Memory 元数据边界。

## 主要优点
- Memory/RAG/Skills 统一建模，减少多套上下文系统拼接。
- 检索过程可观察、可调试，适合长任务 Agent。
- 支持本地/私有化路线。

## 局限 / 注意点
- AGPL 商业闭源集成需评估。
- open issues 数量较高，高速迭代期接口与稳定性仍需验证。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-15 | +950 | 9.7 |

## 相关主题
[[Agent]] · [[RAG]] · [[Skills]] · [[Context-Engineering]] · [[Developer-Tools]]

## 相关日报
- [[2026-09-15]]

## 怎么利用
把文档、对话记忆和 Skills统一写入 Context Database，让 Agent按任务检索并在使用后更新上下文；建立版本与来源治理。

## 实际例子
**可推导用法：** 场景 → 为长期研发 Agent提供统一上下文。输入 → 仓库文档、历史决策和 Skills。操作 → 入库并按任务召回。输出 → 同时包含知识、记忆和能力说明的上下文包。
