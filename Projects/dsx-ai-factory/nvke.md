---
type: github-project
repo: "dsx-ai-factory/nvke"
url: "https://github.com/dsx-ai-factory/nvke"
first_seen: "2026-11-08"
last_seen: "2026-11-09"
trending_count: 2
language: "Go"
total_stars: 834
forks: 110
stars_today: 345
github_rank: 2
fetched_at: "2026-11-09T08:02:59+08:00"
documentation_checked_at: "2026-11-09"
stats_as_of: "2026-11-09"
snapshot_status: "live"
category: ["Kubernetes","GPU Infrastructure","Management Plane"]
topics: ["Kubernetes","GPU","Bare-Metal"]
---
# dsx-ai-factory/nvke

## 一句话说明
NVKE 是部署在自有 NVIDIA GPU 裸金属基础设施上的 Kubernetes 管理平面，用于创建和维护彼此隔离的客户工作负载集群。

## 它能做什么
- 通过 API 或 `nvkectl` 创建独立控制平面、etcd 和节点池的工作负载集群。
- 管理节点池扩缩、Kubernetes 升级和节点替换。
- 用 TPM 与 SPIFFE/SPIRE 建立节点身份，并可为每个集群启用 etcd 加密。

## 怎么利用
在 Linux/VM 上准备至少 6 CPU、12 GiB 空闲内存、100 GiB 磁盘和 Docker，运行 local quickstart 创建模拟管理平面与工作负载集群，最后用 `kubectl` 确认节点为 Ready。

## 实际例子
**官方本地评估 →** 在 Linux/VM 上准备至少 6 CPU、12 GiB 空闲内存、100 GiB 磁盘和 Docker，运行 local quickstart 创建模拟管理平面与工作负载集群，最后用 `kubectl` 确认节点为 Ready。

## 关键命令
```bash
git clone https://github.com/dsx-ai-factory/nvke.git
cd nvke && make build
```

## 适合谁
在自有 NVIDIA GPU 裸金属上评估多租户 Kubernetes 管理平面的平台与基础设施团队。

## 局限 / 注意点
项目是 Preview，不建议生产使用；真实部署目前只兼容 NICo。安装后 API 默认未启用认证且使用明文 HTTP，管理集群也没有升级、扩缩、替换或备份恢复流程，必须先阅读已知限制。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-08 | 15 | 123 | 547 | 88 | GitHub Today live snapshot |

| 2026-11-09 | 2 | 345 | 834 | 110 | GitHub Today live snapshot |

## 相关主题
[[Topics/Kubernetes|Kubernetes]] · [[Topics/GPU|GPU]] · [[Topics/Bare-Metal|Bare-Metal]]

## 相关日报
- [[Daily/2026/11/2026-11-08|2026-11-08]]

- [[Daily/2026/11/2026-11-09|2026-11-09]]

## GitHub 原始链接
https://github.com/dsx-ai-factory/nvke

## 官方资料复核（2026-11-08）
- README：https://github.com/dsx-ai-factory/nvke/blob/HEAD/README.md
- README blob SHA：`bf2b943794d352ab8ac6a6c23a637e12215aed44`
- 内容依据当前官方资料；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-09）
- README：https://github.com/dsx-ai-factory/nvke/blob/HEAD/README.md
- README blob SHA：`bf2b943794d352ab8ac6a6c23a637e12215aed44`
- 本次按当前官方资料复核，仅合并当天榜单事实、历史和证据；既有能力、案例、分类、风险说明与较早历史均保留。

