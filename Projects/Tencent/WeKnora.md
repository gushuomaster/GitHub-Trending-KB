---
repo: "Tencent/WeKnora"
first_seen: 2026-09-17
last_seen: 2026-09-21
recommend_score: 9.7
trending_count: 3
stars_today: 858
category: ["AI","RAG","Agent","Knowledge Base"]
tags: ["github/rag","github/agent","github/knowledge-base","github/go","github/wiki"]
---
# Tencent/WeKnora
## 项目定位
腾讯开源的 LLM 知识平台，把原始文档转为可查询 RAG、自治推理 Agent 与自维护 Wiki。
## 核心功能 / 实现特点
Go 主体；覆盖 embeddings、reranking、semantic/vector search、multi-tenant、Ollama/OpenAI 接入，并把 RAG 与 Wiki/Agent 合并为长期知识系统。
## 最近变化
- 2026-09-18：约 +1123 stars，较前日 +696 明显加速。
- 2026-09-21：最近可验证日榜仍约 +858/day，热度从峰值回落但保持高位；知识状态一致性、任务恢复与服务治理仍是近期工程重点。
- 推荐分维持 9.7：长期 Context 架构价值没有下降。
## 局限 / 注意点
系统面较宽，部署、多租户、任务队列和知识状态一致性增加运维复杂度；企业使用前仍应核对许可与数据治理边界。
## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-17 | +696 | 9.5 |
| 2026-09-18 | +1123 | 9.7 |
| 2026-09-21 | +858* | 9.7 |

\* 运行时采用最近可验证 Trending 快照。
## 相关主题
[[RAG]] · [[Agent]] · [[Context-Engineering]]
## 相关日报
- [[2026-09-17]]
- [[2026-09-18]]
- [[2026-09-21]]

## 怎么利用
导入企业文档并配置解析、分块和检索，让问答 Agent 引用知识库；同时用 Wiki 层持续整理主题页面和来源关系。

## 实际例子
**可推导用法：** 场景 → 搭建公司制度问答。输入 → HR 手册、报销制度和 FAQ。操作 → 导入 WeKnora、建立知识库并测试引用。输出 → 能追溯到原文段落的问答与自维护 Wiki。
