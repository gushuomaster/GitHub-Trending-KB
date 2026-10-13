---
type: github-project
repo: thedotmack/claude-mem
first_seen: '2026-10-04'
last_seen: '2026-10-09'
language: TypeScript
total_stars: 98450
forks: 8634
stars_today: 670
github_rank: 5
trending_count: 6
fetched_at: '2026-10-09T08:09:00+08:00'
url: https://github.com/thedotmack/claude-mem
documentation_checked_at: '2026-10-13'
stats_as_of: '2026-10-09'
---

# thedotmack/claude-mem

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
记录 Agent 会话中的工具观察并生成持久摘要，让后续会话能够找回项目决策和已完成的工作。

## 它能做什么
- 自动捕获工具使用观察，并压缩为语义摘要。
- 向新会话提供相关历史上下文，减少重复解释。
- 支持多种宿主安装和可选择的记忆处理 Provider。

## 怎么利用
输入持续维护的仓库与会话活动，按宿主安装并选择 Provider；工具观察被记录和摘要，重启后在新会话检索相关内容，输出可用于继续任务的历史上下文。

## 实际例子
**官方 Quick Start → 场景：** 在 Claude Code 中跨会话保留项目上下文。**输入：** 当前开发项目。**操作：** 执行安装命令，选择记忆 Provider，重启 Claude Code 后开启新会话。**输出：** 先前会话的相关上下文自动出现；安装可能进入账号登录流程，也可按 README 显式选择 Provider 跳过。

```sh
npx claude-mem install
```

## 适合谁
长期维护同一代码库、经常中断并重开 Agent 会话的工程师。

## 局限 / 注意点
会引入持久化记忆和模型/托管提供方选择，需要关注隐私、成本和错误记忆传播。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-04 | 8 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fe5095909e994262e6bf167a48b8035f8d07bb3b/archive/repository/2026/2026-10-04/(null).json) |
| 2026-10-05 | 13 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/25d857f152fee80260225fdeb6dc0460fb61c5b8/archive/repository/2026/2026-10-05/(null).json) |
| 2026-10-06 | 2 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fb3bb70ad58f298d2e18bd46d2c445de3b27cc42/archive/repository/2026/2026-10-06/(null).json) |
| 2026-10-07 | 6 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/7a58ec2d6aa31e161897e8b78805a6c3df276209/archive/repository/2026/2026-10-07/(null).json) |
| 2026-10-08 | 8 | 578 | 97782 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |
| 2026-10-09 | 5 | 670 | 98450 | [仓库已存对应日期快照](https://github.com/trending?since=daily) |

## 相关主题
- [[Topics/AI]]

## 相关日报
- [[Daily/2026/10/2026-10-04|2026-10-04]]
- [[Daily/2026/10/2026-10-05|2026-10-05]]
- [[Daily/2026/10/2026-10-06|2026-10-06]]
- [[Daily/2026/10/2026-10-07|2026-10-07]]
- [[Daily/2026/10/2026-10-08|2026-10-08]]
- [[Daily/2026/10/2026-10-09|2026-10-09]]

## GitHub 原始链接
https://github.com/thedotmack/claude-mem

## 官方资料复核（2026-10-13）
- README：https://github.com/thedotmack/claude-mem/blob/main/README.md
- README blob SHA：`342dbb5d7447b8375b428da9a16994f07ad7c62b`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。
