---
type: github-project
repo: "louislam/uptime-kuma"
url: "https://github.com/louislam/uptime-kuma"
first_seen: "2026-11-14"
last_seen: "2026-11-14"
trending_count: 1
language: "JavaScript"
total_stars: 93850
forks: 8721
stars_today: 71
github_rank: 7
fetched_at: "2026-11-14T08:06:26+08:00"
documentation_checked_at: "2026-11-14"
stats_as_of: "2026-11-14"
snapshot_status: "live"
category: ["Monitoring","Self-Hosted","DevOps"]
topics: ["Monitoring","Self-Hosted","DevOps"]
---
# louislam/uptime-kuma

## 一句话说明
Uptime Kuma 是可自托管的服务可用性监控工具，用图形界面监测网站、端口、DNS、容器等目标，并在异常时通知负责人。

## 它能做什么
- 监控 HTTP(S)、TCP、关键词、JSON 查询、WebSocket、Ping、DNS、Push 和 Docker 容器。
- 支持 20 秒级检测、延迟图、证书信息、多语言和多个公开状态页。
- 可通过 Telegram、Discord、Slack、邮件等 90 多种渠道发送通知。

## 怎么利用
下载仓库提供的 `compose.yaml` 并执行 `docker compose up -d`，然后访问 3001 端口添加 HTTP 监控；输出实时状态、延迟曲线和故障通知。

## 实际例子
**官方 Docker Compose 场景 →** 下载仓库提供的 `compose.yaml` 并执行 `docker compose up -d`，然后访问 3001 端口添加 HTTP 监控；输出实时状态、延迟曲线和故障通知。

## 关键命令
```bash
curl -o compose.yaml https://raw.githubusercontent.com/louislam/uptime-kuma/master/compose.yaml
docker compose up -d
```

## 适合谁
需要低门槛自托管网站、API、端口或容器监控与状态页的个人开发者、小团队和家庭实验室用户。

## 局限 / 注意点
Docker 数据目录不支持 NFS，必须使用本地目录或卷；默认监听所有网络接口，公网部署需反向代理、TLS、2FA 和备份。它是单实例自托管工具，不等同于具备 SLA 的托管监控服务。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-14 | 7 | 71 | 93850 | 8721 | GitHub Today live snapshot |

## 相关主题
[[Topics/Monitoring|Monitoring]] · [[Topics/Self-Hosted|Self-Hosted]] · [[Topics/DevOps|DevOps]]

## 相关日报
- [[Daily/2026/11/2026-11-14|2026-11-14]]

## GitHub 原始链接
https://github.com/louislam/uptime-kuma

## 官方资料复核（2026-11-14）
- README：https://github.com/louislam/uptime-kuma/blob/HEAD/README.md
- README blob SHA：`eb23a1b7e8d53bf2d92daa69c62d420d7ddce447`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
