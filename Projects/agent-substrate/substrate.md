---
repo: "agent-substrate/substrate"
url: "https://github.com/agent-substrate/substrate"
first_seen: 2026-09-23
last_seen: 2026-09-24
trending_count: 2
github_rank: 8
stars_today: 560
total_stars: 3437
forks: 409
language: Go
category: ["AI","Agent","Infrastructure"]
tags: ["agent","runtime","orchestration","go"]
topics: ["Agent","Infrastructure"]
status: active
---
# agent-substrate/substrate

## 一句话说明
面向大量有状态 AI Agent 的运行基础层，重点处理 Agent 生命周期、隔离、暂停/恢复和底层资源复用。

## 它能做什么
- 管理有状态 Agent/Actor 生命周期。
- 复用 Worker 并支持暂停、恢复。
- 结合容器/沙箱基础设施隔离 Agent 执行环境。

## 怎么利用
把每个长期 Agent 会话作为有状态 Actor 管理；空闲时暂停释放计算资源，用户回来后恢复原状态，减少大规模 Agent 平台的常驻资源成本。

## 实际例子
**场景 →** 同时服务数百个 Coding Agent 会话。 **操作 →** 让活跃 Actor 占用 Worker，空闲 Actor 暂停；恢复会话时重新调度。 **结果 →** 多个有状态 Agent 复用更少的实际计算节点。

## 适合谁
Agent 平台、云端 Coding Agent、需要大规模有状态任务运行时的团队。

## 局限 / 注意点
基础设施复杂度较高，生产使用需验证隔离边界、状态恢复、Kubernetes/运行时依赖和故障恢复。

## Trending History
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-23 | 2 | +301 | 2957 |
| 2026-09-24 | 8 | +560 | 3437 |
## 相关主题
[[Topics/Agent|Agent]] · [[Topics/Infrastructure|Infrastructure]]
## 相关日报
- [[Daily/2026/09/2026-09-23|2026-09-23]]
- [[Daily/2026/09/2026-09-24|2026-09-24]]