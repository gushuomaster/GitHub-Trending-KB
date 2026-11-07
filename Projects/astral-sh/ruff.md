---
type: github-project
repo: "astral-sh/ruff"
url: "https://github.com/astral-sh/ruff"
first_seen: "2026-11-07"
last_seen: "2026-11-07"
trending_count: 1
language: "Rust"
total_stars: 50685
forks: 2611
stars_today: 169
github_rank: 17
fetched_at: "2026-11-07T08:04:42+08:00"
documentation_checked_at: "2026-11-07"
stats_as_of: "2026-11-07"
snapshot_status: "live"
category: ["Python", "Linter", "Formatter"]
topics: ["Python", "Linter", "Formatter"]
---
# astral-sh/ruff

## 一句话说明
Ruff 是用 Rust 编写的高速 Python Linter 与格式化器，可在一个工具中替代多种静态检查、导入排序和格式化流程。

## 它能做什么
- 内置 900 多条规则，并与 Flake8、isort 和 Black 的常见工作流兼容。
- 支持自动修复、缓存和 `pyproject.toml` 集中配置。
- 可通过 uv、pip、pipx 或独立安装器运行，适合本地与 CI。

## 怎么利用
如果要统一 Python 仓库质量门槛，可在开发依赖中加入 Ruff，运行 `ruff check --fix` 修复可自动处理的问题，再用 `ruff format` 统一格式；CI 对剩余问题返回失败。

## 实际例子
**官方资料支持的场景 →** 如果要统一 Python 仓库质量门槛，可在开发依赖中加入 Ruff，运行 `ruff check --fix` 修复可自动处理的问题，再用 `ruff format` 统一格式；CI 对剩余问题返回失败。 

## 关键命令
```bash
uvx ruff@0.17.4 check
uvx ruff@0.17.4 format
```

## 适合谁
维护 Python 应用、库、数据项目或 CI 质量流程的开发者和平台团队。

## 局限 / 注意点
自动修复不能替代测试和代码审查；启用规则或从 Black/Flake8 迁移时可能产生大量差异，应固定版本并逐步调整配置。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-07 | 17 | 169 | 50685 | 2611 | GitHub Today live snapshot |

## 相关主题
[[Topics/Python|Python]] · [[Topics/Linter|Linter]] · [[Topics/Formatter|Formatter]]

## 相关日报
- [[Daily/2026/11/2026-11-07|2026-11-07]]

## GitHub 原始链接
https://github.com/astral-sh/ruff

## 官方资料复核（2026-11-07）
- README：https://github.com/astral-sh/ruff/blob/HEAD/README.md
- README blob SHA：`694b1321ae912e5ec1f9ac42d5f8f7b3197ae6b4`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
