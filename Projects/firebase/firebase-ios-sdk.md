---
repo: "firebase/firebase-ios-sdk"
url: "https://github.com/firebase/firebase-ios-sdk"
first_seen: 2026-10-01
last_seen: 2026-10-01
trending_count: 1
github_rank: 11
stars_today: 8
total_stars: 6761
forks: 1800
language: C++
fetched_at: "2026-10-01T07:59:50+08:00"
category: ["Mobile", "Apple", "Backend SDK"]
tags: ["firebase", "ios", "swift", "firestore", "authentication"]
topics: ["Developer-Tools"]
status: active
---
# firebase/firebase-ios-sdk

## 一句话说明
为 iOS、macOS、Catalyst、tvOS 等 Apple 应用接入 Firebase 身份认证、数据库、分析、推送和崩溃监控能力。

## 它能做什么
- 通过 Swift Package Manager 或 CocoaPods 集成模块化 Firebase SDK。
- 为 Apple 应用提供 Auth、Firestore、Storage、Messaging、Analytics、Crashlytics 等客户端能力。
- 支持官方版本标签，也可从 Git 分支或本地源码构建测试。

## 怎么利用
在 Xcode 的 Package Dependencies 添加该仓库并只选择应用需要的产品；下载项目的 GoogleService-Info.plist、初始化 Firebase，再在业务代码中调用 Auth 或 Firestore，最终得到连接 Firebase 后端的 Apple 应用。

## 实际例子
**官方安装路径对应场景 →** 给 Swift iOS 应用增加登录和云端资料。 **输入 →** Xcode 项目、Firebase 项目配置和所需 Auth/Firestore 包。 **操作 →** 用 Swift Package Manager 添加 SDK，初始化 Firebase 并实现注册、登录和资料读写。 **输出 →** 用户可登录且资料同步到 Firestore 的 App。

## 适合谁
开发 iPhone、iPad、macOS、tvOS 或 Catalyst 应用并使用 Firebase 后端的 Apple 开发者。

## 局限 / 注意点
各 Firebase 产品有独立计费、隐私披露和平台最低版本要求；README 明确说明 CocoaPods 将于 2026 年 10 月停止发布新版本，应优先规划 Swift Package Manager。使用未发布分支会承担兼容风险。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-10-01 | 11 | +8 | 6761 |

## 相关主题
[[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-01|2026-10-01]]

