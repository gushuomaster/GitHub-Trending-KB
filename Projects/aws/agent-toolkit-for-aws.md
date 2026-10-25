---
type: github-project
repo: "aws/agent-toolkit-for-aws"
url: "https://github.com/aws/agent-toolkit-for-aws"
first_seen: "2026-10-25"
last_seen: "2026-10-25"
trending_count: 1
github_rank: 3
stars_today: 13
total_stars: 3124
forks: 397
language: "Python"
fetched_at: "2026-10-25T08:11:52+08:00"
documentation_checked_at: "2026-10-25"
stats_as_of: "2026-10-25"
snapshot_status: live
category: ["AWS", "Agent Toolkit", "MCP"]
topics: ["AWS", "MCP", "Agent Skills", "Cloud Development"]
status: active
---
# aws/agent-toolkit-for-aws

## 一句话说明
把 AWS 官方文档、可复用开发技能和 300 多个服务操作接入 Coding Agent，让它能依据最新资料协助构建、部署和管理云资源。

## 它能做什么
- 让 Agent 实时检索 AWS 文档，并发现适合当前任务的 AWS Skill。
- 通过 AWS MCP Server 调用 300 多项 AWS 服务操作，并可在沙箱中执行辅助脚本。
- 提供覆盖 CDK、Serverless、容器、存储、成本与运维任务的官方插件和技能。
- 为 Claude Code、Codex 等支持插件或 MCP 的宿主提供安装入口。

## 怎么利用
先在 Codex 中添加 AWS 官方插件市场并安装 `aws-core`；不需要凭据即可查询文档和发现技能。要让 Agent 检查账户资源或执行部署，再配置最小权限 AWS 凭据。输入是自然语言任务、应用代码和云环境约束，Agent 会查阅官方资料、生成基础设施代码或调用获准的 AWS API，输出可审查的代码、部署计划或资源操作结果。

## 实际例子
**官方能力对应场景 →** 为一个 API 选择并生成无服务器部署方案。**输入：** 应用目录、目标区域和“使用 API Gateway + Lambda 部署”的要求。**操作：** 安装 `aws-core`，让 Agent 查阅最新 AWS 文档、选择相关 Skill，并生成 CDK/SAM 配置；在赋予凭据后再执行受控部署。**输出：** 可版本控制的基础设施代码、部署命令和实际 AWS 资源。

```text
codex plugin marketplace add aws/agent-toolkit-for-aws
/plugins
```

## 适合谁
需要让 Coding Agent 查 AWS 官方资料、生成云架构代码或在受控环境中操作 AWS 的云工程师、平台团队和应用开发者。

## 局限 / 注意点
- 文档检索和 Skill 发现无需认证，但调用账户资源需要 AWS 凭据；应使用最小权限 IAM、先审查计划再允许写操作。
- 部分工作流依赖宿主的插件/MCP 能力与 `uv` 等本地工具；自动生成的架构和成本判断仍需人工验证。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-25 | 3 | 13 | 3124 | 397 | GitHub Today live snapshot |

## 相关主题
[[Topics/AWS|AWS]] · [[Topics/MCP|MCP]] · [[Topics/Agent-Skills|Agent-Skills]] · [[Topics/Cloud-Development|Cloud-Development]]

## 相关日报
- [[Daily/2026/10/2026-10-25|2026-10-25]]

## GitHub 原始链接
https://github.com/aws/agent-toolkit-for-aws

## 官方资料复核（2026-10-25）
- README：https://github.com/aws/agent-toolkit-for-aws/blob/main/README.md
- README blob SHA：`f6a2fd6a5e7ac9f83a60a7d335f67477b8f749f6`
- AWS Core README blob SHA：`f25c34b48505c1e256bf409e89df1e7e32383dde`

