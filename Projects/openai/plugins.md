---
repo: "openai/plugins"
first_seen: 2026-09-10
last_seen: 2026-09-15
recommend_score: 9.4
trending_count: 2
stars_today: 105
category: ["AI", "Agent", "Skills", "Developer Tools"]
tags: ["github/codex", "github/plugins", "github/skills", "github/mcp", "github/agents"]
---
# openai/plugins

## 项目定位
Codex 官方插件示例与 marketplace 仓库，定义 plugin manifest 及 Skills、MCP、Agents、Commands、Hooks 等扩展面。

## 核心功能 / 实现特点
- `plugins/<name>/.codex-plugin/plugin.json` 为入口，可附 skills、MCP、agents、commands、hooks。
- 覆盖 Figma、Notion、iOS/macOS/Web、Expo、Netlify、Remotion、Google Slides、Codex Security 等真实插件。

## 主要优点
- 直接反映 Codex 插件生态官方结构。
- 把 Skills/MCP/Agent/Command/Hook 统一进分发模型。
- Codex Security 0.1.24 的同步包含真实 CLI/MCP 初始化、45 tools、hash/mode 与 timeout 一致性验证。

## 局限 / 注意点
- 更像官方生态目录/规范样例，不是单一业务框架。
- 插件权限、外部账号和供应链风险需逐项评估。

## 最近变化
- 9 月 15 日再次上榜，约 +105 stars；评分 9.3 → 9.4。
- 最近关键提交同步 Codex Security 0.1.24，把 Deep Scan timeout 从不一致的 900s 对齐到 349200s，并验证 launcher/MCP/runtime 一致性。

## Trending 历史
| 日期 | 当日新增 Star | 评分 |
|---|---:|---:|
| 2026-09-10 | +505 | 9.3 |
| 2026-09-15 | +105 | 9.4 |

## 相关主题
[[AI]] · [[Agent]] · [[Skills]] · [[Developer-Tools]]

## 相关日报
- [[2026-09-10]]
- [[2026-09-15]]

## 怎么利用
参考官方 manifest 和示例目录组织自己的 Codex 插件，把 Skill、MCP、Agent、Command 或 Hook 打包并在隔离项目中测试。

## 实际例子
**可推导用法：** 场景 → 发布团队代码审查插件。输入 → review Skill、MCP 配置和 plugin manifest。操作 → 按官方结构打包并验证发现/调用。输出 → 可安装的统一插件。
