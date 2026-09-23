---
repo: "google/ax"
url: "https://github.com/google/ax"
first_seen: 2026-09-23
last_seen: 2026-09-24
trending_count: 2
github_rank: 2
stars_today: 1542
total_stars: 8917
forks: 419
language: Go
category: ["AI","Agent","Orchestration"]
tags: ["agent","orchestration","runtime","google","go"]
topics: ["Agent","Infrastructure"]
status: active
---
# google/ax

## 一句话说明
Google 开源的 Agentic orchestration runtime，用声明式方式组织 Agent 任务、工作空间、模型与执行环境。

## 它能做什么
- 编排 Agent 任务与运行生命周期。
- 描述 Workspace、网络/模型等运行配置。
- 支持隔离执行、观察和恢复任务。

## 怎么利用
把代码仓库和任务写进 Ax 的任务配置，让 Ax 创建隔离执行环境并运行 Coding Agent；开发者可观察状态并在需要时进入环境排查。

## 实际例子
**场景 →** 自动修复 Go 仓库问题。 **输入 →** Git 仓库和修复目标。 **操作 →** 定义 task 配置并 `ax apply`，随后 `ax watch` 观察，必要时 `ax ssh` 检查。 **结果 →** 在隔离环境中完成修改的工作区。

## 适合谁
Agent 平台开发者、需要批量运行 Coding Agent 的工程团队。

## 局限 / 注意点
仍属于快速发展的 Agent 基础设施；生产落地需自行评估权限、网络和资源隔离策略。

## Trending History
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-23 | 5 | +2324 | 7553 |
| 2026-09-24 | 2 | +1542 | 8917 |

## 相关主题
[[Topics/Agent|Agent]] · [[Topics/Infrastructure|Infrastructure]]
## 相关日报
- [[Daily/2026/09/2026-09-23|2026-09-23]]
- [[Daily/2026/09/2026-09-24|2026-09-24]]