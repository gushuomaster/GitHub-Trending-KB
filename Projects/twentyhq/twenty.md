---
type: github-project
repo: "twentyhq/twenty"
url: "https://github.com/twentyhq/twenty"
first_seen: "2026-10-22"
last_seen: "2026-10-22"
trending_count: 1
github_rank: 8
stars_today: 112
total_stars: 59147
forks: 9659
language: "TypeScript"
fetched_at: "2026-10-22T08:05:55+08:00"
documentation_checked_at: "2026-10-22"
stats_as_of: "2026-10-22"
snapshot_status: live
topics: ["CRM","Postgres","Workflow","AI Agent"]
status: active
---
# twentyhq/twenty

## 一句话说明
提供可自托管、可用代码扩展和版本管理的开源 CRM，让技术团队按自己的销售与客户流程定义对象、视图、工作流和 AI Agent。

> 使用方式依据仓库当前 README 核对于 2026-10-22。

## 它能做什么
- 提供联系人、公司、机会等现代 CRM 功能，并允许自定义对象、字段、视图和布局
- 通过 Twenty SDK 把业务对象、逻辑函数、工作流和 Agent 写成可版本控制的代码
- 支持云托管、Docker Compose 自托管及私有 App 发布
- 提供 Coding Agent Skills，协助 Claude Code、Codex、Cursor 等开发 Twenty App

## 怎么利用
**官方 App 流程 →** 用 CLI 创建 App，在 TypeScript 中定义 deal 对象及金额、预计成交时间等字段，再把 App 私有发布到工作区。输入是团队的销售数据模型；Twenty 生成并部署对象和视图；输出是可在 CRM 中录入、筛选并流转的交易记录。

## 实际例子
**场景 → 输入 → 操作 → 输出：** 为咨询团队建立机会管道 → 输入 deal 名称、金额和预计成交日期 → 执行 create-twenty-app，用 SDK 定义字段并运行 twenty app:publish --private → 工作区得到可版本管理的自定义交易对象与对应视图。

## 关键命令
```bash
npx create-twenty-app my-app
npx twenty app:publish --private
```

## 适合谁
需要自托管 CRM、希望用代码维护复杂客户数据模型，或要把内部工作流与 AI Agent 接入 CRM 的技术型销售运营和产品工程团队。

## 局限 / 注意点
云版最省运维，但自托管需要维护 PostgreSQL、Redis、队列、升级与备份；深度定制会增加 App 兼容、迁移和发布治理成本。CRM 中包含客户与商业数据，必须配置访问控制、密钥和审计。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-22 | 8 | 112 | 59147 | 9659 | GitHub Today live snapshot |

## 相关主题
[[Topics/CRM|CRM]] · [[Topics/Postgres|Postgres]] · [[Topics/Workflow|Workflow]] · [[Topics/AI Agent|AI Agent]]

## 相关日报
- [[Daily/2026/10/2026-10-22|2026-10-22]]

## GitHub 原始链接
https://github.com/twentyhq/twenty

## 官方资料复核（2026-10-22）
- README：https://github.com/twentyhq/twenty/blob/main/README.md
- README blob SHA：`e6137b5c569cc4a71163f3499f7e90a912540dd8`
