---
type: github-project
repo: "pookjw/HermesEnabler"
url: "https://github.com/pookjw/HermesEnabler"
first_seen: "2026-11-13"
last_seen: "2026-11-13"
trending_count: 1
language: "Objective-C"
total_stars: 1524
forks: 139
stars_today: 218
github_rank: 4
fetched_at: "2026-11-13T08:07:57+08:00"
documentation_checked_at: "2026-11-13"
stats_as_of: "2026-11-13"
snapshot_status: "live"
category: ["Apple Watch","Customization","iOS"]
topics: ["Apple-Watch","iOS","Customization"]
---
# pookjw/HermesEnabler

## 一句话说明
HermesEnabler 2 通过 iPhone 侧载应用并在 Apple Watch 上执行引导，使非 Hermès 版本设备也能启用 Hermès 表盘。

## 它能做什么
- 提供 Release IPA，可在 macOS 通过 Sideloadly、在 Windows 通过 WatchBridge 侧载。
- 从 iPhone 的 Watch 应用把 HermesEnabler2 安装到 Apple Watch，并在手表端完成启用。
- 允许开发者用 Xcode 选择自己的 Apple Watch 直接构建运行。

## 怎么利用
输入兼容 watchOS 的 Apple Watch、配对 iPhone 与包含 iPhone host/Watch app 的原始 IPA；macOS 用 Sideloadly 或 Xcode，Windows 用 WatchBridge 经 USB 配对并请求 Developer Mode，再签名安装。随后在手表端按引导执行，输出可用的 Hermès 表盘配置。

## 实际例子
**官方 macOS IPA 流程 →** 下载 Release IPA，在 Sideloadly 关闭自动 Bundle ID、设置固定 Bundle ID 后安装，分别在 iPhone 与 Apple Watch 开启 Developer Mode；到“Watch → 我的手表 → App”安装 HermesEnabler2，并在手表中完成步骤。Windows 用户可按官方新增流程改用 WatchBridge。

## 关键命令
```bash
# 从 Releases 下载 IPA 后使用 Sideloadly 安装
# 或在 Xcode 打开 HermesEnabler2.xcodeproj 并选择 Apple Watch 运行
```

## 适合谁
希望在明确兼容版本内测试 Hermès 表盘、并能承担侧载和恢复风险的 Apple Watch 高级用户或 iOS/watchOS 开发者。

## 局限 / 注意点
仅支持 watchOS 27.0 至 27.3 beta 1。Sideloadly 0.72 已有签名时移除内嵌 Watch app 的已知报告，出现该情况应改用 Xcode；免费 Apple Personal Team 的描述文件 7 天过期，App Groups entitlement 可能需要付费开发者团队。更新必须保持同一 Bundle ID 与 Apple ID，删除应用前须通过应用恢复 MobileGestalt 备份。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-13 | 4 | 218 | 1524 | 139 | GitHub Today live snapshot |

## 相关主题
[[Topics/Apple-Watch|Apple-Watch]] · [[Topics/iOS|iOS]] · [[Topics/Customization|Customization]]

## 相关日报
- [[Daily/2026/11/2026-11-13|2026-11-13]]

## GitHub 原始链接
https://github.com/pookjw/HermesEnabler

## 官方资料复核（2026-11-13）
- README：https://github.com/pookjw/HermesEnabler/blob/HEAD/README.md
- README blob SHA：`e0ae90f902d619356ae3227b317dc33276492657`
- 早晨快照后官方 README 新增 macOS/Windows 分流、Developer Mode、Sideloadly 0.72、免费签名与 App Groups 限制；榜单统计仍保留 08:07:57 的同次 GitHub Trending 快照。
