---
type: github-project
repo: cloudflare/cloudflare-os
first_seen: '2026-10-04'
last_seen: '2026-10-06'
url: https://github.com/cloudflare/cloudflare-os
trending_count: 2
github_rank: 10
documentation_checked_at: '2026-10-13'
stats_as_of: null
stars_today: null
total_stars: null
forks: null
language: null
---

# cloudflare/cloudflare-os

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
面向公司内部 AI 办公的工作环境，结合 Agent 聊天、独立沙箱小应用和外部资源访问控制。

## 它能做什么
- Agent 可以使用预先配置的公司上下文处理任务。
- 按用户创建独立 Gadget，例如幻灯片、协作白板或 GitHub Issue 看板。
- Gatekeepers 管理外部服务授权、资源范围、动作日志与有副作用操作的审批。

## 怎么利用
克隆仓库并准备 pnpm，在根目录运行 `pnpm run-local`，访问 `http://localhost:8787` 体验整套本地环境；需要 GitHub/Google 数据时再配置相应集成。正式使用按官方部署入口接入 Cloudflare 账户。

## 实际例子
**官方 What to try → 场景：** 为仓库创建 Issue 看板。**输入：** 已配置 GitHub 集成并附加的仓库。**操作：** 提出“Make an issue dashboard for this GitHub repo”。**输出：** 围绕该仓库运行的 Gadget 看板，资源访问通过 Gatekeeper 管理。

## 适合谁
希望定制公司 AI 办公环境、能维护 Cloudflare 部署和服务集成的团队。

## 局限 / 注意点
v2 属于 early access；本地 `run-local` 仅供体验，不适用于生产。公司知识、OAuth、模型服务和部署配置仍由使用团队负责，沙箱机制不保证生成内容事实正确。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-04 | 9 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fe5095909e994262e6bf167a48b8035f8d07bb3b/archive/repository/2026/2026-10-04/(null).json) |
| 2026-10-06 | 10 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/fb3bb70ad58f298d2e18bd46d2c445de3b27cc42/archive/repository/2026/2026-10-06/(null).json) |

## 相关日报
- [[Daily/2026/10/2026-10-04|2026-10-04]]
- [[Daily/2026/10/2026-10-06|2026-10-06]]

## GitHub 原始链接
https://github.com/cloudflare/cloudflare-os

## 官方资料复核（2026-10-13）
- README：https://github.com/cloudflare/cloudflare-os/blob/main/README.md
- README blob SHA：`55ef70df7e1f8dd9fa8e9f5f98485b8f4c87f7e2`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。
