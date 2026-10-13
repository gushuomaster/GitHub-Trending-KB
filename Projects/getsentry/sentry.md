---
type: github-project
repo: getsentry/sentry
url: https://github.com/getsentry/sentry
first_seen: '2026-10-03'
last_seen: '2026-10-05'
trending_count: 3
github_rank: 7
language: null
total_stars: null
forks: null
stars_today: null
category:
- Observability
- Developer-Tools
- Monitoring
tags:
- error-tracking
- tracing
- replay
- performance
topics:
- Observability
- Developer-Tools
- Monitoring
documentation_checked_at: '2026-10-13'
stats_as_of: null
---

# getsentry/sentry

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
把应用错误、追踪、性能、会话回放、日志与可用性信号集中成可定位的 Issue，帮助开发者更快复现和修复线上问题。

## 它能做什么
- 接收 JavaScript、Python、Java、Go、Rust、Swift 等官方 SDK 上报的异常与上下文。
- 聚合相似错误，展示堆栈、版本、用户影响和发生趋势。
- 用 traces、performance insights、logs 与 uptime 关联慢请求和依赖故障。
- 通过 session replay 还原前端用户操作，也支持云端服务或自托管。

## 怎么利用
在应用中安装对应官方 SDK 并配置 DSN、环境、release 和采样；产生事件后，Sentry 把异常与性能信号归并。开发者从 Issue 进入堆栈、trace 和 replay，定位代码位置，发布修复后用 release 与回归事件验证。

## 实际例子
**可推导用法 → 场景：** Web 应用结账页间歇失败。**输入：** SDK 上报的异常、请求 trace、release 和会话回放。**操作：** 在 Issue 中查看堆栈及相关请求，定位受影响版本。**输出：** 错误位置和影响范围，修复发布后继续观察回归事件。

## 适合谁
负责线上应用可靠性、错误排查、性能与发布质量的开发团队、SRE 和平台工程师。

## 局限 / 注意点
自托管 Sentry 由多项服务组成，升级、存储和容量规划成本较高；采样可能遗漏低频问题，上报内容也可能含用户标识或敏感字段，必须配置脱敏、留存、区域和访问控制。

## 关键命令
本仓库 README 引导使用各语言官方 SDK 与 Sentry 文档；具体安装命令因框架和语言而异，不存在一条适用于全部项目的通用命令。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-03 | 12 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/2c94a658b36f43039d6e2d707f4bc9f4746da107/archive/repository/2026/2026-10-03/(null).json) |
| 2026-10-04 | 15 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fe5095909e994262e6bf167a48b8035f8d07bb3b/archive/repository/2026/2026-10-04/(null).json) |
| 2026-10-05 | 7 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/25d857f152fee80260225fdeb6dc0460fb61c5b8/archive/repository/2026/2026-10-05/(null).json) |

## 相关主题
[[Topics/Observability|Observability]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Monitoring|Monitoring]]

## 相关日报
- [[Daily/2026/10/2026-10-03|2026-10-03]]
- [[Daily/2026/10/2026-10-04|2026-10-04]]
- [[Daily/2026/10/2026-10-05|2026-10-05]]

## GitHub 原始链接
https://github.com/getsentry/sentry

## 官方资料复核（2026-10-13）
- README：https://github.com/getsentry/sentry/blob/master/README.md
- README blob SHA：`70d14258712070c2435402c285d584aab7f66c95`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。
