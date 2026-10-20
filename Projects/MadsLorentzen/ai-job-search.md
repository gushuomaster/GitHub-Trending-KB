---
type: github-project
repo: "MadsLorentzen/ai-job-search"
url: "https://github.com/MadsLorentzen/ai-job-search"
first_seen: 2026-10-17
last_seen: '2026-10-20'
trending_count: 4
github_rank: 1
stars_today: 3856
total_stars: 57168
forks: 18176
language: "Python"
fetched_at: '2026-10-20T08:07:03+08:00'
documentation_checked_at: '2026-10-20'
stats_as_of: '2026-10-20'
snapshot_status: live
topics: ["Agent", "Career", "Productivity"]
status: active
---
# MadsLorentzen/ai-job-search

## 一句话说明
在本机把职位筛选、匹配评估、定制简历和求职信、面试准备串成一套可重复执行的 Claude Code 求职工作流。

> 使用方式依据仓库当前 README 核对于 2026-10-20。

## 它能做什么
- 抓取职位并根据个人资料评估匹配度，保留可追踪的申请状态
- 针对单个职位生成诚实、ATS 友好的 LaTeX 简历与求职信
- 用独立 reviewer Agent 复核内容、版式、关键词覆盖与事实一致性
- 编译并检查两页简历和一页求职信 PDF，同时生成面试准备材料

## 怎么利用
把仓库复制到私有仓库，在 `/setup` 中录入经历、技能与求职偏好，再用 `/scrape` 建立职位池，最后把目标职位 URL 交给 `/apply`。系统会解析职位、评估适配度、定制并复核文档，输出供本人审阅和提交的 PDF 与检查清单。

## 实际例子
**官方流程：** 场景 → 申请一条 Jobindex 职位。输入 → 完整个人资料和职位 URL。操作 → 执行 `/apply https://jobindex.dk/job/1234567`；Agent 解析要求、生成并复核 LaTeX 文档、编译 PDF、检查页数和 ATS 文本。输出 → 两页定制简历、一页求职信与待人工确认的申请检查项。

## 关键命令
```bash
gh repo fork MadsLorentzen/ai-job-search --clone
cd ai-job-search
python3 tools/install_portal_clis.py
```

## 适合谁
愿意在本机维护结构化职业资料、需要批量但仍由本人审核申请材料的求职者，以及想改造地区招聘门户抓取器的开发者。

## 局限 / 注意点
`/setup` 会把姓名、联系方式、工作经历和薪资偏好写入被 Git 跟踪的文件；README 特别警告公开 fork 永远公开，个人使用应采用私有仓库并配置 upstream。现成门户搜索偏向丹麦市场；项目不会替你验证所有事实或自动承担最终提交责任。职位文本属于不可信输入，仓库的防注入措施主要是指令层防护，不能等同于系统级沙箱。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-17 | 11 | 898 | 48492 | 16629 | GitHub Today live snapshot |
| 2026-10-18 | 2 | 1365 | 50368 | 16929 | GitHub Today live snapshot |
| 2026-10-19 | 1 | 2232 | 53086 | 17355 | GitHub Today live snapshot |
| 2026-10-20 | 1 | 3856 | 57168 | 18176 | GitHub Today live snapshot |

## 相关主题
[[Topics/Agent|Agent]] · [[Topics/Career|Career]] · [[Topics/Productivity|Productivity]]

## 相关日报
- [[Daily/2026/10/2026-10-17|2026-10-17]]

- [[Daily/2026/10/2026-10-18|2026-10-18]]

- [[Daily/2026/10/2026-10-19|2026-10-19]]

- [[Daily/2026/10/2026-10-20|2026-10-20]]

## GitHub 原始链接
https://github.com/MadsLorentzen/ai-job-search

## 官方资料复核（2026-10-20）
- README：https://github.com/MadsLorentzen/ai-job-search/blob/master/README.md
- README blob SHA：`c46aae58b9f645dc2dd31338c46c6836459c5070`

