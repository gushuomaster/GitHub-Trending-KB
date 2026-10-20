---
type: github-project
repo: "anomalyco/opencode"
url: "https://github.com/anomalyco/opencode"
first_seen: '2026-10-18'
last_seen: '2026-10-20'
trending_count: 3
github_rank: 2
stars_today: 1311
total_stars: 217782
forks: 29109
language: "TypeScript"
fetched_at: '2026-10-20T08:07:03+08:00'
documentation_checked_at: '2026-10-20'
stats_as_of: '2026-10-20'
snapshot_status: live
topics: ["Coding Agent", "CLI", "Developer Tools"]
status: active
---
# anomalyco/opencode

## 一句话说明
开源的编码 Agent，可在终端或桌面端理解代码库、规划改动，并在获得相应权限后执行实现任务。

## 它能做什么
- 提供终端界面与桌面端两种使用形态
- 内置只读 Plan Agent 和具备完整工具权限的 Build Agent
- 可用 `@general` 子 Agent 处理复杂搜索与多步骤调查
- 支持多种模型提供商和安装方式

## 怎么利用
官方功能组合场景：在陌生仓库先切到 Plan Agent，让它只读搜索代码并给出实施计划；人工确认后切换 Build Agent 执行编辑和测试。输入 → 仓库与功能需求；输出 → 先是无修改计划，再是可审查补丁与验证结果。

## 实际例子
官方功能组合场景：在陌生仓库先切到 Plan Agent，让它只读搜索代码并给出实施计划；人工确认后切换 Build Agent 执行编辑和测试。输入 → 仓库与功能需求；输出 → 先是无修改计划，再是可审查补丁与验证结果。

## 关键命令
```bash
npm i -g @opencode/cli@latest
```

## 适合谁
希望使用开源终端或桌面编码 Agent，并通过先规划、后实施来控制代码修改的开发者。

## 局限 / 注意点
Build Agent 具有完整工具权限，必须审查命令、密钥和 diff；桌面端仍标记为 beta。模型凭据、费用、速率限制和生成错误由所选提供商及使用者承担。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-18 | 11 | 438 | 215286 | 28863 | GitHub Today live snapshot |
| 2026-10-19 | 3 | 1414 | 216551 | 28993 | GitHub Today live snapshot |
| 2026-10-20 | 2 | 1311 | 217782 | 29109 | GitHub Today live snapshot |

## 相关主题
[[Topics/Coding Agent|Coding Agent]] · [[Topics/CLI|CLI]] · [[Topics/Developer Tools|Developer Tools]]

## 相关日报
- [[Daily/2026/10/2026-10-18|2026-10-18]]

- [[Daily/2026/10/2026-10-19|2026-10-19]]

- [[Daily/2026/10/2026-10-20|2026-10-20]]

## GitHub 原始链接
https://github.com/anomalyco/opencode

## 官方资料复核（2026-10-20）
- README：https://github.com/anomalyco/opencode/blob/dev/README.md
- README blob SHA：`9dee6ddc05449c3969072dfb6ec4edb3ec59d107`

