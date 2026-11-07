---
type: github-project
repo: "google/skills"
url: "https://github.com/google/skills"
first_seen: "2026-10-03"
last_seen: "2026-11-07"
trending_count: 3
github_rank: 10
language: "Python"
total_stars: 22823
forks: 1919
stars_today: 534
category: ["AI", "Skills", "Google-Cloud"]
tags: ["agent-skills", "google-cloud", "gemini", "gke"]
topics: ["AI", "Skills", "Cloud"]
fetched_at: "2026-11-07T08:04:42+08:00"
documentation_checked_at: "2026-11-07"
stats_as_of: "2026-11-07"
snapshot_status: "live"
---
# google/skills

## 一句话说明
Google 官方 Agent Skills 集合，把 Google Cloud、Gemini、GKE、数据与开发者工作流整理成可选择安装的操作指南。

## 它能做什么
- 覆盖 IAM、Cloud Storage、GKE、基础设施、AI/ML 与故障排查等产品主题。
- 提供跨产品方案，如企业 RAG、多 Agent 安全、数据科学流程和部署 Agent。
- 允许选择特定技能、目标 Agent，以及项目级或全局安装范围。
- 用 Google Skill Finder 从大规模目录中定位合适技能。

## 怎么利用
先确定真实任务和 Google 产品范围，再用 skills CLI 只选择所需 Skill 与安装作用域。Agent 读取对应指导，结合项目配置生成步骤、命令和校验清单；用户在执行前核对项目 ID、区域、IAM 和费用边界。

## 实际例子
**官方安装流程 →** 为新项目配置 Google Cloud onboarding 与 IAM。**输入 →** 目标 GCP 项目、组织约束和预期角色。**操作 →** 运行安装命令，选择两个技能并安装到项目。**输出 →** 供 Agent 使用的官方工作流、权限检查和下一步操作说明。

## 关键命令
```bash
npx skills add google/skills
```

## 适合谁
使用 Coding Agent 管理 Google Cloud、GKE 或 Gemini 工作流的云平台工程师、开发者与解决方案架构师。

## 局限 / 注意点
Skills 是指导材料，不会授予真实云端权限，也不替代配额、费用、组织政策与变更审批。仓库目录很大且持续更新，应只安装需要的技能，并在执行基础设施命令前审查版本、项目和 IAM 作用域。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 证据说明 |
|---|---:|---:|---:|---:|---|
| 2026-10-03 | 11 | 未保存 | 未保存 | 未保存 | 日期匹配语言不限归档 |
| 2026-11-06 | 9 | 211 | 22359 | 1891 | GitHub Today live snapshot |
| 2026-11-07 | 10 | 534 | 22823 | 1919 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Skills|Skills]] · [[Topics/Cloud|Cloud]]

## 相关日报
- [[Daily/2026/10/2026-10-03|2026-10-03]]
- [[Daily/2026/11/2026-11-06|2026-11-06]]
- [[Daily/2026/11/2026-11-07|2026-11-07]]

## GitHub 原始链接
https://github.com/google/skills

## 官方资料核对
- 核对日期：2026-10-13
- README：https://github.com/google/skills/blob/main/README.md
- README blob SHA：37d0cf200fb45ab6c0e15993d98fc6e7f39cae93
- 说明：技能目录和产品支持仅代表核对日。

## 官方资料复核（2026-11-06）
- README：https://github.com/google/skills/blob/HEAD/README.md
- README blob SHA：`cec629bed635ee1bffd9f70a3c96dd3c536e0141`
- 本次只合并当天榜单事实与资料复核记录，原有详细说明、案例、分类、标签、风险和历史均保留。

## 官方资料复核（2026-11-07）
- README：https://github.com/google/skills/blob/HEAD/README.md
- README blob SHA：`ddd29c3a8732ef8f2debb3e381173f0cce80451c`
- 本次仅合并当天榜单事实与资料复核记录；既有能力、案例、分类、风险和历史内容均保留。
