---
type: github-project
repo: "tailscale/tailcat"
url: "https://github.com/tailscale/tailcat"
first_seen: "2026-11-14"
last_seen: "2026-11-14"
trending_count: 1
language: "Go"
total_stars: 9446
forks: 430
stars_today: 256
github_rank: 10
fetched_at: "2026-11-14T08:06:26+08:00"
documentation_checked_at: "2026-11-14"
stats_as_of: "2026-11-14"
snapshot_status: "live"
category: ["Networking","WireGuard","CLI"]
topics: ["Networking","WireGuard","P2P"]
---
# tailscale/tailcat

## 一句话说明
Tailcat 把 Tailscale 的开源数据平面做成类似 netcat 的点对点隧道工具，不依赖 Tailscale 账户或控制平面，也不修改系统路由和 DNS。

## 它能做什么
- 通过 WireGuard、magicsock 和 DERP 建立端到端加密隧道，并尽量升级为直连 UDP。
- 可传输 stdin/stdout、暴露或转发端口、运行 SSH、发送文件和测量吞吐延迟。
- 默认使用单次临时密钥，也支持保存密钥、客户端 allowlist、自建 DERP 和 Go 库集成。

## 怎么利用
服务端直接运行 `tailcat` 得到一次性 `tc...` 地址，客户端执行 `echo hello | tailcat <地址>`；输出通过加密隧道到达服务端标准输出。

## 实际例子
**官方最小场景 →** 服务端直接运行 `tailcat` 得到一次性 `tc...` 地址，客户端执行 `echo hello | tailcat <地址>`；输出通过加密隧道到达服务端标准输出。

## 关键命令
```bash
tailcat
# 在另一台机器：echo hello | tailcat <tc-address>
```

## 适合谁
需要在两台设备间临时建立加密管道、端口转发或文件传输，又不希望部署完整控制平面的开发者和运维人员。

## 局限 / 注意点
`tc...` 地址默认是包含预共享密钥的 bearer capability，泄露即可能授权连接；保存地址会跨重启持续有效。CLI、Go API 和线协议没有稳定承诺，公共 DERP 有限流且无可用性或吞吐 SLA。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-14 | 10 | 256 | 9446 | 430 | GitHub Today live snapshot |

## 相关主题
[[Topics/Networking|Networking]] · [[Topics/WireGuard|WireGuard]] · [[Topics/P2P|P2P]]

## 相关日报
- [[Daily/2026/11/2026-11-14|2026-11-14]]

## GitHub 原始链接
https://github.com/tailscale/tailcat

## 官方资料复核（2026-11-14）
- README：https://github.com/tailscale/tailcat/blob/HEAD/README.md
- README blob SHA：`3082f93efd9a2717c2bb0906625997d9d26264cb`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
