---
repo: "mvt-project/mvt"
url: "https://github.com/mvt-project/mvt"
first_seen: 2026-09-22
last_seen: 2026-09-24
trending_count: 3
github_rank: 13
stars_today: 546
total_stars: 14439
forks: 1379
language: Python
category: ["Security","Forensics"]
tags: ["mobile","forensics","security","ios","android","python"]
topics: ["Security"]
status: active
---
# mvt-project/mvt

## 一句话说明
Mobile Verification Toolkit，用于在设备所有者授权下分析 iOS/Android 数据并寻找高级移动间谍软件或已知入侵指标的迹象。

## 它能做什么
- 分析 iOS 备份和相关系统数据。
- 分析 Android 设备/备份数据。
- 下载、匹配公开 IOC 并输出取证线索。

## 怎么利用
安全人员获取设备所有者授权和合法备份后，用 MVT 解析设备数据，再结合公开 IOC 检查可疑域名、进程或其他痕迹。

## 实际例子
**场景 →** 检查 iPhone 是否存在已知攻击迹象。 **输入 →** 合法取得的 iPhone 备份和 IOC。 **操作 →** 使用 `mvt-ios` 分析备份并执行 IOC 匹配。 **结果 →** 生成供取证人员进一步解释的可疑事件/指标报告。

## 适合谁
移动安全研究员、数字取证团队、威胁调查人员。

## 局限 / 注意点
不是普通杀毒软件；未命中 IOC 不代表设备安全，结果需要专业解释并遵守隐私和证据保全要求。

## Trending History
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-22 | 8 | +177 | 13526 |
| 2026-09-23 | 6 | +441 | 14085 |
| 2026-09-24 | 13 | +546 | 14439 |
## 相关主题
[[Topics/Security|Security]]
## 相关日报
- [[Daily/2026/09/2026-09-22|2026-09-22]]
- [[Daily/2026/09/2026-09-23|2026-09-23]]
- [[Daily/2026/09/2026-09-24|2026-09-24]]