---
type: github-project
repo: "The-PR-Agent/pr-agent"
url: "https://github.com/The-PR-Agent/pr-agent"
first_seen: "2026-11-05"
last_seen: "2026-11-05"
trending_count: 1
language: "Python"
total_stars: 14886
forks: 2099
stars_today: 280
github_rank: 8
fetched_at: "2026-11-05T14:04:38+08:00"
documentation_checked_at: "2026-11-05"
stats_as_of: "2026-11-05"
snapshot_status: "live"
category: ["AI", "Code Review"]
topics: ["Pull Requests", "Code Review", "Automation"]
---
# The-PR-Agent/pr-agent

## 一句话说明
在代码托管平台或 CLI 中用 LLM 描述、审阅和改进 Pull Request 的开源 Agent。

## 它能做什么
- 提供 `/describe`、`/review`、`/improve`、`/ask` 与相似 Issue 检索。
- 支持 GitHub、GitLab、Bitbucket、Azure DevOps 与 Gitea。
- 经 LiteLLM 接入多种模型，并压缩大型 PR 以适配上下文。
- 可运行成 GitHub Action、机器人或本地 CLI，并按仓库覆盖配置。

## 怎么利用
在 GitHub Action 中配置 `OPENAI_KEY` 与 `GITHUB_TOKEN`，或安装 CLI 后传入 PR URL 与命令；Agent 读取 diff/上下文并把描述、问题或改进建议回写 PR。

## 实际例子
```bash
pip install "pr-agent[github]"
pr-agent --pr_url https://github.com/owner/repo/pull/1 review
```

## 适合谁
希望在人工评审前自动整理 PR 描述、风险和改进建议的开发团队。

## 局限 / 注意点
需要代码托管和模型凭据，LLM 结果仍须人工验证。README 明确 `/help_docs` 自 v0.36.1 起因凭据暴露问题 #2445 暂时禁用；自托管时数据隐私、成本与保留策略取决于模型提供方。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-05 | 8 | 280 | 14886 | 2099 | GitHub Today live snapshot |

## 相关主题
[[Topics/Pull-Requests|Pull Requests]] · [[Topics/Code-Review|Code Review]]

## 相关日报
- [[Daily/2026/11/2026-11-05|2026-11-05]]

## GitHub 原始链接
https://github.com/The-PR-Agent/pr-agent

## 官方资料复核（2026-11-05）
- README：https://github.com/The-PR-Agent/pr-agent/blob/HEAD/README.md
- README blob SHA：`3f76bd2d8afc710ba00156c9e974a80c97639c9e`
- 当前资料只代表核对日版本；榜单统计来自同一次 GitHub Trending 页面采集。
