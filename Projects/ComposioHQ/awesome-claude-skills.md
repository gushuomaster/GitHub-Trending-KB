---
repo: "ComposioHQ/awesome-claude-skills"
url: "https://github.com/ComposioHQ/awesome-claude-skills"
first_seen: 2026-10-01
last_seen: 2026-10-01
trending_count: 1
github_rank: 8
stars_today: 123
total_stars: 76119
forks: 8879
language: Python
fetched_at: "2026-10-01T07:59:50+08:00"
category: ["AI", "Skills", "Resource List"]
tags: ["claude", "skills", "catalog", "composio", "automation"]
topics: ["AI", "Skills"]
status: active
---
# ComposioHQ/awesome-claude-skills

## 一句话说明
汇总可复用的 Claude Skills、资源和工具，帮助用户为文档、开发、分析、营销和应用自动化挑选能力包。

## 它能做什么
- 按文档、开发、数据、业务、创意、生产力、安全等类别整理 Skills。
- 提供 Skill 目录结构、编写模板与最佳实践。
- 附带 connect-apps 插件示例，可通过 Composio 连接大量外部应用。

## 怎么利用
先从目录选择与任务匹配的 Skill，阅读其 SKILL.md、依赖和脚本后再放入宿主的 skills 目录；涉及第三方应用时单独审查授权范围，不要因为它出现在清单里就默认可信。

## 实际例子
**官方 Quickstart →** 把 Claude 连接到外部应用。 **输入 →** connect-apps 插件和 Composio API Key。 **操作 →** 以插件目录启动 Claude，运行 `/connect-apps:setup` 并重启。 **输出 →** Claude 可在已授权的应用中执行邮件、Issue 或 Slack 等动作。

    claude --plugin-dir ./connect-apps-plugin
    /connect-apps:setup

## 适合谁
寻找现成 Claude Skills 的用户，以及需要参考 Skill 结构和真实用例的作者。

## 局限 / 注意点
这是社区清单而非安全审计或质量保证；仓库中的第三方 Skill、脚本、外链和权限应逐个检查。连接外部应用会扩大数据与操作权限，生产使用需最小授权和审计。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-10-01 | 8 | +123 | 76119 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Skills|Skills]]

## 相关日报
- [[Daily/2026/10/2026-10-01|2026-10-01]]

