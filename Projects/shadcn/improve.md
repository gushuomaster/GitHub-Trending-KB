---
type: github-project
repo: "shadcn/improve"
url: "https://github.com/shadcn/improve"
first_seen: "2026-11-12"
last_seen: "2026-11-12"
trending_count: 1
language: "未声明"
total_stars: 10851
forks: 443
stars_today: 361
github_rank: 4
fetched_at: "2026-11-12T08:08:27+08:00"
documentation_checked_at: "2026-11-12"
stats_as_of: "2026-11-12"
snapshot_status: "live"
category: ["AI Agent","Code Audit","Planning"]
topics: ["AI-Agent","Code-Quality","Planning"]
---
# shadcn/improve

## 一句话说明
improve 是面向 Coding Agent 的代码库审计技能，让能力更强的模型先理解仓库、筛选高价值问题并写成可执行计划，再交给成本更低的模型实施。

## 它能做什么
- 从九个工程维度映射并审计代码库，给发现附上文件行号、影响、工作量和置信度。
- 过滤误报并按杠杆排序，由用户选择需要规划的问题。
- 生成包含上下文、验证门槛、停止条件和 commit 漂移检查的自包含计划。
- 可分派较低成本模型在隔离 worktree 执行，再复核 diff 并维护计划积压。

## 怎么利用
在仓库安装技能并运行 `/improve`。输入是当前代码、测试命令和项目文档；强模型完成侦察、审计、复核和规划，把选中发现写入 `plans/`；较低成本模型或人类按计划实现，输出可核验候选改动。

## 实际例子
**官方流程 →** 运行 `/improve`，从发现表选择 1、3、5；生成三个独立计划和顺序索引，再让另一 Agent 执行 `plans/001-*.md`，最后由技能复跑验收命令并给出 verdict。

## 关键命令
```bash
npx skills add shadcn/improve
```

## 适合谁
希望把高成本模型集中用于代码理解和方案判断、把实现工作交给其他 Agent，同时保留验收控制的软件团队。

## 局限 / 注意点
技能本身只写 `plans/`，不会直接修改源码；即使使用 `execute`，合并仍由用户决定。计划会绑定生成时的 commit，仓库漂移或停止条件触发时必须重新审查。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-12 | 4 | 361 | 10851 | 443 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI-Agent|AI-Agent]] · [[Topics/Code-Quality|Code-Quality]] · [[Topics/Planning|Planning]]

## 相关日报
- [[Daily/2026/11/2026-11-12|2026-11-12]]

## GitHub 原始链接
https://github.com/shadcn/improve

## 官方资料复核（2026-11-12）
- README：https://github.com/shadcn/improve/blob/HEAD/README.md
- README blob SHA：`17e41e80976356c4bacfa5b9f2e873b67d1fe554`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。
- GitHub Trending Today 的该项目块未显示主要语言，故记录为“未声明”，未作猜测。
