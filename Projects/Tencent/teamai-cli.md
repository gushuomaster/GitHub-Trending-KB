---
repo: "Tencent/teamai-cli"
first_seen: 2026-09-10
last_seen: 2026-09-11
recommend_score: 9.6
trending_count: 2
stars_today: 556
category: ["AI", "Agent", "Skills", "Developer Tools"]
tags: ["github/agent", "github/skills", "github/team", "github/mcp", "github/knowledge", "github/cli"]
---

# Tencent/teamai-cli

## 项目定位
团队级 AI Harness 管理 CLI，统一分发 Skills、Rules、MCP、Agents、Hooks，并逐步覆盖团队知识和代码库知识治理。

## 核心功能 / 实现特点
- TypeScript/npm CLI；Git 驱动团队资产分发与评审。
- 支持多 Coding Agent/Harness。
- 最近新增 `teamai codebase --deep-enrich`、Wiki/graph reconcile、`status --all` 等代码库知识与状态治理能力。

## 主要优点
- 团队 Agent 资产 Git 化、可审查、可版本化。
- 跨 Agent 复用能力强。
- 从资源分发继续向持续学习、codebase Wiki 与知识召回演进。

## 局限 / 注意点
- Context/Improvement 仍快速演进。
- 团队落地需要额外定义权限、版本、回滚和升级策略。

## 最近变化
- 评分 9.5→9.6。
- 今日 +556 stars，较昨日 +563 基本持平。
- 新增 deep-enrich，并修复 learning cache、metrics、MCP 路径和 Wiki 图 reconcile 等真实工程问题。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-10 | +563 | 9.5 |
| 2026-09-11 | +556 | 9.6 |

## 相关主题
- [[AI]]
- [[Agent]]
- [[Skills]]
- [[Developer-Tools]]
- [[Context-Engineering]]

## 相关日报
- [[2026-09-10]]
- [[2026-09-11]]

## 怎么利用
把团队 Skills、Rules、MCP、Hooks 和知识说明放入版本库，通过 CLI 安装到成员使用的不同 Coding Agent，并用升级与审查流程统一维护。

## 实际例子
**可推导用法：** 场景 → 让团队的 Codex 和 Claude Code遵守同一发布规范。输入 → release Skill、代码规范和 MCP 配置。操作 → 用 teamai-cli 分发并锁定版本。输出 → 各宿主一致可发现的团队能力包。
