---
type: github-project
repo: "openai/plugins"
url: "https://github.com/openai/plugins"
first_seen: 2026-09-09
last_seen: 2026-09-15
trending_count: 3
language: "JavaScript"
stars_today: 105
category: ["AI", "Agent", "Skills", "Developer-Tools"]
tags: ["ai", "agent", "skills", "developer-tools"]
topics: ["AI", "Agent", "Skills", "Developer-Tools"]
---
# openai/plugins

## 一句话说明
OpenAI 维护的 Codex 插件示例目录，展示如何把 Skills、MCP、Agents、Commands、Hooks 和应用配置打包到统一插件中。

**当前官方描述：** OpenAI Plugins

## 它能做什么
- 要求每个插件提供 `.codex-plugin/plugin.json` manifest。
- 支持附带 skills、MCP/app 配置、agents、commands、hooks 和资源文件。
- 提供 Figma、Notion、iOS/macOS/Web、Expo、Netlify 等较完整示例。

## 怎么利用
选择与目标相近的示例，检查 manifest 和权限配置；在独立插件目录加入自己的 Skill、MCP 或 Hook，安装到测试环境验证发现、调用和卸载。

## 实际例子
**官方仓库结构对应场景 →** 参考 `plugins/figma` 或 `plugins/notion`，创建含 `plugin.json`、skills 与 MCP 配置的团队插件；输出可被 Codex marketplace 发现的插件包。

## 关键命令
```text
查看 plugins/<name>/.codex-plugin/plugin.json
```

## 适合谁
开发或审查 Codex 插件、需要理解官方目录结构与扩展面的工程人员。

## 局限 / 注意点
它是不断更新的示例集合，不是单一业务框架；不同插件依赖外部账号和权限，复制示例前需逐项评估供应链与数据访问范围。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-09 | 16 | 未保存 | 未保存 | 归档顺序；统计来自原有快照或未保存 |
| 2026-09-10 | 未保存 | 505 | 未保存 | 仓库索引 |
| 2026-09-15 | 未保存 | 105 | 未保存 | 仓库索引 |

## 相关主题
[[Topics/AI|AI]] · [[Topics/Agent|Agent]] · [[Topics/Skills|Skills]] · [[Topics/Developer-Tools|Developer-Tools]]

## 相关日报
- [[Daily/2026/09/2026-09-09|2026-09-09]]
- [[Daily/2026/09/2026-09-10|2026-09-10]]
- [[Daily/2026/09/2026-09-15|2026-09-15]]

## GitHub 原始链接
https://github.com/openai/plugins

## 官方资料核对
- 核对日期：2026-10-08
- README：https://github.com/openai/plugins/blob/main/README.md
- README blob SHA：e901b40b9d643a5f878157158759fa0a6d3e2909
- 说明：项目卡反映核对日的当前官方资料；不声称这些能力与 2026-09-09 的历史版本完全相同。
