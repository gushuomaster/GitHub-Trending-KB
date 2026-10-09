---
repo: "Tencent/teamai-cli"
first_seen: 2026-09-10
last_seen: 2026-09-11
recommend_score: 9.6
trending_count: 2
stars_today: 556
category: ["AI", "Agent", "Skills", "Developer Tools"]
tags: ["github/agent", "github/skills", "github/team", "github/mcp", "github/knowledge", "github/cli"]
type: github-project
url: "https://github.com/Tencent/teamai-cli"
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

## 规范化资料补充（2026-10-09）

### 一句话说明
团队级 AI Harness 管理 CLI，用 Git 仓库统一分发 Skills、Rules、MCP、Agents、Hooks 和团队知识。

### 怎么利用与实例
**官方工作流：** 管理员创建共享 Git 仓库并运行 `teamai init <repo-url>`；成员加入同一仓库后，每次 Agent 会话自动拉取最新团队资源，发布者可通过 `/teamai` 分享 Skill 或规则。

### 适合谁
需要让多种 Coding Agent 使用统一规范、工具和知识资产的研发平台团队与工程负责人。

### 局限补充
Team Context 和 Team Improvement 仍标记为 beta；私有仓库权限、版本升级和回滚策略需要团队自行制定。

### GitHub 原始链接
https://github.com/Tencent/teamai-cli

### 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/Tencent/teamai-cli/blob/main/README.md

## 2026-09-10 历史核验
- GitHub Trending 原始排名：#2
- Stars Today：563（原日报保存的当日值）
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/186fd83e5bf5c5918ad47061fb0276a99cf23ab6/archive/repository/2026/2026-09-10/(null).json)
- 相关日报：[[Daily/2026/09/2026-09-10|2026-09-10]]
