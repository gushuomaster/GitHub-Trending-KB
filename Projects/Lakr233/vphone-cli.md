---
type: github-project
repo: "Lakr233/vphone-cli"
url: "https://github.com/Lakr233/vphone-cli"
first_seen: 2026-09-17
last_seen: 2026-09-17
trending_count: 1
category: ["iOS", "Virtualization", "Security Research"]
topics: ["iOS", "Virtualization", "Security Research"]
---
# Lakr233/vphone-cli

## 一句话说明
在 Apple Silicon Mac 上运行可交互的虚拟 iPhone，面向 iOS 安全研究、逆向和调试。

## 它能做什么
- 通过 Apple Virtualization.framework 启动带图形窗口的 iOS 虚拟机
- 使用预处理固件并在虚拟机中安装包管理环境
- 导出、导入和克隆虚拟机，保留研究环境
- 通过可选本地 HTTP/WebSocket API 自动截图、录屏和控制

## 怎么利用
官方 Launchpad 流程：下载 notarized release，授予 Developer Tools 权限并安装 helper，下载匹配的 Core Bundle；确认固件和磁盘空间后创建机器，由 Launchpad 完成下载、修补、恢复和启动。

## 实际例子
**资料中的具体工作流：** 官方 Launchpad 流程：下载 notarized release，授予 Developer Tools 权限并安装 helper，下载匹配的 Core Bundle；确认固件和磁盘空间后创建机器，由 Launchpad 完成下载、修补、恢复和启动。

## 适合谁
进行 iOS 调试、安全研究、逆向或自动化测试的研究人员。

## 局限 / 注意点
- 只支持运行 macOS 15+ 的实体 Apple Silicon Mac，每台默认虚拟磁盘约 64GB；设置需要在 Recovery 中放宽调试限制并联网获取签名票据，必须理解主机安全与授权边界。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-17 | 6 | 未保存 | 未保存 | 日期匹配归档；可核实统计仅保留原日报证据 |

## 相关主题
[[Topics/iOS|iOS]] · [[Topics/Virtualization|Virtualization]] · [[Topics/Security Research|Security Research]]

## 相关日报
- [[Daily/2026/09/2026-09-17|2026-09-17]]

## GitHub 原始链接
https://github.com/Lakr233/vphone-cli

## 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/Lakr233/vphone-cli/blob/HEAD/README.md
- 说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

## 2026-09-17 历史核验
- GitHub Trending 原始排名：#6
- Stars Today：未保存
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/d3548164a40d3c186f33b9a0356e6e30aa857f2b/archive/repository/2026/2026-09-17/(null).json)
- 归档提交时间：2026-09-17T00:22:41Z；该时间不是页面抓取时间。
