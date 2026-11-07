---
type: github-project
repo: "prometheus/prometheus"
url: "https://github.com/prometheus/prometheus"
first_seen: "2026-11-07"
last_seen: "2026-11-07"
trending_count: 1
language: "Go"
total_stars: 67177
forks: 10988
stars_today: 148
github_rank: 9
fetched_at: "2026-11-07T08:04:42+08:00"
documentation_checked_at: "2026-11-07"
stats_as_of: "2026-11-07"
snapshot_status: "live"
category: ["Monitoring", "Time Series", "PromQL"]
topics: ["Monitoring", "Time Series", "PromQL"]
---
# prometheus/prometheus

## 一句话说明
Prometheus 是面向指标监控的时序数据库与采集系统，周期性抓取目标指标，并用 PromQL 查询、聚合和触发告警。

## 它能做什么
- 按 pull 模式抓取带标签的时间序列指标并本地存储。
- 用 PromQL 对指标进行过滤、聚合、速率和区间计算。
- 通过服务发现定位目标，并把告警规则交给 Alertmanager 处理。

## 怎么利用
如果要监控 Web 服务，可暴露 `/metrics`、在配置中加入抓取目标并启动 Prometheus；随后用 PromQL 查询请求速率和错误率，规则满足条件时产生告警。

## 实际例子
**官方资料支持的场景 →** 如果要监控 Web 服务，可暴露 `/metrics`、在配置中加入抓取目标并启动 Prometheus；随后用 PromQL 查询请求速率和错误率，规则满足条件时产生告警。

## 关键命令
```bash
docker run -p 9090:9090 prom/prometheus
```

## 适合谁
建设基础设施、Kubernetes 与应用可观测性的 SRE、平台工程师和后端团队。

## 局限 / 注意点
本地存储不是无限期长期归档方案；高基数标签会显著增加资源消耗，生产环境需设计保留期、远程存储与高可用。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-07 | 9 | 148 | 67177 | 10988 | GitHub Today live snapshot |

## 相关主题
[[Topics/Monitoring|Monitoring]] · [[Topics/Time Series|Time Series]] · [[Topics/PromQL|PromQL]]

## 相关日报
- [[Daily/2026/11/2026-11-07|2026-11-07]]

## GitHub 原始链接
https://github.com/prometheus/prometheus

## 官方资料复核（2026-11-07）
- README：https://github.com/prometheus/prometheus/blob/HEAD/README.md
- README blob SHA：`a3aca0783c2aa0ee679234c86e74fc934da08f9d`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
