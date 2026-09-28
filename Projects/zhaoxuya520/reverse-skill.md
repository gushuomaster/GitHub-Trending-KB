---
repo: "zhaoxuya520/reverse-skill"
url: "https://github.com/zhaoxuya520/reverse-skill"
first_seen: 2026-09-27
last_seen: 2026-09-27
trending_count: 1
github_rank: 10
stars_today: null
total_stars: 38448
forks: 5347
language: "PowerShell"
metadata_checked_at: "2026-09-28T16:09:06+08:00"
snapshot_status: archived_backfill
topics: ["Security", "Reverse-Engineering", "Skills"]
status: active
---
# zhaoxuya520/reverse-skill

## 一句话说明
面向逆向工程、授权渗透和安全研究的 Agent Skill 路由包，可按目标类型选择方法和工具链。

> 使用方式依据仓库当前 README 核对于 2026-09-28；这不代表历史上榜当日的 README 版本。

## 它能做什么
- 规则路由 APK、二进制、JS、PCAP、CTF 等任务
- 先建立授权范围和网络 profile，再允许目标操作
- 记录 timeline、Evidence→Finding→Path 与复盘知识

## 怎么利用
先在 `scope.md` 明确资产所有权、授权范围和禁止动作，再让路由器选择场景 Skill；只在隔离实验环境安装必要工具并保留证据链。

## 实际例子
**官方工作流对应场景：** 场景 → 分析自有 Android APK。输入 → APK、授权声明和不联网约束。操作 → 初始化 case，路由到 Android Skill，用 jadx/apktool 静态分析。输出 → 时间线、证据、finding 和可复核报告。

## 适合谁
在合法授权范围内使用 Coding Agent 辅助逆向、CTF 或安全评估的研究人员。

## 局限 / 注意点
仅可用于授权目标；工具会处理高风险二进制和网络操作，必须隔离、审计并阻止 Agent 擅自扩大范围。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-09-27 | 10 | 未保存 | 未保存 | 未保存 | archived_backfill |

> 上表只保留归档可证明的日期与原始顺序；当前 Stars/Forks 仅记录在 frontmatter 的 `metadata_checked_at` 快照，不冒充历史数值。

## 相关主题
[[Topics/Security|Security]] · [[Topics/Reverse-Engineering|Reverse-Engineering]] · [[Topics/Skills|Skills]]

## 相关日报
- [[Daily/2026/09/2026-09-27|2026-09-27]]
