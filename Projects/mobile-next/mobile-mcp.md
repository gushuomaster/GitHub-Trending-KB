---
repo: "mobile-next/mobile-mcp"
url: "https://github.com/mobile-next/mobile-mcp"
first_seen: 2026-09-27
last_seen: 2026-09-27
trending_count: 1
github_rank: 14
stars_today: null
total_stars: 8033
forks: 689
language: "TypeScript"
metadata_checked_at: "2026-09-28T16:09:06+08:00"
snapshot_status: archived_backfill
topics: ["Agent", "MCP", "Mobile-Automation"]
status: active
---
# mobile-next/mobile-mcp

## 一句话说明
通过统一 MCP 工具让 Agent 自动操作 iOS、Android 模拟器和真实设备。

> 使用方式依据仓库当前 README 核对于 2026-09-28；这不代表历史上榜当日的 README 版本。

## 它能做什么
- 优先使用原生无障碍树，必要时回退截图坐标
- 统一控制安装、启动、点击、滑动、录屏、深链与方向
- 兼容 Codex、Claude Code、Gemini、Copilot 等 MCP 客户端

## 怎么利用
连接本地模拟器或授权真实设备，把 MCP server 加到 Agent 客户端；先让 Agent读取 accessibility snapshot，再执行受限测试步骤并保存录屏/结构化结果。

## 实际例子
**官方场景：** 场景 → 自动测试 Android 与 iOS 登录流程。输入 → 两个平台测试包和测试账号。操作 → Agent 安装/启动应用、按无障碍节点填写表单并截取结果。输出 → 跨平台步骤轨迹、截图或录屏和失败点。

## 适合谁
需要跨 iOS/Android 做 UI 测试、数据录入或 Agent 移动端自动化的开发与 QA 团队。

## 局限 / 注意点
真实设备权限和账号数据敏感；无障碍树缺失时坐标操作更脆弱，云真机还涉及数据驻留与费用。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-09-27 | 14 | 未保存 | 未保存 | 未保存 | archived_backfill |

> 上表只保留归档可证明的日期与原始顺序；当前 Stars/Forks 仅记录在 frontmatter 的 `metadata_checked_at` 快照，不冒充历史数值。

## 相关主题
[[Topics/Agent|Agent]] · [[Topics/MCP|MCP]] · [[Topics/Mobile-Automation|Mobile-Automation]]

## 相关日报
- [[Daily/2026/09/2026-09-27|2026-09-27]]
