---
repo: "addyosmani/agent-skills"
first_seen: 2026-09-17
last_seen: 2026-09-20
recommend_score: 9.5
trending_count: 3
stars_today: 547
category: ["AI","Agent","Skills","Developer Tools"]
tags: ["github/agent","github/skills","github/coding","github/evals"]
---
# addyosmani/agent-skills
## 项目定位
把高级软件工程流程编码成可跨 Coding Agent 使用的生产级 Skills 集合。
## 核心功能 / 实现特点
SKILL.md 工作流 + validator/evals + 多宿主适配；覆盖 spec、plan、build、test、review、simplify、ship。
## 最近变化
- 2026-09-20 +547 stars，较 9/19 的 +677 回落，但仍处高位。
- 评分维持 9.5：核心价值仍是 validator/eval 与完整工程生命周期，而非 Skill 数量。
## 局限 / 注意点
跨 Harness routing、权限和行为一致性仍有兼容成本，需持续验证宿主差异。
## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-17 | +307 | 9.5 |
| 2026-09-19 | +677 | 9.5 |
| 2026-09-20 | +547 | 9.5 |
## 相关主题
[[Agent]] · [[Skills]] · [[Developer-Tools]] · [[Context-Engineering]]
## 相关日报
- [[2026-09-19]]
- [[2026-09-20]]

## 怎么利用
按软件生命周期选择少量 Skills，让 Agent 依次完成规格、计划、实现、测试、评审和简化，并用 validator/eval 检查每一步是否真实执行。

## 实际例子
**可推导用法：** 场景 → 修复 API 分页 bug。输入 → Issue、复现测试和仓库。操作 → 依次启用 debugging、testing、review Skills。输出 → 通过测试且带评审证据的最小修复。
