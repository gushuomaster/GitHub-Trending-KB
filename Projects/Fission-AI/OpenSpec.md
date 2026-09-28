---
repo: "Fission-AI/OpenSpec"
first_seen: 2026-09-19
last_seen: 2026-09-19
recommend_score: 9.3
trending_count: 1
stars_today: 298
category: ["AI","Developer Tools","Spec-Driven Development"]
tags: ["github/spec","github/sdd","github/agent","github/typescript"]
---
# Fission-AI/OpenSpec
## 项目定位
面向 AI Coding Assistant 的 Spec-Driven Development 工具链，把规格和变更变成仓库内可追踪资产。
## 核心功能 / 实现特点
TypeScript；仓库含 `.agents`、changesets、SECURITY、长 CHANGELOG 与发布自动化。9 月 17 日仍有版本发布机器人和 security hardening changeset。
## 主要优点
适合多人/多 Agent 长期项目，降低 prompt 直接改代码造成的需求漂移和不可追踪性。
## 局限 / 注意点
完整 SDD 对小改动可能过重；近期提交偏发布/文档，需继续观察核心能力演进。
## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-19 | +298 | 9.3 |
## 相关主题
[[Agent]] · [[Developer-Tools]] · [[Context-Engineering]]
## 相关日报
- [[2026-09-19]]

## 怎么利用
在仓库内先创建规格、变更与任务文件，让 Coding Agent 按审阅后的 spec 分阶段实施；需求变化时更新变更记录，而不是只在聊天中修改口头指令。

## 实际例子
**可推导用法：** 场景 → 给 HyperCode 增加 Provider fallback。输入 → 行为要求、兼容约束和验收条件。操作 → 生成 spec/change/tasks，评审后交给 Agent 实现。输出 → 可追踪的规格、任务、代码和验证证据。
