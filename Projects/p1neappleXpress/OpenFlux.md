---
type: github-project
repo: "p1neappleXpress/OpenFlux"
url: "https://github.com/p1neappleXpress/OpenFlux"
first_seen: 2026-09-12
last_seen: 2026-09-12
trending_count: 1
category: ["Networking","Research"]
topics: ["Networking","Developer-Tools"]
---
# p1neappleXpress/OpenFlux

## 一句话说明
面向网络栈研究的 TCP/UDP 隧道，支持可插拔传输、加密会话以及 L3 或 gVisor L4 出口。

## 它能做什么
- 在 macOS、Linux、Windows、iOS 和 Android 上建立 TCP/UDP 客户端隧道
- 提供原生传输和签名 JavaScript 脚本传输
- 支持多传输协商、认证、加密和故障切换
- 提供 L3 原始转发或无需 root 的 L4 gVisor 代理出口

## 怎么利用
官方 Quickstart：编译后在出口端以 `--role=exit --mode=l4` 启动，再在客户端用 `--inbound=socks5` 连接相同传输 URL；浏览器指向 `127.0.0.1:1080` 输出经出口转发的流量。

## 实际例子
**官方材料中的工作流：** 官方 Quickstart：编译后在出口端以 `--role=exit --mode=l4` 启动，再在客户端用 `--inbound=socks5` 连接相同传输 URL；浏览器指向 `127.0.0.1:1080` 输出经出口转发的流量。

## 关键命令
```bash
go mod tidy
go build -o openflux .
```

## 适合谁
研究网络协议、隧道和出口转发机制的网络工程师与安全研究人员。

## 局限 / 注意点
- 项目明确只用于网络研究，不鼓励绕过限制或违反平台规则；L3 模式涉及 root 与系统网络配置，错误部署可能暴露流量或破坏路由。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-12 | 12 | 未保存 | 未保存 | 语言不限归档；统计见说明 |

## 相关主题
[[Topics/Networking|Networking]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-12|2026-09-12]]

## GitHub 原始链接
https://github.com/p1neappleXpress/OpenFlux

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/p1neappleXpress/OpenFlux/blob/main/README.md
- 说明：当前资料不代表 2026-09-12 当时的功能版本。
