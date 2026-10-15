---
type: github-project
repo: vxcontrol/pentagi
url: https://github.com/vxcontrol/pentagi
first_seen: '2026-09-13'
last_seen: '2026-10-15'
trending_count: 3
language: Go
total_stars: 29410
forks: 4419
stars_today: 1025
github_rank: 8
fetched_at: '2026-10-15T08:02:04+08:00'
category: [Security, AI Agent, Self-hosted]
topics: [Security, AI Agent, Self-hosted]
documentation_checked_at: '2026-10-15'
stats_as_of: '2026-10-15'
---

# vxcontrol/pentagi

## 一句话说明
在自托管环境中编排多个 AI Agent 和安全工具，对明确授权的目标执行端到端渗透测试并整理证据与报告。

## 它能做什么
- 在隔离 Docker 沙箱中编排研究、开发、渗透测试和基础设施 Agent。
- 调用 nmap、Metasploit、sqlmap 等 20 多种安全工具并保存命令输出。
- 用 PostgreSQL/pgvector 和可选 Graphiti 维护任务记忆与知识关联。
- 提供 Web UI、REST/GraphQL API、监控及漏洞报告。

## 怎么利用
在隔离实验室或书面授权网络中部署服务，配置模型与搜索提供商，然后给出资产范围、禁止动作和测试目标。PentAGI 规划任务、在容器内调用工具并归档证据，最终输出待人工复核的发现与报告。

## 实际例子
**官方工作流 → 场景：** 对自有靶场 Web 服务做安全评估。**输入：** 靶场地址、授权范围和测试目标。**操作：** 启动 Compose 栈，在 Web UI 创建流程，监督 Agent 的侦察、扫描与验证命令。**输出：** 保存的工具输出、攻击路径和漏洞报告，供测试人员复核。

## 关键命令
```sh
docker compose up -d
```

## 适合谁
需要在自有实验室或客户书面授权范围内自动化安全评估的渗透测试团队、安全研究员与平台工程师。

## 局限 / 注意点
- 只允许用于明确授权的目标；LLM 可能误判、执行破坏性命令或生成不可靠利用步骤。
- Docker socket 与安全工具权限风险较高，容器隔离不能替代网络分段、最小权限、命令审批和人工复核。
- 官方明确它不是 BAS 产品；生产环境中的持续防御验证需另行设计。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-13 | 16 | 193 | 未保存 | 日期匹配来源 |
| 2026-09-14 | 8 | 未保存 | 未保存 | 日期匹配来源 |
| 2026-10-15 | 8 | 1025 | 29410 | GitHub Today live snapshot |

## 相关主题
[[Topics/Security|Security]] · [[Topics/AI Agent|AI Agent]] · [[Topics/Self-hosted|Self-hosted]]

## 相关日报
- [[Daily/2026/09/2026-09-13|2026-09-13]]
- [[Daily/2026/09/2026-09-14|2026-09-14]]
- [[Daily/2026/10/2026-10-15|2026-10-15]]

## GitHub 原始链接
https://github.com/vxcontrol/pentagi

## 官方资料复核（2026-10-15）
- README：https://github.com/vxcontrol/pentagi/blob/master/README.md
- 历史核验链接与归档提交时间保留在对应日报及索引记录中；归档提交时间不是页面抓取时间。

