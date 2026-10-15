---
type: github-project
repo: "Human-Agent-Society/reef"
url: "https://github.com/Human-Agent-Society/reef"
first_seen:
last_seen:
recommend_score: 9.3
trending_count: 0
stars_today:
category: ["AI", "Agent", "Infrastructure", "Continual Learning"]
tags: ["github/agent", "github/continual-learning", "github/inference", "github/rl", "github/python"]
topics: ["Agent", "Continual-Learning", "Infrastructure"]
documentation_checked_at: "2026-10-15"
history_status: no_confirmed_trending_snapshot
---
# Human-Agent-Society/reef

## 一句话说明
Reef 为持续自我改进的 Agent 提供独立基础设施，把交互记录、反馈、候选更新、评估和版本发布串成可审查的学习闭环。

## 它能做什么
- 捕获模型或 Agent 的请求、响应和带 receipt 的用户反馈，形成可追踪的训练记录。
- 用 recipe 把记录转换为权重更新或 Agent harness 更新候选。
- 在提交新版本前运行评估与选择策略，保留被接受和拒绝的候选证据。
- 暴露 OpenAI/Anthropic 兼容推理端点，并维护 artifact 与 checkpoint 版本历史。

## 怎么利用
先用 PyPI 包启动纯推理服务，确认模型、API 与记录链路可用；再为具体场景配置 recipe、反馈评分和评估门槛。输入是带场景标识的真实交互及后续反馈，Reef 生成候选更新并进行评估，只有满足选择策略的版本才进入发布面。

## 实际例子
**官方 SAO 流程 →** 用 Qwen2.5-1.5B-Instruct 启动 Reef 服务，请求响应会返回 `x-reef-agent-record-id`。评估方随后提交分数和文字反馈，SAO recipe 使用符合条件的 rollout 执行训练，并把通过评估的候选发布为新版本。

## 关键命令
```sh
uv venv && source .venv/bin/activate
uv pip install reef-infra
uv run reef serve --inference.model-path Qwen/Qwen2.5-1.5B-Instruct
```

## 适合谁
研究在线学习、RL、模型持续改进或 Agent harness 演化，并且需要把反馈、评估和发布纳入可治理系统的研究团队与 AI 平台工程师。

## 局限 / 注意点
- Artifact 与 checkpoint 功能依赖 Git LFS；训练 recipe 还可能需要专用 GPU 和额外运行时依赖。
- 持续学习会带来灾难性遗忘、数据污染、奖励投机和回归风险，必须使用隔离评估、版本回滚与分阶段发布。
- README 中的 recipe 结果各有任务和实验边界，不能直接外推到其他业务场景。

## Trending 历史
当前没有由有效 Daily 与 `Index/projects.jsonl` 共同确认的上榜日期。旧卡中的 2026-09-17 条目来自已撤销日报，不能作为可信 Trending 快照。

## 相关主题
[[Topics/Agent|Agent]] · [[Topics/Continual-Learning|Continual-Learning]] · [[Topics/Infrastructure|Infrastructure]]

## 相关日报
暂无已确认的相关日报。

## GitHub 原始链接
https://github.com/Human-Agent-Society/reef

## 官方资料复核（2026-10-15）
- README：https://github.com/Human-Agent-Society/reef/blob/main/README.md
- README blob SHA：`ac89e74868daa704490901763aac0b32ce3f3082`

