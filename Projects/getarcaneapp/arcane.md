---
type: github-project
repo: "getarcaneapp/arcane"
url: "https://github.com/getarcaneapp/arcane"
first_seen: "2026-11-17"
last_seen: "2026-11-18"
trending_count: 2
language: "Go"
total_stars: 9307
forks: 513
stars_today: 618
github_rank: 6
fetched_at: "2026-11-18T08:04:14+08:00"
documentation_checked_at: "2026-11-18"
stats_as_of: "2026-11-18"
snapshot_status: "live"
category: ["Docker Management", "DevOps", "Self-Hosted"]
topics: ["Docker", "DevOps", "Self-Hosted"]
---
# getarcaneapp/arcane

## 一句话说明
Arcane 是面向个人和团队的现代 Docker/Podman 管理界面，用一个 Web 控制台管理主机、Compose 项目、容器、镜像、卷和网络。

## 它能做什么
- 创建、编辑、部署和重启 Docker Compose 项目，也能管理在 Arcane 之外启动的单容器。
- 查看容器状态与资源占用，编辑镜像、端口、挂载、环境变量、网络和资源限制。
- 管理卷、网络拓扑和端口占用，并提供卷备份/恢复、远程主机、Swarm 与安全扫描能力。

## 怎么利用
官方安装流程：先生成加密密钥，再用 Docker Compose 启动 Manager 并挂载 Docker socket；浏览器打开 3552 端口，创建 Compose 项目、保存 YAML/`.env`，点击 Up 部署服务。

## 实际例子
**官方资料中的工作流 →** 官方安装流程：先生成加密密钥，再用 Docker Compose 启动 Manager 并挂载 Docker socket；浏览器打开 3552 端口，创建 Compose 项目、保存 YAML/`.env`，点击 Up 部署服务。

## 关键命令
```bash
docker run --rm ghcr.io/getarcaneapp/manager:latest /app/arcane generate secret
docker compose up -d
```

## 适合谁
管理 Docker/Podman 主机、Compose 项目和持久化数据的运维人员与自托管用户。

## 局限 / 注意点
挂载 Docker socket 等同于授予高权限，应限制控制台访问并使用官方安全配置；v3 与旧数据库、变量和 Agent/CLI 版本存在迁移要求，升级前需备份并按迁移指南处理。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-17 | 5 | 46 | 8699 | 403 | GitHub Today live snapshot |
| 2026-11-18 | 6 | 618 | 9307 | 513 | GitHub Today live snapshot |

## 相关主题
[[Topics/Docker|Docker]] · [[Topics/DevOps|DevOps]] · [[Topics/Self-Hosted|Self-Hosted]]

## 相关日报

- [[Daily/2026/11/2026-11-17|2026-11-17]]
- [[Daily/2026/11/2026-11-18|2026-11-18]]

## GitHub 原始链接
https://github.com/getarcaneapp/arcane

## 官方资料复核（2026-11-17）
- README：https://github.com/getarcaneapp/arcane/blob/HEAD/README.md
- README blob SHA：`94063cc0583ae7b52e1d376c702a9fce852f6284`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-18）
- README：https://github.com/getarcaneapp/arcane/blob/HEAD/README.md
- README blob SHA：`94063cc0583ae7b52e1d376c702a9fce852f6284`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。

