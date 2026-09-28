---
repo: "Human-Agent-Society/reef"
first_seen: 2026-09-17
last_seen: 2026-09-17
recommend_score: 9.3
trending_count: 1
stars_today: 134
category: ["AI","Agent","Infrastructure","Continual Learning"]
tags: ["github/agent","github/continual-learning","github/inference","github/rl","github/python"]
---
# Human-Agent-Society/reef
## 项目定位
面向自改进 Agent 的持续学习基础设施，把在线更新、经验回放与安全 rollout 放到独立系统层。
## 核心功能 / 实现特点
Python；围绕 continual learning、LLM training/inference、reinforcement learning 和 self-improving agents 构建。
## 主要优点
- 把 Agent 的“长期改进”从 Memory/Prompt 层推进到模型/策略更新层。
- 9 月 16 日 23:06 UTC 仍有推送，项目很新但开发活跃。
## 最近变化
- New & Rising，约 2.6k stars，估算近期约 +134/day。
## 局限 / 注意点
持续学习最难的是回归、灾难性遗忘、数据污染和安全 rollout；目前项目年轻，59 个 open issues，生产成熟度仍需观察。
## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-17 | ~+134 | 9.3 |
## 相关主题
[[Agent]] · [[Context-Engineering]] · [[Developer-Tools]]
## 相关日报
- [[2026-09-17]]

## 怎么利用
把 Agent 的成功/失败轨迹送入独立学习层，通过经验回放产生候选更新，并先在受控评估或小流量环境验证，再逐步 rollout。

## 实际例子
**可推导用法：** 场景 → 客服 Agent 经常漏问订单号。输入 → 近期失败对话与人工纠正。操作 → 回放经验、生成策略候选并做离线评估。输出 → 通过门槛后逐步上线的新策略版本。
