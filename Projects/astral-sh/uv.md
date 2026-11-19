---
stats_as_of: "2026-11-19"
documentation_checked_at: "2026-11-19"
fetched_at: "2026-11-19T08:11:32+08:00"
type: github-project
repo: "astral-sh/uv"
url: "https://github.com/astral-sh/uv"
first_seen: "2026-11-19"
last_seen: "2026-11-19"
trending_count: 1
github_rank: 7
language: "Rust"
total_stars: 92220
forks: 3922
stars_today: 258
category: ["Python", "Developer-Tools"]
tags: ["python", "developer-tools"]
topics: ["Python", "Developer-Tools", "Package-Management"]
snapshot_status: "live"
---
# astral-sh/uv

## 一句话说明
uv 是 Rust 编写的 Python 项目与包管理工具，把环境、依赖、锁文件、Python 版本、工具和脚本执行整合为一套高速命令。

## 它能做什么
- 用锁文件和 workspace 管理可复现项目。
- 安装 Python 版本并运行隔离工具。
- 兼容常见 pip 工作流和内联脚本依赖。

## 怎么利用
场景：新建服务并加入 Ruff。运行 `uv init`、`uv add ruff`、`uv run ruff check`；输入项目声明后 uv 解析并锁定依赖，在隔离环境执行检查并输出诊断。

## 实际例子
**场景 →** 场景：新建服务并加入 Ruff。运行 `uv init`、`uv add ruff`、`uv run ruff check`；输入项目声明后 uv 解析并锁定依赖，在隔离环境执行检查并输出诊断。

## 关键命令
```bash
uv init
uv add ruff
uv run ruff check
```

## 适合谁
维护 Python 项目、工具链、CI 与依赖锁定的开发者和平台团队。

## 局限 / 注意点
迁移时需核对解析与锁文件语义、平台 wheel 和索引配置；不是所有旧 pip/Poetry 行为都可无差异替换。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
| --- | ---: | ---: | ---: | ---: | --- |
| 2026-11-19 | 7 | 258 | 92220 | 3922 | GitHub Today live snapshot |

## 相关主题
[[Topics/Python|Python]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Package-Management|Package-Management]]

## 相关日报
- [[Daily/2026/11/2026-11-19|2026-11-19]]

## GitHub 原始链接
https://github.com/astral-sh/uv

## 官方资料复核（2026-11-19）
- README：https://github.com/astral-sh/uv/blob/HEAD/README.md
- README blob SHA：`66caaf9ccc62add8c63de8e71184c9b7677377ad`
- 说明：项目卡反映核对日的当前官方资料与当天实时榜单事实。
