---
type: github-project
repo: "MG1937/ASC"
url: "https://github.com/MG1937/ASC"
first_seen: 2026-09-16
last_seen: 2026-09-16
trending_count: 1
category: ["Android", "Reverse Engineering", "Security"]
topics: ["Android", "Reverse Engineering", "Security"]
---
# MG1937/ASC

## 一句话说明
为 Agent 和移动安全研究提供按需查询的 Android APK/DEX 反编译前端，无需先完整索引整个应用。

## 它能做什么
- 直接查询压缩 APK/DEX，按需列出清单、类与资源信息
- 查找字符串、类型、方法和字段的交叉引用
- 只提取目标所需的最小 DEX，并反编译指定类或方法
- 通过命令行输出结构化结果，适合接入自动化分析流程

## 怎么利用
官方最小流程：执行 `pip install droidasc`，然后用 `droidasc findrefs app.apk string token` 定位敏感字符串的引用，或用 `getclass` 提取目标类供 Agent 继续分析。

## 实际例子
**资料中的具体工作流：** 官方最小流程：执行 `pip install droidasc`，然后用 `droidasc findrefs app.apk string token` 定位敏感字符串的引用，或用 `getclass` 提取目标类供 Agent 继续分析。

## 关键命令
```bash
pip install droidasc
droidasc findrefs app.apk string token
```

## 适合谁
需要让 Agent 快速定位 APK 中类、方法和字符串引用的 Android 安全研究人员。

## 局限 / 注意点
- 只能分析自己拥有或获授权的 APK；按需静态查询不能替代完整动态分析和安全测试，结果还受混淆、文件格式及 Androguard 支持范围影响。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-16 | 11 | 未保存 | 未保存 | 日期匹配归档；可核实统计仅保留原日报证据 |

## 相关主题
[[Topics/Android|Android]] · [[Topics/Reverse Engineering|Reverse Engineering]] · [[Topics/Security|Security]]

## 相关日报
- [[Daily/2026/09/2026-09-16|2026-09-16]]

## GitHub 原始链接
https://github.com/MG1937/ASC

## 官方资料核对
- 核对日期：2026-10-09
- README / 官方文档：https://github.com/MG1937/ASC/blob/main/README.md
- 时间说明：项目卡反映核对日可得资料，不声称这些能力与历史上榜日的项目版本完全相同。

## 2026-09-16 历史核验
- GitHub Trending 原始排名：#11
- Stars Today：未保存
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/01abc33224d0523ab2a25bced4e1258b69fc6015/archive/repository/2026/2026-09-16/(null).json)
- 归档提交时间：2026-09-16T01:13:23Z；该时间不是页面抓取时间。
