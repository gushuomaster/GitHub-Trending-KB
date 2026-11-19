---
type: github-project
repo: "NVIDIA/SkillEvaluator"
url: "https://github.com/NVIDIA/SkillEvaluator"
first_seen: "2026-11-16"
last_seen: "2026-11-19"
trending_count: 3
language: "Python"
total_stars: 3707
forks: 516
stars_today: 312
github_rank: 5
fetched_at: "2026-11-19T08:11:32+08:00"
documentation_checked_at: "2026-11-19"
stats_as_of: "2026-11-19"
snapshot_status: "live"
category: ["Agent Evaluation", "Agent Skills", "Quality"]
topics: ["Agent-Evaluation", "Agent-Skills", "Testing"]
---
# NVIDIA/SkillEvaluator

## 一句话说明
NVIDIA SkillEvaluator 用分层质量门、重复检测和有无技能对照实验，判断一个 Agent Skill 是否结构合格、安全，并且真的改善任务结果。

## 它能做什么
- Tier 1 检查技能结构、静态质量与安全问题，并用 `harness-check` 验证 Codex、Claude Code、OpenCode、Hermes、OpenClaw 与 Copilot CLI 是否会实际加载该技能；可在不调用 LLM 时运行。
- Tier 2 通过嵌入与对话模型检测技能内部和技能目录之间的语义重叠。
- Tier 3 在 Agent 沙箱中执行有技能/无技能对照，生成或读取评测集并比较行为与任务结果。
- 提供 CLI、GitHub/GitLab CI 初始化和可安装的 SkillEvaluator Agent Skill，输出机器可读报告。

## 怎么利用
**官方无模型 Quickstart →** 对仓库自带的 `text-analyzer` 参考技能运行 `quality-check`；无需 API Key、GPU 或 Docker，得到 86.2/100（B）及 `skillevaluator-quality.json`，再把路径替换为自己的技能目录。

## 实际例子
**官方无模型 Quickstart →** 对仓库自带的 `text-analyzer` 参考技能运行 `quality-check`；无需 API Key、GPU 或 Docker，得到 86.2/100（B）及 `skillevaluator-quality.json`，再把路径替换为自己的技能目录。

## 关键命令
```bash
pip install skillevaluator
skillevaluator validate ./my-skill --tiers 1
```

## 适合谁
编写、审核或发布 Agent Skills，并希望在本地或 CI 中建立可复现质量门和行为对照实验的技能作者与平台团队。

## 局限 / 注意点
Tier 1 的静态得分不能证明技能能改善 Agent，发布证据仍是不完整的；完整安全扫描需要外部扫描器，Tier 2/3 需要模型、嵌入、支持的 Agent 和通常为 Docker 的沙箱。自动生成的评测集覆盖有限，结果会受模型、版本、提示和随机性影响，应固定环境并人工复核。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-16 | 12 | 122 | 1657 | 227 | GitHub Today live snapshot |
| 2026-11-17 | 9 | 873 | 2670 | 358 | GitHub Today live snapshot |
| 2026-11-19 | 5 | 312 | 3707 | 516 | GitHub Today live snapshot |
## 相关主题
[[Topics/Agent-Evaluation|Agent-Evaluation]] · [[Topics/Agent-Skills|Agent-Skills]] · [[Topics/Testing|Testing]]

## 相关日报
- [[Daily/2026/11/2026-11-16|2026-11-16]]
- [[Daily/2026/11/2026-11-17|2026-11-17]]

- [[Daily/2026/11/2026-11-19|2026-11-19]]

## GitHub 原始链接
https://github.com/NVIDIA/SkillEvaluator

## 官方资料复核（2026-11-16）
- README：https://github.com/NVIDIA/SkillEvaluator/blob/HEAD/README.md
- README blob SHA：`1698fcfac815b2b844ad0723ea81465e71f991ab`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-17）
- README：https://github.com/NVIDIA/SkillEvaluator/blob/HEAD/README.md
- README blob SHA：`f897128a1f12005b8f6e44fa208b485efb4491dc`
- 午后 README 新增独立 `harness-check` 入口及六种 Agent 宿主的加载兼容性示例；既有分层评测、案例、风险和历史均保留。

## 官方资料复核（2026-11-19）
- README：https://github.com/NVIDIA/SkillEvaluator/blob/HEAD/README.md
- README blob SHA：`00ccbe42b38ef21fe811796aa92476a682b90050`
- 本次按当前官方 README 复核并合并当天榜单事实；保留既有说明、案例、分类、主题、风险与较早历史。
