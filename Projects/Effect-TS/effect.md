---
type: github-project
repo: "Effect-TS/effect"
url: "https://github.com/Effect-TS/effect"
first_seen: "2026-10-03"
last_seen: "2026-10-04"
trending_count: 2
github_rank: 4
language: null
total_stars: null
forks: null
stars_today: null
category: ["TypeScript", "Developer-Tools", "Runtime"]
tags: ["effect", "typed-errors", "concurrency", "schema"]
topics: ["TypeScript", "Developer-Tools", "Runtime"]
---
# Effect-TS/effect

## 一句话说明
为 TypeScript 应用提供可组合的运行时与类型系统工具，统一处理异步流程、依赖、错误、并发、调度、追踪和 Schema。

## 它能做什么
- 把成功值、环境依赖与类型化错误通道纳入同一个 Effect 计算。
- 用依赖注入、资源作用域和结构化并发组织长生命周期服务。
- 提供重试、调度、超时、Tracing、日志与统一 Schema 校验。
- 在同一 monorepo 提供 Node、Bun、Deno、浏览器、SQL 等集成包。

## 怎么利用
在严格 TypeScript 项目安装 `effect`，把外部调用封装为 Effect，并显式声明错误与依赖层；组合重试、超时和资源清理后，在程序边界运行。输入是业务参数与依赖实现，输出是类型安全的成功值或可观察失败原因。

## 实际例子
**可推导用法（基于官方能力）→** 构建支付状态查询。**输入 →** 订单号与 HTTP client 依赖。**操作 →** 用 Effect 包装请求，针对临时网络错误重试三次、设置超时并记录 trace。**输出 →** 类型化订单状态，或可区分超时、网络和解析失败的错误。

## 关键命令
```bash
npm install effect
```

## 适合谁
需要在大型 TypeScript 服务中统一错误、依赖、并发和可观测性的后端、平台及全栈工程团队。

## 局限 / 注意点
要求 TypeScript 5.9+、Node.js 18+ 和 `strict`；抽象与类型学习曲线较高。Effect 4.x 是 LTS，但 unstable API 可在次版本变化、experimental API 可在补丁版本变化，3.x 项目升级必须按迁移指南处理。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-03 | 16 | 未保存 | 未保存 | 日期匹配语言不限归档 |
| 2026-10-04 | 4 | 未保存 | 未保存 | 仓库已存日期匹配快照 |

## 相关主题
[[Topics/TypeScript|TypeScript]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Runtime|Runtime]]

## 相关日报
- [[Daily/2026/10/2026-10-03|2026-10-03]]
- [[Daily/2026/10/2026-10-04|2026-10-04]]

## GitHub 原始链接
https://github.com/Effect-TS/effect

## 官方资料核对
- 核对日期：2026-10-13
- README：https://github.com/Effect-TS/effect/blob/main/README.md
- README blob SHA：4d9effea2842776e393e8c3c03b417b10492ce37
- 说明：版本要求和 LTS 状态只代表核对日。
