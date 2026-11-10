---
type: github-project
repo: "google-deepmind/mujoco"
url: "https://github.com/google-deepmind/mujoco"
first_seen: "2026-11-09"
last_seen: "2026-11-10"
trending_count: 2
language: "C++"
total_stars: 16892
forks: 1991
stars_today: 574
github_rank: 4
fetched_at: "2026-11-10T08:05:10+08:00"
documentation_checked_at: "2026-11-10"
stats_as_of: "2026-11-10"
snapshot_status: "live"
category: ["Physics Simulation","Robotics","Machine Learning"]
topics: ["Simulation","Robotics","Biomechanics","MJX"]
---
# google-deepmind/mujoco

## 一句话说明
MuJoCo 是面向机器人、控制、运动学和机器学习研究的高性能多关节接触物理引擎，用来模拟关节结构与环境的动力学交互。

## 它能做什么
- 用内置 XML 编译器把模型预编译到低层数据结构，并通过 C API 高效执行动力学仿真。
- 提供原生桌面和 Web 可视化，以及 Python 绑定、WebAssembly 与 Unity 插件。
- 支持程序化模型编辑、多线程 rollout、控制器实验和基于 JAX 的 MJX 工作流。
- 提供碰撞、接触、力学量等研究与开发所需的工具函数。

## 怎么利用
安装 Python 包后加载 MJCF/XML 模型，创建仿真数据并逐步调用物理步进；输入是机器人模型、状态和控制量，输出是后续状态、接触与可视化结果，可用于控制器验证或训练环境。

## 实际例子
**官方 LQR 教程 →** 在 Colab 中加载人形模型，线性化系统并求解线性二次调节器，输出让人形单腿保持平衡的控制轨迹和仿真结果。

## 关键命令
```bash
pip install mujoco
```

## 适合谁
开发机器人控制器、强化学习环境、生物力学模型或动画物理系统的研究人员与仿真工程师。

## 局限 / 注意点
Python 绑定要求 Python 3.11+；WebAssembly 版本比原生 C 慢。main 分支尖端可能不稳定，复杂模型仍需校准接触参数和时间步，仿真结果不能替代真实硬件或实验验证。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-11-09 | 8 | 41 | 16392 | 1952 | GitHub Today live snapshot |

| 2026-11-10 | 4 | 574 | 16892 | 1991 | GitHub Today live snapshot |

## 相关主题
[[Topics/Simulation|Simulation]] · [[Topics/Robotics|Robotics]] · [[Topics/Biomechanics|Biomechanics]] · [[Topics/MJX|MJX]]

## 相关日报
- [[Daily/2026/11/2026-11-09|2026-11-09]]

- [[Daily/2026/11/2026-11-10|2026-11-10]]

## GitHub 原始链接
https://github.com/google-deepmind/mujoco

## 官方资料复核（2026-11-09）
- README：https://github.com/google-deepmind/mujoco/blob/HEAD/README.md
- README blob SHA：`c6fb8355165ddd1477109a96d3aace4e6f9cd17b`
- 内容依据当前官方 README；榜单统计来自同一次 GitHub Trending Any / Any / Today 页面采集。

## 官方资料复核（2026-11-10）
- README：https://github.com/google-deepmind/mujoco/blob/HEAD/README.md
- README blob SHA：`c6fb8355165ddd1477109a96d3aace4e6f9cd17b`
- 本次按当前官方资料复核，仅合并当天榜单事实、历史和证据；既有能力、案例、分类、风险说明与较早历史均保留。

