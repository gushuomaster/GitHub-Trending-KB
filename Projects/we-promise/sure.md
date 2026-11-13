---
type: github-project
repo: "we-promise/sure"
url: "https://github.com/we-promise/sure"
first_seen: "2026-11-11"
last_seen: "2026-11-13"
trending_count: 3
language: "Ruby"
total_stars: 13892
forks: 1038
stars_today: 967
github_rank: 5
fetched_at: "2026-11-13T08:07:57+08:00"
documentation_checked_at: "2026-11-13"
stats_as_of: "2026-11-13"
snapshot_status: "live"
category: ["Personal Finance","Self-Hosted","Rails"]
topics: ["Personal-Finance","Self-Hosted","MCP"]
---
# we-promise/sure

## 一句话说明
Sure 是由社区接续维护的自托管个人财务与财富管理应用，把账户、交易、设置和外部接入集中到同一台 Rails 服务，用户可以掌控自己的财务数据。

## 它能做什么
- 通过完整 Web 应用管理设置、连接数据提供方、查看账户与交易。
- 让浏览器、macOS 桌面壳、基础 iOS/Android 客户端共用同一套账户、认证、权限和财务数据。
- 提供 HTTP/OpenAPI 与 MCP 入口，供脚本、仪表盘或 AI 助手结构化访问 Sure 数据。
- 支持 Docker Compose 自托管，也提供本地 Rails 开发和多种一键部署模板。

## 怎么利用
自托管者按 Docker 指南下载 compose 文件并配置环境变量，启动 Rails、PostgreSQL、Redis/Sidekiq 后从浏览器登录；输入账户与交易数据后，可在 Web 界面管理财务，也可让已授权的 API 或 MCP 客户端读取同一份数据并输出自动化报表。

## 实际例子
**官方本地开发流程 →** 复制环境变量文件，运行 `bin/setup` 与 `bin/dev`，可选导入 demo data；访问 `http://localhost:3000` 后，用示例账户查看完整 Web 应用及财务数据。

## 关键命令
```bash
cp .env.local.example .env.local
bin/setup
bin/dev
```

## 适合谁
希望自行托管个人财务数据的个人或家庭，以及需要为财务应用开发 Web、桌面、移动、API 或 AI 集成的贡献者。

## 局限 / 注意点
该项目是已停止维护的 Maybe Finance 的社区分支，采用 AGPLv3；移动端目前主要覆盖登录与账户余额，完整功能仍以 Web 为主。官方也公开承认数据量较大时存在性能问题；把服务或 MCP 暴露到公网前必须正确配置密钥、认证、备份和访问控制。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-11 | 6 | 159 | 11914 | 888 | GitHub Today live snapshot |
| 2026-11-12 | 7 | 1078 | 12938 | 958 | GitHub Today live snapshot |
| 2026-11-13 | 5 | 967 | 13892 | 1038 | GitHub Today live snapshot |

## 相关主题
[[Topics/Personal-Finance|Personal-Finance]] · [[Topics/Self-Hosted|Self-Hosted]] · [[Topics/MCP|MCP]]

## 相关日报
- [[Daily/2026/11/2026-11-11|2026-11-11]]

- [[Daily/2026/11/2026-11-12|2026-11-12]]

- [[Daily/2026/11/2026-11-13|2026-11-13]]

## GitHub 原始链接
https://github.com/we-promise/sure

## 官方资料复核（2026-11-11）
- README：https://github.com/we-promise/sure/blob/HEAD/README.md
- README blob SHA：`35f5c2e0681b8ef1c55545a5846535e8198ce4c8`
- 客户端说明：https://github.com/we-promise/sure/blob/HEAD/docs/clients.md
- Docker 指南：https://github.com/we-promise/sure/blob/HEAD/docs/hosting/docker.md
- 榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-12）
- README：https://github.com/we-promise/sure/blob/HEAD/README.md
- README blob SHA：`35f5c2e0681b8ef1c55545a5846535e8198ce4c8`
- 本次按当前官方资料复核，仅合并当天榜单事实、历史和证据；既有能力、案例、分类、风险说明与较早历史均保留。

## 官方资料复核（2026-11-13）
- README：https://github.com/we-promise/sure/blob/HEAD/README.md
- README blob SHA：`35f5c2e0681b8ef1c55545a5846535e8198ce4c8`
- 本次按当前官方资料复核，仅合并当天榜单事实、历史和证据；既有能力、案例、分类、风险说明与较早历史均保留。
