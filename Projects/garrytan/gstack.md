---
type: github-project
repo: "garrytan/gstack"
first_seen: "2026-10-05"
last_seen: "2026-11-06"
url: "https://github.com/garrytan/gstack"
trending_count: 3
github_rank: 3
documentation_checked_at: "2026-11-06"
stats_as_of: "2026-11-06"
stars_today: 612
total_stars: 139928
forks: 20693
language: "TypeScript"
fetched_at: "2026-11-06T08:10:55+08:00"
snapshot_status: "live"
---

# garrytan/gstack

> 功能和用法按 2026-10-13 当前官方资料核对，不声称等同于历史上榜日版本。历史统计未保存时保持空值，不使用当前值补写。

## 一句话说明
把 Coding Agent 组织成产品、架构、设计、评审、QA、安全、发布和文档等角色接力的工程流程包。

## 它能做什么
- 用 `/office-hours`、CEO/设计/DX/工程计划评审把产品和架构决策写入下游可读文档。
- 通过 `/review`、`/verify`、`/qa` 检查代码、站点、API、CLI、任务和 webhook。
- 用安全审计、`/ship`、部署、canary、文档与 retro 工具覆盖上线前后流程。
- 支持 Claude Code，并可为 Codex、OpenCode、Cursor、Gemini 等宿主安装实验性技能。

## 怎么利用
按 README 克隆并运行 `./setup`，确认 Git 与 Bun；在 Windows 另装 Node。先用 `/office-hours` 形成设计文档，再按计划评审→实现→review/verify→QA→ship 的链路推进；可用 `./setup --host codex` 安装到其他宿主。

## 实际例子
**可推导用法 → 场景：** 为新结账流程做上线前检查。**输入：** 功能目标、待审分支和测试站点。**操作：** 先做计划评审，再对 diff 运行 `/review`，最后让 `/qa` 在测试环境执行结账流程。**输出：** 设计取舍、代码问题及可追踪的验证结果。

## 适合谁
使用 Claude Code 开发产品，需要补齐评审和 QA 流程的个人开发者与技术团队。

## 局限 / 注意点
macOS 和 Linux 为完整支持，Windows 与部分宿主只保证较低支持等级；需要 Git、Bun，Windows 还需 Node，安全工具可能要求本机工具链。Windows Smart App Control 会拦截本机构建的未签名二进制。角色流程不能保证结果，浏览器、修复、发布和真实账户操作权限必须限制并人工复核。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-05 | 14 | 未保存 | 未保存 | [日期匹配语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/25d857f152fee80260225fdeb6dc0460fb61c5b8/archive/repository/2026/2026-10-05/(null).json) |
| 2026-11-05 | 10 | 290 | 139475 | GitHub Today live snapshot |
| 2026-11-06 | 3 | 612 | 139928 | 20693 | GitHub Today live snapshot |

## 相关日报
- [[Daily/2026/10/2026-10-05|2026-10-05]]
- [[Daily/2026/11/2026-11-05|2026-11-05]]
- [[Daily/2026/11/2026-11-06|2026-11-06]]

## GitHub 原始链接
https://github.com/garrytan/gstack

## 官方资料复核（2026-10-13）
- README：https://github.com/garrytan/gstack/blob/main/README.md
- README blob SHA：`fadbffd525886adc9a898bf47b06cef1d73a4f38`
- 可推导用法是依据已声明能力具体化的应用场景，不是额外官方功能承诺。

## 官方资料复核（2026-11-05）
- README：https://github.com/garrytan/gstack/blob/HEAD/README.md
- README blob SHA：`47e3e4ee9d0dc04ceb4cddf57d92da07dd719004`
- 当前 README 已扩展为跨产品、工程、安全、发布和文档的多角色流程，并列出不同宿主与平台支持等级；正文据此更新，旧历史仍保留。

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/Skills|Skills]]

## 官方资料复核（2026-11-06）
- README：https://github.com/garrytan/gstack/blob/HEAD/README.md
- README blob SHA：`47e3e4ee9d0dc04ceb4cddf57d92da07dd719004`
- 本次只合并当天榜单事实与资料复核记录，原有详细说明、案例、分类、标签、风险和历史均保留。
