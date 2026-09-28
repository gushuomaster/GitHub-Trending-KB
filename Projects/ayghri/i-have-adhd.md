---
repo: "ayghri/i-have-adhd"
first_seen: 2026-09-09
last_seen: 2026-09-12
recommend_score: 8.1
trending_count: 4
stars_today: 3882
category: ["AI", "Agent", "Behavior Skill"]
tags: ["github/agent", "github/skill", "github/behavior", "github/prompt"]
---

# ayghri/i-have-adhd

## 项目定位
用一组 Behavior Skill 规则约束 Coding Agent 输出，强制答案优先、缩短冗余并突出下一步动作。

## 核心功能 / 实现特点
- Python/Markdown/Skill 规则为主，核心在跨 Agent 的安装、发现、激活与输出协议。

## 主要优点
- 极轻量，几乎没有接入成本
- 传播力极强，是 Behavior Skill 这个类别的代表案例
- 可以直接作为团队输出规范的设计参考

## 局限 / 注意点
- 技术壁垒较低，价值主要来自规则设计
- 已有 Issue 讨论规则可能诱导过度因果归因、影响语言质量，以及 Windows hook 兼容问题

## 最近变化
- +656 → +4624 → +4650 → 今日 +3882，仍是榜首级热度但已从峰值回落；没有出现足以提升技术评分的新功能，评分维持 8.1。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-09 | +656 | 7.8 |
| 2026-09-10 | +4624 | 8.1 |
| 2026-09-11 | +4650 | 8.1 |
| 2026-09-12 | +3882 | 8.1 |

## 相关主题
- [[AI]]
- [[Agent]]
- [[Skills]]

## 相关日报
- [[2026-09-09]]
- [[2026-09-10]]
- [[2026-09-11]]
- [[2026-09-12]]

## 怎么利用
把 Behavior Skill 加到个人或团队的 Coding Agent 配置中，用真实任务检查回答是否更短、结论是否前置，并调整可能过强的规则。

## 实际例子
**可推导用法：** 场景 → 减少代码评审回复冗余。输入 → 一段失败日志。操作 → 启用 Skill 后让 Agent 给出原因和下一步。输出 → 先给结论、再列两三项行动的简洁回答。
