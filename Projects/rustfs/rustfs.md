---
type: github-project
repo: "rustfs/rustfs"
url: "https://github.com/rustfs/rustfs"
first_seen: 2026-09-19
last_seen: 2026-09-19
trending_count: 1
github_rank: 13
stars_today: null
category: ["Object Storage", "S3", "Distributed Systems"]
topics: ["Object Storage", "S3", "Distributed Systems"]
---
# rustfs/rustfs

## 一句话说明
用 Rust 构建的高性能分布式对象存储，提供广泛 S3 兼容接口，面向数据湖、AI 与大数据工作负载。

## 它能做什么
- 通过 S3 兼容 API 存取对象与管理桶
- 用分布式和纠删码能力扩展容量与容错
- 支持 Docker、Helm 和源码方式部署
- 为数据湖、备份、AI 数据集提供对象存储底座

## 怎么利用
官方部署路线：先用 Docker 在测试环境启动 RustFS，创建桶并把现有 S3 客户端指向新 endpoint；完成上传、下载和权限验证后，再用 Helm 或集群方案扩展到生产。

## 实际例子
**场景 → 输入 → 操作 → 输出：** 官方部署路线：先用 Docker 在测试环境启动 RustFS，创建桶并把现有 S3 客户端指向新 endpoint；完成上传、下载和权限验证后，再用 Helm 或集群方案扩展到生产。

## 适合谁
需要自托管 S3 兼容对象存储的数据平台、备份和 AI 基础设施团队。

## 局限 / 注意点
- S3 兼容不等于覆盖 AWS 的全部语义与生态；生产采用前必须验证纠删码、升级、备份、故障切换、权限和实际负载下的性能。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-19 | 13 | 未保存 | 未保存 | 日期匹配语言不限归档；原日报未保存该项目统计 |

## 相关主题
[[Topics/Object Storage|Object Storage]] · [[Topics/S3|S3]] · [[Topics/Distributed Systems|Distributed Systems]]

## 相关日报
- [[Daily/2026/09/2026-09-19|2026-09-19]]

## GitHub 原始链接
https://github.com/rustfs/rustfs

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/rustfs/rustfs/blob/HEAD/README.md
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

## 2026-09-19 历史核验
- GitHub Trending 原始排名：#13
- Stars Today：未保存
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/50dbf9e6ba9fec94c2305ac03448b8ddd7e15988/archive/repository/2026/2026-09-19/(null).json)
- 归档提交时间：2026-09-19T00:04:06Z；该时间不是页面抓取时间。
