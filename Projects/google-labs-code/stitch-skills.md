---
type: github-project
repo: "google-labs-code/stitch-skills"
url: "https://github.com/google-labs-code/stitch-skills"
first_seen: "2026-11-16"
last_seen: "2026-11-17"
trending_count: 2
language: "TypeScript"
total_stars: 9729
forks: 1240
stars_today: 529
github_rank: 7
fetched_at: "2026-11-17T08:06:19+08:00"
documentation_checked_at: "2026-11-17"
stats_as_of: "2026-11-17"
snapshot_status: "live"
category: ["Agent Skills", "UI Design", "Frontend"]
topics: ["Agent-Skills", "UI-Design", "Frontend"]
---
# google-labs-code/stitch-skills

## 一句话说明
Stitch Design Skills 是围绕 Google Stitch MCP 的 Agent Skills 与插件集合，用于把界面生成、设计系统提取、代码转设计以及 React/React Native 落地流程交给 Coding Agent 执行。

## 它能做什么
- 提供设计生成、现有界面编辑和多版本变体能力，并可把前端代码提取后上传到 Stitch。
- 可从源码或 Stitch 项目生成 `DESIGN.md`，再把主题应用到多个屏幕。
- 将 Stitch 屏幕转换为 React、React Native、Vite Dashboard 或 Remotion 演示视频。
- 遵循 Agent Skills 标准，可安装到 Codex、Claude Code、Cursor；OpenCode 可按说明手工适配。

## 怎么利用
**官方 Codex 流程 →** 将仓库加入插件市场，安装 `stitch-design`、`stitch-build` 或 `stitch-utilities`；配置 Stitch MCP 后，让 Agent 生成三个深色高密度首页方案，输出 Stitch 屏幕及可继续转换的设计资产。

## 实际例子
**官方 Codex 流程 →** 将仓库加入插件市场，安装 `stitch-design`、`stitch-build` 或 `stitch-utilities`；配置 Stitch MCP 后，让 Agent 生成三个深色高密度首页方案，输出 Stitch 屏幕及可继续转换的设计资产。

## 关键命令
```bash
codex plugin marketplace add google-labs-code/stitch-skills --ref main --sparse .agents/plugins
npx skills add google-labs-code/stitch-skills
```

## 适合谁
使用 Stitch 进行产品界面设计、设计系统迁移或前端组件生成的产品设计师、前端工程师与 Agent 工作流维护者。

## 局限 / 注意点
技能依赖 Stitch MCP、相应环境变量与凭据；选择性安装时必须补齐技能依赖。OpenCode 需要手工复制并调整命名/工具名；项目明确不是 Google 官方支持产品，也不属于 Google 开源漏洞奖励范围。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-16 | 3 | 247 | 9280 | 1125 | GitHub Today live snapshot |
| 2026-11-17 | 7 | 529 | 9729 | 1240 | GitHub Today live snapshot |

## 相关主题
[[Topics/Agent-Skills|Agent-Skills]] · [[Topics/UI-Design|UI-Design]] · [[Topics/Frontend|Frontend]]

## 相关日报
- [[Daily/2026/11/2026-11-16|2026-11-16]]
- [[Daily/2026/11/2026-11-17|2026-11-17]]

## GitHub 原始链接
https://github.com/google-labs-code/stitch-skills

## 官方资料复核（2026-11-16）
- README：https://github.com/google-labs-code/stitch-skills/blob/HEAD/README.md
- README blob SHA：`baecaabfa0fc08d596e3d5921479321eaacac02a`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-17）
- README：https://github.com/google-labs-code/stitch-skills/blob/HEAD/README.md
- README blob SHA：`baecaabfa0fc08d596e3d5921479321eaacac02a`
- 本次按当前官方 README 复核并合并当天榜单事实；既有说明、案例、分类、主题、风险与历史内容均保留。
