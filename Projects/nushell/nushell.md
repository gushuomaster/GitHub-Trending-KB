---
type: github-project
repo: "nushell/nushell"
url: "https://github.com/nushell/nushell"
first_seen: "2026-11-07"
last_seen: "2026-11-07"
trending_count: 1
language: "Rust"
total_stars: 40978
forks: 2343
stars_today: 131
github_rank: 12
fetched_at: "2026-11-07T08:04:42+08:00"
documentation_checked_at: "2026-11-07"
stats_as_of: "2026-11-07"
snapshot_status: "live"
category: ["Shell", "CLI", "Structured Data"]
topics: ["Shell", "CLI", "Structured Data"]
---
# nushell/nushell

## 一句话说明
Nushell 是跨平台结构化 Shell，把命令输出当作表格和类型化数据处理，减少传统文本管道的解析负担。

## 它能做什么
- 在管道中传递表格、记录、列表和数值等结构化数据。
- 用统一命令处理文件系统、JSON、CSV 和系统信息。
- 支持自定义命令、脚本、模块和插件扩展自动化流程。

## 怎么利用
如果要找出目录中的大文件，可让 `ls` 产生结构化表格，用 `where` 按 size 字段过滤并按大小排序；输出仍是可继续管道处理的表格。

## 实际例子
**官方资料支持的场景 →** 如果要找出目录中的大文件，可让 `ls` 产生结构化表格，用 `where` 按 size 字段过滤并按大小排序；输出仍是可继续管道处理的表格。

## 关键命令
```bash
ls | where size > 10mb | sort-by size --reverse
```

## 适合谁
需要跨平台命令行、结构化数据处理和可读自动化脚本的开发者、运维和数据工程师。

## 局限 / 注意点
与 Bash/PowerShell 的语法和命令语义不同，现有 Shell 脚本通常不能直接运行；某些外部命令仍输出纯文本，需要适配。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-07 | 12 | 131 | 40978 | 2343 | GitHub Today live snapshot |

## 相关主题
[[Topics/Shell|Shell]] · [[Topics/CLI|CLI]] · [[Topics/Structured Data|Structured Data]]

## 相关日报
- [[Daily/2026/11/2026-11-07|2026-11-07]]

## GitHub 原始链接
https://github.com/nushell/nushell

## 官方资料复核（2026-11-07）
- README：https://github.com/nushell/nushell/blob/HEAD/README.md
- README blob SHA：`0c9442b6050220c652a5a8a6c3e0d0d4a65f44b6`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
