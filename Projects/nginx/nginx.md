---
type: github-project
repo: "nginx/nginx"
url: "https://github.com/nginx/nginx"
first_seen: "2026-11-20"
last_seen: "2026-11-23"
trending_count: 4
language: "C"
total_stars: 32881
forks: 8381
stars_today: 163
github_rank: 7
fetched_at: "2026-11-23T08:10:31+08:00"
documentation_checked_at: "2026-11-23"
stats_as_of: "2026-11-23"
snapshot_status: "live"
category: ["Web-Server", "Networking"]
topics: ["Web-Server", "Networking", "Infrastructure"]
---
# nginx/nginx

## 一句话说明
NGINX 是事件驱动的开源 Web 服务器、反向代理和流量入口，可终止 TLS、负载均衡、缓存内容并限制请求速率。

## 它能做什么
- 以 master/worker 多进程模型处理高并发 HTTP 与 TCP/UDP 流量。
- 通过配置实现反向代理、负载均衡、缓存、TLS 和限流。
- 支持编译期静态模块与安装后加载的动态模块。

## 怎么利用
场景：为两个应用实例配置反向代理。安装官方软件包，在 `upstream` 中登记后端并在 `server` 中使用 `proxy_pass`；先执行 `nginx -t` 检查配置，再平滑 reload，输出统一入口与健康的请求分发。

## 实际例子
**场景 → 输入 → 操作 → 输出：** 场景：为两个应用实例配置反向代理。安装官方软件包，在 `upstream` 中登记后端并在 `server` 中使用 `proxy_pass`；先执行 `nginx -t` 检查配置，再平滑 reload，输出统一入口与健康的请求分发。

## 关键命令
```bash
nginx -t
nginx -s reload
```

## 适合谁
维护 Web 服务、反向代理、API 入口和高并发流量的运维、后端与平台工程师。

## 局限 / 注意点
错误配置会造成流量中断、缓存泄露或 TLS 风险；生产环境应使用官方包、验证配置并保留回滚。第三方动态模块还要匹配 NGINX 构建版本。

## Trending 历史


| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
| --- | ---: | ---: | ---: | ---: | --- |
| 2026-11-20 | 7 | 73 | 32323 | 8414 | GitHub Today live snapshot |
| 2026-11-21 | 7 | 246 | 32560 | 8390 | GitHub Today live snapshot |
| 2026-11-22 | 7 | 189 | 32726 | 8374 | GitHub Today live snapshot |
| 2026-11-23 | 7 | 163 | 32881 | 8381 | GitHub Today live snapshot |

## 相关主题
[[Topics/Web-Server|Web-Server]] · [[Topics/Networking|Networking]] · [[Topics/Infrastructure|Infrastructure]]

## 相关日报


- [[Daily/2026/11/2026-11-20|2026-11-20]]
- [[Daily/2026/11/2026-11-21|2026-11-21]]
- [[Daily/2026/11/2026-11-22|2026-11-22]]
- [[Daily/2026/11/2026-11-23|2026-11-23]]

## GitHub 原始链接
https://github.com/nginx/nginx

## 官方资料复核（2026-11-20）
- README：https://github.com/nginx/nginx/blob/HEAD/README.md
- README blob SHA：`d6761842c97dc151ae951f86e9738e0300f9db05`
- 说明：项目卡反映核对日的当前官方资料与当天实时榜单事实。
