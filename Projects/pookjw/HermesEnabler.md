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
- 提供 Release IPA，可通过 Sideloadly 侧载到 iPhone。
- 从 iPhone 的 Watch 应用把 HermesEnabler2 安装到 Apple Watch，并在手表端完成启用。
- 允许开发者用 Xcode 选择自己的 Apple Watch 直接构建运行。

## 怎么利用
输入兼容 watchOS 的 Apple Watch、iPhone 和 IPA；使用固定 Bundle ID 与 Apple ID 侧载，随后从 Watch 应用安装并在手表端按引导执行，输出可用的 Hermès 表盘配置。

## 实际例子
**官方 IPA 流程 →** 下载 Release IPA，在 Sideloadly 关闭自动 Bundle ID 后安装；到“Watch → 我的手表 → App”安装 HermesEnabler2，并在手表中完成步骤。

## 关键命令
```bash
# 从 Releases 下载 IPA 后使用 Sideloadly 安装
# 或在 Xcode 打开 HermesEnabler2.xcodeproj 并选择 Apple Watch 运行
```

## 适合谁
希望在明确兼容版本内测试 Hermès 表盘、并能承担侧载和恢复风险的 Apple Watch 高级用户或 iOS/watchOS 开发者。

## 局限 / 注意点
仅支持 watchOS 27.0 至 27.3 beta 1；更新时必须保持同一 Bundle ID 和 Apple ID。删除应用前要通过应用恢复 MobileGestalt 备份，否则可能丢失可恢复状态；项目明确要求自行承担风险。

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
- README blob SHA：`9097b66aa2f1e7695ee48cdfff0ce6d7543fc61a`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
