---
repo: "nashsu/llm_wiki"
first_seen: 2026-09-11
last_seen: 2026-09-12
recommend_score: 8.8
trending_count: 2
stars_today: 142
category: ["AI", "RAG", "Knowledge Base"]
tags: ["github/rag", "github/wiki", "github/knowledge-graph", "github/memory", "github/lancedb"]
---

# nashsu/llm_wiki

## 项目定位
把文档增量转化成持久、互链 Wiki/知识图谱，强调长期知识维护而不是查询时临时 RAG。

## 核心功能 / 实现特点
- TypeScript 桌面应用；两阶段 ingest、来源追溯、多模态、知识图谱、Louvain 社区、可选 LanceDB、文件夹监听、Deep Research、本地 API/MCP/Agent Skill。

## 主要优点
- 长期知识资产导向强
- 知识图谱、增量更新和来源追溯设计完整
- 很适合 Agent Memory、项目知识库与个人知识管理

## 局限 / 注意点
- 自动图谱质量依赖抽取模型，合并/去重/更新复杂度高
- 代码最近 push 仍停在 8 月 25 日附近，Trending 热度高于维护活跃度

## 最近变化
- 昨日 +94，今日 +142，热度回升，但代码活跃度没有同步回升，因此评分仍维持 8.8。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-11 | +94 | 8.8 |
| 2026-09-12 | +142 | 8.8 |

## 相关主题
- [[AI]]
- [[RAG]]
- [[Context-Engineering]]

## 相关日报
- [[2026-09-11]]
- [[2026-09-12]]

## 怎么利用
持续监听文档目录，把新增或变更内容分阶段抽取成互链 Wiki 和知识图谱，并通过来源追溯检查合并结果。

## 实际例子
**可推导用法：** 场景 → 维护项目知识库。输入 → docs、设计稿和会议纪要目录。操作 → 增量 ingest、实体合并并生成主题页。输出 → 可搜索、互链且能追溯原文的 Wiki。
