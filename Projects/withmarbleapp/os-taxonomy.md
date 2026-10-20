---
type: github-project
repo: "withmarbleapp/os-taxonomy"
url: "https://github.com/withmarbleapp/os-taxonomy"
first_seen: '2026-10-20'
last_seen: '2026-10-20'
trending_count: 1
github_rank: 8
stars_today: 284
total_stars: 6105
forks: 1001
language: "JavaScript"
fetched_at: '2026-10-20T08:07:03+08:00'
documentation_checked_at: '2026-10-20'
stats_as_of: '2026-10-20'
snapshot_status: live
topics: ["Education", "Knowledge Graph", "Dataset", "Open Data"]
status: active
---
# withmarbleapp/os-taxonomy

## 一句话说明
提供面向小学阶段的开放学习技能图谱，把细粒度知识点、先修关系、课程标准和教学研究组织成可加载的 JSON 数据。

> 使用方式依据仓库当前 README 核对于 2026-10-20。

## 它能做什么
- 包含 1,591 个微主题与 3,225 条有向先修依赖
- 覆盖 8 个学科并对齐多套国家课程标准
- 为部分科学和数学主题提供教学活动、评估建议与来源
- 附 JSON Schema、manifest 校验和与验证脚本

## 怎么利用
官方示例：加载 `topics.json` 和 `dependencies.json`，以“Building sentences”的 topic ID 过滤先修边，再映射回主题名称；学习应用可据此输出该知识点之前应掌握的概念，并在有记录时连接教学活动。

## 实际例子
**官方示例 →** 查询“Building sentences”的先修路径。**输入 →** 主题 ID `mt_N8CpN1EJrP`。**操作 →** 读取 `topics.json` 和 `dependencies.json`，筛出指向该主题的依赖并映射回名称。**输出 →** 一组可用于学习路径的先修微主题；若 teaching-research 有对应记录，还可附活动和评估建议。

## 关键命令
```bash
node scripts/validate.mjs
node --test scripts/teaching-research.test.mjs
```

## 适合谁
构建儿童学习路径、课程推荐、先修知识可视化或教育研究工具的产品与数据团队。

## 局限 / 注意点
教学研究仅覆盖科学和数学的 1,051 个主题，另有 540 个主题缺失；记录由 Agent 编写，来源未在本次发布重新核验，活动也不是实证干预。数据库、文本和上游课程标准适用不同许可证。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-20 | 8 | 284 | 6105 | 1001 | GitHub Today live snapshot |

## 相关主题
[[Topics/Education|Education]] · [[Topics/Knowledge Graph|Knowledge Graph]] · [[Topics/Dataset|Dataset]] · [[Topics/Open Data|Open Data]]

## 相关日报
- [[Daily/2026/10/2026-10-20|2026-10-20]]

## GitHub 原始链接
https://github.com/withmarbleapp/os-taxonomy

## 官方资料复核（2026-10-20）
- README：https://github.com/withmarbleapp/os-taxonomy/blob/main/README.md
- README blob SHA：`c5b200bdf9661548983255f16cae92979963038e`

