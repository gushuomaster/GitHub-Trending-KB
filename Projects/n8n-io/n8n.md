---
type: github-project
repo: "n8n-io/n8n"
url: "https://github.com/n8n-io/n8n"
first_seen: 2026-09-18
last_seen: 2026-09-18
trending_count: 1
category: ["Workflow Automation", "AI Agent", "Integration"]
topics: ["Workflow Automation", "AI Agent", "Integration"]
---
# n8n-io/n8n

## 一句话说明
可自托管或使用云服务的可视化工作流与 AI Agent 平台，把 1500 多种集成、代码节点、审批和可观测性连接起来。

## 它能做什么
- 在可视化画布中编排触发器、条件、循环和多步骤业务流程
- 用自有数据、模型与工具构建 AI 工作流和 Agent
- 在节点中运行 JavaScript、Python 与 npm 包处理复杂逻辑
- 通过 RBAC、审计、人类审批和执行记录把原型推进到生产

## 怎么利用
官方 Docker 流程：创建持久卷并运行 n8n 容器，打开 `http://localhost:5678`；选择触发器和目标应用，配置凭据与数据映射，先用测试执行验证，再启用生产工作流。

## 实际例子
**资料中的具体工作流：** 官方 Docker 流程：创建持久卷并运行 n8n 容器，打开 `http://localhost:5678`；选择触发器和目标应用，配置凭据与数据映射，先用测试执行验证，再启用生产工作流。

## 关键命令
```bash
docker volume create n8n_data
docker run -it --rm --name n8n -p 5678:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n
```

## 适合谁
需要把 SaaS、数据库、内部 API 与 AI 模型编排成可审计自动化的运营和工程团队。

## 局限 / 注意点
- 其源码采用 Sustainable Use / Enterprise 许可而非普通宽松开源许可；自托管者需要维护数据库、凭据、备份、扩展节点和升级，工作流误配也可能对外部系统产生真实写操作。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-18 | 20 | 未保存 | 未保存 | 日期匹配归档；可核实统计仅保留原日报证据 |

## 相关主题
[[Topics/Workflow Automation|Workflow Automation]] · [[Topics/AI Agent|AI Agent]] · [[Topics/Integration|Integration]]

## 相关日报
- [[Daily/2026/09/2026-09-18|2026-09-18]]

## GitHub 原始链接
https://github.com/n8n-io/n8n

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/n8n-io/n8n/blob/master/README.md
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

## 2026-09-18 历史核验
- GitHub Trending 原始排名：#20
- Stars Today：未保存
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/339673fe562fde501a85aaa2f71a287bdb97a440/archive/repository/2026/2026-09-18/(null).json)
- 归档提交时间：2026-09-18T04:12:31Z；该时间不是页面抓取时间。
