---
type: github-project
repo: "cloudflare/quiche"
url: "https://github.com/cloudflare/quiche"
first_seen: 2026-09-20
last_seen: 2026-09-22
trending_count: 2
language: "Rust"
total_stars: 12309
stars_today: 69
github_rank: 7
category: ["Networking", "QUIC", "HTTP/3"]
topics: ["Networking", "QUIC", "HTTP/3"]
---
# cloudflare/quiche

## 一句话说明
Cloudflare 用 Rust 实现的 QUIC 传输协议与 HTTP/3 库，为边缘代理、客户端和网络研究提供底层协议栈。

## 它能做什么
- 处理 QUIC 数据包、连接状态、流与超时
- 在 QUIC 之上提供 HTTP/3 请求响应 API
- 暴露 C API 供 C/C++ 与其他 FFI 语言集成
- 支持拥塞控制、pacing 与互操作测试工具

## 怎么利用
官方命令行示例：构建仓库后运行 `cargo run --bin quiche-client -- https://cloudflare-quic.com/` 验证 QUIC 握手与 HTTP/3；集成应用则负责 socket、事件循环、定时器与发送 pacing。

## 实际例子
**场景 → 输入 → 操作 → 输出：** 官方命令行示例：构建仓库后运行 `cargo run --bin quiche-client -- https://cloudflare-quic.com/` 验证 QUIC 握手与 HTTP/3；集成应用则负责 socket、事件循环、定时器与发送 pacing。

## 适合谁
实现 HTTP/3、边缘代理、DNS over HTTP/3 或研究 QUIC 协议的网络工程师。

## 局限 / 注意点
- 这是低层 API，应用必须正确实现 I/O、事件循环与超时；示例客户端/服务端不适合生产，部署还需验证 TLS、拥塞控制、标准互操作和平台构建依赖。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-20 | 9 | 未保存 | 未保存 | 日期匹配归档；原日报未保存该项目统计 |
| 2026-09-22 | 7 | 69 | 12309 | 仓库已存快照 |

## 相关主题
[[Topics/Networking|Networking]] · [[Topics/QUIC|QUIC]] · [[Topics/HTTP/3|HTTP/3]]

## 相关日报
- [[Daily/2026/09/2026-09-20|2026-09-20]]
- [[Daily/2026/09/2026-09-22|2026-09-22]]

## GitHub 原始链接
https://github.com/cloudflare/quiche

## 官方资料核对
- 核对日期：2026-10-10
- README：https://github.com/cloudflare/quiche/blob/HEAD/README.md
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

## 2026-09-20 历史核验
- GitHub Trending 原始排名：#9
- Stars Today：未保存
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/aeea175a90b86aba1844727221cf2aaa8decd908/archive/repository/2026/2026-09-20/(null).json)
- 归档提交时间：2026-09-20T00:53:39Z；该时间不是页面抓取时间。
