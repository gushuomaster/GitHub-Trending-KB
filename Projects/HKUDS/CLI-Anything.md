---
type: github-project
repo: HKUDS/CLI-Anything
url: https://github.com/HKUDS/CLI-Anything
first_seen: '2026-09-24'
last_seen: '2026-10-19'
trending_count: 6
github_rank: 8
stars_today: 589
total_stars: 54578
forks: 4946
language: "Python"
fetched_at: '2026-10-19T08:04:27+08:00'
category: [AI, Agent, Developer Tools]
tags: [cli, agent-native, automation, python]
topics: [Agent, Developer-Tools, Automation]
documentation_checked_at: '2026-10-19'
stats_as_of: '2026-10-19'
status: active
snapshot_status: live
---

# HKUDS/CLI-Anything

## 一句话说明
把原本主要靠 GUI 操作的软件变成结构化命令行工具，让 Agent 可以稳定调用、读取 JSON 结果并自动验证操作。

## 它能做什么
- 分析目标软件源码、API 与 GUI 动作，生成对应 CLI harness。
- 为生成的命令提供 REPL、JSON 输出、undo/redo、测试和文档。
- 通过 CLI-Hub 发现并安装现成 harness，覆盖图形、3D、办公、视频和字幕工具。
- 把桌面软件操作纳入 Agent 的可复现脚本与流水线。

## 怎么利用
若 CLI-Hub 已有目标软件，直接安装 harness；否则把软件源码交给 CLI-Anything 生成并测试。输入是软件源码或 Hub 中的名称，处理过程是分析接口、实现命令和执行 E2E 测试，输出是可被人或 Agent 调用的 CLI。

## 实际例子
**官方示例方向 → 场景：** 让 Agent 批量修改 Blender 场景。**输入：** Blender 工程、对象与材质参数。**操作：** 安装对应 harness，用结构化命令创建/修改对象并导出结果。**输出：** 更新后的 3D 项目及机器可读的执行结果；同类 harness 也用于 GIMP、LibreOffice、OBS、字幕和图表工具。

## 关键命令
```sh
pip install cli-anything-hub
cli-hub install blender
```

## 适合谁
需要把桌面创作软件接入 Agent、CI 或批处理流水线的自动化工程师、工具作者和内容生产团队。

## 局限 / 注意点
需要目标软件源码、可调用 API 或现成 harness；生成结果的覆盖度受软件架构影响，不能用单元测试替代真实软件中的 E2E 验证。桌面软件的授权、插件兼容性与运行环境仍需单独处理。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | 证据说明 |
|---|---:|---:|---:|---|
| 2026-09-24 | 10 | 41 | 49876 | 仓库已存快照 |
| 2026-09-25 | 8 | 未保存 | 未保存 | 日期匹配语言不限归档；旧卡中的 415/50267 不作为历史快照值 |
| 2026-10-15 | 6 | 103 | 52471 | GitHub Today live snapshot |
| 2026-10-17 | 4 | 281 | 53485 | GitHub Today live snapshot |
| 2026-10-18 | 4 | 574 | 54049 | GitHub Today live snapshot |
| 2026-10-19 | 8 | 589 | 54578 | GitHub Today live snapshot |

## 相关主题
[[Topics/Agent|Agent]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Automation|Automation]]

## 相关日报
- [[Daily/2026/09/2026-09-24|2026-09-24]]
- [[Daily/2026/09/2026-09-25|2026-09-25]]
- [[Daily/2026/10/2026-10-15|2026-10-15]]

- [[Daily/2026/10/2026-10-17|2026-10-17]]

- [[Daily/2026/10/2026-10-18|2026-10-18]]

- [[Daily/2026/10/2026-10-19|2026-10-19]]

## GitHub 原始链接
https://github.com/HKUDS/CLI-Anything

## 官方资料复核（2026-10-19）
- README：https://github.com/HKUDS/CLI-Anything/blob/main/README.md
- README blob SHA：`8a78b5420911eff5e7cc219bf1ecb2a12b562874`

