---
type: github-project
repo: "mvanhorn/last30days-skill"
url: "https://github.com/mvanhorn/last30days-skill"
first_seen: "2026-11-17"
last_seen: "2026-11-26"
trending_count: 10
language: "Python"
total_stars: 75092
forks: 6618
stars_today: 945
github_rank: 10
fetched_at: "2026-11-26T08:08:24+08:00"
documentation_checked_at: "2026-11-26"
stats_as_of: "2026-11-26"
snapshot_status: "live"
category: ["Agent Skills", "Research", "Social Search"]
topics: ["Agent-Skills", "Research", "Social-Media"]
---
# mvanhorn/last30days-skill

## 一句话说明
`/last30days` 是让 Coding Agent 检索最近 30 天讨论与市场信号的技能，把 Reddit、X、YouTube、Hacker News、Polymarket、GitHub 等来源并行汇总成有依据的简报。

## 它能做什么
- 并行搜索 Reddit、X、YouTube、TikTok、Instagram、Hacker News、Polymarket、GitHub、arXiv、Techmeme 与网页；公司主题还可加入近期美国专利申请、招聘页和 Yahoo Finance 市场表现。
- 按点赞、投票、评论、观看量和真实资金赔率等人群信号排序，再由 Agent 综合结论并保留可回看的引用。
- 没有 ScrapeCreators Key 时可通过网页发现与 `yt-dlp` 回退检索 TikTok，并尽力覆盖 Instagram；也可按需启用 dev.to、Telegram、DripStack、LinkedIn、Meta Ads 与小红书等来源。
- 把完成的简报保存到本地研究库，可生成 HTML 索引与 Atom feed，也可输出带版本契约的 JSON 供 Agent 或自动化消费。
- 支持 Claude Code 插件和 Agent Skills 安装；Reddit、HN、Polymarket、GitHub 以及部分公司与市场来源可零配置使用，其他来源可逐步补充密钥或登录会话。

## 怎么利用
官方示例：运行 `/last30days Peter Steinberger`；技能检索其最近一个月的 X、Reddit、YouTube 和 GitHub 动态，输出会前可读的近期活动、争议点与引用来源。

## 实际例子
**官方示例 → 场景 → 输入 → 操作 → 输出：** 为与 Peter Steinberger 的会面做准备，输入 `/last30days Peter Steinberger`；技能检索最近一个月的 X、Reddit、YouTube 和 GitHub 动态，输出会前可读的近期活动、争议点与原始引用链接。

## 关键命令
```bash
npx skills add mvanhorn/last30days-skill -g
```

## 适合谁
需要快速了解人物、公司、产品或技术话题近期社区讨论的研究、销售和产品人员。

## 局限 / 注意点
TikTok/Instagram 的无 Key 回退依赖本机 `yt-dlp`，结果更少且没有评论；X、LinkedIn、Meta Ads、Telegram 等来源仍可能需要 API Key、浏览器会话或明确的频道配置，并受配额、登录、平台条款和索引覆盖影响。若配置推理提供方，主题与检索片段会发送给该提供方做重排；未配置时使用本地评分。互动量不等同于事实，摘要仍需回看原始来源；研究库发布是显式 opt-in，公开前需检查内容、隐私与引用。

## Trending 历史


| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-17 | 8 | 135 | 68106 | 6035 | GitHub Today live snapshot |
| 2026-11-18 | 2 | 696 | 69030 | 6145 | GitHub Today live snapshot |
| 2026-11-19 | 3 | 1059 | 69979 | 6241 | GitHub Today live snapshot |
| 2026-11-20 | 10 | 954 | 70782 | 6308 | GitHub Today live snapshot |
| 2026-11-21 | 10 | 681 | 71434 | 6343 | GitHub Today live snapshot |
| 2026-11-22 | 10 | 560 | 71989 | 6373 | GitHub Today live snapshot |
| 2026-11-23 | 10 | 668 | 72697 | 6424 | GitHub Today live snapshot |
| 2026-11-24 | 10 | 797 | 73424 | 6479 | GitHub Today live snapshot |
| 2026-11-25 | 10 | 703 | 74188 | 6540 | GitHub Today live snapshot |
| 2026-11-26 | 10 | 945 | 75,092 | 6,618 | GitHub Today live snapshot |

## 相关主题
[[Topics/Agent-Skills|Agent-Skills]] · [[Topics/Research|Research]] · [[Topics/Social-Media|Social-Media]]

## 相关日报



- [[Daily/2026/11/2026-11-17|2026-11-17]]
- [[Daily/2026/11/2026-11-18|2026-11-18]]

- [[Daily/2026/11/2026-11-19|2026-11-19]]

- [[Daily/2026/11/2026-11-20|2026-11-20]]
- [[Daily/2026/11/2026-11-21|2026-11-21]]
- [[Daily/2026/11/2026-11-22|2026-11-22]]
- [[Daily/2026/11/2026-11-23|2026-11-23]]
- [[Daily/2026/11/2026-11-24|2026-11-24]]
- [[Daily/2026/11/2026-11-25|2026-11-25]]
- [[Daily/2026/11/2026-11-26|2026-11-26]]

## GitHub 原始链接
https://github.com/mvanhorn/last30days-skill

## 官方资料复核（2026-11-17）
- README：https://github.com/mvanhorn/last30days-skill/blob/HEAD/README.md
- README blob SHA：`ee3f7f3b0f64f9ca996e579bfd2aa2383bace11b`
- 午后 README 增加公司专利、招聘页与对应 Secret Signals 说明；本次只更新持续维护项目卡和来源证据，不改动早晨榜单快照。

## 官方资料复核（2026-11-18）
- README：https://github.com/mvanhorn/last30days-skill/blob/HEAD/README.md
- README blob SHA：`ee3f7f3b0f64f9ca996e579bfd2aa2383bace11b`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。

## 官方资料复核（2026-11-19）
- README：https://github.com/mvanhorn/last30days-skill/blob/HEAD/README.md
- README blob SHA：`ee3f7f3b0f64f9ca996e579bfd2aa2383bace11b`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。

## 官方资料复核（2026-11-20）
- README：https://github.com/mvanhorn/last30days-skill/blob/HEAD/README.md
- README blob SHA：`ee3f7f3b0f64f9ca996e579bfd2aa2383bace11b`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。

## 最近变化
- 资料核对（2026-11-21）：重新读取当前官方 README；README blob SHA：`ee3f7f3b0f64f9ca996e579bfd2aa2383bace11b`。
- 资料核对（2026-11-22）：README 已更新至 v4.6.0 流程，补充无 Key 的 TikTok/Instagram 回退、本地研究库与离线检索边界；README blob SHA：`6fcd597e58c5025abc86f49b12472bbbcaa0c38d`。
- 资料核对（2026-11-24）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`8c3c3e5d82c6159d7cbd6b9611c665416b761f37`。
- 资料核对（2026-11-25）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`60c4bc407e64a99f18f8a52d5994855e6a7b0538`。
- 资料核对（2026-11-26）：重新读取当前官方 README，能力、用法与限制已与正文核对；README blob SHA：`60c4bc407e64a99f18f8a52d5994855e6a7b0538`。

## 官方资料复核（2026-11-23）
- README：https://github.com/mvanhorn/last30days-skill/blob/HEAD/README.md
- README blob SHA：`8c3c3e5d82c6159d7cbd6b9611c665416b761f37`
- 当前 README 继续提供 TikTok/Instagram 的无 Key `yt-dlp` 回退及本地研究库/Atom feed；现有正文已覆盖这些边界，更新可复核版本证据。

