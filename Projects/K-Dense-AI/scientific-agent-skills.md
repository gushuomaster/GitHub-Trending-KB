---
type: github-project
repo: K-Dense-AI/scientific-agent-skills
url: https://github.com/K-Dense-AI/scientific-agent-skills
first_seen: '2026-10-15'
last_seen: '2026-10-18'
trending_count: 4
language: "Python"
total_stars: 52236
forks: 4625
stars_today: 878
github_rank: 5
fetched_at: '2026-10-18T08:11:03+08:00'
recommend_score: 9.5
category: [AI, Agent, Skills, Scientific Computing]
tags: [github/agent, github/skills, github/science, github/python, github/security]
topics: [AI, Agent, Skills, Scientific Computing]
documentation_checked_at: '2026-10-18'
stats_as_of: '2026-10-18'
snapshot_status: live
---

# K-Dense-AI/scientific-agent-skills

## 一句话说明
把经验证的科研流程和数据库访问封装成 Agent Skills，让通用编码 Agent 能执行生物、化学、医学、药物发现与科学计算任务。

## 它能做什么
- 提供 177 个可直接安装的科研 Skills，覆盖文献检索、组学分析、化学信息学与药物发现。
- 连接 100 多个科学数据库，并为 70 多个常用科研 Python 包提供工作流。
- 兼容 Codex、Claude Code、Cursor 与开放 Agent Skills 标准，可按任务只装所需 Skill。
- 给出技能清单、工作流图和安全扫描结果，便于审查 Agent 将执行的步骤。

## 怎么利用
先选定一个可复现的科研问题，再只安装相关 Skill。输入实验数据、目标数据库与分析假设，Agent 按 Skill 运行检索、清洗和统计；最终输出代码、数据来源、参数与结果文件，交给领域专家复核。

## 实际例子
**官方生态中的单细胞分析路径 → 场景：** 分析一份单细胞 RNA 测序矩阵。**输入：** 表达矩阵、细胞元数据和质量阈值。**操作：** 安装 `scanpy` Skill，让 Agent 按定义好的 Scanpy 流程完成质控、归一化、降维与聚类。**输出：** 可复现脚本、聚类结果和图表，并保留数据与参数来源。

## 关键命令
```sh
npx skills add K-Dense-AI/scientific-agent-skills
gh skill install K-Dense-AI/scientific-agent-skills --skill scanpy
```

## 适合谁
需要让 Coding Agent 协助文献与数据库检索、科研数据分析或药物发现原型的研究人员、生物信息工程师和科研软件团队。

## 局限 / 注意点
- Skill 可能执行代码、访问网络或处理敏感科研数据，安装前必须审查内容并限制凭据与文件权限。
- 整库加载会增加上下文与依赖负担，应按任务安装；科研结论仍需领域验证、数据审计和可复现实验。
- 历史记录提到 2026-09-14 安全扫描更新及基因组内容、工作流图工具；这些是当时资料摘要，不代表持续有效的版本承诺。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-10-15 | 5 | 163 | 49308 | GitHub Today live snapshot |
| 2026-10-16 | 3 | 1091 | 50444 | GitHub Today live snapshot |

| 2026-10-17 | 2 | 1158 | 51485 | GitHub Today live snapshot |
| 2026-10-18 | 5 | 878 | 52236 | GitHub Today live snapshot |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/Skills|Skills]] · [[Topics/Scientific Computing|Scientific Computing]]

## 相关日报
- [[Daily/2026/10/2026-10-15|2026-10-15]]
- [[Daily/2026/10/2026-10-16|2026-10-16]]

- [[Daily/2026/10/2026-10-17|2026-10-17]]

- [[Daily/2026/10/2026-10-18|2026-10-18]]

## GitHub 原始链接
https://github.com/K-Dense-AI/scientific-agent-skills

## 官方资料复核（2026-10-18）
- README：https://github.com/K-Dense-AI/scientific-agent-skills/blob/main/README.md
- README blob SHA：`3fcebf5c0e49e39dc87e5b577d0368d313124862`

