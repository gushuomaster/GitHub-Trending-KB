---
type: github-project
repo: "anthropics/claude-plugins-official"
url: "https://github.com/anthropics/claude-plugins-official"
first_seen: 2026-09-26
last_seen: '2026-10-16'
trending_count: 2
github_rank: 2
stars_today: 307
total_stars: 39065
forks: 4321
language: "Python"
fetched_at: '2026-10-16T08:10:32+08:00'
documentation_checked_at: '2026-10-16'
stats_as_of: '2026-10-16'
snapshot_status: live
topics: ["Agent", "Skills", "Plugins"]
status: active
---
# anthropics/claude-plugins-official

## 一句话说明
Anthropic 管理的 Claude Code 插件目录，集中提供可安装的命令、Agent、Skills 与 MCP 集成。

> 使用方式依据仓库当前 README 核对于 2026-10-16；这不代表 2026-09-26 历史上榜日的 README 版本。

## 它能做什么
- 区分 Anthropic 内部插件与第三方插件
- 定义统一 plugin.json、commands、agents、skills、MCP 结构
- 支持 Claude Code 内直接发现、安装和更新

## 怎么利用
先审查插件主页、权限与 MCP 配置，再从 Claude Code 的 Discover 页面或 `/plugin install` 安装；团队应锁定插件名和版本并在测试仓库验证。

## 实际例子
**官方示例：** 场景 → 安装目录中的某个插件。输入 → 插件不可变 slug。操作 → 执行 `/plugin install <plugin-name>@claude-plugins-official`。输出 → Claude Code 中可发现的新命令、Agent 或 Skill。

## 适合谁
使用 Claude Code、需要复用插件或研究插件打包规范的开发者与团队。

## 局限 / 注意点
目录收录不等于插件永远安全；第三方 MCP、脚本和依赖仍需独立审计，更新也可能改变权限面。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-09-26 | 2 | 未保存 | 未保存 | 未保存 | archived_backfill |
| 2026-10-16 | 2 | 307 | 39065 | 4321 | GitHub Today live snapshot |

> 上表只保留可证明的日期与原始顺序；2026-09-26 未保存的统计继续保持“未保存”，2026-10-16 的数值来自当天实时快照。

## 相关主题
[[Topics/Agent|Agent]] · [[Topics/Skills|Skills]] · [[Topics/Plugins|Plugins]]

## 相关日报
- [[Daily/2026/09/2026-09-26|2026-09-26]]
- [[Daily/2026/10/2026-10-16|2026-10-16]]

## GitHub 原始链接
https://github.com/anthropics/claude-plugins-official

## 官方资料复核（2026-10-16）
- README：https://github.com/anthropics/claude-plugins-official/blob/main/README.md

