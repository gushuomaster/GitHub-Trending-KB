---
type: github-project
repo: "CopilotKit/OpenBot"
url: "https://github.com/CopilotKit/OpenBot"
first_seen: "2026-10-30"
last_seen: "2026-10-30"
trending_count: 1
github_rank: 9
stars_today: 247
total_stars: 8128
forks: 1046
language: "TypeScript"
fetched_at: "2026-10-30T08:08:40+08:00"
documentation_checked_at: "2026-10-30"
stats_as_of: "2026-10-30"
snapshot_status: "live"
category: ["Agent Platform", "Self-Hosted", "Governance"]
topics: ["AG-UI", "AI-Agent", "Audit", "Computer-Use"]
status: beta
---
# CopilotKit/OpenBot

## 一句话说明
在自己的基础设施中部署一组可治理的 AI 同事，让每个 Agent 拥有独立浏览器、文件和工具，并让所有动作先经过策略判断、再执行并留下审计记录。

## 它能做什么
- 接入任何讲 AG-UI 协议的 Agent，包括 LangGraph、Mastra、CrewAI、Pydantic AI、Google ADK 或自写实现。
- 为每个 Bot 提供隔离的 Chromium、登录状态和工作空间，并允许用户观察、接管后再交还控制。
- 通过统一网关评估电脑、文件、MCP 与组件操作，执行允许/拒绝策略并写入 PostgreSQL 审计记录。
- 在自托管界面管理 coworkers、频道、策略、审计和配置，模型与数据保留在自己的环境中。

## 怎么利用
准备 Docker、Bun 1.4+、CopilotKit Intelligence 项目与许可证以及模型密钥；复制环境文件、安装依赖并启动服务。输入是 Agent 端点、组织策略、工具授权和业务资料，OpenBot 通过 AG-UI 协调 Agent、隔离电脑和策略网关，输出可观察的工作线程、结构化组件、产物及审计记录。

## 实际例子
**官方 Quick Start → 场景：** 在笔记本上启动带 General Assistant 和 Knowledge coworker 的本地实例。**输入：** CopilotKit 项目、模型密钥和 `.env`。**操作：** 安装依赖、配置 Learning 容器并运行启动脚本。**输出：** 在 `http://localhost:3010` 打开的管理界面，以及由本地 PostgreSQL 保存的线程、配置与审计数据。

```sh
cp .env.example .env
bun install
bash scripts/start.sh
```

## 适合谁
需要自托管企业 Agent 平台、统一治理不同 Agent 框架，并要求隔离浏览器与可追溯操作记录的平台工程、安全和 AI 应用团队。

## 局限 / 注意点
- 官方明确将其定位为可克隆改造的 Beta 模板，而非可直接注册使用的托管产品；接口和配置仍可能变化。
- 需要 Docker、Bun 1.4+、CopilotKit Intelligence 项目/许可证及模型密钥；多用户或远程部署前必须关闭单用户管理员模式并正确配置 OAuth、加密密钥和网络边界。
- Agent 的正确性仍取决于模型、策略和工具配置；审计记录不能自动证明业务结论正确，关键动作仍需人工复核。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-30 | 9 | 247 | 8128 | 1046 | GitHub Today live snapshot |

## 相关主题
[[Topics/AG-UI|AG-UI]] · [[Topics/AI-Agent|AI-Agent]] · [[Topics/Audit|Audit]] · [[Topics/Computer-Use|Computer-Use]]

## 相关日报
- [[Daily/2026/10/2026-10-30|2026-10-30]]

## GitHub 原始链接
https://github.com/CopilotKit/OpenBot

## 官方资料复核（2026-10-30）
- README：https://github.com/CopilotKit/OpenBot/blob/main/README.md
- README blob SHA：`0ef1c5438bf4274a765d7aa968ce71b999a18d04`
