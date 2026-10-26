---
type: github-project
repo: "coollabsio/coolify"
url: "https://github.com/coollabsio/coolify"
first_seen: "2026-10-26"
last_seen: "2026-10-26"
trending_count: 1
github_rank: 9
stars_today: 152
total_stars: 64350
forks: 5785
language: "PHP"
fetched_at: "2026-10-26T08:02:30+08:00"
documentation_checked_at: "2026-10-26"
stats_as_of: "2026-10-26"
snapshot_status: live
category: ["Self-hosted PaaS", "Deployment", "DevOps"]
topics: ["PaaS", "Self-hosting", "Docker", "Deployment"]
status: active
---
# coollabsio/coolify

## 一句话说明
把自己的服务器变成类似 Vercel、Heroku 或 Netlify 的部署平台，让团队从 Git 仓库发布应用、数据库和一键服务，同时保留基础设施控制权。

## 它能做什么
- 从 GitHub、GitLab、Bitbucket、Gitea 或 Docker 镜像部署静态站点、全栈应用和数据库。
- 支持 Nixpacks、Railpack、Dockerfile、Docker Compose 与 360 多个一键服务。
- 提供推送自动部署、PR 预览、回滚、域名、HTTPS、日志、终端、健康检查和备份。
- 通过面板、API、CLI 和 MCP 管理多台 SSH 服务器、环境变量、定时任务与团队权限。

## 怎么利用
先在一台受支持的 Linux 服务器安装 Coolify，再通过 SSH 添加部署目标并连接 Git 仓库。输入是代码仓库、构建方式、环境变量和域名；Coolify 拉取源码、构建容器、配置反向代理和证书，最终输出可访问的 HTTPS 应用，以及持续部署、日志和回滚入口。

## 实际例子
**官方能力对应场景 → 场景：** 将一个 GitHub 上的 Web 应用部署到自己的 VPS。**输入：** VPS、仓库授权、域名和生产环境变量。**操作：** 安装 Coolify，在面板添加服务器与仓库，选择自动检测的构建方式并绑定域名；以后 push 触发新构建。**输出：** 带自动 HTTPS 的线上应用、部署日志、健康状态和可回滚版本。

```bash
curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash
```

## 适合谁
希望以图形化方式管理自有 VPS 部署的独立开发者、小团队和平台工程师，以及需要私有化 PaaS 的组织。

## 局限 / 注意点
- 自托管意味着用户负责服务器系统、网络、安全、备份和升级；官方建议把 Coolify 控制面与生产目标服务器分开，并应先审查远程安装脚本。
- 需要兼容的 Linux/SSH 环境；一键服务仍要按各软件许可证、资源需求和数据持久化要求配置。托管云版本与部分商业支持另行收费。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-26 | 9 | 152 | 64350 | 5785 | GitHub Today live snapshot |

## 相关主题
[[Topics/PaaS|PaaS]] · [[Topics/Self-hosting|Self-hosting]] · [[Topics/Docker|Docker]] · [[Topics/Deployment|Deployment]]

## 相关日报
- [[Daily/2026/10/2026-10-26|2026-10-26]]

## GitHub 原始链接
https://github.com/coollabsio/coolify

## 官方资料复核（2026-10-26）
- README：https://github.com/coollabsio/coolify/blob/v4.x/README.md
- README blob SHA：`de6b809814b80de379c15f1266215dd8cf3a17c7`
