---
repo: "oblien/openship"
url: "https://github.com/oblien/openship"
first_seen: 2026-09-30
last_seen: 2026-09-30
trending_count: 1
github_rank: 7
stars_today: 437
total_stars: 13807
forks: 1235
language: TypeScript
fetched_at: "2026-09-30T08:04:00+08:00"
category: ["DevOps", "Deployment", "Self-hosted"]
tags: ["deployment", "ci-cd", "docker", "self-hosted", "tls"]
topics: ["Developer-Tools"]
status: active
---
# oblien/openship

## 一句话说明
把代码仓库自动检测、构建、运行、域名路由、TLS 和 push-to-deploy 串成一个自托管部署平台，可用桌面端、Web、CLI、SDK 或 MCP 操作。

## 它能做什么
- 根据 package.json、锁文件、Compose 或配置自动推断构建与启动方式。
- 构建 Docker 镜像或裸机 release，并保存可重复部署/回滚的配置快照。
- 用 OpenResty 路由域名并申请、续期 Let's Encrypt 证书。
- 管理数据库、备份、监控、预览环境和 GitHub push-to-deploy。

## 怎么利用
个人可以用桌面端连接一台 SSH 服务器；团队则在可信 Linux 主机运行 self-hosted 控制面。进入项目目录执行 init 关联项目，再 deploy；Openship 识别技术栈、构建应用、启动容器并配置域名和 HTTPS。

## 实际例子
**官方 CLI 场景 →** 把一个 Node.js 独立站部署到自己的 VPS。 **输入 →** GitHub 仓库、VPS、域名和项目的 package.json。 **操作 →** 在服务器运行 Openship 向导创建管理员和公共地址；在项目目录执行 openship init 与 openship deploy。 **输出 →** 运行中的容器、HTTPS 域名、实时构建日志，以及后续每次 push 自动部署的流水线。

    openship init
    openship deploy

## 适合谁
希望用自己的 VPS 部署 Web 应用、需要简单 CI/CD 与回滚的个人开发者、小团队和家庭实验室。

## 局限 / 注意点
桌面端关闭后控制面不在线，也不能接收 webhook；团队和 push-to-deploy 需要公网常驻服务器。Compose 模式会挂载 Docker socket，拥有近似宿主 root 的能力，只能部署在可信主机；项目文档仍在补全，多节点、负载均衡 UI 和部分高级能力尚在路线图中。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-30 | 7 | +437 | 13807 |

## 相关主题
[[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-30|2026-09-30]]

