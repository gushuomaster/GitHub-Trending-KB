---
type: github-project
repo: "pollen-robotics/microduck"
url: "https://github.com/pollen-robotics/microduck"
first_seen: "2026-10-25"
last_seen: "2026-10-25"
trending_count: 1
github_rank: 7
stars_today: 319
total_stars: 10975
forks: 1406
language: "Rust"
fetched_at: "2026-10-25T08:11:52+08:00"
documentation_checked_at: "2026-10-25"
stats_as_of: "2026-10-25"
snapshot_status: live
category: ["Robotics", "Biped Robot", "Simulation"]
topics: ["Robotics", "Rust", "MuJoCo", "Reinforcement Learning"]
status: active
---
# pollen-robotics/microduck

## 一句话说明
提供一套约 25 厘米高的开源双足鸭形机器人软硬件方案，可在仿真和实体机器上测试行走、滚动与起身控制。

## 它能做什么
- 控制 15 个舵机，以 50 Hz 循环驱动双足姿态与动作。
- 支持行走、滚动、抓取和跌倒后起身等动作。
- 以 Rust 守护进程运行机器人服务，并复用同一套进程驱动 MuJoCo 仿真。
- 可配合 `microduck_rl` 训练和使用运动策略。

## 怎么利用
没有实体硬件时，先启动仓库提供的 `duck-sim`：它会拉起 MuJoCo 环境和实际 Rust 守护进程。输入是手柄/控制命令或训练策略，系统在仿真中更新机器人姿态与传感器状态，输出可观察的运动结果和服务状态；通过仿真后再部署到实体 Microduck 验证硬件行为。

## 实际例子
**官方仿真流程 → 场景：** 在组装机器人前验证行走控制。**输入：** 本仓库代码和兼容开发环境。**操作：** 启动仿真、查看状态，再进入驾驶模式。**输出：** MuJoCo 中可操控的 Microduck，以及实际守护进程报告的运行状态。

```bash
scripts/duck-sim
scripts/duck-sim status
scripts/duck-sim drive
scripts/duck-sim down
```

## 适合谁
需要研究小型双足运动控制、机器人强化学习或想复刻开源桌面机器人的机器人学生、研究人员和硬件创客。

## 局限 / 注意点
- 仿真不会覆盖驱动器、电源、摩擦和装配误差等硬件问题，实体部署仍需安全支架、限位和现场测试。
- 多相机或多机器人会影响实时性能；完整实体体验还需要指定舵机、结构件和电子硬件。

## Trending 历史
| 日期 | GitHub Rank | Stars Today | Total Stars | Forks | 快照 |
|---|---:|---:|---:|---:|---|
| 2026-10-25 | 7 | 319 | 10975 | 1406 | GitHub Today live snapshot |

## 相关主题
[[Topics/Robotics|Robotics]] · [[Topics/Rust|Rust]] · [[Topics/MuJoCo|MuJoCo]] · [[Topics/Reinforcement-Learning|Reinforcement-Learning]]

## 相关日报
- [[Daily/2026/10/2026-10-25|2026-10-25]]

## GitHub 原始链接
https://github.com/pollen-robotics/microduck

## 官方资料复核（2026-10-25）
- README：https://github.com/pollen-robotics/microduck/blob/main/README.md
- README blob SHA：`f3d1de59a5dd8d0da09650ae70495ba887d81234`
- 仿真文档：https://github.com/pollen-robotics/microduck/blob/main/docs/robot/simulation.md
- 仿真文档 blob SHA：`4edfeadb1ed673263b31b7440aef4de4ba7c1938`

