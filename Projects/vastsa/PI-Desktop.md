---
repo: "vastsa/PI-Desktop"
first_seen: 2026-09-10
last_seen: 2026-09-12
recommend_score: 9.3
trending_count: 3
stars_today: 624
category: ["AI", "Agent", "Developer Tools"]
tags: ["github/agent", "github/desktop", "github/local-first", "github/mcp", "github/plugins", "github/subagents"]
type: github-project
url: "https://github.com/vastsa/PI-Desktop"
---

# vastsa/PI-Desktop

## 项目定位
Local-first AI Coding Agent 桌面工作区，把模型、项目、会话、权限、Review、Skills/MCP/Subagents/Plugins 收进一个独立桌面客户端。

## 核心功能 / 实现特点
- Electron + React + TypeScript UI，Rust host core，底层使用 pi Agent Harness；插件可扩展工具、命令、面板、技能、MCP 与后台服务。

## 主要优点
- 本地优先且不绑定单一 IDE/云账号
- 插件生态正在成形，已公开征集终端、文件编辑器、截图等插件
- 近期快速修复会话持久化、系统代理、通知与 macOS 打包等真实桌面问题

## 局限 / 注意点
- 仍处快速迭代期，63 个 open issues，插件权限边界、重试、远程连接等关键能力仍在讨论
- 提交密度很高，稳定性与扩展 API 兼容性需要持续观察

## 最近变化
- 昨日未上榜，9 月 10 日首次上榜 +393；今日 +624，热度明显回升。近期 Issue 从功能愿望转向插件权限、子 Agent、重试和远程连接，说明用户开始把它当长期工作台而非 Demo。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-10 | +393 | 9.1 |
| 2026-09-12 | +624 | 9.3 |

## 相关主题
- [[AI]]
- [[Agent]]
- [[Developer-Tools]]

## 相关日报
- [[2026-09-10]]
- [[2026-09-12]]

## 怎么利用
把本地项目加入桌面工作区，选择模型和权限后使用 Skills、MCP 或 subagent完成开发任务；通过 Review 面板确认 diff。

## 实际例子
**可推导用法：** 场景 → 在独立桌面端维护 Python 项目。输入 → 本地仓库和 bug。操作 → Agent修改并运行测试，用户在 Review 中批准。输出 → 本地可审查改动与会话记录。

## 规范化资料补充（2026-10-09）

### 一句话说明
本地优先、模型无关的 AI Agent 桌面工作区，把项目、会话、插件、权限、审查与长任务放进一个客户端。

### 怎么利用与实例
**可推导用法：** 把本地 Python 仓库加入工作区，选择模型和 Plan 模式；Agent 先提交修复计划，经确认后修改并运行测试，用户在 Review 面板检查 diff 与命令输出。

### 适合谁
需要跨模型维护长会话、审查 Agent 改动或用插件组织多个 Agent 工作流的开发者。

### 局限补充
项目仍快速迭代，插件权限、远程连接和扩展 API 兼容性需要持续观察；本地优先不自动消除模型供应商的数据风险。

### GitHub 原始链接
https://github.com/vastsa/PI-Desktop

### 官方资料核对
- 核对日期：2026-10-09
- README：https://github.com/vastsa/PI-Desktop/blob/main/README.md

## 2026-09-10 历史核验
- GitHub Trending 原始排名：#12
- Stars Today：393（原日报保存的当日值）
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/186fd83e5bf5c5918ad47061fb0276a99cf23ab6/archive/repository/2026/2026-09-10/(null).json)
- 相关日报：[[Daily/2026/09/2026-09-10|2026-09-10]]

## 2026-09-11 历史核验
- GitHub Trending 原始排名：#16
- Stars Today：未保存（历史归档与原日报均未保存）
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/1920ac964597c62bab2a311888de53a13e8798ad/archive/repository/2026/2026-09-11/(null).json)
- 相关日报：[[Daily/2026/09/2026-09-11|2026-09-11]]

## 2026-09-12 历史核验
- GitHub Trending 原始排名：#5
- Stars Today：624（原日报保存的当日值）
- Language / Total Stars / Forks：未保存
- 来源：[日期匹配的语言不限归档](https://github.com/antonkomarev/github-trending-archive/blob/c2d25fb872c661b5329c0e3eb95abe065543a251/archive/repository/2026/2026-09-12/(null).json)
- 相关日报：[[Daily/2026/09/2026-09-12|2026-09-12]]
