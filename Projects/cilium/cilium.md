---
type: github-project
repo: "cilium/cilium"
url: "https://github.com/cilium/cilium"
first_seen: 2026-09-18
last_seen: 2026-09-18
trending_count: 1
category: ["Kubernetes", "eBPF", "Networking"]
topics: ["Kubernetes", "eBPF", "Networking"]
---
# cilium/cilium

## 一句话说明
基于 eBPF 的 Kubernetes 网络、安全与可观测性平台，为集群提供 CNI、负载均衡、网络策略和 Hubble 流量视图。

## 它能做什么
- 以 overlay 或原生路由构建跨节点、跨集群容器网络
- 用 eBPF 实现分布式负载均衡并可替代 kube-proxy
- 按身份而非脆弱 IP 在 L3-L7 执行网络与 DNS 策略
- 通过 Hubble、Prometheus 和服务地图观察流量、丢包与策略事件

## 怎么利用
官方入门：先核对 Kubernetes 与内核前置条件，按官方安装指南部署 Cilium；启用 Hubble 后观察服务流，再逐步添加基于标签的网络策略并验证允许与拒绝路径。

## 实际例子
**资料中的具体工作流：** 官方入门：先核对 Kubernetes 与内核前置条件，按官方安装指南部署 Cilium；启用 Hubble 后观察服务流，再逐步添加基于标签的网络策略并验证允许与拒绝路径。

## 适合谁
负责 Kubernetes 网络、安全策略、服务网格与可观测性的云原生平台团队。

## 局限 / 注意点
- 它深入 Linux 内核与集群数据面，升级、内核兼容、策略错误和 kube-proxy 替换都可能影响全局网络；生产部署必须按稳定版本指南演练升级与回滚。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-18 | 11 | 未保存 | 未保存 | 日期匹配归档；可核实统计仅保留原日报证据 |

## 相关主题
[[Topics/Kubernetes|Kubernetes]] · [[Topics/eBPF|eBPF]] · [[Topics/Networking|Networking]]

## 相关日报
- [[Daily/2026/09/2026-09-18|2026-09-18]]

## GitHub 原始链接
https://github.com/cilium/cilium

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/cilium/cilium/blob/main/README.rst
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

## 2026-09-18 历史核验
- GitHub Trending 原始排名：#11
- Stars Today：未保存
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/339673fe562fde501a85aaa2f71a287bdb97a440/archive/repository/2026/2026-09-18/(null).json)
- 归档提交时间：2026-09-18T04:12:31Z；该时间不是页面抓取时间。
