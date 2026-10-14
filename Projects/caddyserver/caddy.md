---
type: github-project
repo: caddyserver/caddy
first_seen: '2026-10-05'
last_seen: '2026-10-06'
url: https://github.com/caddyserver/caddy
trending_count: 2
github_rank: 8
documentation_checked_at: '2026-10-13'
stats_as_of: null
stars_today: null
total_stars: null
forks: null
language: null
---

# caddyserver/caddy

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
默认启用 TLS 的可扩展 Web 服务器，可用简短配置提供 HTTPS、静态站点和反向代理。

## 它能做什么
- 自动管理公网站点证书及本地 CA，支持 HTTP/1.1、HTTP/2、HTTP/3。
- 支持 Caddyfile、JSON 配置、动态配置 API 与扩展模块。
- 单一 Go 可执行程序便于部署，适合放在应用服务前作为 Web 入口。

## 怎么利用
下载官方 release；为域名配置 DNS、开放验证和服务端口，在 Caddyfile 中用站点块及 `reverse_proxy localhost:8000` 指向后端。按官方文档启动，检查证书与上游响应。

## 实际例子
**可推导用法 → 场景：** 给本机 FastAPI 服务增加公网 HTTPS 入口。**输入：** 指向服务器的域名和监听 8000 的 API。**操作：** 用 Caddyfile 配置反向代理，访问域名测试。**输出：** HTTPS API 地址及代理请求日志，后端仍承担业务逻辑。

## 适合谁
部署 Web 应用、API 和静态站点的开发者与运维人员。

## 局限 / 注意点
自动证书依赖域名验证条件和网络连通性；特定插件需要定制构建，认证、限流及后端权限仍需明确配置。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-05 | 10 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/25d857f152fee80260225fdeb6dc0460fb61c5b8/archive/repository/2026/2026-10-05/(null).json) |
| 2026-10-06 | 8 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fb3bb70ad58f298d2e18bd46d2c445de3b27cc42/archive/repository/2026/2026-10-06/(null).json) |

## 相关日报
- [[Daily/2026/10/2026-10-05|2026-10-05]]
- [[Daily/2026/10/2026-10-06|2026-10-06]]

## GitHub 原始链接
https://github.com/caddyserver/caddy

## 官方资料复核（2026-10-13）
- README：https://github.com/caddyserver/caddy/blob/master/README.md
- README blob SHA：`24b466d8c42d1b198ac13e49d81ad53df8b6328d`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。

## 相关主题
[[Topics/Web-Server|Web Server]] · [[Topics/Networking|Networking]] · [[Topics/Security|Security]]
