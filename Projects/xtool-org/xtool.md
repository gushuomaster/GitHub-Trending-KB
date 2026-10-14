---
type: github-project
repo: "xtool-org/xtool"
url: "https://github.com/xtool-org/xtool"
first_seen: "2026-10-14"
last_seen: "2026-10-14"
trending_count: 1
language: "Swift"
total_stars: 9324
forks: 396
stars_today: 1198
github_rank: 9
fetched_at: "2026-10-14T08:03:30+08:00"
category: ["iOS", "Developer-Tools", "Cross-Platform"]
tags: ["github/ios", "github/swift", "github/developer-tools"]
topics: ["iOS", "Developer-Tools", "Cross-Platform"]
documentation_checked_at: "2026-10-14"
stats_as_of: "2026-10-14"
---
# xtool-org/xtool

## 一句话说明
用 Swift Package Manager 和开放工具链在 Linux、WSL 或 macOS 构建、签名、安装并运行 iOS 应用，减少对完整 Xcode 环境的依赖。

**官方描述：** Cross-platform Xcode replacement. Build and deploy iOS apps with SwiftPM on Linux, Windows, macOS.

## 它能做什么
- 把 SwiftPM package 构建成可安装的 iOS app。
- 管理 Darwin Swift SDK、Apple Developer Services 认证与签名。
- 列出真实设备，安装、卸载和启动 IPA 或开发中的应用。
- 通过 XKit 库把 Apple Developer Services 与 iOS 设备操作嵌入自有 Swift 工具。

## 怎么利用
先按官方平台文档安装并运行 `xtool setup` 配置 Darwin Swift SDK 与开发环境；使用 `xtool new` 创建 SwiftPM iOS 项目，在项目目录执行 `xtool dev` 完成构建、签名、安装和启动。输入是 Swift 源码、包清单、开发者认证与连接设备，输出是已签名并部署到设备的应用。

## 实际例子
**官方 First App 工作流 → 场景：** 在 Linux/WSL 电脑开发一个简单 iOS 应用。**输入：** SwiftPM 项目、Apple Developer Services 认证和一台已连接 iPhone。**操作：** 完成 `setup`，用 `new` 创建项目，再用 `dev` 构建并运行。**输出：** 应用被签名、安装并启动到设备；后续也可用 `devices`、`install`、`launch` 分步操作。

## 关键命令
```sh
xtool setup
xtool new
xtool dev
```

## 适合谁
需要在 Linux、WSL 或 macOS 上自动化 iOS 构建与设备部署的 Swift 开发者、CI 工程师和跨平台工具链维护者。

## 局限 / 注意点
Windows 通过 WSL 路径使用，README 的支持范围是 Linux/WSL/macOS，并非原生 Windows GUI。构建和签名仍受 Apple SDK、开发者账号、证书、Provisioning Profile 与真实设备授权约束；它复刻部分 Xcode 功能，不等于完整替代 Interface Builder、Instruments 等全部 Xcode 工具。

## Trending 历史
- 2026-10-14：#9 · Stars Today：1198 · Total Stars：9324 · Forks：396

## 相关主题
[[Topics/iOS|iOS]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Cross-Platform|Cross-Platform]]

## 相关日报
- [[Daily/2026/10/2026-10-14|2026-10-14]]

## GitHub 原始链接
https://github.com/xtool-org/xtool

## 官方资料复核（2026-10-14）
- README：https://github.com/xtool-org/xtool/blob/main/README.md
- 官方文档：https://xtool.sh/documentation/xtooldocs/

