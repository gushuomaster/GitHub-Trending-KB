---
type: github-project
repo: "getsentry/sentry"
url: "https://github.com/getsentry/sentry"
first_seen: "2026-10-03"
last_seen: "2026-10-05"
trending_count: 3
github_rank: 7
language: null
total_stars: null
forks: null
stars_today: null
category: ["Observability", "Developer-Tools", "Monitoring"]
tags: ["error-tracking", "tracing", "replay", "performance"]
topics: ["Observability", "Developer-Tools", "Monitoring"]
---
# getsentry/sentry

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
**官方产品场景 →** Web 应用结账页出现间歇性失败。**输入 →** SDK 上报的异常、请求 trace、release 和会话回放。**操作 →** 在 Issue 中查看堆栈与相关慢依赖，定位到特定版本。**输出 →** 受影响范围、可复现路径和修复后的事件趋势。

## 关键命令
本仓库 README 引导使用各语言官方 SDK 与 Sentry 文档；具体安装命令因框架和语言而异，不存在一条适用于全部项目的通用命令。

## 适合谁
负责线上应用可靠性、错误排查、性能与发布质量的开发团队、SRE 和平台工程师。

## 局限 / 注意点
自托管 Sentry 由多项服务组成，升级、存储和容量规划成本较高；采样可能遗漏低频问题，上报内容也可能含用户标识或敏感字段，必须配置脱敏、留存、区域和访问控制。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-03 | 12 | 未保存 | 未保存 | 日期匹配语言不限归档 |
| 2026-10-04 | 15 | 未保存 | 未保存 | 仓库已存日期匹配快照 |
| 2026-10-05 | 7 | 未保存 | 未保存 | 仓库已存日期匹配快照 |

## 相关主题
[[Topics/Observability|Observability]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Monitoring|Monitoring]]

## 相关日报
- [[Daily/2026/10/2026-10-03|2026-10-03]]
- [[Daily/2026/10/2026-10-04|2026-10-04]]
- [[Daily/2026/10/2026-10-05|2026-10-05]]

## GitHub 原始链接
https://github.com/getsentry/sentry

## 官方资料核对
- 核对日期：2026-10-13
- README：https://github.com/getsentry/sentry/blob/master/README.md
- README blob SHA：70d14258712070c2435402c285d584aab7f66c95
- 说明：本卡说明的是核对日 Sentry 平台与仓库资料，不冒充历史版本。
