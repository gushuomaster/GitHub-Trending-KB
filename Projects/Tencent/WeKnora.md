---
type: github-project
repo: "Tencent/WeKnora"
url: "https://github.com/Tencent/WeKnora"
first_seen: 2026-09-17
last_seen: 2026-09-21
trending_count: 3
category: ["RAG", "Knowledge Base", "AI Agent"]
topics: ["RAG", "Knowledge Base", "AI Agent"]
---
# Tencent/WeKnora

## 一句话说明
腾讯开源的企业知识框架，把文档理解、混合检索、带引用问答、任务型 Agent 与可回滚 Wiki 放在同一知识库上。

## 它能做什么
- 用关键词、向量、rerank、父子分块和 GraphRAG 检索企业文档
- 让 ReAct Agent 搜索知识库、调用 MCP、Skills、浏览器和沙箱
- 自动生成互联 Wiki，并支持编辑、版本 diff 与回滚
- 提供多租户 RBAC、OIDC、审计日志和可观测性

## 怎么利用
官方 Docker Compose 流程：克隆仓库、复制并配置 `.env`，拉取镜像后启动；在 `http://localhost` 导入文档并选择解析与模型，用户可用 Quick Q&A 获取带引用答案，或让 Agent 执行多步任务。

## 实际例子
**资料中的具体工作流：** 官方 Docker Compose 流程：克隆仓库、复制并配置 `.env`，拉取镜像后启动；在 `http://localhost` 导入文档并选择解析与模型，用户可用 Quick Q&A 获取带引用答案，或让 Agent 执行多步任务。

## 关键命令
```bash
docker compose pull
docker compose up -d
```

## 适合谁
建设企业内部知识问答、研究 Agent 和可维护 Wiki 的平台团队。

## 局限 / 注意点
- 部署涉及模型、解析、检索、存储、沙箱和权限等多个组件；企业数据需要配置租户隔离、出站网络、凭据加密与审计，自动 Wiki 和 Agent 结论仍要由领域人员核对。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-17 | 16 | 696 | 未保存 | 日期匹配归档；可核实统计仅保留原日报证据 |
| 2026-09-18 | 未保存 | 1123 | 未保存 | 仓库已存快照 |
| 2026-09-21 | 2 | 未保存 | 未保存 | 仓库已存快照 |

## 相关主题
[[Topics/RAG|RAG]] · [[Topics/Knowledge Base|Knowledge Base]] · [[Topics/AI Agent|AI Agent]]

## 相关日报
- [[Daily/2026/09/2026-09-17|2026-09-17]]
- [[Daily/2026/09/2026-09-18|2026-09-18]]
- [[Daily/2026/09/2026-09-21|2026-09-21]]

## GitHub 原始链接
https://github.com/Tencent/WeKnora

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/Tencent/WeKnora/blob/HEAD/README.md
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

## 2026-09-17 历史核验
- GitHub Trending 原始排名：#16
- Stars Today：696
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/d3548164a40d3c186f33b9a0356e6e30aa857f2b/archive/repository/2026/2026-09-17/(null).json)
- 归档提交时间：2026-09-17T00:22:41Z；该时间不是页面抓取时间。
