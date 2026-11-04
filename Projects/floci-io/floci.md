---
type: "github-project"
repo: "floci-io/floci"
url: "https://github.com/floci-io/floci"
first_seen: "2026-11-04"
last_seen: "2026-11-04"
trending_count: 1
github_rank: 8
stars_today: 482
total_stars: 28746
forks: 3202
language: "Java"
fetched_at: "2026-11-04T08:08:38+08:00"
documentation_checked_at: "2026-11-04"
stats_as_of: "2026-11-04"
snapshot_status: "live"
category: ["Cloud Emulator","Testing"]
tags: ["aws","local-development","ci","emulator"]
topics: ["Cloud-Emulation","AWS","Testing"]
status: active
---
# floci-io/floci

## 一句话说明
在本地或 CI 中模拟 AWS API，把现有 AWS CLI、SDK、Terraform、CDK 和测试指向单一端点，无需云账号或认证令牌。

## 它能做什么
- 在 `localhost:4566` 提供广泛 AWS 兼容服务，沿用现有客户端与区域配置。
- Lambda、RDS、ECS、EKS、OpenSearch、CodeBuild 等场景可用真实 Docker 后端提高保真度。
- 支持内存、持久、混合和 WAL 存储模式，并提供浏览器控制台检查资源。
- 可替换 LocalStack 镜像，亦提供独立原生二进制和 Testcontainers 集成。

## 怎么利用
在开发机或 CI 启动 Floci，将 AWS 环境变量/endpoint 指向 `http://localhost:4566`；输入现有 AWS CLI、SDK、Terraform 或测试请求，Floci 在本机模拟服务并将资源写入选定存储后端，输出与 AWS 形态相近的响应和可检查资源。

## 实际例子
**官方 Quick Start → 场景：** 本地验证使用 S3 与 DynamoDB 的应用。**输入：** 标准 AWS CLI 命令。**操作：** 启动 Floci、导出本地环境，创建 S3 bucket 和 DynamoDB 表，再列出表。**输出：** 无需云账号的本地资源和 API 响应，可在测试结束后清理。

```bash
floci start
eval $(floci env)
aws s3 mb s3://my-bucket
aws dynamodb list-tables
```

## 适合谁
需要在开发机或 CI 运行 AWS 集成测试、迁移 LocalStack 社区版工作流，或用标准 AWS 工具调试基础设施的后端、平台与测试工程师。

## 局限 / 注意点
这是兼容模拟器而非真实 AWS，服务/操作语义需对照兼容矩阵；Docker 后端和 Web 控制台可能需要挂载 Docker socket，不能把本地通过等同于云端生产验证。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-04 | 8 | 482 | 28746 | 3202 | GitHub Today live snapshot |

## 相关主题
- [[Topics/Cloud-Emulation]]
- [[Topics/AWS]]
- [[Topics/Testing]]

## 相关日报
- [[Daily/2026/11/2026-11-04|2026-11-04]]

## GitHub 原始链接
https://github.com/floci-io/floci

## 官方资料复核（2026-11-04）
- README：https://github.com/floci-io/floci/blob/HEAD/README.md
- 榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

