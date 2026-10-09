---
type: github-project
repo: "vxcontrol/pentagi"
url: "https://github.com/vxcontrol/pentagi"
first_seen: 2026-09-13
last_seen: 2026-09-13
trending_count: 1
category: ["Security","AI Agent","Self-hosted"]
topics: ["Security","AI Agent","Self-hosted"]
---
# vxcontrol/pentagi

## 一句话说明
自托管的多 Agent 自动化渗透测试系统，在隔离容器中规划任务、调用安全工具并整理证据与报告。

## 它能做什么
- 在 Docker 沙箱中编排研究、开发和基础设施等专用 Agent
- 内置 nmap、Metasploit、sqlmap 等 20 多种安全工具
- 用 PostgreSQL/pgvector、可选 Graphiti 知识图谱保存命令、输出与长期记忆
- 提供 Web UI、REST/GraphQL API、监控和漏洞报告

## 怎么利用
官方工作流：在实验室或书面授权目标上部署 Docker Compose，配置模型与搜索服务后创建测试任务；监督 Agent 的规划和命令，最后人工复核保存的证据与漏洞报告。

## 实际例子
**官方材料中的工作流：** 官方工作流：在实验室或书面授权目标上部署 Docker Compose，配置模型与搜索服务后创建测试任务；监督 Agent 的规划和命令，最后人工复核保存的证据与漏洞报告。

## 关键命令
```bash
docker compose up -d
```

## 适合谁
在自有实验室或客户授权范围内自动化安全评估的渗透测试与安全研究团队。

## 局限 / 注意点
- 只允许用于明确授权的测试范围；LLM 可能误判、执行破坏性命令或生成不可靠利用步骤，容器隔离也不能替代网络分段、最小权限和人工审批。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-13 | 16 | 193 | 未保存 | 日期匹配来源 |

## 相关主题
[[Topics/Security|Security]] · [[Topics/AI Agent|AI Agent]] · [[Topics/Self-hosted|Self-hosted]]

## 相关日报
- [[Daily/2026/09/2026-09-13|2026-09-13]]

## GitHub 原始链接
https://github.com/vxcontrol/pentagi

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/vxcontrol/pentagi/blob/HEAD/README.md
- 说明：项目卡反映核对日的当前官方资料，不声称这些能力与历史上榜日的项目版本完全相同。
