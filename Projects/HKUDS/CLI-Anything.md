---
repo: "HKUDS/CLI-Anything"
url: "https://github.com/HKUDS/CLI-Anything"
first_seen: 2026-09-24
last_seen: 2026-09-25
trending_count: 2
github_rank: 8
stars_today: 415
total_stars: 50267
forks: 4614
language: Python
category: ["AI","Agent","Developer Tools"]
tags: ["cli","agent-native","automation","python"]
topics: ["Agent","Developer-Tools","Automation"]
status: active
---
# HKUDS/CLI-Anything

## 一句话说明
把原本主要靠 GUI 操作的软件生成 Agent 可调用的结构化 CLI，使 GIMP、Blender、LibreOffice、OBS 等软件能进入自动化 Agent 工作流。

## 它能做什么
- 分析目标软件源码并映射 GUI 动作/API。
- 生成带 REPL、JSON 输出、undo/redo 的 CLI harness。
- 自动生成测试、文档和可安装包。
- CLI-Hub 可发现和安装社区已有 harness。

## 怎么利用
安装 CLI-Anything 插件后，把目标软件源码路径或 GitHub 仓库交给 `/cli-anything`，让 Agent 完成分析→设计→实现→测试→发布七阶段流程。

## 实际例子
**场景 →** 让 Agent 操作 GIMP。 **操作 →** 安装插件后执行 `/cli-anything ./gimp`；生成后进入 `gimp/agent-harness` 安装。 **结果 →** 获得 `cli-anything-gimp`，Agent 可通过 JSON 命令创建项目、添加图层等，而无需点击 GUI。

## 适合谁
希望把桌面软件接入 Agent/自动化流程的开发者和工具作者。

## 局限 / 注意点
需要目标软件源码/可分析接口；生成 harness 的功能覆盖与目标软件架构相关，仍需 E2E 验证。

## Trending History
| 日期 | GitHub Rank | Stars Today | Total Stars |
|---|---:|---:|---:|
| 2026-09-24 | 10 | +41 | 49876 |
| 2026-09-25 | 8 | +415 | 50267 |
## 相关主题
[[Topics/Agent|Agent]] · [[Topics/Developer-Tools|Developer-Tools]] · [[Topics/Automation|Automation]]
## 相关日报
- [[Daily/2026/09/2026-09-24|2026-09-24]]
- [[Daily/2026/09/2026-09-25|2026-09-25]]