---
repo: "kelseyhightower/kubernetes-the-hard-way"
url: "https://github.com/kelseyhightower/kubernetes-the-hard-way"
first_seen: 2026-09-26
last_seen: 2026-09-26
trending_count: 1
github_rank: 10
stars_today: null
total_stars: 50235
forks: 15928
language: "未标注"
metadata_checked_at: "2026-09-28T16:09:06+08:00"
snapshot_status: archived_backfill
topics: ["Kubernetes", "Infrastructure", "Education"]
status: active
---
# kelseyhightower/kubernetes-the-hard-way

## 一句话说明
通过手工搭建 Kubernetes 控制面和工作节点，理解集群各组件如何协同。

> 使用方式依据仓库当前 README 核对于 2026-09-28；这不代表历史上榜当日的 README 版本。

## 它能做什么
- 从 CA、证书、etcd 到控制面逐步搭建
- 覆盖容器运行时、CNI、kubectl 与网络路由
- 明确面向学习而不是自动化生产部署

## 怎么利用
准备同一网络中的四台 ARM64/AMD64 虚拟机或物理机，严格按实验顺序完成 jumpbox、证书、etcd、控制面和 worker，并记录每一步故障。

## 实际例子
**官方实验：** 场景 → 学习 Kubernetes 启动链路。输入 → 4 台主机。操作 → 依次完成仓库 `docs/01` 到后续实验。输出 → 一个可工作的单控制面、双 worker 学习集群和完整手工配置记录。

## 适合谁
想理解 Kubernetes 底层组件、证书和网络，而不满足于一键安装的运维与平台工程师。

## 局限 / 注意点
README 明确结果不适合生产；版本与基础设施要求会变化，学习环境也需要独立网络和足够时间。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-09-26 | 10 | 未保存 | 未保存 | 未保存 | archived_backfill |

> 上表只保留归档可证明的日期与原始顺序；当前 Stars/Forks 仅记录在 frontmatter 的 `metadata_checked_at` 快照，不冒充历史数值。

## 相关主题
[[Topics/Kubernetes|Kubernetes]] · [[Topics/Infrastructure|Infrastructure]] · [[Topics/Education|Education]]

## 相关日报
- [[Daily/2026/09/2026-09-26|2026-09-26]]
